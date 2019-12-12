unit u_transpotadoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  T_frmVeiculos = class(TForm)
    pnlTransportadoras: TPanel;
    pnlVeiculos: TPanel;
    pnlBottom: TPanel;
    btnFechar: TButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    gridTransportadoras: TDBGrid;
    Label2: TLabel;
    gridVeiculos: TDBGrid;
    Label3: TLabel;
    txtPesquisa: TMaskEdit;
    Button2: TButton;
    rtipopesq: TRadioGroup;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure gridTransportadorasCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmVeiculos: T_frmVeiculos;

implementation

uses dmmdfe, u_main, clipbrd;

{$R *.dfm}

procedure T_frmVeiculos.btnFecharClick(Sender: TObject);
begin
      ModalResult:=-1;
end;

procedure T_frmVeiculos.Button2Click(Sender: TObject);
var
campo:string;
begin

    case rtipopesq.ItemIndex of
    0: campo:='razaosocial';
    1: campo:='fantasia';
    2: campo:='codigofilial';
    end;


      _dmMDFe.cdsTransportadora.Close;
      _dmMDFe.sdsTransportadora.Close;
      _dmMDFe.sdsTransportadora.CommandText:='SELECT * FROM transportadoras where '+
       campo+' like '+QuotedStr('%'+ txtPesquisa.Text + '%' )+'  ORDER BY fantasia';
       clipboard.astext:= _dmMDFe.sdsTransportadora.CommandText;
      _dmMDFe.cdsTransportadora.Open;


end;

procedure T_frmVeiculos.DataSource1DataChange(Sender: TObject; Field: TField);
begin

      _dmMDFe.cdsVeiculos.Close;
      _dmMDFe.sdsVeiculos.Close;
      _dmMDFe.sdsVeiculos.CommandText:='SELECT * FROM veiculos WHERE idtransportadora='+QuotedStr( _dmMDFe.cdsTransportadorainc.AsString );
      _dmMDFe.cdsVeiculos.Open;

end;

procedure T_frmVeiculos.gridTransportadorasCellClick(Column: TColumn);
begin
    {_dmMDFe.conexao.Connected:=false;
    _dmMDFe.cdsVeiculos.close;
    _dmMDFe.sdsVeiculos.CommandText:='select * from veiculos where idtransportadora='+quotedstr(_dmMDFe.cdsTransportadorainc.AsString);
    _dmMDFe.sdsVeiculos.ExecSQL();
    _dmMDFe.cdsVeiculos.Open;
    _dmMDFe.cdsVeiculos.refresh;}


end;

end.
