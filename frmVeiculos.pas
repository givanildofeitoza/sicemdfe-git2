unit frmVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  T_frmVeiculos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    dbgridVeiculos: TDBGrid;
    RadioGroup1: TRadioGroup;
    rgTipo: TRadioGroup;
    btnfechar: TBitBtn;
    txtPesquisa: TEdit;
    procedure rgTipoClick(Sender: TObject);
    procedure dbgridVeiculosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure txtPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmVeiculos: T_frmVeiculos;

implementation

{$R *.dfm}
 uses
 dm,main;
procedure T_frmVeiculos.btnfecharClick(Sender: TObject);
begin
 ModalResult:=-1;
end;

procedure T_frmVeiculos.dbgridVeiculosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With dbgridVeiculos.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(dbgridVeiculos.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 dbgridVeiculos.DefaultDrawDataCell(Rect, dbgridVeiculos.Columns[DataCol].Field, State);
end;
end;

procedure T_frmVeiculos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(key=VK_ESCAPE)then
    btnfechar.Click;

   if(Key=VK_DOWN)then
   begin
    _dm.cdsVeiculos.Next;
     txtPesquisa.Text:='';
   end;

    if(Key=VK_up)then
   begin
    _dm.cdsVeiculos.Prior;
     txtPesquisa.Text:='';
   end;
end;

procedure T_frmVeiculos.rgTipoClick(Sender: TObject);
begin
txtPesquisa.SetFocus;
end;

procedure T_frmVeiculos.txtPesquisaChange(Sender: TObject);
var
sql:string;
begin
           sql:='select * from veiculos where ';

           if txtPesquisa.Text ='' then
           exit;

           case rgTipo.ItemIndex of
           0: sql:=sql+' veiculo like '+quotedstr(txtPesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);
           1: sql:=sql+' placa like '+quotedstr(txtPesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);
           2: sql:=sql+' motorista like '+quotedstr(txtPesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);

           end;


           _dm.ConnecDm.Connected:=false;
           _dm.cdsVeiculos.close;
           _dm.sdsVeiculos.CommandText:=sql;
           _dm.sdsVeiculos.ExecSQL();
           _dm.cdsVeiculos.Open;
           _dm.cdsVeiculos.Refresh;

end;

end.
