unit frmSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  T_frmSobre = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    lblano: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblversao: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblliberacao: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmSobre: T_frmSobre;

implementation

{$R *.dfm}
uses
main,dm;

procedure T_frmSobre.FormShow(Sender: TObject);
begin

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.add('select * from iqsistemas ');
    _dm.qrPadrao.open;


 lblliberacao.Caption:=_dm.qrPadrao.FieldByName('nomeliberacao').AsString;

lblano.Caption:='Todos os direitos reservados  para IQ SIstemas: 1997 - '+formatdatetime('yyyy',now);
lblversao.Caption:='Versão: '+glb_versao;
end;

end.

