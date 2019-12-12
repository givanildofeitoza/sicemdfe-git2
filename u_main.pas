unit u_main;

interface

uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrMDFeDAMDFeClass,
ACBrBase, ACBrDFe, ACBrMDFe, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls,
Vcl.Grids, Vcl.DBGrids, RxToolEdit, RxCurrEdit, pcnConversaoNFe, pcnConversao, ACBrNFeDANFEClass, ACBrUtil,
Vcl.ExtCtrls, RxSlider, IniFiles, ShellAPI, OleCtrls, SHDocVw,
ACBrMail, Data.DB, ACBrMDFeDAMDFeRLClass, Vcl.Imaging.jpeg,
Vcl.Imaging.pngimage, ACBrDFeReport, Vcl.Menus, RxCtrls, RpCon, RpConDS,
RpBase, RpSystem, RpDefine, RpRave;

type
T_Main = class(TForm)
    pgMain: TPageControl;
    Controle: TTabSheet;
    Emissao: TTabSheet;
    Configurações: TTabSheet;
    grpMDFe: TGroupBox;
    grpIdentificacao: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    txtmodeloMDF: TMaskEdit;
    txtserieMDF: TMaskEdit;
    txtnumeroMDF: TMaskEdit;
    cboUFCarregamento: TComboBox;
    cboUFDescarregamento: TComboBox;
    pa: TGroupBox;
    cboMunicipioCarregamento: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    cboMunicipioDescarregamento: TComboBox;
    Label23: TLabel;
    txtInfComplementar: TMemo;
    btnSalvar: TBitBtn;
    btnCancelarIDE: TBitBtn;
    pnlControle: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    btnEnviar: TBitBtn;
    dsIDELocal: TDataSource;
    MemoStatus: TMemo;
    btnAlterar: TBitBtn;
    GroupBox4: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label26: TLabel;
    txtEmitCNPJ: TEdit;
    txtEmitIE: TEdit;
    txtFilialEmitente: TMaskEdit;
    ckMonoFilial: TCheckBox;
    GroupBox2: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    sbtnGetCert: TSpeedButton;
    edtSenha2: TEdit;
    edtNumSerie: TEdit;
    GroupBox5: TGroupBox;
    Label32: TLabel;
    lblIntervaloReq: TLabel;
    ckVisualizar: TCheckBox;
    _cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    IntervaloReq: TRxSlider;
    rgModo: TRadioGroup;
    grpVeiculo: TGroupBox;
    lblPlaca: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label15: TLabel;
    txtPlaca: TMaskEdit;
    btnBuscarTransportadora: TBitBtn;
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
    Label1: TLabel;
    txtvCarga: TCurrencyEdit;
    txtqCarga: TCurrencyEdit;
    Label21: TLabel;
    txtcUnid: TComboBox;
    Label22: TLabel;
    btnCancelar: TBitBtn;
    btnEncerrar: TBitBtn;
    btnConsultarMDFe: TBitBtn;
    chkCidades: TCheckBox;
    txtDataEmissao: TDateEdit;
    pgInserir: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GridNFE: TDBGrid;
    ChkTer: TCheckBox;
    btnRemoverNFe: TBitBtn;
    cboUfTrajeto: TComboBox;
    Label33: TLabel;
    memoUf: TMemo;
    Button1: TButton;
    TabSheet3: TTabSheet;
    pnlNtAvulsa: TPanel;
    Label25: TLabel;
    Label27: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    txtchave: TEdit;
    btnAddNFeAvulsa: TButton;
    cboUfCarrAvulso: TComboBox;
    cboMunCarrAvulso: TComboBox;
    cboUfdessAvulso: TComboBox;
    cboMunDesAvulso: TComboBox;
    pnlpropria: TPanel;
    btnAdicionarNFe: TBitBtn;
    txtSerieNFe: TMaskEdit;
    txtNumeroNFe: TMaskEdit;
    Memo1: TMemo;
    Button2: TButton;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    cbosit: TComboBox;
    rdata1: TRadioButton;
    rdata2: TRadioButton;
    rdata3: TRadioButton;
    DateEdit1: TDateEdit;
    DateEdit3: TDateEdit;
    Label38: TLabel;
    Label39: TLabel;
    GroupBox6: TGroupBox;
    txtchavemdfe: TEdit;
    GroupBox7: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    cboUfc: TComboBox;
    cboMunc: TComboBox;
    Label42: TLabel;
    Label43: TLabel;
    cboufdes: TComboBox;
    cbomundes: TComboBox;
    Button3: TButton;
    GroupBox8: TGroupBox;
    txtserie: TEdit;
    txtnum: TEdit;
    Label44: TLabel;
    Label45: TLabel;
    rdata0: TRadioButton;
    txtvalor: TCurrencyEdit;
    SpeedButton1: TSpeedButton;
    txtChacesso: TEdit;
    lblchv: TLabel;
    Panel1: TPanel;
    rtodas: TRadioButton;
    TabSheet5: TTabSheet;
    txtXML: TMemo;
    lbloperacao: TLabel;
    BitBtn1: TBitBtn;
    txtoperador: TEdit;
    txtsenha: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    pnlSenha: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cboTipoEmit: TComboBox;
    Label50: TLabel;
    tabCIOTseguro: TTabSheet;
    Label47: TLabel;
    txtciot: TEdit;
    txtCPFCNPJciot: TEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    txtcnpjrespseg: TEdit;
    txtnapolice: TEdit;
    txtnraverbacao: TEdit;
    Label54: TLabel;
    txtseguradora: TEdit;
    txtcnpjseguradora: TEdit;
    Label57: TLabel;
    txtrespseg: TComboBox;
    GroupBox9: TGroupBox;
    cbofilialfiltro: TComboBox;
    Image2: TImage;
    Label46: TLabel;
    lblversao: TLabel;
    filialemitenteselecionada: TComboBox;
    txtSegChave: TEdit;
    Label5: TLabel;
    chkcontingencia: TCheckBox;
    Label6: TLabel;
    Salvar: TBitBtn;
    btncadfilial: TBitBtn;
    Panel3: TPanel;
    Label58: TLabel;
    Edit1: TEdit;
    dataxml: TDateEdit;
    Label59: TLabel;
    Label60: TLabel;
    BitBtn5: TBitBtn;
    OpenDialog1: TOpenDialog;
    txtdiasconclusao: TEdit;
    Label61: TLabel;
    BitBtn6: TBitBtn;
    PopupMenu1: TPopupMenu;
    DAMDFe1: TMenuItem;
    RelatriodeMDFe1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    cbUF: TMaskEdit;
    ACBrMDFe1: TACBrMDFe;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    lSSLLib: TLabel;
    cbSSLLib: TComboBox;
    cbCryptLib: TComboBox;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    cbHttpLib: TComboBox;
    cbXmlSignLib: TComboBox;
    lXmlSign: TLabel;
    bitOpenSSL: TButton;
    btnWinCrypt: TButton;
    cbSSLType: TComboBox;
    lSSLLib1: TLabel;
    GroupBox10: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label64: TLabel;
    bitNunSerie: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    txtNumSerie: TEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure cboUFCarregamentoEnter(Sender: TObject);
    procedure cboUFDescarregamentoEnter(Sender: TObject);
    procedure cboMunicipioCarregamentoEnter(Sender: TObject);
    procedure cboMunicipioDescarregamentoEnter(Sender: TObject);
    procedure btnBuscarTransportadoraClick(Sender: TObject);
    procedure btnAdicionarNFeClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRemoverNFeClick(Sender: TObject);
    procedure dsIDELocalDataChange(Sender: TObject; Field: TField);
    procedure btnCancelarIDEClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnConsultarMDFeClick(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtRNTCExit(Sender: TObject);
    procedure chkCidadesClick(Sender: TObject);
    procedure txtSerieNFeExit(Sender: TObject);
    procedure txtRenavamExit(Sender: TObject);
    procedure txtCPFCondutorExit(Sender: TObject);
    procedure txtvalorKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure cboUfTrajetoEnter(Sender: TObject);
    procedure btnAddNFeAvulsaClick(Sender: TObject);
    procedure cboMunCarrAvulsoEnter(Sender: TObject);
    procedure cboUfCarrAvulsoEnter(Sender: TObject);
    procedure cboUfdessAvulsoEnter(Sender: TObject);
    procedure cboMunDesAvulsoEnter(Sender: TObject);
    procedure txtCPFCondutorKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure ChkTerClick(Sender: TObject);
    procedure cboUfCarrAvulsoExit(Sender: TObject);
    procedure cboUfdessAvulsoExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cboUfcEnter(Sender: TObject);
    procedure cboufdesEnter(Sender: TObject);
    procedure cbomundesEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure txtChacessoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure cboMunicipioDescarregamentoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure txtciotExit(Sender: TObject);
    procedure txtciotKeyPress(Sender: TObject; var Key: Char);
    procedure txtCPFCNPJciotKeyPress(Sender: TObject; var Key: Char);
    procedure txtcnpjseguradoraKeyPress(Sender: TObject; var Key: Char);
    procedure txtcnpjrespsegKeyPress(Sender: TObject; var Key: Char);
    procedure txtnraverbacaoKeyPress(Sender: TObject; var Key: Char);
    procedure txtnapoliceKeyPress(Sender: TObject; var Key: Char);
    procedure cboTipoEmitSelect(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure cbofilialfiltroEnter(Sender: TObject);
    procedure chkcontingenciaClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure btncadfilialClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure txtdiasconclusaoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DAMDFe1Click(Sender: TObject);
    procedure RelatriodeMDFe1Click(Sender: TObject);
    procedure btnWinCryptClick(Sender: TObject);
    procedure bitOpenSSLClick(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure bitNunSerieClick(Sender: TObject);
	private
    { Private declarations }
    Procedure CarregarConfiguracoes;
    procedure GerarMDFe(NumMDFe : String);
    procedure ConsultaMDFe;
    procedure LerConfiguracaoNFE;
    function GetBuildInfo:string;
	public
    { Public declarations }


	glb_grupo:string;
	// glb_filial:string;
	glb_loginFeito:string;

  procedure AtualizaSSLLibsCombo;
  procedure AtualizaACBRNFe;


end;

var
_Main: T_Main;
glb_serie:string;
Glb_filial:string;
Sys_Data:Tdate;
Novo, Alteracao : Boolean;
JustificativaCancelamento : String;
tipoNota :string;
continuar:string='S';
seq:integer=1;
glb_offline:string='N';
alterar:string='N';
Glb_fabrica:bool;
Glb_servico:bool;
Glb_Contabil:bool;
Glb_fidel:bool;

Glb_ChavePrivada : String ='C9E15B94BA0E28D1DE04099FE21C9370E23A083DAA6561'+
'6FCA0D68BB1176B17CEBF5627BC1D9D788BD27120A0FE8'+
'C2418AC4B625FD47ACA2E3E98CA8D148A34DC28BDF92D'+
'82E0EB31649FAC61DB98EB42C5A2967E8A95173512732B1'+
'3D2C2F9A149B438DB7A0602288EEFCA869E495C3D89F70'+
'E4D30B835E19B144A26060A407';

implementation

uses dmmdfe,  FileCtrl, DateUtils, pmdfeConversaoMDFe,  ACBrMDFeManifestos,frSelecionarCertificado,
u_transpotadoras, midaslib,U_splash,frmLogin,frmListarNotas,frmfilial,frmManifestosEncerrar, blcksock, ACBrDFeSSL,TypInfo;

{$R *.dfm}

function Criptografar( Senha, Chave : String): String;
Var
x,y : Integer;
NovaSenha : String;
begin
	for x := 1 to Length( Chave ) do
	begin
		NovaSenha := '';
		for y := 1 to Length( Senha ) do
		NovaSenha := NovaSenha + chr( (Ord(Chave[x]) xor Ord(Senha[y])));
		Senha := NovaSenha;
	end;
	result := Senha;
end;

function CriptografarSX(wStri: String): String;
var Simbolos : array [0..4] of String;
x        : Integer;
begin
	Simbolos[1]:=
	'UEFGHIJWKAV!@#$%XZYBCDLMQRSTNOP ~^&*()';

	Simbolos[2]:=
	'Ñªº¿®¬ÂÀ©Øû×ƒçêùÿ5Üø£úñ¼ëèïÙýÄÅÉæÆôöò»Á';

	Simbolos[3]:='abcdefghijlmnopqrstuvxzywk1234567890';

	Simbolos[4]:='áâäàåíóÇüé¾¶§÷ÎÏ-+ÌÓß¸°¨·¹³²Õµþîì¡«½';

	for x := 1 to Length(Trim(wStri)) do begin
		if pos(copy(wStri,x,1),Simbolos[1])>0 then
        Result := Result+copy(Simbolos[2],
		pos(copy(wStri,x,1),Simbolos[1]),1)

		else if pos(copy(wStri,x,1),Simbolos[2])>0 then
        Result := Result+copy(Simbolos[1],
		pos(copy(wStri,x,1),Simbolos[2]),1)

		else if pos(copy(wStri,x,1),Simbolos[3])>0 then
        Result := Result+copy(Simbolos[4],
		pos(copy(wStri,x,1),Simbolos[3]),1)

		else if pos(copy(wStri,x,1),Simbolos[4])>0 then
        Result := Result+copy(Simbolos[3],
		pos(copy(wStri,x,1),Simbolos[4]),1);
	end;
end;

procedure T_Main.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex := Integer( ACBrmdFe1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex := Integer( ACBrmdFe1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex := Integer( ACBrmdFe1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrmdFe1.Configuracoes.Geral.SSLXmlSignLib );

 cbSSLType.Enabled := (ACBrmdFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure T_Main.AtualizaACBRNFe;
begin

 // ACBrmdFe1.Configuracoes.Certificados.ArquivoPFX  := ExtractFilePath(Application.ExeName)+'Certificado.pfx';
  ACBrmdFe1.Configuracoes.Certificados.ArquivoPFX  :=  edtCaminho.Text;
  ACBrmdFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;

  ACBrmdFe1.Configuracoes.WebServices.UF            := cbUF.text;
 //	ACBrmdFe1.Configuracoes.WebServices.TimeOut       := (strtoint(txtTimeOut.Text)*1000);

    ACBrmdFe1.SSL.DescarregarCertificado;

    with ACBrmdFe1.Configuracoes.Geral do
       begin
         SSLLib                := TSSLLib(cbSSLLib.ItemIndex);
         SSLCryptLib           := TSSLCryptLib(cbCryptLib.ItemIndex);
         SSLHttpLib            := TSSLHttpLib(cbHttpLib.ItemIndex);
         SSLXmlSignLib         := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
    end;

    ACBrmdFe1.SSL.SSLType := TSSLType( cbSSLType.ItemIndex );

end;


procedure T_Main.btnBuscarTransportadoraClick(Sender: TObject);
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

procedure T_Main.btnSalvarClick(Sender: TObject);
begin
    if(strtoint(txtdiasconclusao.Text)=0)then
    begin
		showmessage('Informe o prazo para encerramento!');
		exit;
	end;


    if trim(txtcUnid.Text) = '' then
    begin
		showmessage('Campo Unidade Medida Não Pode Ser Vazio');
		exit;
	end;

	if trim(txtRNTC.Text) = '' then
    begin
		showmessage('Campo RNTC  Não Pode Ser Vazio');
		exit;
	end;

    if trim(txtRenavam.Text) = '' then
    begin
		showmessage('Campo RENAVAN  Não Pode Ser Vazio');
		exit;
	end;

    if trim(txtCPFCondutor.Text) = '' then
    begin
		showmessage('Campo CPF  Não Pode Ser Vazio');
		exit;
	end;



	Novo:=false;
	FormatSettings.DecimalSeparator:='.';

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('update mdfeide set ');
    _dmMDFe.qrPadrao.SQL.Add('cUF=(SELECT id FROM estados WHERE uf=(SELECT estado FROM filiais WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text)+'))  '+', ');
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

	if(txtChacesso.Visible=true)then
	_dmMDFe.qrPadrao.SQL.Add('chMDFe='+QuotedStr( txtChacesso.Text )+', ');

    _dmMDFe.qrPadrao.SQL.Add(' infCpl='+QuotedStr(txtInfComplementar.Text)+', ');
    _dmMDFe.qrPadrao.SQL.Add(' diasprevisaoencerrar='+QuotedStr(txtdiasconclusao.Text)+' ');
    _dmMDFe.qrPadrao.SQL.Add(' where codigofilial='+QuotedStr(txtFilialEmitente.Text));
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
    _dmMDFe.qrPadrao.SQL.Add(' where codigofilial='+QuotedStr(txtFilialEmitente.Text));
    _dmMDFe.qrPadrao.SQL.Add(' and serie='+QuotedStr( txtserieMDF.Text ));
    _dmMDFe.qrPadrao.SQL.Add(' and nMDF='+QuotedStr( txtnumeroMDF.Text ));
    _dmMDFe.qrPadrao.ExecSQL;


    _dmMDFe.cdsmdfeIDE.Refresh;

	_dmMDFe.cdsmdfeInfDoc.close;
	_dmMDFe.cdsmdfeInfDoc.open;
    _dmMDFe.cdsmdfeInfDoc.Refresh;


    _dmMDFe.cdsmdfeRodo.Refresh;

	FormatSettings.DecimalSeparator:=',';
    // SpeedButton1Click(Sender);


    application.MessageBox('Informações Salvas!','Informação',MB_ICONINFORMATION+mb_ok);

end;

procedure T_Main.Button1Click(Sender: TObject);
var total,linha:integer;
begin
	linha := 0;

	memouf.Lines.Add(copy(cboUfTrajeto.Text,1,2));


end;

procedure T_Main.Button2Click(Sender: TObject);
begin
	memoUf.Text:='';
end;

procedure T_Main.Button3Click(Sender: TObject);
var
sql,filtro:string;
begin

    if(cbosit.Text<>'')then
    begin
        if(copy(cbosit.Text,1,3)='000')then
        filtro := filtro + ' and cstat='+quotedstr('0')
        else
        filtro := filtro + ' and cstat='+quotedstr(copy(cbosit.Text,1,3))

	end;

    if(rtodas.Checked)then
    begin
		filtro:=filtro;
	end;

	if(rdata0.Checked)then
    begin
		filtro := filtro + ' and date(dhemi) between'+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit3.Date));

	end;

    if(rdata1.Checked)then
    begin
		filtro := filtro + ' and date(dataautorizacao) between'+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit3.Date));

	end;

    if(rdata2.Checked)then
    begin

		filtro := filtro + ' and date(dataencerramento) between'+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit3.Date));

	end;

    if(rdata3.Checked)then
    begin

		filtro := filtro + ' and date(datacancelamento) between'+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',DateEdit3.Date));

	end;

    if(txtchavemdfe.Text<>'')then
    begin
		filtro := filtro + ' and chmdfe='+quotedstr(txtchavemdfe.Text);
	end;

    if(cbomunc.Text<>'')then
    begin
		filtro := filtro + ' and xmuncarrega='+quotedstr(cbomunc.Text);
	end;

    if(cbomundes.Text<>'')then
    begin
		filtro := filtro + ' and xmundescarga='+quotedstr(cbomundes.Text);
	end;

    if(txtserie.Text<>'')then
    begin
		filtro := filtro + ' and serie='+quotedstr(txtserie.Text);
	end;

	if(txtnum.Text<>'')then
    begin
		filtro := filtro + ' and nmdf='+quotedstr(txtnum.Text);
	end;

	if( copy(cbofilialfiltro.Text,1,5) ='')then
    begin
        cbofilialfiltro.Text:=txtFilialEmitente.Text;
	end;



	_dmMDFe.cdsmdfeIDE.Close;
	_dmMDFe.sdsmdfeIDE.Close;
	_dmMDFe.sdsmdfeIDE.CommandText:='select * from mdfeide where codigofilial='+QuotedStr(copy(cbofilialfiltro.Text,1,5))+filtro+'  order by nMDF, serie';
	_dmMDFe.cdsmdfeIDE.Open;


	pgMain.TabIndex := 0;










end;

procedure T_Main.btnWinCryptClick(Sender: TObject);
begin
cbSSLLib.ItemIndex:=5;
cbCryptLib.ItemIndex:=3;
cbHttpLib.ItemIndex:=2;
cbXmlSignLib.ItemIndex:=2;
cbSSLType.ItemIndex:=5;
end;

procedure T_Main.bitNunSerieClick(Sender: TObject);
var
  I: Integer;
  ASerie: String;
  AddRow: Boolean;

begin

  if cbSSLLib.ItemIndex <> 1 then
  begin
              _frSelecionarCertificado := T_frSelecionarCertificado.Create(Self);
              try
                ACBrmdFe1.SSL.LerCertificadosStore;
                AddRow := False;

                with _frSelecionarCertificado.StringGrid1 do
                begin
                  ColWidths[0] := 220;
                  ColWidths[1] := 250;
                  ColWidths[2] := 120;
                  ColWidths[3] := 80;
                  ColWidths[4] := 150;
                  Cells[ 0, 0 ] := 'Num.Série';
                  Cells[ 1, 0 ] := 'Razão Social';
                  Cells[ 2, 0 ] := 'CNPJ';
                  Cells[ 3, 0 ] := 'Validade';
                  Cells[ 4, 0 ] := 'Certificadora';
                end;

                For I := 0 to ACBrmdFe1.SSL.ListaCertificados.Count-1 do
                begin
                  with ACBrmdFe1.SSL.ListaCertificados[I] do
                  begin
                    ASerie := NumeroSerie;
                    if (CNPJ <> '') then
                    begin
                      with _frSelecionarCertificado.StringGrid1 do
                      begin
                        if Addrow then
                          RowCount := RowCount + 1;

                        Cells[ 0, RowCount-1] := NumeroSerie;
                        Cells[ 1, RowCount-1] := RazaoSocial;
                        Cells[ 2, RowCount-1] := CNPJ;
                        Cells[ 3, RowCount-1] := FormatDateBr(DataVenc);
                        Cells[ 4, RowCount-1] := Certificadora;
                        AddRow := True;
                      end;
                    end;
                  end;
                end;

                _frSelecionarCertificado.ShowModal;
                txtNumSerie.Text:=glb_serie;

                if _frSelecionarCertificado.ModalResult = mrOK then
                  edtNumSerie.Text := _frSelecionarCertificado.StringGrid1.Cells[ 0, _frSelecionarCertificado.StringGrid1.Row];

              finally
                 _frSelecionarCertificado.Free;
              end;
  end
  else
  begin

      AtualizaACBRNFe;

      txtNumSerie.Text := ACBrmdFe1.SSL.CertNumeroSerie;
      showmessage(
      'Razão Social: '  +  ACBrmdFe1.SSL.CertRazaoSocial +#10#13 +
      'CNPJ: '  +  ACBrmdFe1.SSL.CertCNPJ +#10#13 +
      'Validade: '  +  FormatDateBr(ACBrmdFe1.SSL.CertDataVenc) +#10#13 +
      'Certificadora: '  +  ACBrmdFe1.SSL.CertCertificadora);
  end;

end;


procedure T_Main.bitOpenSSLClick(Sender: TObject);
begin
  cbSSLLib.ItemIndex:=1;
   cbCryptLib.ItemIndex:=1;
   cbHttpLib.ItemIndex:=3;
   cbSSLType.ItemIndex:=5;
   cbXmlSignLib.ItemIndex:=4;

   Showmessage('Configuração válida somente para certificado A1.');
end;

procedure T_Main.btnAddNFeAvulsaClick(Sender: TObject);
var
ufDest,codMundest,munDest: string;
begin
	tiponota:='T';


	if(trim(txtSegChave.Text)='') and (chkcontingencia.Checked=true)then
	begin
		showmessage('Informe a chave de acesso!');
		exit;
	end;

	//VERIFICA SE O MUNICÍPIO DE CARREGAMENTO AVULSO EXISTE NA TABELA
    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.sql.Clear;
    _dmMDFe.qrPadrao.sql.Add('select * from tab_municipios where uf ='+quotedstr(copy(cboUfCarrAvulso.Text,1,2))+' and nome='+quotedstr(cboMunCarrAvulso.Text));
    _dmMDFe.qrPadrao.open;


    if(_dmMDFe.qrPadrao.FieldByName('nome').AsString  <> cboMunCarrAvulso.Text)then
    begin
		showmessage('Município de carregamento não existe na tabela de municípios.'+#13+'Verifique se o texto está acentuado ou com espaço no final.');
		exit;
	end;




    //VERIFICA SE O MUNICÍPIO DE DESCARREGAMENTO AVULSO EXISTE NA TABELA
	_dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.sql.Clear;
    _dmMDFe.qrPadrao.sql.Add('select * from tab_municipios where uf ='+quotedstr(copy(cboUfdessAvulso.Text,1,2))+' and nome='+quotedstr(cboMunDesAvulso.Text));
    _dmMDFe.qrPadrao.open;


    if(_dmMDFe.qrPadrao.FieldByName('nome').AsString  <> cboMunDesAvulso.Text)then
    begin
		showmessage('Município de descarregamento não existe na tabela de municípios.'+#13+'Verifique se o texto está acentuado ou com espaço no final.');
		exit;
	end;



    if(txtmodeloMDF.Text=string.Empty) or (txtserieMDF.Text=string.Empty) or (txtnumeroMDF.Text=string.Empty)then
	begin
		showmessage('Modelo do documento, série ou número estão em branco. Verifique.');
		exit;
	end;




	if(cboUfCarrAvulso.Text=string.Empty)then
	begin
		showmessage('UF carregamento não pode ser vazio');
		exit;
	end;
	if(cboMunCarrAvulso.Text=string.Empty)then
	begin
		showmessage('Município carregamento não pode ser vazio');
		exit;
	end;
	if(cboUfdessAvulso.Text=string.Empty)then
	begin
		showmessage('UF de descarregamento não pode ser vazio');
		exit;
	end;
	if(cboMunDesAvulso.Text=string.Empty)then
	begin
		showmessage('Município descarregamento não pode vazio');
		exit;
	end;


	_dmMDFe.cdsmdfeInfDoc.First;
	while not _dmMDFe.cdsmdfeInfDoc.Eof do
	begin
		if _dmMDFe.cdsmdfeInfDoctiponota.AsString = 'P' then
		begin
			showmessage('Nota fiscal propria já lançada! Exclua primeiro.');
			exit;
		end;

		_dmMDFe.cdsmdfeInfDoc.Next;
	end;



	//comentado em 09/09/2019 pois nota avulsa não faz consulta no banco
    {  _dmMDFe.qrPadrao.Close;
		_dmMDFe.qrPadrao.SQL.Clear;
		_dmMDFe.qrPadrao.SQL.Add('SELECT CbdNFEChaAcesso, CbdNtfNumero, CbdNtfSerie, cbdstsretcodigo, cbdcodigofilial FROM nfe012 where ');
		_dmMDFe.qrPadrao.SQL.Add('CbdNtfNumero = '+QuotedStr( txtNumeroNFe.Text )+'  and ');
		_dmMDFe.qrPadrao.SQL.Add('CbdNtfSerie = abs('+QuotedStr( txtSerieNFe.Text )+')  and ');
		_dmMDFe.qrPadrao.SQL.Add('Cbdcodigofilial = '+QuotedStr( txtFilialEmitente.Text )+' and ');
		_dmMDFe.qrPadrao.SQL.Add('cbdstsretcodigo = "100"');
	_dmMDFe.qrPadrao.Open; }

	//if not _dmMDFe.qrPadrao.IsEmpty then
	//begin


	//verifica se a chave já foi utilizada em outro manifesto
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('select * from mdfeinfdoc where chnfe='+QuotedStr(trim(txtSegChave.Text))+' and codigofilial='+QuotedStr( txtFilialEmitente.Text ));
	_dmMDFe.sdsQuery.Open;

	//INSERINDO NOTAS AGORA

	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('SELECT MAX(controlenfe) as  sequencia FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text)+' and nmdf='+quotedstr(txtnumeroMDF.Text)+' and serie='+quotedstr(txtserieMDF.Text)+' LIMIT 1');
	_dmMDFe.sdsQuery.Open;

	seq:= _dmMDFe.sdsQuery.FieldByName('sequencia').AsInteger;

	// if _dmMDFe.sdsQuery.IsEmpty then
	//  begin
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('INSERT INTO mdfeinfdoc (tiponota,serie, nMDF, controlenfe, chnfe,segcodbarra, tpUnidTransp, idUnidTransp, codigofilial, vnf, uf,codMunDest,muniDest) VALUES ( ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(tiponota)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtserieMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtnumeroMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(quotedstr(inttostr(seq+1))+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtchave.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtSegChave.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( Copy(cboTipoUnidadeTracao.Text, 1, 1) )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( txtPlaca.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( txtFilialEmitente.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(currtostr(txtvalor.value)));
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(copy(cboUFDescarregamento.Text,1,2)));
	_dmMDFe.sdsQuery.SQL.Add(',(SELECT id FROM tab_municipios WHERE nome = '+quotedstr(cboMunDesAvulso.Text)+' and uf = '+quotedstr(copy(cboUfdessAvulso.Text,1,2))+' LIMIT 1)');
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(cboMunDesAvulso.Text)+')');
	//  _dmMDFe.sdsQuery.SQL.Add('FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text));


	_dmMDFe.sdsQuery.ExecSQL;






	_dmMDFe.sdsmdfeInfDoc.CommandText:='select * from mdfeinfdoc where serie='+quotedstr(txtserieMDF.Text)+' and nMDF='+quotedstr(txtnumeroMDF.Text)+' and codigofilial='+QuotedStr( txtFilialEmitente.Text );
	_dmMDFe.sdsmdfeInfDoc.execsql();
	_dmMDFe.cdsmdfeInfDoc.Refresh;




	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT SUM(vnf) totalcarga from mdfeinfdoc WHERE ');
	_dmMDFe.qrPadrao.SQL.Add('nMDF = '+QuotedStr( txtnumeroMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('serie = '+QuotedStr( txtserieMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('codigofilial = '+QuotedStr( txtFilialEmitente.Text ));
	_dmMDFe.qrPadrao.Open;
	txtvCarga.Value := _dmMDFe.qrPadrao.FieldByName('totalcarga').AsCurrency;








	txtchave.Text:='';
	txtvalor.Text:='0.00';
	chkcontingencia.Checked:=false;
	txtSegChave.text:='';
	txtSegChave.Enabled:=false;
	showmessage('Nota adicionada com sucesso.');
end;

procedure T_Main.btnCancelarClick(Sender: TObject);
var xml : TStringStream;
begin

	if _dmMDFe.cdsmdfeIDEcstat.AsInteger=100 then
	begin

		if Application.MessageBox('Confirma cancelamento?', 'Pergunta', MB_ICONQUESTION+MB_YESNO) = IDNO
		then exit;

		xml := TStringStream.Create(  _dmMDFe.cdsmdfeXMLXML.AsString  );

		ACBrMDFe1.Manifestos.Clear;
		ACBrMDFe1.Manifestos.LoadFromStream( XML );

		JustificativaCancelamento:='';

		if not(InputQuery('WebServices Cancelamento', 'Justificativa', JustificativaCancelamento))
		then exit;

		ACBrMDFe1.EventoMDFe.Evento.Clear;

		with ACBrMDFe1.EventoMDFe.Evento.Add do
		begin
			infEvento.chMDFe   := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
			infEvento.CNPJCPF     := txtEmitCNPJ.Text;
			infEvento.dhEvento := now;
			//  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
				//                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
			//                  teEncerramento);

			infEvento.tpEvento   := teCancelamento;
			infEvento.nSeqEvento := 1;

			infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
			infEvento.detEvento.xJust := trim(JustificativaCancelamento);
		end;

		ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote

		sleep(3000);

		ConsultaMDFe;
	end;



end;

procedure T_Main.btnCancelarIDEClick(Sender: TObject);
begin
    pgMain.TabIndex := 0;
end;

procedure T_Main.btnConsultarMDFeClick(Sender: TObject);
begin
	if(DBGrid1.Fields[1].asstring = '')then
	exit;

	ConsultaMDFe;
end;

procedure T_Main.BitBtn1Click(Sender: TObject);
begin
	{   if(application.MessageBox('Operação de risco, deseja continuar?','Confirmação',MB_YESNO+MB_ICONWARNING)=ID_NO)then
		exit;


		_dmMDFe.conexao.Connected:=false;
		_dmMDFe.qrPadrao.SQL.clear;
		_dmMDFe.qrPadrao.SQL.Add(' UPDATE mdfexml set bkxml=xml where serie ='+quotedstr(DBGrid1.Fields[2].asstring)+'  AND  nMDF='+quotedstr(DBGrid1.Fields[1].asstring)+' AND codigofilial='+quotedstr(txtFilialEmitente.Text));
		_dmMDFe.qrPadrao.ExecSQL();

		_dmMDFe.qrPadrao.SQL.clear;
		_dmMDFe.qrPadrao.SQL.Add(' UPDATE mdfexml set xml='+quotedstr(txtxml.text)+' where serie ='+quotedstr(DBGrid1.Fields[2].asstring)+'  AND  nMDF='+quotedstr(DBGrid1.Fields[1].asstring)+' AND codigofilial='+quotedstr(txtFilialEmitente.Text));
		_dmMDFe.qrPadrao.ExecSQL();


	showmessage('XML alterado com sucesso!'); }
    pnlSenha.Visible:=true;



end;

procedure T_Main.BitBtn2Click(Sender: TObject);
var
alteracaousu:string;
begin


    _dmMDFe.sdsquery.SQL.clear;
    _dmMDFe.sdsquery.SQL.Add(' select count(1) as total,operador,senha from senhas ');
    _dmMDFe.sdsquery.SQL.Add(' where operador ='+quotedstr(txtoperador.Text));
    _dmMDFe.sdsquery.SQL.Add(' and senha =md5('+quotedstr(txtsenha.Text)+') limit 1');
    _dmMDFe.sdsquery.open();



    if(_dmMDFe.sdsquery.fieldbyname('total').Asinteger < 1)then
    begin
		showmessage('Operador não encontrado');
		exit;
	end
    else
    alteracaousu:='Última alteração: '+DateTimeToStr(now)+' por: '+quotedstr(_dmMDFe.sdsquery.fieldbyname('operador').Asstring);


	if(application.MessageBox('Operação de risco, deseja continuar?','Confirmação',MB_YESNO+MB_ICONWARNING)=ID_NO)then
    exit;


    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.SQL.clear;
    _dmMDFe.qrPadrao.SQL.Add(' UPDATE mdfexml set bkxml=xml where serie ='+quotedstr(DBGrid1.Fields[2].asstring)+'  AND  nMDF='+quotedstr(DBGrid1.Fields[1].asstring)+' AND codigofilial='+quotedstr(txtFilialEmitente.Text));
    _dmMDFe.qrPadrao.ExecSQL();

    _dmMDFe.qrPadrao.SQL.clear;
    _dmMDFe.qrPadrao.SQL.Add(' UPDATE mdfexml set xml='+quotedstr(txtxml.text)+', alteracao='+quotedstr(alteracaousu)+' where serie ='+quotedstr(DBGrid1.Fields[2].asstring)+'  AND  nMDF='+quotedstr(DBGrid1.Fields[1].asstring)+' AND codigofilial='+quotedstr(txtFilialEmitente.Text));
    _dmMDFe.qrPadrao.ExecSQL();


    showmessage('XML alterado com sucesso!');

    txtoperador.Text:='';
    txtsenha.Text:='';
    pnlSenha.Visible:=false;
end;

procedure T_Main.BitBtn3Click(Sender: TObject);
begin
	pnlSenha.Visible:=false;
end;

procedure T_Main.BitBtn4Click(Sender: TObject);
var numero, serie, cMunCarrega : string;
begin

    if(application.MessageBox('Deseja criar um novo MDF-e?','Confirmação',MB_YESNO+MB_ICONQUESTION)=IDNO)then
    exit;
	cboTipoEmit.ItemIndex:=1;

	//txtDataEmissao.date:= strtodate(formatdatetime('dd/mm/YYYY', now));
	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('select IFNULL(MAX(nMDF), 0)+1 AS prox from mdfeide where serie="1" and codigofilial='+QuotedStr(txtFilialEmitente.Text));
	_dmMDFe.qrPadrao.Open;

	sleep(5);


	if not _dmMDFe.qrPadrao.IsEmpty then
	begin
        Novo := true;

        numero := _dmMDFe.qrPadrao.FieldByName('prox').AsString;
        serie := '1';

        _dmMDFe.qrPadrao.Close;
        _dmMDFe.qrPadrao.SQL.Clear;

        _dmMDFe.qrPadrao.SQL.Add('SELECT cidade, estado, (SELECT tab_municipios.id FROM tab_municipios,estados WHERE tab_municipios.iduf = estados.id AND estados.uf = filiais.estado AND nome=filiais.cidade) AS cMunCarrega FROM filiais WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text));
        //_dmMDFe.qrPadrao.SQL.Add('SELECT cidade, estado, (SELECT id FROM tab_municipios WHERE uf=filiais.estado AND nome=filiais.cidade) AS cMunCarrega FROM filiais WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text));

        _dmMDFe.qrPadrao.Open;

        sleep(5);

        {txtnumeroMDF.Text := numero;
			txtserieMDF.Text := serie;
		txtmodeloMDF.Text := '58'; }
        cboMunicipioCarregamento.Text:= _dmMDFe.qrPadrao.FieldByName('cidade').AsString;
        cboUFCarregamento.Text:= _dmMDFe.qrPadrao.FieldByName('estado').AsString;
        cMunCarrega := _dmMDFe.qrPadrao.FieldByName('cMunCarrega').AsString;

        if(cMunCarrega='')then
        cMunCarrega:='0';



        _dmMDFe.qrPadrao.Close;
        _dmMDFe.qrPadrao.SQL.Clear;
        _dmMDFe.qrPadrao.SQL.Add('INSERT INTO mdfeide (modelo, serie, nMDF, ufini, cmuncarrega, xmuncarrega, tpamb, tpemit, tpemis, codigofilial, cstat) values (');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( '58' )+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( serie )+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( numero )+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr(cboUFCarregamento.Text)+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( cMunCarrega ) +',');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( cboMunicipioCarregamento.Text ) +', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( rgTipoAmb.ItemIndex.ToString ) +', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( '2' ) +', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( inttostr((rgModo.ItemIndex+1)) ) +',');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( txtFilialEmitente.Text )+',');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( '0' )+')');
        _dmMDFe.qrPadrao.ExecSQL;
        sleep(5);



        _dmMDFe.qrPadrao.Close;
        _dmMDFe.qrPadrao.SQL.Clear;
        _dmMDFe.qrPadrao.SQL.Add('INSERT INTO mdferodo (serie, nMDF, codigofilial) values (');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( serie )+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( numero )+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( txtFilialEmitente.Text )+')');
        _dmMDFe.qrPadrao.ExecSQL;
        sleep(5);

        _dmMDFe.qrPadrao.Close;
        _dmMDFe.qrPadrao.SQL.Clear;
        _dmMDFe.qrPadrao.SQL.Add('INSERT INTO mdfexml (serie, nMDF, codigofilial) values (');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( serie )+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( numero )+', ');
        _dmMDFe.qrPadrao.SQL.Add(QuotedStr( txtFilialEmitente.Text )+')');
        _dmMDFe.qrPadrao.ExecSQL;
        sleep(5);


		txtDataEmissao.date:= strtodate(formatdatetime('dd/mm/YYYY', now));

		_dmMDFe.cdsmdfeIDE.Refresh;

        _dmMDFe.cdsmdfeIDE.Locate('serie;nmdf', VarArrayOf([serie, numero]), []);

        //descida a informação para cá, pois o refresh no  _dmMDFe.cdsmdfeIDE estava limpando os dados
        txtnumeroMDF.Text := numero;
        txtserieMDF.Text := serie;
        txtmodeloMDF.Text := '58';

		//Zerando textos dos campos-------------------------------------------------------------
        _dmMDFe.cdsmdfeInfDoc.close;
        _dmMDFe.sdsmdfeInfDoc.CommandText:='SELECT * FROM mdfeinfdoc where serie ='+quotedstr(serie)+' and nmdf = '+quotedstr(numero)+' and codigofilial ='+quotedstr(txtFilialEmitente.Text);
        _dmMDFe.sdsmdfeInfDoc.ExecSQL();
        _dmMDFe.cdsmdfeInfDoc.Open;
        _dmMDFe.cdsmdfeInfDoc.refresh;


        cboUFCarregamento.Text:='';
        cboMunicipioCarregamento.Text:='';
        cboUFDescarregamento.Text:='';
        cboMunicipioDescarregamento.Text:='';
        txtUFPlaca.Text:='';
        txtPlaca.Text:='';
        txtRenavam.Text:='';
        txtRNTC.Text:='';
        txtTara.Text:='';
        txtCapacidadeKG.Text:='';
        txtCapacidadeM3.Text:='';
        cboTipoVeiculo.Text:='';
        cboTipoCarroceria.Text:='';
        cboTipoUnidadeTracao.Text:='';
        txtciot.Text:='';
        txtCondutor.Text:='';
        txtCPFCondutor.Text:='';
        txtInfComplementar.Text:='';
        txtvCarga.Text:='0.00';
        txtcUnid.Text:='01 - KG';
        txtqCarga.Text:='0.0000';
        btnRemoverNFe.Enabled:=true;

        cboUfTrajeto.Text:='';
        memoUf.Text:='';
        btnSalvar.Enabled:=true;

		if(glb_offline='N')then
		begin
			ChkTer.Checked:=false;
            btnAdicionarNFe.Enabled:=true;

		end;

		//Zerando textos dos campos-------------------------------------------------------------



        pgMain.TabIndex := 1;

	end;



end;

procedure T_Main.BitBtn5Click(Sender: TObject);
var
pasta,subpasta:string;
begin

	pasta:=formatdatetime('yyyy',dataxml.date);
	subpasta:=pasta+'-'+formatdatetime('mm',dataxml.date)+'\';

	if not DirectoryExists('C:\iqsistemas\sicemdf-e\xmlMDFe\'+pasta+'\'+subpasta+'\') then
	begin
		showmessage('Não existem manifestos gerados para o mês e ano informado!');
		exit;
	end;


	OpenDialog1.InitialDir :=  'C:\iqsistemas\sicemdf-e\xmlMDFe\'+pasta+'\'+subpasta+'\';
	//  OpenDialog1.InitialDir :=  'C:\iqsistemas\sicemdf-e\';

	OpenDialog1.Execute();
	txtXML.Lines.LoadFromFile(OpenDialog1.FileName);

end;

procedure T_Main.BitBtn6Click(Sender: TObject);
begin
    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.cdsmdfeIDE.Close;
    _dmMDFe.sdsmdfeIDE.CommandText:='SELECT * FROM mdfeide WHERE   DATEDIFF(CURRENT_DATE,dataautorizacao)> diasprevisaoencerrar and cstat="100" and codigofilial='+quotedstr( glb_filial );
    _dmMDFe.sdsmdfeIDE.ExecSQL();
    _dmMDFe.cdsmdfeIDE.Open;
    _dmMDFe.cdsmdfeIDE.refresh;
	pgMain.TabIndex := 0;

end;

procedure T_Main.btncadfilialClick(Sender: TObject);
begin

	_frmfilial:= T_frmFilial.Create(self);
    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('SELECT count(1) as total FROM filiais');
    _dmMDFe.qrPadrao.Open;


	if(_dmMDFe.qrPadrao.FieldByName('total').AsInteger>0)then
	begin
		if(application.MessageBox('Já existe uma filial cadastrada! deseja cadastrar uma nova?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
		alterar:='S'
		else
		alterar:='N';
	end;


	if(alterar='S')then
	begin
        _frmfilial.txtgrupo.Text:=_dmMDFe.ClientDataSetdadgrupo.Text;
		//  _frmfilial.txtfilial.text:=copy(_dmMDFe.ClientDataSetdadCodigoFilial.Text,1,5);
        _frmfilial.txtfilial.text:=glb_filial;
        _frmfilial.txtrazao.Text:=_dmMDFe.ClientDataSetdadempresa.Text;
        _frmfilial.txtfantasia.Text:=_dmMDFe.ClientDataSetdadfantasia.Text;
        _frmfilial.txtcnpj.Text:=_dmMDFe.ClientDataSetdadcnpj.Text;
        _frmfilial.txtinscricao.Text:=_dmMDFe.ClientDataSetdadinscricao.Text;
        _frmfilial.txtenderco.Text:=_dmMDFe.ClientDataSetdadendereco.Text;
        _frmfilial.txtcidade.Text:=_dmMDFe.ClientDataSetdadcidade.Text;
        _frmfilial.txtnumero.Text:=_dmMDFe.ClientDataSetdadnumero.Text;
        _frmfilial.txtbairro.Text:=_dmMDFe.ClientDataSetdadbairro.Text;
        _frmfilial.txtcep.Text:=_dmMDFe.ClientDataSetdadcep.Text;
        _frmfilial.cbouf.Text:=copy(_dmMDFe.ClientDataSetdadestado.Text,1,2);
        _frmfilial.txtfone.Text:=_dmMDFe.ClientDataSetdadtelefone1.Text;
	end;

	_frmfilial.ShowModal;
	_frmfilial.Release;

end;

procedure T_Main.btnAdicionarNFeClick(Sender: TObject);
var
ufDest,codMundest,munDest : string;
begin
	//tiponota P: Própria / tiponota T: Terceiros
	tiponota:='P';


	_frmListarNotas:=T_frmListarNotas.Create(self);
	_frmListarNotas.ShowModal;

	if( _frmListarNotas.seleciondo ='S')then
	begin
		txtNumeroNFe.Text:=  _frmListarNotas.ClientDataSet1CbdNtfNumero.AsString;
		txtSerieNFe.Text:=  _frmListarNotas.ClientDataSet1cbdntfserie.AsString;
		filialemitenteselecionada.Text:=_frmListarNotas.ClientDataSet1CbdCodigoFilial.AsString;;
		_frmListarNotas.Release;
	end
	else
	begin
		txtNumeroNFe.Text:= '';
		txtSerieNFe.Text:=  '';
		filialemitenteselecionada.Text:='';

		_frmListarNotas.Release;
		exit;
	end;





    if(trim(txtNumeroNFe.Text)= '') or (trim(txtSerieNFe.Text)='')then
    begin
		showmessage('Informe o número e a série da NFe');
		exit;
	end;


	//verifica se existem notas não geradas pelo NFe.
	_dmMDFe.cdsmdfeInfDoc.First;
	while not _dmMDFe.cdsmdfeInfDoc.Eof do
	begin
		if _dmMDFe.cdsmdfeInfDoctiponota.AsString = 'T' then
		begin
			showmessage('Nota fiscal de terceiros já lançada! Exclua primeiro.');
			exit;
		end;

		_dmMDFe.cdsmdfeInfDoc.Next;
	end;



	//add por givanildo. Captura os dados de destino da nfe
	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.add('SELECT cbdcmun_dest,cbdxmun_dest,cbduf_dest FROM cbd001 WHERE ');
	_dmMDFe.qrPadrao.SQL.add(' cbdntfserie = abs('+QuotedStr( txtSerieNFe.Text )+')');
	_dmMDFe.qrPadrao.SQL.add(' AND cbdntfnumero='+QuotedStr( txtNumeroNFe.Text ));
	_dmMDFe.qrPadrao.SQL.add(' AND cbdcodigofilial='+QuotedStr( filialemitenteselecionada.Text ));
	_dmMDFe.qrPadrao.SQL.add(' AND cbdmod="55"');
	_dmMDFe.qrPadrao.open;

	ufDest:=  _dmMDFe.qrPadrao.FieldByName('cbduf_dest').AsString;
	//   ufDest:= copy(cboUFDescarregamento.Text,1,2);
	munDest :=  _dmMDFe.qrPadrao.FieldByName('cbdxmun_dest').AsString;
	// munDest :=  copy(cboMunicipioDescarregamento.Text,1,2);
	codMundest := _dmMDFe.qrPadrao.FieldByName('cbdcmun_dest').AsString;




	{ COMEENTADO EM 05/12/2018 ERRO REPASSADO POR VITOR
		if(ChkTer.Checked = false)then
		begin

        if (ufDest <> copy(cboUFDescarregamento.Text,1,2)) then
        begin
		showmessage('A UF descarregamento deve ser única.'+#13' Informe uma NFe na qual a UF de destino corresponda com a UF descarregamento selecionada no cabeçalho');
		exit;
        end;


	end; }

	//----- fim

	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT CbdNFEChaAcesso, CbdNtfNumero, CbdNtfSerie, cbdstsretcodigo, cbdcodigofilial FROM nfe012 where ');
	_dmMDFe.qrPadrao.SQL.Add('CbdNtfNumero = '+QuotedStr( txtNumeroNFe.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('CbdNtfSerie = abs('+QuotedStr( txtSerieNFe.Text )+')  and ');
	_dmMDFe.qrPadrao.SQL.Add('Cbdcodigofilial = '+QuotedStr( filialemitenteselecionada.Text )+' and ');
	_dmMDFe.qrPadrao.SQL.Add('cbdstsretcodigo = "100" and ');
	_dmMDFe.qrPadrao.SQL.Add('cbdmod = "55"');
	_dmMDFe.qrPadrao.Open;

	if  _dmMDFe.qrPadrao.IsEmpty then
	begin
		showmessage('Nota não autorizada ou com modelo de documento diferente de 55!');
		exit;
	end;

	//verifica se a chave já foi utilizada em outro manifesto
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('select * from mdfeinfdoc where chnfe='+QuotedStr(_dmMDFe.qrPadrao.FieldByName('CbdNFEChaAcesso').AsString));
	_dmMDFe.sdsQuery.Open;

	//    if _dmMDFe.sdsQuery.IsEmpty then
	//   begin
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('INSERT INTO mdfeinfdoc (tiponota,serie, nMDF, controlenfe, chnfe, tpUnidTransp, idUnidTransp, codigofilial, vnf, uf,codMunDest,muniDest) ');
	_dmMDFe.sdsQuery.SQL.Add('select '+QuotedStr(tiponota)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtserieMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtnumeroMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add('IFNULL(MAX(controlenfe)+1, 1)'+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( _dmMDFe.qrPadrao.FieldByName('CbdNFEChaAcesso').AsString )+', ');

	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( Copy(cboTipoUnidadeTracao.Text, 1, 1) )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( txtPlaca.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( txtFilialEmitente.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add('(SELECT cbdvnf FROM cbd001 WHERE CbdNtfNumero='+QuotedStr(txtNumeroNFe.Text)+' AND CbdNtfSerie='+QuotedStr(txtSerieNFe.Text)+' AND cbdcodigofilial='+QuotedStr(filialemitenteselecionada.Text)+' limit 1) ');
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(ufDest));
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(codMundest));
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(munDest));

	_dmMDFe.sdsQuery.SQL.Add('FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(filialemitenteselecionada.Text));

	_dmMDFe.sdsQuery.ExecSQL;

	//atualiza o dataset
	_dmMDFe.sdsmdfeInfDoc.CommandText:='select * from mdfeinfdoc where serie='+quotedstr(txtserieMDF.Text)+' and nMDF='+quotedstr(txtnumeroMDF.Text)+' and codigofilial='+QuotedStr(filialemitenteselecionada.Text);
	_dmMDFe.sdsmdfeInfDoc.execsql();
	_dmMDFe.cdsmdfeInfDoc.Refresh;




	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT SUM(vnf) totalcarga from mdfeinfdoc WHERE ');
	_dmMDFe.qrPadrao.SQL.Add('nMDF = '+QuotedStr( txtnumeroMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('serie = '+QuotedStr( txtserieMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('codigofilial = '+QuotedStr( filialemitenteselecionada.Text ));
	_dmMDFe.qrPadrao.Open;
	txtvCarga.Value := _dmMDFe.qrPadrao.FieldByName('totalcarga').AsCurrency;

	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT pesobruto FROM contnfsaida WHERE ');
	_dmMDFe.qrPadrao.SQL.Add('notafiscal = '+QuotedStr( txtnumeroMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('serie = '+QuotedStr( txtserieMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('codigofilial = '+QuotedStr( filialemitenteselecionada.Text ));
	_dmMDFe.qrPadrao.Open;

	txtqCarga.Value := _dmMDFe.qrPadrao.FieldByName('pesobruto').AsCurrency;


	txtNumeroNFe.Text:= '';
	txtSerieNFe.Text:=  '';
	filialemitenteselecionada.Text:='';

	//  end ;
		// else
		// begin
		//   application.MessageBox('Nota já lançada no manifesto!','Alerta',MB_ICONWARNING+MB_OK);
	//end;


end;

procedure T_Main.btnAlterarClick(Sender: TObject);
begin
	if(DBGrid1.Fields[1].asstring <> '')then
	pgMain.TabIndex:=1;
end;

procedure T_Main.btnEncerrarClick(Sender: TObject);
var xml : TStringStream;

begin

	if(_dmMDFe.cdsmdfeIDEnMDF.AsString = '')then
	exit;


	if(_dmMDFe.cdsmdfeIDEcodigofilial.AsString <> glb_filial)then
	begin
		showmessage('Filial do documento diferente da filial logada!');
		exit;
	end;


	if _dmMDFe.cdsmdfeIDEcstat.AsInteger=100 then
	begin
		xml := TStringStream.Create(  _dmMDFe.cdsmdfeXMLXML.AsString  );

		ACBrMDFe1.Manifestos.Clear;
		ACBrMDFe1.Manifestos.LoadFromStream( XML );

		if Application.MessageBox('Confirma encerramento?', 'Pergunta', MB_ICONQUESTION+MB_YESNO) = IDNO
		then exit;

		ACBrMDFe1.EventoMDFe.Evento.Clear;

		with ACBrMDFe1.EventoMDFe.Evento.Add do
		begin
			infEvento.chMDFe   := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
			//      infEvento.CNPJCPF     := txtEmitCNPJ.Text;
			infEvento.CNPJCPF     := _dmMDFe.ClientDataSetdadcnpj.AsString;

			infEvento.dhEvento := now;
			//  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
				//                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
			//                  teEncerramento);
			infEvento.tpEvento   := teEncerramento;
			infEvento.nSeqEvento := 1;

			infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
			infEvento.detEvento.dtEnc := Date;
			infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
			infEvento.detEvento.cMun  := ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;
		end;

		ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote

		sleep(1000);

		ConsultaMDFe;
	end;

end;

procedure T_Main.btnEnviarClick(Sender: TObject);
var Validacao : Boolean;
xml : Tstringstream;
arqxml:TMemoryStream;
pasta,subpasta:string;
begin

	if(DBGrid1.Fields[1].asstring = '')then
	exit;


	if(_dmMDFe.cdsmdfeIDEcodigofilial.AsString <> glb_filial)then
	begin
		showmessage('Filial do documento diferente da filial logada!');
		exit;
	end;


	ACBrMDFe1.Manifestos.Clear;


	if( _dmMDFe.cdsmdfeIDEchMDFe.asstring<>'' )then
	begin
		if(Application.MessageBox('MDF-e já tem chave de acesso. Deseja consultar o MDF-e para recapturar os dados?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idyes)then
		begin
			btnConsultarMDFeClick(Sender);
			exit;
		end;
	end;




	if _dmMDFe.cdsmdfeIDEcstat.AsInteger=100 then
	begin
		Application.MessageBox('Manifesto já enviado!', 'Informação', MB_ICONINFORMATION+MB_OK);
		exit;
	end;


	MemoStatus.Lines.Clear;

	if   Application.MessageBox('Gerar e enviar MDF-e?', 'Pergunta', MB_ICONQUESTION+MB_YESNO) = idyes then
	begin

		GerarMDFe( _dmMDFe.cdsmdfeIDEnMDF.AsString );
		//variável verifica se os Docs lançados estão com os códigos dos municípios
		if(continuar='N')then
		exit;

	end
	else
	exit;




	//salvando chave de acesso
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.CommandText:='update mdfeide set '+
	' chmdfe=' + QuotedStr( Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44) ) + ' '+
	' where nMDF='+QuotedStr(_dmMDFe.cdsmdfeIDEnMDF.AsString)+' and serie='+QuotedStr(_dmMDFe.cdsmdfeIDEserie.AsString)+' and codigofilial='+QuotedStr(_dmMDFe.cdsmdfeIDEcodigofilial.AsString);
	_dmMDFe.sdsQuery.ExecSQL;
	//fim salvando chave acesso


	MemoStatus.Lines.Add('Assinando...');
	ACBrMDFe1.Manifestos.Assinar;
	MemoStatus.Lines.Add('Assinando.');

	try
		MemoStatus.Lines.Add('Validando....');
		ACBrMDFe1.Manifestos.Validar;

		except
		on E : Exception do
		begin
			MemoStatus.Lines.Add(E.Message);
		end;
	end;

	MemoStatus.Lines.Add('Validado.');




	ACBrMDFe1.Manifestos.GravarXML('C:\iqsistemas\sicemdf-e\');





	//gravar xml no banco


	MemoStatus.Lines.Add('Enviando...');

	//GRAVA O XML antes do envio
	xml := TStringStream.Create(ACBrMDFe1.Manifestos.Items[0].XML);


	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.CommandText:='update mdfexml set XML=:xml'+
	' where nMDF='+QuotedStr(_dmMDFe.cdsmdfeIDEnMDF.AsString)+' and serie='+QuotedStr(_dmMDFe.cdsmdfeIDEserie.AsString)+' and codigofilial='+QuotedStr(_dmMDFe.cdsmdfeIDEcodigofilial.AsString);
	_dmMDFe.sdsQuery.ParamByName('xml').LoadFromStream(Xml,ftBlob);
	_dmMDFe.sdsQuery.ExecSQL;
	sleep(5);



	ACBrMDFe1.Enviar(1);

	MemoStatus.Lines.Add('Envio MDFe');
	MemoStatus.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrMDFe1.WebServices.Retorno.TpAmb));
	MemoStatus.Lines.Add('verAplic: '+ ACBrMDFe1.WebServices.Retorno.verAplic);
	MemoStatus.Lines.Add('cStat: '+ IntToStr(ACBrMDFe1.WebServices.Retorno.cStat));
	MemoStatus.Lines.Add('cUF: '+ IntToStr(ACBrMDFe1.WebServices.Retorno.cUF));
	MemoStatus.Lines.Add('xMotivo: '+ ACBrMDFe1.WebServices.Retorno.xMotivo);
	MemoStatus.Lines.Add('xMsg: '+ ACBrMDFe1.WebServices.Retorno.Msg);
	MemoStatus.Lines.Add('Recibo: '+ ACBrMDFe1.WebServices.Retorno.Recibo);
	MemoStatus.Lines.Add('Protocolo: '+ ACBrMDFe1.WebServices.Retorno.Protocolo);

	//atualiza dados locais com o retorno do ws
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.CommandText:='update mdfeide set '+
	'protocolo=' + QuotedStr( ACBrMDFe1.WebServices.Retorno.Protocolo ) + ', '+
	'dataautorizacao=' + QuotedStr( FormatDateTime('yyyy-mm-dd HH:mm:ss', Now)  ) + ', '+
	'xmotivo=' + QuotedStr(ACBrMDFe1.WebServices.Retorno.xMotivo) + ', '+
	'xmsg=' + QuotedStr(ACBrMDFe1.WebServices.Retorno.xMsg) + ', '+
	'chmdfe=' + QuotedStr( Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44) ) + ', '+
	'cstat=' + QuotedStr(inttostr(ACBrMDFe1.WebServices.Retorno.cStat)) + ' '+
	' where nMDF='+QuotedStr(_dmMDFe.cdsmdfeIDEnMDF.AsString)+' and serie='+QuotedStr(_dmMDFe.cdsmdfeIDEserie.AsString)+' and codigofilial='+QuotedStr(_dmMDFe.cdsmdfeIDEcodigofilial.AsString);
	_dmMDFe.sdsQuery.ExecSQL;

	if ACBrMDFe1.WebServices.Retorno.cStat=100 then
	begin

		xml := TStringStream.Create(ACBrMDFe1.Manifestos.Items[0].XML);
		_dmMDFe.sdsQuery.Close;
		_dmMDFe.sdsQuery.CommandText:='update mdfexml set XML=:xml'+
		' where nMDF='+QuotedStr(_dmMDFe.cdsmdfeIDEnMDF.AsString)+' and serie='+QuotedStr(_dmMDFe.cdsmdfeIDEserie.AsString)+' and codigofilial='+QuotedStr(_dmMDFe.cdsmdfeIDEcodigofilial.AsString);
		_dmMDFe.sdsQuery.ParamByName('xml').LoadFromStream(Xml,ftBlob);
		_dmMDFe.sdsQuery.ExecSQL;
	end;


	pasta:=formatdatetime('yyyy',now);
	subpasta:=formatdatetime('yyyy',now)+'-'+formatdatetime('mm',now);

	if not DirectoryExists('C:\iqsistemas\sicemdf-e\xmlMDFe\'+pasta) then
	CreateDir('C:\iqsistemas\sicemdf-e\xmlMDFe\'+pasta);

	if not DirectoryExists('C:\iqsistemas\sicemdf-e\xmlMDFe\'+pasta+'\'+subpasta) then
	CreateDir('C:\iqsistemas\sicemdf-e\xmlMDFe\'+pasta+'\'+subpasta);


	ACBrMDFe1.Manifestos.GravarXML('C:\iqsistemas\sicemdf-e\xmlMDFe\'+pasta+'\'+subpasta+'\');




	ACBrMDFe1.Manifestos.Clear;


	_dmMDFe.cdsmdfeIDE.Refresh;


end;

procedure T_Main.btnImprimirClick(Sender: TObject);
var xml : TStringStream;
begin

	if _dmMDFe.cdsmdfeIDEcstat.AsInteger=100 then
	begin
		xml := TStringStream.Create(  _dmMDFe.cdsmdfeXMLXML.AsString  );

		ACBrMDFe1.Manifestos.Clear;
		ACBrMDFe1.Manifestos.LoadFromStream( XML );

		ACBrMDFeDAMDFeRL1.ImprimirDAMDFe();
	end;

end;

procedure T_Main.btnRemoverNFeClick(Sender: TObject);
begin


	if Application.MessageBox('Deseja remover a nota fiscal selecionada deste manifesto?', 'Pergunta', MB_ICONQUESTION+MB_YESNO)=idyes then
	begin

        _dmMDFe.qrPadrao.Close;
        _dmMDFe.qrPadrao.CommandText:='delete from mdfeinfdoc where'+
        ' codigofilial='+QuotedStr(txtFilialEmitente.Text)+
        ' and chnfe='+QuotedStr( _dmMDFe.cdsmdfeInfDocchNFe.AsString )+
        ' and serie='+QuotedStr( txtserieMDF.Text )+
        ' and nMDF='+QuotedStr( txtnumeroMDF.Text );
        _dmMDFe.qrPadrao.ExecSQL;

        _dmMDFe.cdsmdfeInfDoc.Refresh;
	end;

	if _dmMDFe.cdsmdfeInfDoc.IsEmpty then
	begin
		if(glb_offline='N')then
		begin
			ChkTer.Checked:=false;
			ChkTer.Enabled:=true;
			pnlpropria.Visible:=true;
		end;
	end;


end;

procedure T_Main.CarregarConfiguracoes;
Var IniFile  : String ;
Ini     : TIniFile ;
Ok : Boolean;
StreamMemo : TMemoryStream;
begin

if(glb_offline='N')then
	LerConfiguracaoNFE;

   if(glb_offline='N')then
      begin
        groupbox2.enabled:=false;
      end;

	Ini := TIniFile.Create( 'C:\iqsistemas\SICEMDF-e\sicenfe.ini' );
	try
		if(glb_offline='S')then
        txtEmitCNPJ.Text       := CriptografarSX(Ini.ReadString( 'Emitente','CNPJ'       ,''))
		else
        txtEmitCNPJ.Text       := _dmMDFe.clientdatasetdadcnpj.asstring;

		if(glb_offline='S')then
  		txtEmitIE.Text         := CriptografarSX(Ini.ReadString( 'Emitente','IE'       ,''))
		else
	  	txtEmitIE.Text         := _dmMDFe.clientdatasetdadinscricao.asstring;


    if(glb_offline='S')then
    begin


            with ACBrMDFe1.Configuracoes.Geral do
            begin
              SSLLib                := TSSLLib(Ini.ReadInteger( 'Certificado','SSLLib' ,0));
              SSLCryptLib           := TSSLCryptLib(Ini.ReadInteger( 'Certificado','CryptLib' , 0));
              SSLHttpLib            := TSSLHttpLib(Ini.ReadInteger( 'Certificado','HttpLib' , 0));
              SSLXmlSignLib         := TSSLXmlSignLib(Ini.ReadInteger( 'Certificado','XmlSignLib' , 0));
              FormaEmissao          := StrToTpEmis(OK,IntToStr(Ini.ReadInteger( 'Geral','FormaEmissao',0)+1));;
              Salvar                := Ini.ReadBool( 'Geral','Salvar', True) ; //Salvar arquivos
            end;

            if Ini.ReadInteger( 'Certificado','XmlSignLib' , 0)<>4 then
            begin
                ACBrMDFe1.Configuracoes.Certificados.NumeroSerie := txtNumSerie.Text;
            end;

      AtualizaSSLLibsCombo;
      edtSenha.Text    := CriptografarSX(Ini.ReadString( 'Certificado','Senha'   ,''));
    	ACBrMDFe1.Configuracoes.Certificados.Senha        := edtSenha.Text;

      txtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
      ACBrMDFe1.Configuracoes.Certificados.NumeroSerie :=  txtNumSerie.Text;

    end;


		rgModo.ItemIndex := strtoint(Ini.ReadString( 'ModoEmissao','Modo'   ,'0'));
    rgTipoAmb.ItemIndex := strtoint(Ini.ReadString( 'WebService','Ambiente'   ,'0'));

    cbUF.Text := Ini.ReadString('WebService','UF','');

		ACBrMDFe1.Configuracoes.WebServices.UF            := cbUF.Text;
		ACBrMDFe1.Configuracoes.WebServices.Ambiente      := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));

		if(glb_offline='S')then
		begin
			txtFilialEmitente.Text := Ini.ReadString( 'Emitente','FILIAL'       ,'');

			_dmMDFe.conexao.Close;
			_dmMDFe.ClientDataSetdad.close;
			_dmMDFe.SQLDataSetdad.commandtext:='select * from filiais where grupo="1" and codigofilial='+quotedstr(txtfilialemitente.Text);
			_dmMDFe.ClientDataSetdad.Open;
			_dmMDFe.ClientDataSetdad.refresh;

       txtEmitCNPJ.text:=_dmMDFe.ClientDataSetdadcnpj.AsString;
       txtEmitIE.text:=_dmMDFe.ClientDataSetdadinscricao.AsString;
		end
		else

		txtFilialEmitente.Text := glb_filial;
		StreamMemo := TMemoryStream.Create;
		Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
		StreamMemo.Free;

	finally
		Ini.Free ;
	end;

	_dmMDFe.conexao.Close;
	_dmMDFe.ClientDataSetdad.close;
	_dmMDFe.SQLDataSetdad.commandtext:='select * from filiais where grupo=1 and codigofilial='+quotedstr(txtFilialEmitente.Text);
	_dmMDFe.SQLDataSetdad.ExecSQL();
	_dmMDFe.ClientDataSetdad.Open;
	_dmMDFe.ClientDataSetdad.refresh;

end;

procedure T_Main.cbCryptLibChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      ACBrmdFe1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure T_Main.cbHttpLibChange(Sender: TObject);
begin
  try
    if cbHttpLib.ItemIndex <> -1 then
      ACBrmdFe1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure T_Main.cbofilialfiltroEnter(Sender: TObject);
begin
	_dmMDFe.qrPadrao.SQL.Clear;
    _dmMDFe.qrPadrao.SQL.Add('SELECT codigofilial,descricao from filiais WHERE grupo='+quotedstr(glb_grupo));
    _dmMDFe.qrPadrao.Open;

    cbofilialfiltro.Items.Clear;
    _dmMDFe.qrPadrao.First;
    while not _dmMDFe.qrPadrao.eof do
    begin
		cbofilialfiltro.Items.add(_dmMDFe.qrPadrao.fieldbyname('codigofilial').AsString+' - '+_dmMDFe.qrPadrao.fieldbyname('descricao').AsString);
		_dmMDFe.qrPadrao.next;
	end;


end;

procedure T_Main.cboMunCarrAvulsoEnter(Sender: TObject);
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

procedure T_Main.cboMunDesAvulsoEnter(Sender: TObject);
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

procedure T_Main.cbomundesEnter(Sender: TObject);
begin
	cboMundes.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios WHERE uf='+QuotedStr(Copy(cboUFdes.Text, 1, 2));
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboMundes.Items.Add(_dmMDFe.qrPadrao.FieldByName('NOME').AsString);
        _dmMDFe.qrPadrao.Next;
	end;
end;

procedure T_Main.cboMunicipioCarregamentoEnter(Sender: TObject);
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

procedure T_Main.cboMunicipioDescarregamentoEnter(Sender: TObject);
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

procedure T_Main.cboMunicipioDescarregamentoExit(Sender: TObject);
begin
	txtUFPlaca.SetFocus;
end;

procedure T_Main.cboTipoEmitSelect(Sender: TObject);
begin

	if(copy(cboTipoEmit.Text,1,1)='1')then
    tabCIOTseguro.Enabled:=true
	else
    tabCIOTseguro.Enabled:=false;


end;

procedure T_Main.cboUfCarrAvulsoEnter(Sender: TObject);
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

procedure T_Main.cboUfCarrAvulsoExit(Sender: TObject);
begin

	if(copy(cboUFcarregamento.Text,1,2) <>  copy(cboUfcarrAvulso.Text,1,2))then
	begin
		showmessage('UF selecionado difere do UF carregamento informado no cabeçalho');
		cboUfcarrAvulso.Text:=copy(cboUFcarregamento.Text,1,2);
		cboUfcarrAvulso.SetFocus;
		exit;
	end;



end;

procedure T_Main.cboUFCarregamentoEnter(Sender: TObject);
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

procedure T_Main.cboUfcEnter(Sender: TObject);
begin

	cboUFC.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUFC.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;

	end;



end;

procedure T_Main.cboUFDescarregamentoEnter(Sender: TObject);
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

procedure T_Main.cboufdesEnter(Sender: TObject);
begin
	cboUFdes.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUFdes.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;

	end;
end;

procedure T_Main.cboUfdessAvulsoEnter(Sender: TObject);
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

procedure T_Main.cboUfdessAvulsoExit(Sender: TObject);
begin

	if(copy(cboUFDescarregamento.Text,1,2) <>  copy(cboUfdessAvulso.Text,1,2))then
	begin
		showmessage('UF selecionado difere do UF descarregamento informado no cabeçalho');
		cboUfdessAvulso.Text:= cboUFDescarregamento.Text;
		cboUfdessAvulso.SetFocus;
		exit;
	end;

end;

procedure T_Main.cboUfTrajetoEnter(Sender: TObject);
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

procedure T_Main.cbSSLLibChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      ACBrmdFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure T_Main.cbXmlSignLibChange(Sender: TObject);
begin
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      ACBrmdFe1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure T_Main.chkCidadesClick(Sender: TObject);
begin
	if chkCidades.Checked = true then
	begin
		cboMunicipiodesCarregamento.text:='';
		cboMunicipiodesCarregamento.Enabled:=false;
	end
	else
	cboMunicipiodesCarregamento.Enabled:=true;

end;

procedure T_Main.chkcontingenciaClick(Sender: TObject);
begin
	if(chkcontingencia.Checked=true)then
	txtSegChave.Enabled:=true
	else
	txtSegChave.Enabled:=false;
end;

procedure T_Main.ChkTerClick(Sender: TObject);
begin
    if (ChkTer.Checked)then
    begin
		pnlpropria.Visible:=false;
		pgInserir.TabIndex:=2;
		// cboUFCarregamento.Visible:=false;
			//cboMunicipioCarregamento.Visible:=false;
			// cboUFDescarregamento.Visible:=false;
		//cboMunicipioDescarregamento.Visible:=false;
		btnAddNFeAvulsa.Enabled:=true;

	end;
    if(ChkTer.Checked=false) or (_dmMDFe.cdsmdfeIDEcstat.AsInteger=100) or (_dmMDFe.cdsmdfeIDEcstat.AsInteger=101) or (_dmMDFe.cdsmdfeIDEcstat.AsInteger=132)then
    begin
		if(glb_offline='N')then
		begin
			pnlpropria.Visible:=true;
			cboUFCarregamento.Visible:=true;
			//cboMunicipioCarregamento.Visible:=true;
			cboUFDescarregamento.Visible:=true;
			//cboMunicipioDescarregamento.Visible:=true;
			btnAddNFeAvulsa.Enabled:=false;
		end;
	end;

end;
procedure T_Main.ConsultaMDFe;
var xml : TStringStream;
begin
	Application.ProcessMessages;

	xml := TStringStream.Create(  _dmMDFe.cdsmdfeXMLXML.AsString  );

	ACBrMDFe1.Manifestos.Clear;
	ACBrMDFe1.Manifestos.LoadFromStream( XML );
	ACBrMDFe1.WebServices.Consulta.MDFeChave := _dmMDFe.cdsmdfeIDEchMDFe.AsString;
	ACBrMDFe1.WebServices.Consulta.Executar;

	MemoStatus.Lines.Clear;
	MemoStatus.Lines.Add('Aguarde... consultando MDF-e... ');

	sleep(3000);

	MemoStatus.Lines.Add('Retorno da consulta ');
	MemoStatus.Lines.Add('Cód. Status: '+ IntToStr(ACBrMDFe1.WebServices.Consulta.cStat));
	//MemoStatus.Lines.Add('cUF: '+ IntToStr(ACBrMDFe1.WebServices.Consulta.cUF));
	MemoStatus.Lines.Add(''+ ACBrMDFe1.WebServices.Consulta.xMotivo);
	MemoStatus.Lines.Add('Data: '+ FormatDateTime('dd/mm/yyyy HH:mm:ss', ACBrMDFe1.WebServices.Consulta.DhRecbto)  );
	//MemoStatus.Lines.Add('Recibo: '+ ACBrMDFe1.WebServices.Consulta.Recibo);
	MemoStatus.Lines.Add('Protocolo: '+ ACBrMDFe1.WebServices.Consulta.Protocolo);

	if  ACBrMDFe1.WebServices.Consulta.cStat=101 then
	begin
		//atualiza dados locais com o retorno do ws
		_dmMDFe.sdsQuery.Close;
		_dmMDFe.sdsQuery.CommandText:='update mdfeide set '+
		'protocolocancelamento=' + QuotedStr( ACBrMDFe1.WebServices.Consulta.Protocolo ) + ', '+
		'datacancelamento=' + QuotedStr( FormatDateTime('yyyy-mm-dd HH:mm:ss', Now)  ) + ', '+
		'xmotivo=' + QuotedStr(ACBrMDFe1.WebServices.Consulta.xMotivo) + ', '+
		'xJustificativaCancelamento=' + QuotedStr(JustificativaCancelamento) + ', '+
		'cstat=' + QuotedStr(inttostr(ACBrMDFe1.WebServices.Consulta.cStat)) + ' '+
		' where nMDF='+QuotedStr(_dmMDFe.cdsmdfeIDEnMDF.AsString)+' and serie='+QuotedStr(_dmMDFe.cdsmdfeIDEserie.AsString)+' and codigofilial='+QuotedStr(_dmMDFe.cdsmdfeIDEcodigofilial.AsString);
		_dmMDFe.sdsQuery.ExecSQL;

		_dmMDFe.cdsmdfeIDE.Refresh;
		sleep(5);
	end;


	if  ACBrMDFe1.WebServices.Consulta.cStat=100 then
	begin

		_dmMDFe.sdsQuery.Close;
		_dmMDFe.sdsQuery.CommandText:='update mdfeide set '+
		'protocolo=' + QuotedStr( ACBrMDFe1.WebServices.Consulta.Protocolo ) + ', '+
		'dataautorizacao=' + QuotedStr( FormatDateTime('yyyy-mm-dd HH:mm:ss', ACBrMDFe1.WebServices.Consulta.DhRecbto)  ) + ', '+
		'xmotivo=' + QuotedStr(ACBrMDFe1.WebServices.Consulta.xMotivo) + ', '+
		'cstat=' + QuotedStr(inttostr(ACBrMDFe1.WebServices.Consulta.cStat)) + ' '+
		' where nMDF='+QuotedStr(_dmMDFe.cdsmdfeIDEnMDF.AsString)+' and serie='+QuotedStr(_dmMDFe.cdsmdfeIDEserie.AsString)+' and codigofilial='+QuotedStr(_dmMDFe.cdsmdfeIDEcodigofilial.AsString);
		_dmMDFe.sdsQuery.ExecSQL;

		_dmMDFe.cdsmdfeIDE.Refresh;
		sleep(5);
	end;

	if  ACBrMDFe1.WebServices.Consulta.cStat=132 then
	begin
		_dmMDFe.sdsQuery.Close;
		_dmMDFe.sdsQuery.CommandText:='update mdfeide set '+
		'protocoloencerramento=' + QuotedStr( ACBrMDFe1.WebServices.Consulta.Protocolo ) + ', '+
		'dataencerramento=' + QuotedStr( FormatDateTime('yyyy-mm-dd HH:mm:ss', ACBrMDFe1.WebServices.Consulta.DhRecbto)  ) + ', '+
		'xmotivo=' + QuotedStr(ACBrMDFe1.WebServices.Consulta.xMotivo) + ', '+
		'cstat=' + QuotedStr(inttostr(ACBrMDFe1.WebServices.Consulta.cStat)) + ' '+
		' where nMDF='+QuotedStr(_dmMDFe.cdsmdfeIDEnMDF.AsString)+' and serie='+QuotedStr(_dmMDFe.cdsmdfeIDEserie.AsString)+' and codigofilial='+QuotedStr(_dmMDFe.cdsmdfeIDEcodigofilial.AsString);
		_dmMDFe.sdsQuery.ExecSQL;

		_dmMDFe.cdsmdfeIDE.Refresh;
		sleep(5);
	end;

end;

procedure T_Main.DAMDFe1Click(Sender: TObject);
var xml : TStringStream;
begin

	if _dmMDFe.cdsmdfeIDEcstat.AsInteger=100 then
	begin
		xml := TStringStream.Create(  _dmMDFe.cdsmdfeXMLXML.AsString  );

		ACBrMDFe1.Manifestos.Clear;
		ACBrMDFe1.Manifestos.LoadFromStream( XML );

		ACBrMDFeDAMDFeRL1.ImprimirDAMDFe();
	end;

end;

procedure T_Main.DBGrid1CellClick(Column: TColumn);
begin
	lbloperacao.Caption:='Alterar XML:  Nrº MDFe: '+DBGrid1.Fields[1].asstring +'        Série: '+DBGrid1.Fields[2].asstring;

end;

procedure T_Main.dsIDELocalDataChange(Sender: TObject; Field: TField);
begin

	txtserieMDF.Text :=  _dmMDFe.cdsmdfeIDEserie.AsString;
	txtnumeroMDF.Text :=  _dmMDFe.cdsmdfeIDEnMDF.AsString;
	txtmodeloMDF.Text := _dmMDFe.cdsmdfeIDEmodelo.AsString;
	cboUFCarregamento.Text := _dmMDFe.cdsmdfeIDEUFIni.AsString;
	cboMunicipioCarregamento.Text:= _dmMDFe.cdsmdfeIDExMunCarrega.AsString;
	cboUFDescarregamento.Text := _dmMDFe.cdsmdfeIDEUFFim.AsString;
	cboMunicipioDescarregamento.Text:= _dmMDFe.cdsmdfeIDExMundescarga.AsString;
	txtInfComplementar.Text := _dmMDFe.cdsmdfeIDEinfCpl.AsString;
	if(_dmMDFe.cdsmdfeIDEdhEmi.asstring <> '')then
	txtDataEmissao.Text :=formatdatetime('dd/mm/yyyy', strtodatetime(_dmMDFe.cdsmdfeIDEdhEmi.asstring))
	else
	txtDataEmissao.Text :=formatdatetime('dd/mm/yyyy', now);


	txtqCarga.Value := _dmMDFe.cdsmdfeIDEqCarga.AsFloat;
	txtvCarga.Value := _dmMDFe.cdsmdfeIDEvCarga.AsFloat;
	txtcUnid.Text := _dmMDFe.cdsmdfeIDEcUnid.AsString;
	txtdiasconclusao.Text:= _dmMDFe.cdsmdfeIDEdiasprevisaoencerrar.AsString;

	_dmMDFe.cdsmdfeInfDoc.Close;
	_dmMDFe.cdsmdfeInfDoc.Close;
	_dmMDFe.sdsmdfeInfDoc.CommandText:='select * from mdfeinfdoc where '+
	' codigofilial='+QuotedStr(txtFilialEmitente.Text)+
	' and serie='+QuotedStr( txtserieMDF.Text )+
	' and nMDF='+QuotedStr( txtnumeroMDF.Text );
	_dmMDFe.cdsmdfeInfDoc.Open;

	_dmMDFe.cdsmdfeRodo.Close;
	_dmMDFe.sdsmdfeRodo.Close;
	_dmMDFe.sdsmdfeRodo.CommandText:='select * from mdferodo where '+
	' codigofilial='+QuotedStr(txtFilialEmitente.Text)+
	' and serie='+QuotedStr( txtserieMDF.Text )+
	' and nMDF='+QuotedStr( txtnumeroMDF.Text );
	_dmMDFe.cdsmdfeRodo.Open;

	_dmMDFe.cdsmdfeXML.Close;
	_dmMDFe.sdsmdfeXML.Close;
	_dmMDFe.sdsmdfeXML.CommandText:='select * from mdfexml where '+
	' codigofilial='+QuotedStr(txtFilialEmitente.Text)+
	' and serie='+QuotedStr( txtserieMDF.Text )+
	' and nMDF='+QuotedStr( txtnumeroMDF.Text );
	_dmMDFe.cdsmdfeXML.Open;

	txtRNTC.Text :=  _dmMDFe.cdsmdfeRodoRNTRC.AsString;
	txtPlaca.Text :=  _dmMDFe.cdsmdfeRodoveicTracao_placa.AsString;
	txtRenavam.Text :=  _dmMDFe.cdsmdfeRodoveicTracao_RENAVAM.AsString;
	txtTara.Value :=  _dmMDFe.cdsmdfeRodoveicTracao_tara.AsFloat;
	txtCapacidadeKG.Value :=  _dmMDFe.cdsmdfeRodoveicTracao_capKG.AsFloat;
	txtCapacidadeM3.Value :=  _dmMDFe.cdsmdfeRodoveicTracao_capM3.AsFloat;
	cboTipoVeiculo.Text :=  _dmMDFe.cdsmdfeRodoveicTracao_tpRod.AsString;
	cboTipoCarroceria.Text :=  _dmMDFe.cdsmdfeRodoveicTracao_tpCar.AsString;
	txtUFPlaca.Text :=  _dmMDFe.cdsmdfeRodoveicTracao_UF.AsString;
	txtCondutor.Text := _dmMDFe.cdsmdfeRodoveicTracao_condutor_xNome.AsString;
	txtCPFCondutor.Text := _dmMDFe.cdsmdfeRodoveicTracao_condutor_CPF.AsString;
	txtChacesso.Text:= _dmMDFe.cdsmdfeIDEchMDFe.AsString;
	txtciot.Text:= _dmMDFe.cdsmdfeRodoCIOT.AsString ;
	if (_dmMDFe.cdsmdfeIDEcstat.AsInteger=100) or (_dmMDFe.cdsmdfeIDEcstat.AsInteger=101) or (_dmMDFe.cdsmdfeIDEcstat.AsInteger=132) then
	begin
		btnSalvar.Enabled := false;
		btnAdicionarNFe.Enabled:=false;
		btnRemoverNFe.Enabled:=false;
		btnAddNFeAvulsa.Enabled:=false;
	end
	else
	begin
		btnSalvar.Enabled := true;
		btnAdicionarNFe.Enabled:=true;
		btnRemoverNFe.Enabled:=true;
		if(ChkTer.Checked)then
		btnAddNFeAvulsa.Enabled:=true;


	end;


	txtCPFCNPJciot.Text       := _dmMDFe.cdsmdfeRodoCPF_CNPJ_CIOT.AsString;
	txtrespseg.Text           :=  _dmMDFe.cdsmdfeRodorespSeg.AsString;
	txtcnpjrespseg.Text       :=  _dmMDFe.cdsmdfeRodoCNPJrespseg.AsString;
	txtseguradora.Text        :=  _dmMDFe.cdsmdfeRodoxSeg.AsString;
	txtcnpjseguradora.Text    :=  _dmMDFe.cdsmdfeRodoCNPJseg.AsString;
	txtnapolice.Text          :=   _dmMDFe.cdsmdfeRodonApol.AsString;
	txtnraverbacao.Text       :=   _dmMDFe.cdsmdfeRodonAver.AsString;











end;

procedure T_Main.FormActivate(Sender: TObject);
begin
	FormatSettings.DecimalSeparator:='.';

end;

procedure T_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	application.Terminate;
end;

procedure T_Main.FormCreate(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;
begin
	Sys_Data:=now;


    pgMain.TabIndex :=0;
    //pgnfe.TabIndex :=0;

  cbSSLLib.Items.Clear;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  For Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;
end;

procedure T_Main.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if(key = #13)then
	begin
		key := #0;
		Perform(WM_NEXTDLGCTL,0,0);
	end;
end;

procedure T_Main.FormShow(Sender: TObject);
begin

	FormatSettings.DecimalSeparator:='.';



	lblversao.Caption:=GetBuildInfo;

	dataXML.date:=now;

	if fileexists(ExtractFileDir(application.exename)+'\sicemdfeoff.txt') then
	begin

		glb_offline:='S';

		_dmMDFe.conexao.Close;
		_dmMDFe.qrpadrao2.sql.Clear();
		_dmMDFe.qrpadrao2.sql.add('select count(1) as total from filiais');
		_dmMDFe.qrpadrao2.open;


		if(_dmMDFe.qrpadrao2.FieldByName('total').Asinteger = 0)then
		begin

			Application.MessageBox('Cadastre uma nova filial!','Alerta',MB_ICONEXCLAMATION+mb_ok);

			_frmfilial:= T_frmFilial.Create(self);
			_frmfilial.ShowModal;
			_frmfilial.Release;

		end;


        btnBuscarTransportadora.Visible:=false;
        txtEmitCNPJ.enabled:=false;
        txtEmitIE.enabled:=false;
        txtFilialEmitente.enabled:=true;




		btncadfilial.visible:=true;
		_Main.glb_grupo:='1';
		glb_filial:=_Main.txtFilialEmitente.text;
		// _Main.txtFilialEmitente.text:= copy(cbofilial.Text,1,5);
		_main.glb_loginFeito:='N';
		pnlpropria.Visible:=false;
		ChkTer.Checked:=true;
		ChkTer.Enabled:=false;

	end;

	if glb_loginFeito<>'S' then
	begin
		_frmLogin:= T_frmLogin.Create(self);
		_frmLogin.ShowModal();
		_frmLogin.Release;
	end;

	_dmMDFe.cdsmdfeIDE.Close;
	_dmMDFe.sdsmdfeIDE.Close;
	_dmMDFe.sdsmdfeIDE.CommandText:='select * from mdfeide where  date(dhemi) = date(current_date)and codigofilial='+QuotedStr(txtFilialEmitente.Text)+'  order by nMDF, serie';
	_dmMDFe.cdsmdfeIDE.Open;

	pgMain.TabIndex := 0;


    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.cdsmdfeIDE.Close;
    _dmMDFe.sdsmdfeIDE.CommandText:='SELECT * FROM mdfeide WHERE   DATEDIFF(CURRENT_DATE,dataautorizacao)> diasprevisaoencerrar and cstat="100" and codigofilial='+quotedstr( glb_filial );
    _dmMDFe.cdsmdfeIDE.Open;
    _dmMDFe.cdsmdfeIDE.refresh;

    if(_dmMDFe.cdsmdfeIDE.RecordCount>0)then
    begin


        _frmManifestosEncerrar :=T_frmManifestosEncerrar.Create(self);
        _frmManifestosEncerrar.ShowModal;
        _frmManifestosEncerrar.Release;
	  end;

  CarregarConfiguracoes;

end;

procedure T_Main.GerarMDFe(NumMDFe: String);
var iqNFe, iqNCTe,linha : Integer;

begin

	//variável para validação do lançamento de documentos do MDFe
	continuar:='S';

	iqNFe:=0;
	iqNCTe:=0;

	with ACBrMDFe1.Manifestos.Add.MDFe do
	begin
		//
			// Dados de Identificação do MDF-e
		//
		Ide.cUF := _dmMDFe.cdsmdfeIDEcUF.AsInteger;


		case  _dmMDFe.cdsmdfeIDEtpEmis.Value of
			1: Ide.tpEmit  := teTransportadora;
			2: Ide.tpEmit  := teTranspCargaPropria;
		end;


		// TpcnTipoAmbiente = (taProducao, taHomologacao);
		case rgTipoAmb.ItemIndex of
			0: Ide.tpAmb := taProducao;
			1: Ide.tpAmb := taHomologacao;
		end;



		case cboTipoEmit.ItemIndex of
			0:  Ide.tpEmit:= teTransportadora;
			1:  Ide.tpEmit:=teTranspCargaPropria;
			2:  Ide.tpEmit:=teTranspCTeGlobalizado;
		end;

		// TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
		//Ide.tpEmit  := teTranspCargaPropria;

		Ide.modelo  := '58';
		Ide.serie   := _dmMDFe.cdsmdfeIDEserie.AsInteger;
		Ide.nMDF    := _dmMDFe.cdsmdfeIDEnMDF.AsInteger;
		Ide.cMDF    := 1;  // Código Aleatório
		// TMDFeModal = ( moRodoviario, moAereo, moAquaviario, moFerroviario );
		Ide.modal   := moRodoviario;



		if(_dmMDFe.cdsmdfeIDEtpEmis.Value = 1)then
		begin
			//INFORMAÇÃO SEGURO
			with seg.Add  do
			begin
				respSeg :=   rsEmitente;
				CNPJ    :=  _dmMDFe.cdsmdfeRodoCNPJrespseg.AsString;

				xSeg    := _dmMDFe.cdsmdfeRodoxSeg.AsString;
				CNPJCPF := _dmMDFe.cdsmdfeRodoCNPJseg.AsString; ;
				nApol   := _dmMDFe.cdsmdfeRodonApol.AsString;

				with aver.Add do
				begin
                    nAver := _dmMDFe.cdsmdfeRodonAver.AsString;
				end;


			end;




			with Rodo.infANTT.infCIOT.Add do
			begin
				CIOT    := _dmMDFe.cdsmdfeRodoCIOT.AsString;
				CNPJCPF := _dmMDFe.cdsmdfeRodoCPF_CNPJ_CIOT.AsString;

			end;
			rodo.infANTT.RNTRC := _dmMDFe.cdsmdfeRodoRNTRC.AsString;






		end;
		// FIM INFORMAÇÃO SEGURO




		Ide.dhEmi   := Now;
		// TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
		Ide.tpEmis  := teNormal;
		// TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
		Ide.procEmi := peAplicativoContribuinte;
		Ide.verProc := '1.0';
		//UF origem

		//if(ChkTer.Checked)then
		// begin
		Ide.UFIni   := _dmMDFe.cdsmdfeIDEUFIni.AsString;
		//Ide.UFIni   := copy(cboUfCarrAvulso.Text,1,2);
			// end
			//else
		// Ide.UFIni   := copy(cboUFCarregamento.Text,1,2);

		//Estados do percurso
        linha := 0;

        while linha < memoUf.Lines.Count do
        begin
			with Ide.InfPercurso.Add do
			begin

				UFPer := memoUf.lines.Strings[linha];
				//showmessage(memoUf.lines.Strings[linha]);
			end;

			linha:= linha +1;
		end;

		//UF destino final
			// if(ChkTer.Checked)then
		// begin
		Ide.UFFim   := _dmMDFe.cdsmdfeIDEUFFim.AsString;
		//Ide.UFFim   := copy(cboUfdessAvulso.Text,1,2);
			//end
			// else
		// Ide.UFFim   := copy(cboUFDescarregamento.Text,1,2);


		with Ide.infMunCarrega.Add do
		begin
			cMunCarrega := _dmMDFe.cdsmdfeIDEcMunCarrega.AsInteger;
			xMunCarrega := _dmMDFe.cdsmdfeIDExMunCarrega.AsString;
		end;



		//
			// Dados do Emitente
		//
		_dmMDFe.qrPadrao.Close;
		_dmMDFe.qrPadrao.SQL.Clear;
		_dmMDFe.qrPadrao.SQL.Add('SELECT CNPJ, inscricao AS IE, empresa AS xnome, descricao AS xfant, endereco AS xlgr, numero AS nro, complemento AS xcpl, bairro AS xbairro, ');
		_dmMDFe.qrPadrao.SQL.Add('(SELECT id FROM tab_municipios WHERE uf=filiais.estado AND nome=filiais.cidade) AS cMun, ');
		_dmMDFe.qrPadrao.SQL.Add('cidade AS xmun, cep, estado AS uf, telefone1 AS fone, email FROM filiais WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text));
		_dmMDFe.qrPadrao.Open;



		Emit.CNPJCPF  := _dmMDFe.qrPadrao.FieldByName('CNPJ').AsString;
		Emit.IE    := _dmMDFe.qrPadrao.FieldByName('IE').AsString;
		Emit.xNome := _dmMDFe.qrPadrao.FieldByName('xNome').AsString;
		Emit.xFant := _dmMDFe.qrPadrao.FieldByName('xFant').AsString;

		Emit.EnderEmit.xLgr    := _dmMDFe.qrPadrao.FieldByName('xLgr').AsString;
		Emit.EnderEmit.nro     := _dmMDFe.qrPadrao.FieldByName('nro').AsString;
		Emit.EnderEmit.xCpl    := _dmMDFe.qrPadrao.FieldByName('xCpl').AsString;
		Emit.EnderEmit.xBairro := _dmMDFe.qrPadrao.FieldByName('xBairro').AsString;
		Emit.EnderEmit.cMun    := _dmMDFe.qrPadrao.FieldByName('cMun').AsInteger;
		Emit.EnderEmit.xMun    := _dmMDFe.qrPadrao.FieldByName('xMun').AsString;
		Emit.EnderEmit.CEP     := _dmMDFe.qrPadrao.FieldByName('CEP').AsInteger;
		Emit.EnderEmit.UF      := _dmMDFe.qrPadrao.FieldByName('UF').AsString;
		Emit.EnderEmit.fone    := _dmMDFe.qrPadrao.FieldByName('fone').AsString;
		Emit.enderEmit.email   := _dmMDFe.qrPadrao.FieldByName('email').AsString;
		{
			if(cboTipoEmit.ItemIndex = 0)then
			begin
			rodo.RNTRC := _dmMDFe.cdsmdfeRodoRNTRC.AsString;
			rodo.CIOT  := _dmMDFe.cdsmdfeRodoCIOT.AsString;
			//rodo.valePed:=0;



			seg.Add.respSeg := rsEmitente;
			seg.Add.xSeg  := '000000000000000000000000000000';
			seg.Add.nApol := '000000000000000000';



		end;  }


		rodo.veicTracao.cInt    := _dmMDFe.cdsmdfeRodoveicTracao_cInt.AsString;
		rodo.veicTracao.placa   := _dmMDFe.cdsmdfeRodoveicTracao_placa.AsString;
		rodo.veicTracao.RENAVAM := _dmMDFe.cdsmdfeRodoveicTracao_RENAVAM.AsString;
		rodo.veicTracao.tara    := _dmMDFe.cdsmdfeRodoveicTracao_tara.AsInteger;
		rodo.veicTracao.capKG   := _dmMDFe.cdsmdfeRodoveicTracao_capKG.AsInteger;
		rodo.veicTracao.capM3   := _dmMDFe.cdsmdfeRodoveicTracao_capM3.AsInteger;

		// TpcteTipoRodado = (trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros);
		// Para o MDF-e não utilizar o trNaoAplicavel.

		case _dmMDFe.cdsmdfeRodoveicTracao_tpRod.AsInteger of
			1 : rodo.veicTracao.tpRod := trTruck;
			2 : rodo.veicTracao.tpRod := trToco;
			3 : rodo.veicTracao.tpRod := trCavaloMecanico;
			4 : rodo.veicTracao.tpRod := trVAN;
			5 : rodo.veicTracao.tpRod := trUtilitario;
			6 : rodo.veicTracao.tpRod := trOutros;
		end;

		// rodo.veicTracao.tpRod := trNaoAplicavel;
		// rodo.veicTracao.tpCar := tcAberta;

		// TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);

		case _dmMDFe.cdsmdfeRodoveicTracao_tpCar.AsInteger of
			0 : rodo.veicTracao.tpCar := tcNaoAplicavel;
			1 : rodo.veicTracao.tpCar := tcAberta;
			2 : rodo.veicTracao.tpCar := tcFechada;
			3 : rodo.veicTracao.tpCar := tcGraneleira;
			4 : rodo.veicTracao.tpCar := tcPortaContainer;
			5 : rodo.veicTracao.tpCar := tcSider;
		end;

		rodo.veicTracao.UF := _dmMDFe.qrPadrao.FieldByName('UF').AsString;

		//PODE-SE ADICIONAR MAIS CASO NECESSÁRIO
		with rodo.veicTracao.condutor.Add do
		begin
			xNome := _dmMDFe.cdsmdfeRodoveicTracao_condutor_xNome.AsString;
			CPF   := _dmMDFe.cdsmdfeRodoveicTracao_condutor_CPF.AsString;
		end;



		//add por Givanildo varias cidade cidades das notas
			//if(chkCidades.Checked = true)then
		//begin
		_dmMDFe.qrPadrao.Close;
		_dmMDFe.qrPadrao.Sql.Clear;
		_dmMDFe.qrPadrao.sql.add('SELECT chNFe,uf,codmundest,munidest FROM mdfeinfdoc WHERE nMdf='+quotedstr(_dmMDFe.cdsmdfeInfDocnMDF.AsString)+' and serie = '+quotedstr(_dmMDFe.cdsmdfeInfDocserie.AsString)+' and codigofilial='+quotedstr(txtFilialEmitente.Text)+' GROUP BY munidest');
		_dmMDFe.qrPadrao.Open;

		_dmMDFe.qrPadrao.First;
		while not _dmMDFe.qrPadrao.Eof do
		begin



			with infDoc.infMunDescarga.Add do
			begin

				//obter o código do município
				_dmMDFe.sdsQuery.SQL.Clear;
				_dmMDFe.sdsQuery.SQL.add('SELECT id FROM tab_municipios WHERE id='+quotedstr(_dmMDFe.qrPadrao.FieldByName('codmundest').AsString));
				_dmMDFe.sdsQuery.Open;

				if(_dmMDFe.sdsQuery.FieldByName('id').AsString.IsEmpty) then
				begin
					application.MessageBox('Erro na informação dos municípios dos documentos informados no MDFe. Remova os documentos e lance-os novamente','Erro',MB_OK+MB_ICONEXCLAMATION);
					continuar:='N';
					exit;
				end;


				// try

				cMunDescarga := strtoint(_dmMDFe.qrPadrao.FieldByName('codmundest').AsString);
				xMunDescarga := _dmMDFe.qrPadrao.FieldByName('munidest').AsString;


				// except
					//application.MessageBox('Erro na informação dos municípios dos documentos informados no MDFe. Remova os documentos e lance-os novamente','Erro',MB_OK+MB_ICONEXCLAMATION);
					//exit;
				//end;


				// if ChkTer.Checked then
					// xMunDescarga := cboMunDesAvulso.Text
					//  else
				// xMunDescarga :=cboMunicipioDescarregamento.Text;


				_dmMDFe.cdsmdfeInfDoc.First;

				while not _dmMDFe.cdsmdfeInfDoc.Eof do
				begin
                    if _dmMDFe.cdsmdfeInfDocmuniDest.AsString = _dmMDFe.qrPadrao.FieldByName('munidest').AsString then
                    begin


						//informa o documento fiscal
						if(_dmMDFe.cdsmdfeIDEtpEmis.Value= 1)then
						begin
							if(copy(_dmMDFe.cdsmdfeInfDocchNFe.AsString,21,2)='57')then
							begin
								//informar CTe,
								with infCTe.Add do
								begin
									chCTe:=_dmMDFe.cdsmdfeInfDocchNFe.AsString;
									SegCodBarra:=_dmMDFe.cdsmdfeInfDocSegCodBarra.AsString;
									iqNCTe:=iqNCTe+1;
								end;

							end

						end
						else
						begin
							with infNFe.Add do
							begin
								chNFe := _dmMDFe.cdsmdfeInfDocchNFe.AsString;
								SegCodBarra := _dmMDFe.cdsmdfeInfDocSegCodBarra.AsString;
								iqNFe:=iqNFe+1;
							end;
						end;






					end;


					_dmMDFe.cdsmdfeInfDoc.Next;
				end; //while


			end;


			_dmMDFe.qrPadrao.next;
		end;



		if(iqNFe>0)then
		tot.qNFe := iqNFe;

		if(iqNCTe>0)then
		tot.qCTe := iqNCTe;

		tot.vCarga := _dmMDFe.cdsmdfeIDEvCarga.AsCurrency;

		// UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
		if _dmMDFe.cdsmdfeIDEcUnid.AsString='01' then tot.cUnid  :=  uKG;
		if _dmMDFe.cdsmdfeIDEcUnid.AsString='02' then tot.cUnid  :=  uTON;

		tot.qCarga := _dmMDFe.cdsmdfeIDEqCarga.AsCurrency;

		// ACBrMDFe1.Manifestos.Assinar;

		ACBrMDFe1.Manifestos.GerarMDFe;


		ACBrMDFe1.Manifestos.GravarXML('C:\iqsistemas\sicemdf-e\');



		MemoStatus.Lines.Add('MDF-e Número; '+_dmMDFe.cdsmdfeIDEnMDF.AsString+'  Série: '+_dmMDFe.cdsmdfeIDEserie.AsString+' - Gerado com sucesso.');


	end;

end;

function T_Main.GetBuildInfo: string;
var
VerInfoSize: DWORD;
VerInfo: Pointer;
VerValueSize: DWORD;
VerValue: PVSFixedFileInfo;
Dummy: DWORD;
V1,V2,V3,V4: Word;
prog: string;// pega o nome do programa
Begin
	prog:= application.ExeName;
	VerInfoSize := GetFileVersionInfoSize(Pchar(prog), Dummy);
	GetMem(VerInfo, VerInfoSize);
	GetFileVersionInfo(Pchar(prog),0, VerInfosize, VerInfo);
	VerQueryValue(VerInfo,'\', Pointer(VerValue), VerValueSize);
	With VerValue^ do
	begin
		V1:= dwFileVersionMS shr 16;
		V2:= dwFileVersionMS and $FFFF;
		V3:= dwFileVersionLS shr 16;
		V4:= dwFileVersionLS and $FFFF;
	end;
	FreeMem(VerInfo, VerInfoSize);
	result := Copy (IntToStr (100 + v1),3,2) + '.' +
	Copy(IntToStr (100+ v2), 3, 2);
end;

procedure T_Main.LerConfiguracaoNFE;
Var IniFile  : String ;
Ini     : TIniFile ;
Ok : Boolean;
StreamMemo : TMemoryStream;
begin
	IniFile := 'c:\iqsistemas\SICENFe\SICEnfe.ini';

	Ini := TIniFile.Create( IniFile );
	try
		edtSenha.Text                                    := CriptografarSX(Ini.ReadString( 'Certificado','Senha'   ,''));
    edtNumSerie.Text                                 := Ini.ReadString( 'Certificado','NumSerie','');

		ACBrMDFe1.Configuracoes.Certificados.ArquivoPFX  := Ini.ReadString( 'Certificado','Caminho' ,'');
		ACBrMDFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
		ACBrMDFe1.Configuracoes.WebServices.Visualizar    := Ini.ReadBool( 'WebService','Visualizar',False);
		ACBrMDFe1.SSL.SSLType                             :=  TSSLType(Ini.ReadInteger( 'WebService','SSLType' , 0));

		ACBrMDFe1.Configuracoes.WebServices.ProxyHost := Ini.ReadString( 'Proxy','Host'   ,'');
		ACBrMDFe1.Configuracoes.WebServices.ProxyPort := Ini.ReadString( 'Proxy','Porta'  ,'');
		ACBrMDFe1.Configuracoes.WebServices.ProxyUser := Ini.ReadString( 'Proxy','User'   ,'');
		ACBrMDFe1.Configuracoes.WebServices.ProxyPass := Ini.ReadString( 'Proxy','Pass'   ,'');

		ACBrMDFe1.SSL.DescarregarCertificado;

    sbtnGetCert.Enabled:=false;
    edtSenha.Enabled:=false;


		with ACBrMDFe1.Configuracoes.Geral do
		begin
			SSLLib                := TSSLLib(Ini.ReadInteger( 'Certificado','SSLLib' ,0));
			SSLCryptLib           := TSSLCryptLib(Ini.ReadInteger( 'Certificado','CryptLib' , 0));
			SSLHttpLib            := TSSLHttpLib(Ini.ReadInteger( 'Certificado','HttpLib' , 0));
			SSLXmlSignLib         := TSSLXmlSignLib(Ini.ReadInteger( 'Certificado','XmlSignLib' , 0));
			FormaEmissao          := StrToTpEmis(OK,IntToStr(Ini.ReadInteger( 'Geral','FormaEmissao',0)+1));;
			Salvar                := Ini.ReadBool( 'Geral','Salvar', True) ; //Salvar arquivos
		end;

    if Ini.ReadInteger( 'Certificado','XmlSignLib' , 0)<>4 then
    begin
    		ACBrMDFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
    end;


		except

	end;


  ACBrMDFe1.Configuracoes.Arquivos.PathMDFe:='C:\iqsistemas\SICEMDF-e\MDF-E\';
  ACBrMDFe1.Configuracoes.Arquivos.PathEvento:='C:\iqsistemas\SICEMDF-e\eventos';
  ACBrMDFe1.Configuracoes.Arquivos.PathSalvar:='C:\iqsistemas\SICEMDF-e\Docs\';

end;

procedure T_Main.RelatriodeMDFe1Click(Sender: TObject);
var
mdfN,filial:string;
begin


    if(cbofilialfiltro.Text<>'')then
    filial:=' AND codigofilial='+quotedstr(copy(cbofilialfiltro.Text,1,5))
    else
    filial:='';

	mdfN:='';
	_dmMDFe.cdsmdfeIDE.First;
	while not _dmMDFe.cdsmdfeIDE.eof do
	begin

		if(_dmMDFe.cdsmdfeIDEcstat.AsString = '100') or (_dmMDFe.cdsmdfeIDEcstat.AsString = '132') or (_dmMDFe.cdsmdfeIDEcstat.AsString = '101') then
		mdfN:=mdfN+_dmMDFe.cdsmdfeIDEnMDF.AsString+',';

		_dmMDFe.cdsmdfeIDE.next;
	end;

	mdfN:='('+copy(mdfN,1, (Length(mdfN)-1))+')';

	_dmMDFe.conexao.Connected:=false;
	_dmMDFe.cdsmdfeInfDoc.Close;
	_dmMDFe.sdsmdfeInfDoc.CommandText:='SELECT * FROM mdfeinfdoc WHERE nmdf IN '+mdfN+filial;
	_dmMDFe.sdsmdfeInfDoc.ExecSQL();
	_dmMDFe.cdsmdfeInfDoc.Open;
	_dmMDFe.cdsmdfeInfDoc.Refresh;


	RvProject1.SetParam('filial',cbofilialfiltro.Text);
	RvProject1.execute;

end;

procedure T_Main.SalvarClick(Sender: TObject);
Var IniFile  : String ;
Ini     : TIniFile ;
Ok : Boolean;
StreamMemo : TMemoryStream;
begin

	if(application.MessageBox('Salvar configurações?','Confirmação',MB_ICONQUESTION+MB_YESNO)=IDNO) then
	exit;

	Ini := TIniFile.Create( 'C:\iqsistemas\SICEMDF-e\sicenfe.ini' );
	try

          if(glb_offline='S')then
          begin

           // Ini.WriteString('Certificado','Senha'   ,CriptografarSX(edtSenha.Text));


            Ini.WriteString(  'Certificado','Caminho' ,edtCaminho.Text) ;
            Ini.WriteString(  'Certificado','Senha'   ,CriptografarSX(edtSenha.Text)) ;
            Ini.WriteString(  'Certificado','NumSerie',txtNumSerie.Text) ;

            Ini.WriteInteger( 'Certificado','SSLLib' , cbSSLLib.ItemIndex);
            Ini.WriteInteger( 'Certificado','CryptLib' , cbCryptLib.ItemIndex);
            Ini.WriteInteger( 'Certificado','HttpLib' , cbHttpLib.ItemIndex);
            Ini.WriteInteger( 'Certificado','XmlSignLib' , cbXmlSignLib.ItemIndex);



            //Ini.WriteString('Certificado','NumSerie' ,edtNumSerie.Text) ;

          end;


		Ini.WriteString('Geral','IntervaloReq',inttostr(IntervaloReq.Value)) ;

		Ini.WriteString('WebService','UF',cbUF.text) ;
		Ini.WriteString('WebService','Ambiente',inttostr(rgTipoAmb.ItemIndex)) ;

		if(glb_offline='S')then
		begin
			Ini.WriteString('Emitente','FILIAL', txtFilialEmitente.Text);
			Ini.WriteString('Emitente','CNPJ', CriptografarSX(txtEmitCNPJ.Text));
			Ini.WriteString('Emitente','IE', CriptografarSX(txtemitie.Text));
		end;

		Ini.WriteString('ModoEmissao','Modo'   ,'0');

		StreamMemo := TMemoryStream.Create;
		Ini.WriteBinaryStream('Email','Mensagem',StreamMemo) ;
		StreamMemo.Free;

		finally
		Ini.Free ;
	end;

  CarregarConfiguracoes;

end;

procedure T_Main.sbtnCaminhoCertClick(Sender: TObject);
begin
	OpenDialog1.Title := 'Selecione o Certificado';
	OpenDialog1.DefaultExt := '*.pfx';
	OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
	OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
	if OpenDialog1.Execute then
	begin
		edtCaminho.Text := OpenDialog1.FileName;
    edtSenha.Text := '';
    edtNumSerie.Text := '';
	end;
end;

procedure T_Main.sbtnGetCertClick(Sender: TObject);
begin
	ACBrMDFe1.SSL.SelecionarCertificado;
	edtNumSerie.Text:=ACBrMDFe1.SSL.CertNumeroSerie;
end;

procedure T_Main.SpeedButton1Click(Sender: TObject);
begin

	if(txtChacesso.Visible=true)then
	begin
		txtChacesso.Visible:=false;
		lblchv.Visible:=false;
	end
	else
	begin
		txtChacesso.Visible:=true;
		lblchv.Visible:=true;
	end;
end;

procedure T_Main.txtChacessoKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in ['0'..'9']) then
	key:=#0;
end;

procedure T_Main.txtciotExit(Sender: TObject);
var
limit,qtd : integer;
qtdDig:string;
begin
	limit := 12;
	qtd:=length(txtciot.Text);

	while qtd < limit  do
	begin
		qtddig := qtddig + '0';
		qtd := qtd + 1;
	end;

	txtciot.Text:= qtddig + txtciot.Text;

end;

procedure T_Main.txtciotKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9'])  and (key <> #8) and (key <> #9)then
	key:=#0;
end;

procedure T_Main.txtcnpjrespsegKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9'])  and (key <> #8) and (key <> #9)then
	key:=#0;
end;

procedure T_Main.txtcnpjseguradoraKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9'])  and (key <> #8) and (key <> #9)then
	key:=#0;
end;

procedure T_Main.txtCPFCNPJciotKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9'])  and (key <> #8) and (key <> #9)then
	key:=#0;
end;

procedure T_Main.txtCPFCondutorExit(Sender: TObject);
begin

	if trim(txtCPFCondutor.Text) = '' then
	begin
		showmessage('CPF não pode ser vazio');
		txtCPFCondutor.SetFocus;
	end;



end;

procedure T_Main.txtCPFCondutorKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9']) then
	key:= #0;
end;

procedure T_Main.txtdiasconclusaoKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in['0'..'9']) and (key<>#8) and (key <> #9)then
    key:=#0;
end;

procedure T_Main.txtnapoliceKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9'])  and (key <> #8) and (key <> #9)then
	key:=#0;
end;

procedure T_Main.txtnraverbacaoKeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in['0'..'9'])  and (key <> #8) and (key <> #9)then
	key:=#0;
end;

procedure T_Main.txtRenavamExit(Sender: TObject);
var
limit,qtd : integer;
qtdDig:string;
begin
	limit := 9;
	qtd:=length(txtRenavam.Text);

	while qtd < limit  do
	begin
		qtddig := qtddig + '0';
		qtd := qtd + 1;
	end;

	txtRenavam.Text:= qtddig + txtRenavam.Text;
end;

procedure T_Main.txtRNTCExit(Sender: TObject);
var
limit,qtd : integer;
qtdDig:string;
begin
	limit := 8;
	qtd:=length(txtRNTC.Text);

	while qtd < limit  do
	begin
		qtddig := qtddig + '0';
		qtd := qtd + 1;
	end;

	txtRNTC.Text:= qtddig + txtRNTC.Text;

end;

procedure T_Main.txtSerieNFeExit(Sender: TObject);
var
limit,qtd : integer;
qtdDig:string;
begin

	limit := 3;
	qtd:=length(txtSerieNFe.Text);

	while qtd < limit  do
	begin
		qtddig := qtddig + '0';
		qtd := qtd + 1;
	end;

	txtSerieNFe.Text:= qtddig + txtSerieNFe.Text;



end;

procedure T_Main.txtvalorKeyPress(Sender: TObject; var Key: Char);
begin
	//if not( key in['0'..'9',#8,#9,'.']) then
	//key:=#0;
end;

//procedure

end.
