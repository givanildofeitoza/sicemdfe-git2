unit frSelecionarCertificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Buttons;

type
  T_frSelecionarCertificado = class(TForm)
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frSelecionarCertificado: T_frSelecionarCertificado;

implementation

{$R *.dfm}
uses
u_main;

procedure T_frSelecionarCertificado.BitBtn1Click(Sender: TObject);
begin

ModalResult:=-1;
end;

procedure T_frSelecionarCertificado.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

glb_serie :=StringGrid1.Cells[0,Arow];

end;

end.
