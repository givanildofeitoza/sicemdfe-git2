unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;


type
  T_frmLogin = class(TForm)
    Image1: TImage;
    txtsenha: TEdit;
    txtusuario: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cbogrupo: TComboBox;
    cbofilial: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    btnlogin: TSpeedButton;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure cbofilialEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnloginClick(Sender: TObject);
    procedure txtsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure cbogrupoKeyPress(Sender: TObject; var Key: Char);
    procedure cbofilialKeyPress(Sender: TObject; var Key: Char);
    procedure txtusuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    LoginOK : Boolean;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  _frmLogin: T_frmLogin;
  Glb_nomeLicenciamento:string;
  glb_qtdfiliais:string;

implementation
uses dmMDFe,U_splash,u_main,frmliberacao,idHashMessageDigest;
{$R *.dfm}

function VerificaLicencaUso(produto:String) : Boolean;
var  dataServidor : Double;
     criptografiaValidade, criptografiaUltAcesso: WideString;
     msg : string;
     diasRestante : integer;
     md5 : TIdHashMessageDigest5;
begin

  md5 := TIdHashMessageDigest5.Create;

  _dmMDFe.qrpadrao.Close;
  _dmMDFe.qrpadrao.SQL.Clear;
  _dmMDFe.qrpadrao.SQL.Add('SELECT (TO_DAYS(validade)-TO_DAYS(CURRENT_DATE())) AS diasRestante, CURRENT_DATE() AS dataServidor FROM iqsistemas WHERE produto='+QuotedStr(produto));
  _dmMDFe.qrpadrao.Open;

  //datas
  dataServidor := _dmMDFe.qrpadrao.FieldByName('dataServidor').AsDateTime;
  diasRestante := _dmMDFe.qrpadrao.FieldByName('diasRestante').AsInteger;

  //Verifica criptografia
  _dmMDFe.qrpadrao.Close;
  _dmMDFe.qrpadrao.SQL.Clear;
  _dmMDFe.qrpadrao.SQL.Add('SELECT * FROM iqsistemas where produto='+QuotedStr(produto));
  _dmMDFe.qrpadrao.Open;

  criptografiaValidade := MD5.HashStringAsHex(
                          Trim( _dmMDFe.qrpadrao.FieldByName('idcliente').AsString ) +
                          Trim( _dmMDFe.qrpadrao.FieldByName('nomeliberacao').AsString ) +
                          FormatDateTime('yyyy-mm-dd',_dmMDFe.qrpadrao.FieldByName('validade').AsDateTime )+
                         Glb_ChavePrivada  );

  criptografiaUltAcesso := MD5.HashStringAsHex(
                          Trim( _dmMDFe.qrpadrao.FieldByName('idcliente').AsString ) +
                          Trim( _dmMDFe.qrpadrao.FieldByName('nomeliberacao').AsString ) +
                          FormatDateTime('yyyy-mm-dd', _dmMDFe.qrpadrao.FieldByName('ultimoacesso').AsDateTime )+
                          Glb_ChavePrivada  );


  if (not  _dmMDFe.qrpadrao.FieldByName('ultimoacesso').IsNull) and (Sys_Data < _dmMDFe.qrpadrao.FieldByName('ultimoacesso').AsDateTime) then
  begin
      application.MessageBox('Data do terminal inferior a data do último acesso', 'Erro',MB_ICONEXCLAMATION+mb_ok);
      result:=false;
      exit;
  end;

  if (not  _dmMDFe.qrpadrao.FieldByName('ultimoacesso').IsNull) and (Sys_Data < _dmMDFe.qrpadrao.FieldByName('ultimoacesso').AsDateTime) then
  begin
     application.MessageBox('Data do terminal inferior a data do último acesso', 'Erro', MB_ICONEXCLAMATION+mb_ok );
      result:=false;
      exit;
  end;


  if (_dmMDFe.qrpadrao.IsEmpty)  then
  begin
      application.MessageBox('Não foram encontrados os dados do Cliente IQ Sistemas', 'Erro', MB_ICONEXCLAMATION+mb_ok );
      result:=false;
  end;

  if ( LowerCase(criptografiaValidade) <> LowerCase( _dmMDFe.qrpadrao.FieldByName('validadecripto').AsString ) )then
  begin
      application.MessageBox('Dados de licença violado. Solicite um novo PIN !', 'Erro', MB_ICONEXCLAMATION+mb_ok );
      result:=false;
      exit;
  end;

  if ( (not  _dmMDFe.qrpadrao.FieldByName('ultimoacesso').IsNull) and ( LowerCase(criptografiaUltAcesso) <> LowerCase( _dmMDFe.qrpadrao.FieldByName('ultimoacessocripto').AsString))  )  then
  begin
      application.MessageBox('Data de acesso violada. Solicite um novo PIN !', 'Erro', MB_ICONEXCLAMATION+mb_ok );
      result:=false;
      exit;
  end;

  if diasRestante <= 0 then
  begin
    // "Licença de uso expirada há "+diasRestante.ToString() + " dia(s). Ajuste a data do computador ou digita o PIN de liberação.";
      msg :=  'Licença de uso expirada há ' +IntToStr(diasRestante)+' dia(s). Use nosso sistema on line. ' ;
      application.MessageBox(pchar(msg), 'Erro', MB_ICONEXCLAMATION+mb_ok );
      result:=false;
      exit;
  end;
  result :=true;

end;

procedure T_frmLogin.cbofilialEnter(Sender: TObject);
begin
    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('select codigofilial,descricao from filiais where grupo = '+quotedstr(copy(cbogrupo.Text,1,1)));
    _dmMDFe.qrPadrao.Open;
     cbofilial.Items.Clear;
    _dmMDFe.qrPadrao.First;
    while not _dmMDFe.qrPadrao.Eof do
    begin
        cbofilial.Items.Add(_dmMDFe.qrPadrao.FieldByName('codigofilial').AsString+' - '+_dmMDFe.qrPadrao.FieldByName('descricao').AsString);

    _dmMDFe.qrPadrao.Next;
    end;

end;

procedure T_frmLogin.cbofilialKeyPress(Sender: TObject; var Key: Char);
begin
    if(key=#13)then
    begin
      key:=#1;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure T_frmLogin.cbogrupoKeyPress(Sender: TObject; var Key: Char);
begin
    if(key=#13)then
    begin
      key:=#1;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure T_frmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    if LoginOK=false then application.Terminate;


end;

procedure T_frmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if(key = VK_ESCAPE)then
    Application.Terminate;

end;

procedure T_frmLogin.FormShow(Sender: TObject);
begin
LoginOK := false;

_splash:= T_splash.Create(self);
_splash.Show();

Application.ProcessMessages;
sleep(4000);

_splash.Close;
_splash.ModalResult:=-1;



    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('select id,empresa from empresas ');
    _dmMDFe.qrPadrao.Open;

    cbogrupo.Items.Clear;
    _dmMDFe.qrPadrao.First;
    while not _dmMDFe.qrPadrao.Eof do
    begin
        cbogrupo.Items.Add(_dmMDFe.qrPadrao.FieldByName('id').AsString+' - '+_dmMDFe.qrPadrao.FieldByName('empresa').AsString);

    _dmMDFe.qrPadrao.Next;
    end;



end;

procedure T_frmLogin.txtsenhaKeyPress(Sender: TObject; var Key: Char);
begin
   if(key=#13)then
    begin
    btnloginClick(sender);
    end;
end;

procedure T_frmLogin.txtusuarioKeyPress(Sender: TObject; var Key: Char);
begin
    if(key=#13)then
    begin
      key:=#1;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure T_frmLogin.btnloginClick(Sender: TObject);
begin



    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('SELECT COUNT(1) as total FROM senhas WHERE operador='+quotedstr(txtusuario.Text)+' AND senha=MD5('+quotedstr(txtsenha.Text)+')');
    _dmMDFe.qrPadrao.Open;

    if(_dmMDFe.qrPadrao.FieldByName('total').asinteger > 0)then
    begin


       _dmMDFe.conexao.Close;
        _dmMDFe.ClientDataSetdad.close;
       _dmMDFe.SQLDataSetdad.commandtext:='select * from filiais where grupo='+quotedstr(copy(cbogrupo.Text,1,1))+' and codigofilial='+quotedstr(copy(cbofilial.Text,1,5));
       _dmMDFe.SQLDataSetdad.ExecSQL();
       _dmMDFe.ClientDataSetdad.Open;
       _dmMDFe.ClientDataSetdad.refresh;


   //  _main:=T_main.Create(self);
     _Main.glb_grupo:=copy(cbogrupo.Text,1,1);
     glb_filial:=copy(cbofilial.Text,1,5);
     // _Main.txtFilialEmitente.text:= copy(cbofilial.Text,1,5);
     LoginOK :=true;

     _main.glb_loginFeito:='S';

    if( VerificaLicencaUso('SICE.net')=false)then
    begin

           if fileexists(ExtractFileDir(application.exename)+'\sicemdfeoff.txt') then
           begin
            _frmLiberacao:=T_frmLiberacao.Create(Self);
            _frmLiberacao.ShowModal();
            _frmLiberacao.Release;
            LoginOK :=false;
            Application.Terminate;

           end
           else
           begin
            LoginOK :=false;
           Application.Terminate;
           end;

    end;

     ModalResult:=-1;

    end
    else
    begin
      showmessage('Login ou senha incorreto!');
      LoginOK :=false;
      exit;
    end;

end;

end.
