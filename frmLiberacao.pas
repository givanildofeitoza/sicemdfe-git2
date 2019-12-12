unit frmLiberacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, CheckBoxIQ,
  Vcl.Samples.Spin;

type
  T_frmLiberacao = class(TForm)
    txtproduto: TEdit;
    txtid: TEdit;
    txtpin: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtvalidade: TDateEdit;
    txtnomeliberacao: TEdit;
    Panel1: TPanel;
    Image1: TImage;
    Label6: TLabel;
    txtchave: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Cbofabricacao: TCheckBoxIQ;
    cboServ: TCheckBoxIQ;
    CboFidel: TCheckBoxIQ;
    cboMobile: TCheckBoxIQ;
    cboWeb: TCheckBoxIQ;
    txtQtdFil: TSpinEdit;
    Label8: TLabel;
    CboContab: TCheckBoxIQ;
    Panel2: TPanel;
    lblData: TLabel;
    lblDiasRestantes: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmLiberacao: T_frmLiberacao;

implementation

{$R *.dfm}

uses
U_main,dmMDFe,idHashMessageDigest;
 function CalculaPin(idCliente, Nome : String; Validade : Double) : String;
var
  S: string;
  I: Integer;
  pin : String;
  md5 : TIdHashMessageDigest5;
begin

  md5 := TIdHashMessageDigest5.Create;

  pin := md5.HashStringAsHex(Trim(idCliente) + Trim(Nome) + FormatDateTime('yyyy-mm-dd', validade) + Glb_ChavePrivada);
  S := '';

  for I := 1 to Length(pin) do
  begin
    if (pin[I] in ['0'..'9']) then
    begin
      S := S + Copy(pin, I, 1);
    end;
  end;

  Result := copy(S, 1, 6);
end;

function LiberarLicencaUso(idCliente : Integer; nomeLiberacao : String; validade : Double;  senhaLiberacao : String; produto : String; VerLicencaWS : Boolean) : Boolean;
var  dataServidor : Double;
     criptografiaValidade, criptografiaUltAcesso: WideString;
     msg : PAnsiChar;
     diasRestante : integer;
     md5 : TIdHashMessageDigest5;
begin
  md5 := TIdHashMessageDigest5.Create;

  if (senhaLiberacao <> CalculaPin(IntToSTr(idCliente) , nomeLiberacao ,validade))  then
  begin
        application.messagebox('Pin incorreto!', 'Erro',mb_iconexclamation+mb_ok);
         result:=false;
         exit;
  end;


  criptografiaValidade := MD5.HashStringAsHex(
                          Trim( IntToSTr(idCliente) ) +
                          Trim( nomeLiberacao ) +
                          FormatDateTime('yyyy-mm-dd', validade )+
                         Glb_ChavePrivada  );

  criptografiaUltAcesso := MD5.HashStringAsHex(
                          Trim( IntToSTr(idCliente) ) +
                          Trim( nomeLiberacao ) +
                          FormatDateTime('yyyy-mm-dd', Sys_Data )+
                          Glb_ChavePrivada  );

     _dmMDFe.qrPadrao.Close;
     _dmMDFe.qrPadrao.SQL.Clear;
     _dmMDFe.qrPadrao.SQL.Add('select * from iqsistemas');
     _dmMDFe.qrPadrao.Open;

  if (_dmMDFe.qrPadrao.RecordCount=0) then
   begin
     _dmMDFe.qrPadrao.Close;
     _dmMDFe.qrPadrao.SQL.Clear;
     _dmMDFe.qrPadrao.SQL.Add('INSERT INTO iqsistemas (produto, chavelicenca, codigofilial, idcliente, nomeliberacao, cnpj, cpf, validade, validadecripto, ultimoacesso, ultimoacessocripto) values (');
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr('SICE.net') + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr( '' ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr(Glb_filial) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr(IntToSTr(idCliente)) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr(nomeLiberacao) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr( _dmMDFe.ClientDataSetDadcnpj.AsString ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr('') + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr( FormatDateTime('yyyy-mm-dd', validade) ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr( criptografiaValidade ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr( FormatDateTime('yyyy-mm-dd', Sys_Data) ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add( QuotedStr( criptografiaUltAcesso ) + ')' );
     _dmMDFe.qrPadrao.ExecSQL;
    _dmMDFe.conexao.Connected:=false;
    result:=true;
    exit;
   end
   else
   begin
     _dmMDFe.qrPadrao.Close;
     _dmMDFe.qrPadrao.SQL.Clear;
     _dmMDFe.qrPadrao.SQL.Add('update iqsistemas set ');
     _dmMDFe.qrPadrao.SQL.Add('idcliente = '+quotedstr(IntToSTr(idCliente))+',');
     _dmMDFe.qrPadrao.SQL.Add('produto = ' + QuotedStr('SICE.net') + ', ' );
     _dmMDFe.qrPadrao.SQL.Add('chavelicenca = ' + QuotedStr( '' ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add('nomeliberacao = ' + QuotedStr(nomeLiberacao) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add('validade = ' + QuotedStr( FormatDateTime('yyyy-mm-dd', validade) ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add('validadecripto = ' + QuotedStr( criptografiaValidade ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add('ultimoacesso = ' + QuotedStr( FormatDateTime('yyyy-mm-dd', Sys_Data) ) + ', ' );
     _dmMDFe.qrPadrao.SQL.Add('ultimoacessocripto = ' + QuotedStr( criptografiaUltAcesso ) );
     _dmMDFe.qrPadrao.SQL.Add(' WHERE produto=' + QuotedStr('SICE.net')  );
     _dmMDFe.qrPadrao.ExecSQL;
     _dmMDFe.conexao.Connected:=false;
   result :=true;
   exit;
   end;
   result:=false;

end;


procedure T_frmLiberacao.BitBtn1Click(Sender: TObject);
begin

LiberarLicencaUso(strtoint(txtid.text), txtnomeliberacao.text, txtvalidade.date,  trim(txtpin.text), txtproduto.text, false);

application.messagebox('Sistema liberado, Bom trabalho!', 'informação',mb_iconinformation+mb_ok);
application.Terminate;

end;

procedure T_frmLiberacao.BitBtn2Click(Sender: TObject);
var combinacao,chave,msg : string;
  md5 : TIdHashMessageDigest5;
begin

  md5 := TIdHashMessageDigest5.Create;
combinacao:=trim(txtID.Text+txtQtdFil.Text)+
            Cbofabricacao.Text+cboServ.Text+
            CboContab.Text+cbofidel.Text+
            cboMobile.Text+cboWeb.Text+Glb_ChavePrivada;

chave:= md5.HashStringAsHex(combinacao);

if (UpperCase(chave)<>UpperCase(txtChave.Text)) then
begin
msg:=  'Chave não confere, solicite uma chave válida '+UpperCase(txtchave.Text);
 application.messagebox(pchar(msg), 'informação',mb_iconinformation+mb_ok);
 exit;
end;

_dmMDFe.qrpadrao.SQL.Clear;
_dmMDFe.qrpadrao.SQL.Add('UPDATE iqsistemas set filiaispermitidas='+quotedstr(txtQtdFil.Text)+',');
_dmMDFe.qrpadrao.SQL.Add('fabrica='+quotedstr(Cbofabricacao.Text)+',');
_dmMDFe.qrpadrao.SQL.Add('servicos='+quotedstr(cboServ.Text)+',');
_dmMDFe.qrpadrao.SQL.Add('contabil='+quotedstr(cboServ.Text)+',');
_dmMDFe.qrpadrao.SQL.Add('fidelizacao='+quotedstr(CboFidel.Text)+',');
_dmMDFe.qrpadrao.SQL.Add('sicemobile='+quotedstr(cboMobile.Text)+',');
_dmMDFe.qrpadrao.SQL.Add('siceweb='+quotedstr(cboWeb.Text)+',');
_dmMDFe.qrpadrao.SQL.Add('criptoservicos='+quotedstr(txtChave.Text));
_dmMDFe.qrpadrao.ExecSQL;

  application.messagebox('Chave aceita. Liberação efetuada. Bom trabalho !', 'Informação',mb_iconinformation+mb_ok);

end;

procedure T_frmLiberacao.FormShow(Sender: TObject);
begin
   // pagLib.TabIndex:=0;
    txtNomeLiberacao.Text := UpperCase(_dmMDFe.ClientDataSetDadfantasia.Text);

  _dmMDFe.qrpadrao2.Close;
  _dmMDFe.qrpadrao2.SQL.Clear;
  _dmMDFe.qrpadrao2.SQL.Add('SELECT (TO_DAYS(validade)-TO_DAYS(CURRENT_DATE())) AS diasRestante, CURRENT_DATE() AS dataServidor FROM iqsistemas WHERE produto='+QuotedStr(txtProduto.Text));
  _dmMDFe.qrpadrao2.Open;

     _dmMDFe.qrPadrao.Close;
     _dmMDFe.qrPadrao.SQL.Clear;
     _dmMDFe.qrPadrao.SQL.Add('select * from iqsistemas limit 1');
     _dmMDFe.qrPadrao.Open;

     txtID.Text := _dmMDFe.qrPadrao.FieldByName('idcliente').AsString;
     txtNomeLiberacao.Text := _dmMDFe.qrPadrao.FieldByName('nomeliberacao').AsString;

    try
      txtValidade.Date := StrToDate( _dmMDFe.qrPadrao.FieldByName('validade').AsString);
      txtValidade.Date := StrToDate( Concat( '07' , '/' , FormatDateTime('mm',txtValidade.Date), '/', FormatDateTime('YYYY',txtvalidade.Date)));
  except
         txtvalidade.Text := Concat( '07' , '/' , FormatDateTime('mm',now()), '/', FormatDateTime('YYYY',now)) ;
    end;

     txtvalidade.Date := IncMonth(txtValidade.Date,1);


  try
    lblData.Caption := 'Data ' + _dmMDFe.qrpadrao2.FieldByName('dataServidor').AsString;
    lblDiasRestantes.Caption :=  'Dias Restantes: ' + IntToStr(_dmMDFe.qrpadrao2.FieldByName('diasRestante').AsInteger);
    txtPIN.SetFocus;
  except

  end;

end;

end.
