unit frmManifestosEncerrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.DBGrids;

type
  T_frmManifestosEncerrar = class(TForm)
    Panel1: TPanel;
    gridMdf: TStringGrid;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmManifestosEncerrar: T_frmManifestosEncerrar;

implementation

{$R *.dfm}
uses
dmMDFe,u_main;

procedure T_frmManifestosEncerrar.BitBtn1Click(Sender: TObject);
begin
_Main.btnEncerrar.Click;
end;

procedure T_frmManifestosEncerrar.BitBtn2Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmManifestosEncerrar.FormShow(Sender: TObject);
var
linha:integer;
begin
             {
    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.cdsmdfeIDE.Close;
    _dmMDFe.sdsmdfeIDE.CommandText:='SELECT * FROM mdfeide WHERE   DATEDIFF(CURRENT_DATE,dataautorizacao)> diasprevisaoencerrar and cstat="100" and codigofilial='+quotedstr( _main.glb_filial );
    _dmMDFe.sdsmdfeIDE.ExecSQL();
    _dmMDFe.cdsmdfeIDE.Open;
    _dmMDFe.cdsmdfeIDE.refresh;  }

        {

    gridMdf.Cells[0,0]:= 'UF Carga';
    gridMdf.ColWidths[1]:=200;
    gridMdf.Cells[1,0]:= 'Município';

    gridMdf.Cells[2,0]:= 'UF Descarga';
    gridMdf.ColWidths[3]:=250;
    gridMdf.Cells[3,0]:= 'Município';
    gridMdf.ColWidths[4]:=500;
    gridMdf.Cells[4,0]:= 'Chave MDFe';
    gridMdf.ColWidths[5]:=150;
    gridMdf.Cells[5,0]:= 'Data Autorização';


    if(_dmMDFe.cdsmdfeIDE.RecordCount>0)then
    begin
    linha:=1;

          _dmMDFe.cdsmdfeIDE.first;
          while not _dmMDFe.cdsmdfeIDE.eof do
          begin

           gridMdf.RowCount:= gridMdf.RowCount +1;

            gridMdf.Cells[0,linha]:= _dmMDFe.cdsmdfeIDEUFIni.AsString;
            gridMdf.Cells[1,linha]:= _dmMDFe.cdsmdfeIDExMunCarrega.AsString;
            gridMdf.Cells[2,linha]:= _dmMDFe.cdsmdfeIDEUFFim.AsString;
            gridMdf.Cells[3,linha]:= _dmMDFe.cdsmdfeIDExMunDescarga.AsString;
            gridMdf.Cells[4,linha]:= _dmMDFe.cdsmdfeIDEchMDFe.AsString;
            gridMdf.Cells[5,linha]:= _dmMDFe.cdsmdfeIDEdataautorizacao.AsString;


            linha:=linha+1;

          _dmMDFe.cdsmdfeIDE.next;
          end;


    end;            }




end;

end.
