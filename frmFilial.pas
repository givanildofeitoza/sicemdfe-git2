unit frmFilial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  T_frmFilial = class(TForm)
    txtgrupo: TEdit;
    txtfilial: TEdit;
    txtrazao: TEdit;
    txtfantasia: TEdit;
    txtinscricao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtenderco: TEdit;
    txtcidade: TEdit;
    cbouf: TComboBox;
    Label7: TLabel;
    txtnumero: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    txtfone: TMaskEdit;
    txtcnpj: TMaskEdit;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label11: TLabel;
    Label12: TLabel;
    txtbairro: TEdit;
    txtcep: TMaskEdit;
    Label13: TLabel;
    procedure txtfilialKeyPress(Sender: TObject; var Key: Char);
    procedure txtgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure txtcnpjKeyPress(Sender: TObject; var Key: Char);
    procedure txtcepKeyPress(Sender: TObject; var Key: Char);
    procedure txtfoneKeyPress(Sender: TObject; var Key: Char);
    procedure txtinscricaoKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmFilial: T_frmFilial;

implementation

{$R *.dfm}
uses dmMDFe,u_main;

procedure T_frmFilial.Button1Click(Sender: TObject);
begin
//    _dmMDFe.conexao.Connected:=false;
//    _dmMDFe.qrPadrao.SQL.Clear;
//    _dmMDFe.qrPadrao.SQL.Add('SELECT count(1) as total FROM filiais');
//    _dmMDFe.qrPadrao.Open;



    if(alterar='S')then
    begin
        _dmMDFe.conexao.Connected:=false;
        _dmMDFe.qrPadrao.SQL.Clear;
        _dmMDFe.qrPadrao.SQL.Add('UPDATE filiais SET ');
        //_dmMDFe.qrPadrao.SQL.Add('codigofilial='+quotedstr(copy(txtfilial.text,1,5))+',');
        _dmMDFe.qrPadrao.SQL.Add('empresa='+quotedstr(txtrazao.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('descricao='+quotedstr(txtfantasia.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('fantasia='+quotedstr(txtfantasia.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('cnpj='+quotedstr(txtcnpj.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('inscricao='+quotedstr(txtinscricao.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('endereco='+quotedstr(txtenderco.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('cidade='+quotedstr(txtcidade.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('numero='+quotedstr(txtnumero.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('bairro='+quotedstr(txtbairro.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('cep='+quotedstr(txtcep.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add('estado='+quotedstr(copy(cbouf.Text,1,2))+',');
        _dmMDFe.qrPadrao.SQL.Add('telefone1='+quotedstr(txtfone.Text)+' WHERE codigofilial='+quotedstr(_main.txtFilialEmitente.text));
        _dmMDFe.qrPadrao.execsql;

          application.messagebox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
          modalresult:=-1;
    end
    else
    begin

        _dmMDFe.qrPadrao.SQL.Clear;
        _dmMDFe.qrPadrao.SQL.Add('INSERT INTO empresas (id,empresa,sincronizar) values (');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr('1')+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtfantasia.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr('N')+')');
        _dmMDFe.qrPadrao.execsql;


        _dmMDFe.conexao.Connected:=false;
        _dmMDFe.qrPadrao.SQL.Clear;
        _dmMDFe.qrPadrao.SQL.Add('INSERT INTO filiais (grupo,codigofilial,descricao,empresa,fantasia,cnpj,inscricao,endereco,cidade,numero,bairro,cep,estado,telefone1) values (');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtgrupo.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(copy(txtfilial.text,1,5))+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtfantasia.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtrazao.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtfantasia.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtcnpj.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtinscricao.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtenderco.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtcidade.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtnumero.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtbairro.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtcep.Text)+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(copy(cbouf.Text,1,2))+',');
        _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtfone.Text)+')');
        _dmMDFe.qrPadrao.execsql;

     application.messagebox('Filial cadastrada com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
     modalresult:=-1;

    end;



end;

procedure T_frmFilial.Button2Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmFilial.txtcepKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9'])  and (key<>#8) and (key<>#13)then
   begin
        key:=#0;
   end;
end;

procedure T_frmFilial.txtcnpjKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9'])  and (key<>#8) and (key<>#13)then
   begin
        key:=#0;
   end;
end;

procedure T_frmFilial.txtfilialKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9'])  and (key<>#8) and (key<>#13)then
   begin
        key:=#0;
   end;
end;

procedure T_frmFilial.txtfoneKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9'])  and (key<>#8) and (key<>#13)then
   begin
        key:=#0;
   end;
end;

procedure T_frmFilial.txtgrupoKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9'])  and (key<>#8) and (key<>#13)then
   begin
        key:=#0;
   end;
end;

procedure T_frmFilial.txtinscricaoKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9'])  and (key<>#8) and (key<>#13)then
   begin
        key:=#0;
   end;
end;

end.
