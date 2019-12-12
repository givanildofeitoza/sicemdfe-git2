unit frmSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  T_frmSplash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    pbcarregamento: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  _frmSplash: T_frmSplash;
   segundos:integer=0;

implementation

{$R *.dfm}
uses
main;

procedure T_frmSplash.Timer1Timer(Sender: TObject);
begin


    segundos:=segundos+1;


    pbcarregamento.Position:=pbcarregamento.Position+50;

    if(segundos=5)then
    begin

    splash:='S';
    _frmSplash.ModalResult:=-1;
    timer1.Enabled:=false;


    end;

end;

end.
