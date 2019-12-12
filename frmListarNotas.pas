unit frmListarNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient;

type
  T_frmListarNotas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    gridNotas: TDBGrid;
    cbofilial: TComboBox;
    txtnumero: TEdit;
    txtserie: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    qrpadrao: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1cbdntfserie: TWideStringField;
    ClientDataSet1CbdNtfNumero: TIntegerField;
    ClientDataSet1CbdxNome_dest: TWideStringField;
    ClientDataSet1CbdNFEChaAcesso: TWideStringField;
    ClientDataSet1CbdCodigoFilial: TWideStringField;
    procedure txtserieExit(Sender: TObject);
    procedure txtserieKeyPress(Sender: TObject; var Key: Char);
    procedure txtnumeroKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     seleciondo:string;
  end;

var
  _frmListarNotas: T_frmListarNotas;

implementation

uses dmmdfe,u_Main;

{$R *.dfm}

procedure T_frmListarNotas.BitBtn1Click(Sender: TObject);
begin
      _dmMDFe.conexao.Connected:=false;
      qrPadrao.Close;
      ClientDataSet1.Close;
      qrPadrao.SQL.Clear;
      qrPadrao.SQL.add('SELECT cbdntfserie,CbdNtfNumero,CbdxNome_dest,CbdNFEChaAcesso,CbdCodigoFilial FROM cbd001 WHERE ');
      qrPadrao.SQL.add(' cbdntfserie = abs('+QuotedStr( txtSerie.Text )+')');
      qrPadrao.SQL.add(' AND cbdntfnumero='+QuotedStr( txtNumero.Text ));
      qrPadrao.SQL.add(' AND cbdmod="55" and cbdcodigofilial='+QuotedStr( copy(cbofilial.Text,1,5) ));
      qrPadrao.execsql;
      ClientDataSet1.open;
      ClientDataSet1.refresh;

end;

procedure T_frmListarNotas.BitBtn2Click(Sender: TObject);
begin
{
    if(ClientDataSet1CbdNFEChaAcesso.AsString='')then
    begin
          showmessage('Documento sem chave de acesso!');
          exit;
    end;
 }
seleciondo:='S';
ModalResult:=-1;
end;

procedure T_frmListarNotas.BitBtn3Click(Sender: TObject);
begin
seleciondo:='N';
ModalResult:=-1;
end;

procedure T_frmListarNotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if(key=#13)then
    begin
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure T_frmListarNotas.FormShow(Sender: TObject);
begin
 seleciondo:='N';

    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('select codigofilial,descricao from filiais where grupo = '+quotedstr(_Main.glb_grupo));
    _dmMDFe.qrPadrao.Open;
     cbofilial.Items.Clear;
    _dmMDFe.qrPadrao.First;
    while not _dmMDFe.qrPadrao.Eof do
    begin
        cbofilial.Items.Add(_dmMDFe.qrPadrao.FieldByName('codigofilial').AsString+' - '+_dmMDFe.qrPadrao.FieldByName('descricao').AsString);

    _dmMDFe.qrPadrao.Next;
    end;

end;

procedure T_frmListarNotas.txtnumeroKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then
key:=#0;
end;

procedure T_frmListarNotas.txtserieExit(Sender: TObject);
//var limit,qtd : integer;
// qtdDig:string;
begin
{limit := 3;
qtd:=length(txtSerie.Text);

while qtd < limit  do
begin
  qtddig := qtddig + '0';
  qtd := qtd + 1;
end;

  txtSerie.Text:= qtddig + txtSerie.Text;
 }
end;

procedure T_frmListarNotas.txtserieKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then
key:=#0;
end;

end.
