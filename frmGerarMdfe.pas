unit frmGerarMdfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, RxToolEdit, Vcl.Mask, Vcl.ComCtrls, RxCurrEdit,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Buttons;

type
  T_frmGerarMdfe = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    grpIdentificacao: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    txtmodeloMDF: TMaskEdit;
    txtserieMDF: TMaskEdit;
    txtnumeroMDF: TMaskEdit;
    cboUFCarregamento: TComboBox;
    cboUFDescarregamento: TComboBox;
    cboMunicipioCarregamento: TComboBox;
    cboMunicipioDescarregamento: TComboBox;
    chkCidades: TCheckBox;
    txtDataEmissao: TDateEdit;
    Label33: TLabel;
    cboUfTrajeto: TComboBox;
    listboxuf: TListBox;
    btnaddtrajeto: TImage;
    btnextrajeto: TImage;
    txtInfComplementar: TMemo;
    Label23: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    cboMunDesAvulso: TComboBox;
    cboUfdessAvulso: TComboBox;
    cboMunCarrAvulso: TComboBox;
    cboUfCarrAvulso: TComboBox;
    Label5: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    txtvalor: TCurrencyEdit;
    txtchave: TEdit;
    txtSegChave: TEdit;
    chkcontingencia: TCheckBox;
    Label6: TLabel;
    imgBtnaddNf: TImage;
    GridNFE: TDBGrid;
    Label3: TLabel;
    imbBtnExNf: TImage;
    txtserie: TEdit;
    Label4: TLabel;
    Label15: TLabel;
    txtnumero: TEdit;
    cbofilial: TComboBox;
    Label16: TLabel;
    imgBtnPesq: TImage;
    gridNotas: TDBGrid;
    imgBtnLancProp: TImage;
    Label17: TLabel;
    Label18: TLabel;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1cbdntfserie: TWideStringField;
    ClientDataSet1CbdNtfNumero: TIntegerField;
    ClientDataSet1CbdxNome_dest: TWideStringField;
    ClientDataSet1CbdNFEChaAcesso: TWideStringField;
    ClientDataSet1CbdCodigoFilial: TWideStringField;
    qrpadrao: TSQLQuery;
    DataSource1: TDataSource;
    txtvCarga: TCurrencyEdit;
    Label19: TLabel;
    txtcUnid: TComboBox;
    Label22: TLabel;
    txtqCarga: TCurrencyEdit;
    Label21: TLabel;
    grpVeiculo: TGroupBox;
    lblPlaca: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label50: TLabel;
    Label61: TLabel;
    txtPlaca: TMaskEdit;
    txtRNTC: TMaskEdit;
    txtCondutor: TMaskEdit;
    txtCPFCondutor: TMaskEdit;
    txtTara: TCurrencyEdit;
    txtCapacidadeKG: TCurrencyEdit;
    txtCapacidadeM3: TCurrencyEdit;
    cboTipoVeiculo: TComboBox;
    cboTipoCarroceria: TComboBox;
    cboTipoUnidadeTracao: TComboBox;
    txtRenavam: TMaskEdit;
    txtUFPlaca: TMaskEdit;
    cboTipoEmit: TComboBox;
    txtdiasconclusao: TEdit;
    GroupBox1: TGroupBox;
    Label47: TLabel;
    txtciot: TEdit;
    Label52: TLabel;
    txtrespseg: TComboBox;
    Label55: TLabel;
    txtnapolice: TEdit;
    txtnraverbacao: TEdit;
    Label56: TLabel;
    txtcnpjrespseg: TEdit;
    Label53: TLabel;
    txtCPFCNPJciot: TEdit;
    Label51: TLabel;
    Label54: TLabel;
    txtseguradora: TEdit;
    Label57: TLabel;
    txtcnpjseguradora: TEdit;
    Image3: TImage;
    btnSalvarConf: TPanel;
    btnCancelar: TPanel;
    procedure cboUfTrajetoEnter(Sender: TObject);
    procedure btnaddtrajetoClick(Sender: TObject);
    procedure btnextrajetoClick(Sender: TObject);
    procedure cboUFCarregamentoEnter(Sender: TObject);
    procedure cboMunicipioCarregamentoEnter(Sender: TObject);
    procedure cboUFDescarregamentoEnter(Sender: TObject);
    procedure cboMunicipioDescarregamentoEnter(Sender: TObject);
    procedure imgBtnPesqClick(Sender: TObject);
    procedure cboUfCarrAvulsoEnter(Sender: TObject);
    procedure cboUfCarrAvulsoExit(Sender: TObject);
    procedure cboMunCarrAvulsoEnter(Sender: TObject);
    procedure cboUfdessAvulsoEnter(Sender: TObject);
    procedure cboUfdessAvulsoExit(Sender: TObject);
    procedure cboMunDesAvulsoEnter(Sender: TObject);
    procedure chkcontingenciaClick(Sender: TObject);
    procedure imbBtnExNfClick(Sender: TObject);
    procedure imgBtnLancPropClick(Sender: TObject);
    procedure txtCPFCondutorExit(Sender: TObject);
    procedure txtCPFCondutorKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscarTransportadoraClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure imgBtnaddNfClick(Sender: TObject);
    procedure btnSalvarConfMouseEnter(Sender: TObject);
    procedure btnSalvarConfMouseLeave(Sender: TObject);
    procedure btnCancelarMouseEnter(Sender: TObject);
    procedure btnCancelarMouseLeave(Sender: TObject);
    procedure btnSalvarConfClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   ufDest,codMundest,munDest : string;
  end;

var
  _frmGerarMdfe: T_frmGerarMdfe;

implementation

{$R *.dfm}
uses
dmMDFe,u_main,U_transpotadoras,clipbrd;

procedure T_frmGerarMdfe.BitBtn1Click(Sender: TObject);
begin
    if(strtoint(txtdiasconclusao.Text)=0)then
    begin
		application.MessageBox('Informe o prazo para encerramento!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;


    if trim(txtcUnid.Text) = '' then
    begin
		application.MessageBox('Campo Unidade Medida Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;

	if trim(txtRNTC.Text) = '' then
    begin
		application.MessageBox('Campo RNTC  Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;

    if trim(txtRenavam.Text) = '' then
    begin
		application.MessageBox('Campo RENAVAN  Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;

    if trim(txtCPFCondutor.Text) = '' then
    begin
		application.MessageBox('Campo CPF  Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;



	Novo:=false;
	FormatSettings.DecimalSeparator:='.';

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('update mdfeide set ');
    _dmMDFe.qrPadrao.SQL.Add('cUF=(SELECT id FROM estados WHERE uf=(SELECT estado FROM filiais WHERE codigofilial='+QuotedStr(glb_filial)+'))  '+', ');
    _dmMDFe.qrPadrao.SQL.Add('cMDF='+QuotedStr('99999')+', ');
    _dmMDFe.qrPadrao.SQL.Add('dhEmi=(SELECT CURRENT_TIMESTAMP), ');


	//Tipo Emissor
	_dmMDFe.qrPadrao.SQL.Add('tpEmis='+QuotedStr( copy(cboTipoEmit.Text, 1, 1) )+', ');

	//uf carregamento
	_dmMDFe.qrPadrao.SQL.Add('UFIni='+QuotedStr( copy(cboUFCarregamento.Text, 1, 2) )+', ');

	//uf descarregamento
	_dmMDFe.qrPadrao.SQL.Add('UFFim='+QuotedStr( copy(cboUFDescarregamento.Text, 1, 2) )+', ');

	// codigo municipio carregamento
	_dmMDFe.qrPadrao.SQL.Add('cMunCarrega=(SELECT tab_municipios.id FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(copy(cboUFCarregamento.Text, 1, 2))+' AND estados.id = tab_municipios.iduf and tab_municipios.nome='+QuotedStr(cboMunicipioCarregamento.Text)+') ,');

	// municipio carregamento
	_dmMDFe.qrPadrao.SQL.Add('xMunCarrega='+QuotedStr( cboMunicipioCarregamento.Text )+', ');

	//codigo municipio descarregamento
	_dmMDFe.qrPadrao.SQL.Add('cMunDescarga=(SELECT tab_municipios.id FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(copy(cboUFDescarregamento.Text, 1, 2))+'AND estados.id = tab_municipios.iduf AND tab_municipios.nome='+QuotedStr(cboMunicipioDescarregamento.Text)+') ,');

	// municipio descarregamento
	_dmMDFe.qrPadrao.SQL.Add('xMunDescarga='+QuotedStr( cboMunicipioDescarregamento.Text )+', ');

    _dmMDFe.qrPadrao.SQL.Add('vcarga='+QuotedStr( FormatFloat('#######0.00', txtvCarga.Value) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('cunid='+QuotedStr( copy(txtcUnid.Text,1,2) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('qcarga='+QuotedStr( FormatFloat('########0.0000', txtqCarga.Value) )+', ');

 //	if(txtChacesso.Visible=true)then
 //	_dmMDFe.qrPadrao.SQL.Add('chMDFe='+QuotedStr( txtChacesso.Text )+', ');

    _dmMDFe.qrPadrao.SQL.Add(' infCpl='+QuotedStr(txtInfComplementar.Text)+', ');
    _dmMDFe.qrPadrao.SQL.Add(' diasprevisaoencerrar='+QuotedStr(txtdiasconclusao.Text)+' ');
    _dmMDFe.qrPadrao.SQL.Add(' where codigofilial='+QuotedStr(glb_filial));
    _dmMDFe.qrPadrao.SQL.Add(' and serie='+QuotedStr( txtserieMDF.Text ));
    _dmMDFe.qrPadrao.SQL.Add(' and nMDF='+QuotedStr( txtnumeroMDF.Text ));
    _dmMDFe.qrPadrao.ExecSQL;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('update mdferodo set ');
    _dmMDFe.qrPadrao.SQL.Add('RNTRC='+QuotedStr( txtRNTC.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('CIOT='+QuotedStr( copy(txtciot.text,1,12) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_cInt='+QuotedStr( '1' )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_placa='+QuotedStr( txtPlaca.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_RENAVAM='+QuotedStr( txtRenavam.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_tara='+QuotedStr( CurrToStr(txtTara.Value ) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_capKG='+QuotedStr( CurrToStr(txtCapacidadeKG.Value ) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_capM3='+QuotedStr( CurrToStr( txtCapacidadeM3.Value ))+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_tpRod='+QuotedStr( Copy(cboTipoVeiculo.Text,1,1) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_tpCar='+QuotedStr( Copy(cboTipoCarroceria.Text,1,1) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_UF='+QuotedStr( txtUFPlaca.Text  )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_condutor_xNome='+QuotedStr( txtCondutor.Text )+', ');

    _dmMDFe.qrPadrao.SQL.Add('CPF_CNPJ_CIOT='+QuotedStr( txtCPFCNPJciot.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('respSeg='+QuotedStr( copy(txtrespseg.Text,1,1) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('CNPJrespseg='+QuotedStr( txtcnpjrespseg.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('xSeg='+QuotedStr( txtseguradora.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('CNPJseg='+QuotedStr( txtcnpjseguradora.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('nApol='+QuotedStr( txtnapolice.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('nAver='+QuotedStr( txtnraverbacao.Text )+', ');



    _dmMDFe.qrPadrao.SQL.Add('veicTracao_condutor_CPF='+QuotedStr( txtCPFCondutor.Text )+' ');
    _dmMDFe.qrPadrao.SQL.Add(' where codigofilial='+QuotedStr(glb_filial));
    _dmMDFe.qrPadrao.SQL.Add(' and serie='+QuotedStr( txtserieMDF.Text ));
    _dmMDFe.qrPadrao.SQL.Add(' and nMDF='+QuotedStr( txtnumeroMDF.Text ));
    _dmMDFe.qrPadrao.ExecSQL;


    _dmMDFe.cdsmdfeIDE.Refresh;



	_dmMDFe.cdsmdfeInfDoc.close;
  _dmMDFe.sdsmdfeInfDoc.CommandText:='SELECT * FROM mdfeinfdoc WHERE nMDF='+quotedstr(txtnumeroMDF.Text)+' AND serie='+quotedstr(txtserieMDF.Text);
  _dmMDFe.sdsmdfeInfDoc.ExecSQL();
	_dmMDFe.cdsmdfeInfDoc.open;
  _dmMDFe.cdsmdfeInfDoc.Refresh;


    _dmMDFe.cdsmdfeRodo.Refresh;

	FormatSettings.DecimalSeparator:='.';
    // SpeedButton1Click(Sender);


    application.MessageBox('Informações Salvas!','Informação',MB_ICONINFORMATION+mb_ok);


end;

procedure T_frmGerarMdfe.BitBtn2Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmGerarMdfe.btnBuscarTransportadoraClick(Sender: TObject);
begin
	application.CreateForm(t_frmVeiculos, _frmVeiculos);
	_frmVeiculos.showmodal;
	_frmVeiculos.release;


	txtPlaca.Text := _dmMDFe.cdsVeiculosplaca.AsString;
	txtUFPlaca.Text := _dmMDFe.cdsVeiculosestadoplaca.AsString;
	txtRNTC.Text := _dmMDFe.cdsVeiculosANTT.AsString;
	txtRenavam.Text := _dmMDFe.cdsVeiculosrenavam.AsString;
	//txtTara.Value := 0;
	txtCapacidadeKG.Value := _dmMDFe.cdsVeiculoscapacidadeKg.AsFloat;
	txtCapacidadeM3.Value := _dmMDFe.cdsVeiculoscapacidadem3.AsFloat;
	txtTara.Value := _dmMDFe.cdsVeiculostara.AsFloat;

	txtCondutor.Text := _dmMDFe.cdsVeiculosmotorista.AsString;
	txtCPFCondutor.Text := _dmMDFe.cdsTransportadoracpf.AsString;

	cboTipoVeiculo.Text := _dmMDFe.cdsVeiculostiporodado.AsString;
	cboTipoCarroceria.Text := _dmMDFe.cdsVeiculostipocarroceria.AsString;
end;

procedure T_frmGerarMdfe.btnCancelarClick(Sender: TObject);
begin

  _dmMDFe.cdsmdfeIde.Close;
	_dmMDFe.cdsmdfeIde.Close;
	_dmMDFe.sdsmdfeIde.CommandText:='select * from mdfeide where '+
	' codigofilial='+QuotedStr(glb_filial)+
	' and serie='+QuotedStr( txtserieMDF.Text )+
	' and nMDF='+QuotedStr( txtnumeroMDF.Text );
	_dmMDFe.cdsmdfeIde.Open;

modalresult:=-1;
end;

procedure T_frmGerarMdfe.btnCancelarMouseEnter(Sender: TObject);
begin
 btnCancelar.Color:=clgray;
end;

procedure T_frmGerarMdfe.btnCancelarMouseLeave(Sender: TObject);
begin
 btnCancelar.Color:=clMaroon;
end;

procedure T_frmGerarMdfe.btnSalvarConfClick(Sender: TObject);
begin
    if(strtoint(txtdiasconclusao.Text)=0)then
    begin
		application.MessageBox('Informe o prazo para encerramento!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;


    if trim(txtcUnid.Text) = '' then
    begin
		application.MessageBox('Campo Unidade Medida Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;

	if trim(txtRNTC.Text) = '' then
    begin
		application.MessageBox('Campo RNTC  Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;

    if trim(txtRenavam.Text) = '' then
    begin
		application.MessageBox('Campo RENAVAN  Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;

    if trim(txtCPFCondutor.Text) = '' then
    begin
		application.MessageBox('Campo CPF  Não Pode Ser Vazio','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;



	Novo:=false;
	FormatSettings.DecimalSeparator:='.';

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('update mdfeide set ');
    _dmMDFe.qrPadrao.SQL.Add('cUF=(SELECT id FROM estados WHERE uf=(SELECT estado FROM filiais WHERE codigofilial='+QuotedStr(glb_filial)+'))  '+', ');
    _dmMDFe.qrPadrao.SQL.Add('cMDF='+QuotedStr('99999')+', ');
    _dmMDFe.qrPadrao.SQL.Add('dhEmi=(SELECT CURRENT_TIMESTAMP), ');


	//Tipo Emissor
	_dmMDFe.qrPadrao.SQL.Add('tpEmis='+QuotedStr( copy(cboTipoEmit.Text, 1, 1) )+', ');

	//uf carregamento
	_dmMDFe.qrPadrao.SQL.Add('UFIni='+QuotedStr( copy(cboUFCarregamento.Text, 1, 2) )+', ');

	//uf descarregamento
	_dmMDFe.qrPadrao.SQL.Add('UFFim='+QuotedStr( copy(cboUFDescarregamento.Text, 1, 2) )+', ');

	// codigo municipio carregamento
	_dmMDFe.qrPadrao.SQL.Add('cMunCarrega=(SELECT tab_municipios.id FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(copy(cboUFCarregamento.Text, 1, 2))+' AND estados.id = tab_municipios.iduf and tab_municipios.nome='+QuotedStr(cboMunicipioCarregamento.Text)+') ,');

	// municipio carregamento
	_dmMDFe.qrPadrao.SQL.Add('xMunCarrega='+QuotedStr( cboMunicipioCarregamento.Text )+', ');

	//codigo municipio descarregamento
	_dmMDFe.qrPadrao.SQL.Add('cMunDescarga=(SELECT tab_municipios.id FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(copy(cboUFDescarregamento.Text, 1, 2))+'AND estados.id = tab_municipios.iduf AND tab_municipios.nome='+QuotedStr(cboMunicipioDescarregamento.Text)+') ,');

	// municipio descarregamento
	_dmMDFe.qrPadrao.SQL.Add('xMunDescarga='+QuotedStr( cboMunicipioDescarregamento.Text )+', ');

    _dmMDFe.qrPadrao.SQL.Add('vcarga='+QuotedStr( FormatFloat('#######0.00', txtvCarga.Value) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('cunid='+QuotedStr( copy(txtcUnid.Text,1,2) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('qcarga='+QuotedStr( FormatFloat('########0.0000', txtqCarga.Value) )+', ');

 //	if(txtChacesso.Visible=true)then
 //	_dmMDFe.qrPadrao.SQL.Add('chMDFe='+QuotedStr( txtChacesso.Text )+', ');

    _dmMDFe.qrPadrao.SQL.Add(' infCpl='+QuotedStr(txtInfComplementar.Text)+', ');
    _dmMDFe.qrPadrao.SQL.Add(' diasprevisaoencerrar='+QuotedStr(txtdiasconclusao.Text)+' ');
    _dmMDFe.qrPadrao.SQL.Add(' where codigofilial='+QuotedStr(glb_filial));
    _dmMDFe.qrPadrao.SQL.Add(' and serie='+QuotedStr( txtserieMDF.Text ));
    _dmMDFe.qrPadrao.SQL.Add(' and nMDF='+QuotedStr( txtnumeroMDF.Text ));
    _dmMDFe.qrPadrao.ExecSQL;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('update mdferodo set ');
    _dmMDFe.qrPadrao.SQL.Add('RNTRC='+QuotedStr( txtRNTC.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('CIOT='+QuotedStr( copy(txtciot.text,1,12) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_cInt='+QuotedStr( '1' )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_placa='+QuotedStr( txtPlaca.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_RENAVAM='+QuotedStr( txtRenavam.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_tara='+QuotedStr( CurrToStr(txtTara.Value ) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_capKG='+QuotedStr( CurrToStr(txtCapacidadeKG.Value ) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_capM3='+QuotedStr( CurrToStr( txtCapacidadeM3.Value ))+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_tpRod='+QuotedStr( Copy(cboTipoVeiculo.Text,1,1) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_tpCar='+QuotedStr( Copy(cboTipoCarroceria.Text,1,1) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_UF='+QuotedStr( txtUFPlaca.Text  )+', ');
    _dmMDFe.qrPadrao.SQL.Add('veicTracao_condutor_xNome='+QuotedStr( txtCondutor.Text )+', ');

    _dmMDFe.qrPadrao.SQL.Add('CPF_CNPJ_CIOT='+QuotedStr( txtCPFCNPJciot.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('respSeg='+QuotedStr( copy(txtrespseg.Text,1,1) )+', ');
    _dmMDFe.qrPadrao.SQL.Add('CNPJrespseg='+QuotedStr( txtcnpjrespseg.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('xSeg='+QuotedStr( txtseguradora.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('CNPJseg='+QuotedStr( txtcnpjseguradora.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('nApol='+QuotedStr( txtnapolice.Text )+', ');
    _dmMDFe.qrPadrao.SQL.Add('nAver='+QuotedStr( txtnraverbacao.Text )+', ');



    _dmMDFe.qrPadrao.SQL.Add('veicTracao_condutor_CPF='+QuotedStr( txtCPFCondutor.Text )+' ');
    _dmMDFe.qrPadrao.SQL.Add(' where codigofilial='+QuotedStr(glb_filial));
    _dmMDFe.qrPadrao.SQL.Add(' and serie='+QuotedStr( txtserieMDF.Text ));
    _dmMDFe.qrPadrao.SQL.Add(' and nMDF='+QuotedStr( txtnumeroMDF.Text ));
    _dmMDFe.qrPadrao.ExecSQL;


    _dmMDFe.cdsmdfeIDE.Refresh;



	_dmMDFe.cdsmdfeInfDoc.close;
  _dmMDFe.sdsmdfeInfDoc.CommandText:='SELECT * FROM mdfeinfdoc WHERE nMDF='+quotedstr(txtnumeroMDF.Text)+' AND serie='+quotedstr(txtserieMDF.Text);
  _dmMDFe.sdsmdfeInfDoc.ExecSQL();
	_dmMDFe.cdsmdfeInfDoc.open;
  _dmMDFe.cdsmdfeInfDoc.Refresh;


    _dmMDFe.cdsmdfeRodo.Refresh;

	FormatSettings.DecimalSeparator:='.';
    // SpeedButton1Click(Sender);


    application.MessageBox('Informações Salvas!','Informação',MB_ICONINFORMATION+mb_ok);


end;

procedure T_frmGerarMdfe.btnSalvarConfMouseEnter(Sender: TObject);
begin
 btnSalvarConf.Color:=clgray;
end;

procedure T_frmGerarMdfe.btnSalvarConfMouseLeave(Sender: TObject);
begin
 btnSalvarConf.Color:=clMaroon;
end;

procedure T_frmGerarMdfe.cboMunCarrAvulsoEnter(Sender: TObject);
begin
	cboMunCarrAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(Copy(cboUfCarrAvulso.Text, 1, 2))+' and tab_municipios.iduf = estados.id';
    _dmMDFe.qrPadrao.Open;


    _dmMDFe.qrPadrao.first;
    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboMunCarrAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('NOME').AsString);
        _dmMDFe.qrPadrao.Next;
	end;
end;

procedure T_frmGerarMdfe.cboMunDesAvulsoEnter(Sender: TObject);
begin
	cboMunDesAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(Copy(cboUfdessAvulso.Text, 1, 2))+' and tab_municipios.iduf = estados.id';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboMunDesAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('NOME').AsString);
        _dmMDFe.qrPadrao.Next;
	end;
end;

procedure T_frmGerarMdfe.cboMunicipioCarregamentoEnter(Sender: TObject);
begin

	cboMunicipioCarregamento.Items.Clear;

	// _dmMDFe.qrPadrao.Close;
		// _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios WHERE uf='+QuotedStr(Copy(cboUFCarregamento.Text, 1, 2));
	//_dmMDFe.qrPadrao.Open;

	_dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(Copy(cboUFCarregamento.Text, 1, 2))+' and tab_municipios.iduf = estados.id';
    _dmMDFe.qrPadrao.Open;


    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboMunicipioCarregamento.Items.Add(_dmMDFe.qrPadrao.FieldByName('NOME').AsString);
        _dmMDFe.qrPadrao.Next;
	end;

end;

procedure T_frmGerarMdfe.cboMunicipioDescarregamentoEnter(Sender: TObject);
begin
	  cboMunicipioDescarregamento.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(Copy(cboUFDescarregamento.Text, 1, 2))+' and tab_municipios.iduf = estados.id';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboMunicipioDescarregamento.Items.Add(_dmMDFe.qrPadrao.FieldByName('NOME').AsString);
        _dmMDFe.qrPadrao.Next;
  	end;

end;

procedure T_frmGerarMdfe.cboUfCarrAvulsoEnter(Sender: TObject);
begin
	cboUfCarrAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf, "-", estado) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUfCarrAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;

	end;
end;

procedure T_frmGerarMdfe.cboUfCarrAvulsoExit(Sender: TObject);
begin
	if(copy(cboUFcarregamento.Text,1,2) <>  copy(cboUfcarrAvulso.Text,1,2))then
	begin
		application.MessageBox('UF selecionado difere do UF carregamento informado no cabeçalho!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		cboUfcarrAvulso.Text:=copy(cboUFcarregamento.Text,1,2);
		cboUfcarrAvulso.SetFocus;
		exit;
	end;
end;

procedure T_frmGerarMdfe.cboUFCarregamentoEnter(Sender: TObject);
begin
	cboUFCarregamento.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf, "-", estado) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUFCarregamento.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;

	end;

end;

procedure T_frmGerarMdfe.cboUFDescarregamentoEnter(Sender: TObject);
begin
	cboUFDescarregamento.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf, "-", estado) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUFDescarregamento.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;
	end;

end;

procedure T_frmGerarMdfe.cboUfdessAvulsoEnter(Sender: TObject);
begin
	cboUfdessAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf, "-", estado) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUfdessAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;
	end;
end;

procedure T_frmGerarMdfe.cboUfdessAvulsoExit(Sender: TObject);
begin
	if(copy(cboUFDescarregamento.Text,1,2) <>  copy(cboUfdessAvulso.Text,1,2))then
	begin
		showmessage('UF selecionado difere do UF descarregamento informado no cabeçalho');
		cboUfdessAvulso.Text:= cboUFDescarregamento.Text;
		cboUfdessAvulso.SetFocus;
		exit;
	end;
end;

procedure T_frmGerarMdfe.cboUfTrajetoEnter(Sender: TObject);
begin
	cboUfTrajeto.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf, "-", estado) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUfTrajeto.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;
	end;

end;

procedure T_frmGerarMdfe.chkcontingenciaClick(Sender: TObject);
begin
	if(chkcontingencia.Checked=true)then
	txtSegChave.Enabled:=true
	else
	txtSegChave.Enabled:=false;
end;

procedure T_frmGerarMdfe.btnaddtrajetoClick(Sender: TObject);
begin




      _dmMDFe.qrPadrao.SQL.Clear;
      _dmMDFe.qrPadrao.SQL.Add('SELECT COUNT(1) AS total FROM mdfetrajeto WHERE nmdf='+quotedstr(txtnumeroMDF.Text)+
      ' AND serie='+quotedstr(txtserieMDF.Text)+
      ' AND codigofilial='+quotedstr(glb_filial)+
      ' AND estado='+quotedstr(copy(cboUfTrajeto.Text,1,2)));
      _dmMDFe.qrPadrao.open();

      if( _dmMDFe.qrPadrao.FieldByName('total').AsInteger>0)then
      begin
          Application.MessageBox('UF já incluído!','Erro',MB_ICONEXCLAMATION+mb_ok);
          exit;
      end;

          try
          begin

            _dmMDFe.qrPadrao.SQL.Clear;
            _dmMDFe.qrPadrao.SQL.Add(' INSERT INTO mdfetrajeto (estado,serie,nmdf,codigofilial) VALUES ( ');
            _dmMDFe.qrPadrao.SQL.Add(quotedstr(copy(cboUfTrajeto.Text,1,2))+',');
            _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtserieMDF.Text)+',');
            _dmMDFe.qrPadrao.SQL.Add(quotedstr(txtnumeroMDF.Text)+',');
            _dmMDFe.qrPadrao.SQL.Add(quotedstr(Glb_filial)+')');
            _dmMDFe.qrPadrao.ExecSQL();

             listboxuf.items.Add(cboUfTrajeto.Text);
          end
          except
             Application.MessageBox('Não foi possível incluir estado no trajeto!','Erro',MB_ICONEXCLAMATION+mb_ok);
          end;

end;

procedure T_frmGerarMdfe.btnextrajetoClick(Sender: TObject);
begin

if(listboxuf.ItemIndex<0)then
begin
application.MessageBox('Selecione o estado a ser exluído do trajeto!','Alerta',+MB_ICONEXCLAMATION+mb_ok);
exit;
end;

      _dmMDFe.qrPadrao.SQL.Clear;
      _dmMDFe.qrPadrao.SQL.Add('DELETE FROM mdfetrajeto WHERE nmdf='+quotedstr(txtnumeroMDF.Text)+
      ' AND serie='+quotedstr(txtserieMDF.Text)+
      ' AND codigofilial='+quotedstr(glb_filial)+
      ' AND estado='+quotedstr(copy( listboxuf.Items[(listboxuf.ItemIndex)],1,2 )));
       _dmMDFe.qrPadrao.execsql;

       listboxuf.items.Delete(listboxuf.ItemIndex);

end;

procedure T_frmGerarMdfe.Image3Click(Sender: TObject);
begin
	application.CreateForm(t_frmVeiculos, _frmVeiculos);
	_frmVeiculos.showmodal;
	_frmVeiculos.release;


	txtPlaca.Text := _dmMDFe.cdsVeiculosplaca.AsString;
	txtUFPlaca.Text := _dmMDFe.cdsVeiculosestadoplaca.AsString;
	txtRNTC.Text := _dmMDFe.cdsVeiculosANTT.AsString;
	txtRenavam.Text := _dmMDFe.cdsVeiculosrenavam.AsString;
	//txtTara.Value := 0;
	txtCapacidadeKG.Value := _dmMDFe.cdsVeiculoscapacidadeKg.AsFloat;
	txtCapacidadeM3.Value := _dmMDFe.cdsVeiculoscapacidadem3.AsFloat;
	txtTara.Value := _dmMDFe.cdsVeiculostara.AsFloat;

	txtCondutor.Text := _dmMDFe.cdsVeiculosmotorista.AsString;
	txtCPFCondutor.Text := _dmMDFe.cdsTransportadoracpf.AsString;

	cboTipoVeiculo.Text := _dmMDFe.cdsVeiculostiporodado.AsString;
	cboTipoCarroceria.Text := _dmMDFe.cdsVeiculostipocarroceria.AsString;
end;

procedure T_frmGerarMdfe.imbBtnExNfClick(Sender: TObject);
begin



  if(_dmMDFe.cdsmdfeInfDocchNFe.AsString='')then
  exit;


	if Application.MessageBox('Deseja remover a nota fiscal selecionada deste manifesto?', 'Pergunta', MB_ICONQUESTION+MB_YESNO)=idyes then
	begin

      if(_dmMDFe.cdsmdfeIDEcstat.AsString ='100') or (_dmMDFe.cdsmdfeIDEcstat.AsString ='101') or (_dmMDFe.cdsmdfeIDEcstat.AsString ='132')then
      begin
      application.MessageBox('MDF-e já homologada! ','Alerta',MB_ICONEXCLAMATION+mb_ok);
      exit;
      end;


        _dmMDFe.qrPadrao.Close;
        _dmMDFe.qrPadrao.CommandText:='delete from mdfeinfdoc where'+
        ' codigofilial='+QuotedStr(glb_filial)+
        ' and chnfe='+QuotedStr( _dmMDFe.cdsmdfeInfDocchNFe.AsString )+
        ' and serie='+QuotedStr( txtserieMDF.Text )+
        ' and nMDF='+QuotedStr( txtnumeroMDF.Text );
        _dmMDFe.qrPadrao.ExecSQL;

        _dmMDFe.cdsmdfeInfDoc.Refresh;
	end;
end;

procedure T_frmGerarMdfe.imgBtnaddNfClick(Sender: TObject);
var
ufDest,codMundest,munDest,tiponota: string;
begin

   _dmMDFe.qrPadrao.Close;
   _dmMDFe.qrPadrao.CommandText:='SELECT COUNT(1) as total FROM mdfeinfdoc WHERE chnfe='+quotedstr(txtchave.Text)+
   ' AND serie='+quotedstr(txtserieMDF.Text)+' AND nmdf='+quotedstr(txtnumeroMDF.Text);
   _dmMDFe.qrPadrao.open();


   if(_dmMDFe.qrPadrao.FieldByName('total').asinteger>0)then
   begin
     application.MessageBox('Nota já foi incluída!','Alerta',MB_ICONEXCLAMATION+mb_ok);
     exit;
   end;

  tiponota:='T';

 	if(length(trim(txtchave.Text))<44) or (length(trim(txtchave.Text))>44)then
	begin
    application.MessageBox('Chave de acesso incorreta!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;


  	if(chkcontingencia.Checked=true) and (length(trim(txtSegChave.Text))<44) or (length(trim(txtSegChave.Text))>44)then
	begin
    application.MessageBox('Chave de acesso incorreta!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;





	//VERIFICA SE O MUNICÍPIO DE CARREGAMENTO AVULSO EXISTE NA TABELA
    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.sql.Clear;
    _dmMDFe.qrPadrao.sql.Add('select * from tab_municipios where uf ='+quotedstr(copy(cboUfCarrAvulso.Text,1,2))+' and nome='+quotedstr(cboMunCarrAvulso.Text));
    _dmMDFe.qrPadrao.open;


    if(_dmMDFe.qrPadrao.FieldByName('nome').AsString  <> cboMunCarrAvulso.Text)then
    begin
    application.MessageBox('Município de carregamento não existe na tabela de municípios.'+#13+'Verifique se o texto está acentuado ou com espaço no final.','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;




    //VERIFICA SE O MUNICÍPIO DE DESCARREGAMENTO AVULSO EXISTE NA TABELA
  	_dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.sql.Clear;
    _dmMDFe.qrPadrao.sql.Add('select * from tab_municipios where uf ='+quotedstr(copy(cboUfdessAvulso.Text,1,2))+' and nome='+quotedstr(cboMunDesAvulso.Text));
    _dmMDFe.qrPadrao.open;


    if(_dmMDFe.qrPadrao.FieldByName('nome').AsString  <> cboMunDesAvulso.Text)then
    begin
    application.MessageBox('Município de descarregamento não existe na tabela de municípios.'+#13+'Verifique se o texto está acentuado ou com espaço no final.','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;



    if(txtmodeloMDF.Text=string.Empty) or (txtserieMDF.Text=string.Empty) or (txtnumeroMDF.Text=string.Empty)then
	begin
   application.MessageBox('Modelo do documento, série ou número estão em branco. Verifique.','Alerta',MB_ICONEXCLAMATION+mb_ok);
	 exit;
	end;




	if(cboUfCarrAvulso.Text=string.Empty)then
	begin
  application.MessageBox('UF carregamento não pode ser vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
  exit;
	end;
	if(cboMunCarrAvulso.Text=string.Empty)then
	begin
  application.MessageBox('Município carregamento não pode ser vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
	exit;
	end;
	if(cboUfdessAvulso.Text=string.Empty)then
	begin
    application.MessageBox('UF de descarregamento não pode ser vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
		exit;
	end;
	if(cboMunDesAvulso.Text=string.Empty)then
	begin
    application.MessageBox('Município descarregamento não pode vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
		exit;
	end;

  {
	_dmMDFe.cdsmdfeInfDoc.First;
	while not _dmMDFe.cdsmdfeInfDoc.Eof do
	begin

		if _dmMDFe.cdsmdfeInfDoctiponota.AsString = 'P' then
		begin
        application.MessageBox('Nota fiscal propria já lançada! Exclua primeiro.','Alerta',MB_ICONEXCLAMATION+MB_OK);
				exit;
		end;

		_dmMDFe.cdsmdfeInfDoc.Next;

	end;    }




	//verifica se a chave já foi utilizada em outro manifesto
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('select * from mdfeinfdoc where chnfe='+QuotedStr(trim(txtSegChave.Text))+' and codigofilial='+QuotedStr( _main.txtFilialEmitente.Text ));
	_dmMDFe.sdsQuery.Open;

	//INSERINDO NOTAS AGORA

	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('SELECT MAX(controlenfe) as  sequencia FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(_main.txtFilialEmitente.Text)+' and nmdf='+quotedstr(txtnumeroMDF.Text)+' and serie='+quotedstr(txtserieMDF.Text)+' LIMIT 1');
	_dmMDFe.sdsQuery.Open;

	seq:= _dmMDFe.sdsQuery.FieldByName('sequencia').AsInteger;

	// if _dmMDFe.sdsQuery.IsEmpty then
	//  begin
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('INSERT INTO mdfeinfdoc (tiponota,serie, nMDF, controlenfe, chnfe,segcodbarra, tpUnidTransp, idUnidTransp, codigofilial, vnf, uf,codMunDest,muniDest) VALUES ( ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(tiponota)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(_frmGerarMdfe.txtserieMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(_frmGerarMdfe.txtnumeroMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(quotedstr(inttostr(seq+1))+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtchave.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtSegChave.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( Copy(cboTipoUnidadeTracao.Text, 1, 1) )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( txtPlaca.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( glb_filial )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(currtostr(txtvalor.value)));
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(copy(cboUFDescarregamento.Text,1,2)));
	_dmMDFe.sdsQuery.SQL.Add(',(SELECT id FROM tab_municipios WHERE nome = '+quotedstr(cboMunDesAvulso.Text)+' and uf = '+quotedstr(copy(cboUfdessAvulso.Text,1,2))+' LIMIT 1)');
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(cboMunDesAvulso.Text)+')');
	//  _dmMDFe.sdsQuery.SQL.Add('FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text));


	_dmMDFe.sdsQuery.ExecSQL;






	_dmMDFe.sdsmdfeInfDoc.CommandText:='select * from mdfeinfdoc where serie='+quotedstr(txtserieMDF.Text)+' and nMDF='+quotedstr(txtnumeroMDF.Text)+' and codigofilial='+QuotedStr( glb_filial );
	_dmMDFe.sdsmdfeInfDoc.execsql();
	_dmMDFe.cdsmdfeInfDoc.Refresh;




	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT SUM(vnf) totalcarga from mdfeinfdoc WHERE ');
	_dmMDFe.qrPadrao.SQL.Add('nMDF = '+QuotedStr( txtnumeroMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('serie = '+QuotedStr( txtserieMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('codigofilial = '+QuotedStr( glb_filial ));
	_dmMDFe.qrPadrao.Open;
	txtvCarga.Value := _dmMDFe.qrPadrao.FieldByName('totalcarga').AsCurrency;








	txtchave.Text:='';
	txtvalor.Text:='0.00';
	chkcontingencia.Checked:=false;
	txtSegChave.text:='';
	txtSegChave.Enabled:=false;

  application.MessageBox('Nota adicionada com sucesso.','Confirmação',MB_ICONINFORMATION+mb_ok);


end;


procedure T_frmGerarMdfe.imgBtnLancPropClick(Sender: TObject);
begin

   _dmMDFe.qrPadrao.Close;
   _dmMDFe.qrPadrao.CommandText:='SELECT COUNT(1) as total FROM mdfeinfdoc WHERE chnfe='+quotedstr(ClientDataSet1CbdNFEChaAcesso.AsString)+
   ' AND serie='+quotedstr(txtserieMDF.Text)+' AND nmdf='+quotedstr(txtnumeroMDF.Text);
   _dmMDFe.qrPadrao.open();


   if(_dmMDFe.qrPadrao.FieldByName('total').asinteger>0)then
   begin
     application.MessageBox('Nota já foi incluída!','Alerta',MB_ICONEXCLAMATION+mb_ok);
     exit;
   end;


    if(ClientDataSet1CbdNFEChaAcesso.AsString='')then
    exit;

  _dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('INSERT INTO mdfeinfdoc (tiponota,serie, nMDF, controlenfe, chnfe, tpUnidTransp, idUnidTransp, codigofilial, vnf, uf,codMunDest,muniDest) ');
	_dmMDFe.sdsQuery.SQL.Add('select '+QuotedStr('P')+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtserieMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtnumeroMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add('IFNULL(MAX(controlenfe)+1, 1)'+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( qrPadrao.FieldByName('CbdNFEChaAcesso').AsString )+', ');

	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( Copy(cboTipoUnidadeTracao.Text, 1, 1) )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( txtPlaca.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( glb_filial )+', ');
	_dmMDFe.sdsQuery.SQL.Add('(SELECT cbdvnf FROM cbd001 WHERE CbdNtfNumero='+QuotedStr(ClientDataSet1CbdNtfNumero.AsString)+' AND CbdNtfSerie='+QuotedStr(ClientDataSet1cbdntfserie.AsString)+' AND cbdcodigofilial='+QuotedStr(ClientDataSet1CbdCodigoFilial.AsString)+' limit 1) ');
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(ufDest));
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(codMundest));
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(munDest));
	_dmMDFe.sdsQuery.SQL.Add('FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(glb_filial));
	_dmMDFe.sdsQuery.ExecSQL;

	//atualiza o dataset
	_dmMDFe.sdsmdfeInfDoc.CommandText:='SELECT * FROM mdfeinfdoc WHERE serie='+quotedstr(txtserieMDF.Text)+' AND nMDF='+quotedstr(txtnumeroMDF.Text)+' AND codigofilial='+QuotedStr(glb_filial);
	_dmMDFe.sdsmdfeInfDoc.execsql();
	_dmMDFe.cdsmdfeInfDoc.Refresh;




	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT SUM(vnf) totalcarga from mdfeinfdoc WHERE ');
	_dmMDFe.qrPadrao.SQL.Add('nMDF = '+QuotedStr( txtnumeroMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('serie = '+QuotedStr( txtserieMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('codigofilial = '+QuotedStr( glb_filial ));
	_dmMDFe.qrPadrao.Open;
	txtvCarga.Value := _dmMDFe.qrPadrao.FieldByName('totalcarga').AsCurrency;

	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT pesobruto FROM contnfsaida WHERE ');
	_dmMDFe.qrPadrao.SQL.Add('notafiscal = '+QuotedStr( txtnumeroMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('serie = '+QuotedStr( txtserieMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('codigofilial = '+QuotedStr( glb_filial ));
	_dmMDFe.qrPadrao.Open;

	txtqCarga.Value := _dmMDFe.qrPadrao.FieldByName('pesobruto').AsCurrency;


	//txtNumeroNFe.Text:= '';
  //txtSerieNFe.Text:=  '';
	//filialemitenteselecionada.Text:='';




end;

procedure T_frmGerarMdfe.imgBtnPesqClick(Sender: TObject);
begin


if(txtnumero.Text='') or(txtserie.Text='')then
exit;

  //_dmMDFe.conexao.Connected:=false;
     qrPadrao.Close;
      ClientDataSet1.Close;
      qrPadrao.SQL.Clear;
      qrPadrao.SQL.add('SELECT cbdntfserie,CbdNtfNumero,CbdxNome_dest,CbdNFEChaAcesso,CbdCodigoFilial,cbduf_dest,cbdxmun_dest,cbdcmun_dest FROM cbd001 WHERE ');
      qrPadrao.SQL.add(' cbdntfserie = abs('+QuotedStr( txtSerie.Text )+')');
      qrPadrao.SQL.add(' AND cbdntfnumero='+QuotedStr( txtNumero.Text ));
      qrPadrao.SQL.add(' AND cbdmod="55" and cbdcodigofilial='+QuotedStr( copy(cbofilial.Text,1,5) ));
      qrPadrao.open;
      ClientDataSet1.open;
      ClientDataSet1.refresh;


  ufDest:=  qrPadrao.FieldByName('cbduf_dest').AsString;
	//   ufDest:= copy(cboUFDescarregamento.Text,1,2);
	munDest :=  qrPadrao.FieldByName('cbdxmun_dest').AsString;
	// munDest :=  copy(cboMunicipioDescarregamento.Text,1,2);
	codMundest := qrPadrao.FieldByName('cbdcmun_dest').AsString;

  	txtNumero.Text:= '';
    txtSerie.Text:=  '';
	  cbofilial.Text:='';

end;

procedure T_frmGerarMdfe.txtCPFCondutorExit(Sender: TObject);
begin
	if trim(txtCPFCondutor.Text) = '' then
	begin
		application.messagebox('CPF não pode ser vazio!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		txtCPFCondutor.SetFocus;
	end;
end;

procedure T_frmGerarMdfe.txtCPFCondutorKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9']) then
	key:= #0;
end;

end.
