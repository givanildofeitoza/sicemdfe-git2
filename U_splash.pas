unit U_splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  T_splash = class(TForm)
    Image2: TImage;
    Label1: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _splash: T_splash;


implementation


uses
U_main,dmMDFe;

{$R *.dfm}

procedure T_splash.FormShow(Sender: TObject);
begin






  _dmMDFe.conexao.Connected:=false;
  _dmMDFe.qrPadrao.SQL.Clear;
  _dmMDFe.qrPadrao.SQL.add('SELECT COUNT(*) AS total FROM tab_municipios WHERE uf= ""');
  _dmMDFe.qrPadrao.Open;


  if(_dmMDFe.qrPadrao.FieldByName('total').AsInteger > 0)then
  begin
      if(application.MessageBox('Tabela de municípios desatualizada. Deseja atualizar agora?','Pergunta',MB_YESNO+MB_ICONQUESTION)=IDYES)then
       begin
         _dmMDFe.conexao.Connected:=false;
         _dmMDFe.qrPadrao.SQL.Clear;
         _dmMDFe.qrPadrao.SQL.add('UPDATE tab_municipios AS m, estados AS e SET m.uf = e.uf WHERE m.iduf = e.id');
         _dmMDFe.qrPadrao.ExecSQL();

       end;
  end;


end;

end.
