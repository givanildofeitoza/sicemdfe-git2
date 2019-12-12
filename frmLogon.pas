unit frmLogon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  T_frmLogon = class(TForm)
    Image1: TImage;
    txtUsuario: TEdit;
    txtSenha: TEdit;
    cboGrupo: TComboBox;
    cboFilial: TComboBox;
    Label1: TLabel;
    lblversao: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlbotao1: TPanel;
    pnlbotao2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure cboFilialEnter(Sender: TObject);
    procedure pnlbotao1MouseEnter(Sender: TObject);
    procedure pnlbotao2MouseEnter(Sender: TObject);
    procedure pnlbotao2MouseLeave(Sender: TObject);
    procedure pnlbotao1MouseLeave(Sender: TObject);
    procedure pnlbotao1Click(Sender: TObject);
    procedure pnlbotao2Click(Sender: TObject);
    procedure txtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure txtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmLogon: T_frmLogon;

implementation

{$R *.dfm}
uses
main, dm, dm2;

procedure fazerlogin(grupo:string; filial:string; usuario:string; senha:string);
begin


    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('SELECT count(1) as total FROM senhas where operador='+quotedstr(usuario)+' and senha=md5('+quotedstr(senha)+') and grupo=abs('+quotedstr(grupo)+') and codigofilial='+quotedstr(filial));
    _dm.qrpadrao.Open;


    if(_dm.qrpadrao.FieldByName('total').AsInteger>0)then
    begin
      login:='S';
    glb_grupo:=   copy(_frmLogon.cboGrupo.Text,1,5);
    glb_filial:= copy(_frmLogon.cboFilial.Text,1,5);
    glb_usuario:=_frmLogon.txtUsuario.text;



    _dm.ConnecDm.Connected:=false;
    _dm.cdsFiliais.Close;
       _dm.sdsFiliais.CommandText:='SELECT * FROM filiais WHERE grupo =abs('+quotedstr(copy(_frmLogon.cboGrupo.Text,1,5))+') AND codigofilial='+quotedstr(copy(_frmLogon.cboFilial.Text,1,5));
    _dm.sdsFiliais.ExecSQL;
    _dm.cdsFiliais.open;
    _dm.cdsFiliais.Refresh;



    _dm.ConnecDm.Connected:=false;
    _dm.cdssenhas.Close;
    _dm.sdssenhas.CommandText:='SELECT * FROM senhas WHERE  codigofilial='+quotedstr(copy(_frmLogon.cboFilial.Text,1,5))+' AND operador='+quotedstr(usuario);
    _dm.sdssenhas.ExecSQL;
    _dm.cdssenhas.open;
    _dm.cdssenhas.Refresh;



     end
     else
     begin

     application.MessageBox('Usuário ou senha incorretos!','Alerta',MB_ICONEXCLAMATION+MB_OK);
     login:='N';

     end;


end;

procedure T_frmLogon.cboFilialEnter(Sender: TObject);
begin
    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('SELECT codigofilial,fantasia,empresa,grupo FROM filiais where grupo=abs('+quotedstr(copy(cboGrupo.Text,1,5))+')');
    _dm.qrpadrao.Open;

     cbofilial.Items.Clear;
    _dm.qrpadrao.first;
    while not _dm.qrpadrao.eof do
    begin
     cbofilial.Items.Add(_dm.qrpadrao.FieldByName('codigofilial').AsString.PadLeft(5,'0') +'-'+_dm.qrpadrao.FieldByName('empresa').AsString);

    _dm.qrpadrao.next;
    end;
end;

procedure T_frmLogon.FormShow(Sender: TObject);
begin

lblversao.Caption:=glb_versao;


    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('SELECT * FROM empresas');
    _dm.qrpadrao.Open;

     cbogrupo.Items.Clear;
    _dm.qrpadrao.first;
    while not _dm.qrpadrao.eof do
    begin
     cbogrupo.Items.Add(_dm.qrpadrao.FieldByName('id').AsString.PadLeft(5,'0') +'-'+_dm.qrpadrao.FieldByName('empresa').AsString);

    _dm.qrpadrao.next;
    end;
end;

procedure T_frmLogon.pnlbotao1Click(Sender: TObject);
begin

fazerlogin(copy(cboGrupo.Text,1,5),copy(cboFilial.Text,1,5),txtUsuario.Text,txtSenha.Text);
//showmessage('0');
if(login='S')then
ModalResult:=-1;
//showmessage('1');

end;

procedure T_frmLogon.pnlbotao1MouseEnter(Sender: TObject);
begin
pnlbotao1.Color:= clGray;
end;

procedure T_frmLogon.pnlbotao1MouseLeave(Sender: TObject);
begin
pnlbotao1.Color:= clMenuHighlight;
end;

procedure T_frmLogon.pnlbotao2Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure T_frmLogon.pnlbotao2MouseEnter(Sender: TObject);
begin
pnlbotao2.Color:= clGray;
end;

procedure T_frmLogon.pnlbotao2MouseLeave(Sender: TObject);
begin
pnlbotao2.Color:= clMenuHighlight;
end;

procedure T_frmLogon.txtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if(key = #13)then
  begin
     fazerlogin(copy(cboGrupo.Text,1,5),copy(cboFilial.Text,1,5),txtUsuario.Text,txtSenha.Text);
      if(login='S')then
      ModalResult:=-1;

  end;
end;

procedure T_frmLogon.txtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13)then
Perform(WM_NEXTDLGCTL,0,0);
end;

end.
