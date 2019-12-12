unit dmMDFe;

interface

uses
  System.SysUtils, System.Classes, DbxDevartMySql, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  T_dmMDFe = class(TDataModule)
    conexao: TSQLConnection;
    sdsmdfeIDE: TSQLDataSet;
    qrPadrao: TSQLQuery;
    dsmdfeIDE: TDataSource;
    cdsmdfeIDE: TClientDataSet;
    dspmdfeIDE: TDataSetProvider;
    sdsmdfeRodo: TSQLDataSet;
    dsmdfeRodo: TDataSource;
    cdsmdfeRodo: TClientDataSet;
    dspmdfeRodo: TDataSetProvider;
    sdsmdfeInfDoc: TSQLDataSet;
    dsmdfeInfDoc: TDataSource;
    cdsmdfeInfDoc: TClientDataSet;
    dspmdfeInfDoc: TDataSetProvider;
    cdsmdfeRodoserie: TIntegerField;
    cdsmdfeRodonMDF: TIntegerField;
    cdsmdfeRodoRNTRC: TWideStringField;
    cdsmdfeRodoCIOT: TWideStringField;
    cdsmdfeRodoveicTracao_cInt: TWideStringField;
    cdsmdfeRodoveicTracao_placa: TWideStringField;
    cdsmdfeRodoveicTracao_RENAVAM: TWideStringField;
    cdsmdfeRodoveicTracao_tara: TIntegerField;
    cdsmdfeRodoveicTracao_capKG: TIntegerField;
    cdsmdfeRodoveicTracao_capM3: TIntegerField;
    cdsmdfeRodoveicTracao_tpRod: TIntegerField;
    cdsmdfeRodoveicTracao_tpCar: TIntegerField;
    cdsmdfeRodoveicTracao_UF: TWideStringField;
    cdsmdfeRodoveicTracao_condutor_xNome: TWideStringField;
    cdsmdfeRodoveicTracao_condutor_CPF: TWideStringField;
    cdsmdfeRodoveicReboque_cInt: TWideStringField;
    cdsmdfeRodoveicReboque_placa: TWideStringField;
    cdsmdfeRodoveicReboque_RENAVAM: TWideStringField;
    cdsmdfeRodoveicReboque_tara: TIntegerField;
    cdsmdfeRodoveicReboque_capKG: TIntegerField;
    cdsmdfeRodoveicReboque_capM3: TIntegerField;
    cdsmdfeRodoveicReboque_tpCar: TIntegerField;
    cdsmdfeRodoveicReboque_UF: TWideStringField;
    sdsmdfeXML: TSQLDataSet;
    dsmdfeXML: TDataSource;
    cdsmdfeXML: TClientDataSet;
    dspmdfeXML: TDataSetProvider;
    cdsmdfeInfDocserie: TIntegerField;
    cdsmdfeInfDocnMDF: TIntegerField;
    cdsmdfeInfDoccontroleNFE: TIntegerField;
    cdsmdfeInfDocchNFe: TWideStringField;
    cdsmdfeInfDocSegCodBarra: TWideStringField;
    cdsmdfeInfDoctpUnidTransp: TIntegerField;
    cdsmdfeInfDocidUnidTransp: TWideStringField;
    sdsTransportadora: TSQLDataSet;
    dsTransportadora: TDataSource;
    cdsTransportadora: TClientDataSet;
    dspTransportadora: TDataSetProvider;
    cdsTransportadorainc: TIntegerField;
    cdsTransportadoracodigofilial: TWideStringField;
    cdsTransportadorarazaosocial: TWideStringField;
    cdsTransportadorafantasia: TWideStringField;
    cdsTransportadoraendereco: TWideStringField;
    cdsTransportadorabairro: TWideStringField;
    cdsTransportadoracidade: TWideStringField;
    cdsTransportadoracep: TWideStringField;
    cdsTransportadoraestado: TWideStringField;
    cdsTransportadorainscricao: TWideStringField;
    cdsTransportadoracnpj: TWideStringField;
    cdsTransportadoracpf: TWideStringField;
    cdsTransportadoratelefone: TWideStringField;
    cdsTransportadorafax: TWideStringField;
    cdsTransportadoraemail: TWideStringField;
    cdsTransportadorasite: TWideStringField;
    cdsTransportadoraobs: TWideMemoField;
    cdsTransportadoranumero: TWideStringField;
    sdsVeiculos: TSQLDataSet;
    dsVeiculos: TDataSource;
    cdsVeiculos: TClientDataSet;
    dspVeiculos: TDataSetProvider;
    cdsVeiculosinc: TIntegerField;
    cdsVeiculoscodigofilial: TWideStringField;
    cdsVeiculosidtransportadora: TIntegerField;
    cdsVeiculosveiculo: TWideStringField;
    cdsVeiculosplaca: TWideStringField;
    cdsVeiculosmotorista: TWideStringField;
    cdsVeiculoscapacidadeKg: TFMTBCDField;
    cdsVeiculoscapacidadem3: TFMTBCDField;
    cdsVeiculoscombustivel: TWideStringField;
    cdsVeiculosconsumoKm: TIntegerField;
    cdsVeiculosANTT: TWideStringField;
    cdsVeiculosmarca: TWideStringField;
    cdsVeiculosestadoplaca: TWideStringField;
    sdsQuery: TSQLQuery;
    cdsVeiculostiporodado: TIntegerField;
    cdsVeiculostipocarroceria: TIntegerField;
    cdsVeiculostara: TFMTBCDField;
    cdsVeiculosrenavam: TWideStringField;
    cdsmdfeInfDoccodigofilial: TWideStringField;
    cdsmdfeInfDocvNF: TFMTBCDField;
    cdsmdfeXMLserie: TIntegerField;
    cdsmdfeXMLnMDF: TIntegerField;
    cdsmdfeXMLcodigofilial: TWideStringField;
    cdsmdfeXMLXML: TBlobField;
    cdsmdfeIDEcUF: TWideStringField;
    cdsmdfeIDEtpAmb: TIntegerField;
    cdsmdfeIDEtpEmit: TIntegerField;
    cdsmdfeIDEmodelo: TWideStringField;
    cdsmdfeIDEserie: TIntegerField;
    cdsmdfeIDEnMDF: TIntegerField;
    cdsmdfeIDEcMDF: TIntegerField;
    cdsmdfeIDEmodal: TIntegerField;
    cdsmdfeIDEdhEmi: TSQLTimeStampField;
    cdsmdfeIDEtpEmis: TIntegerField;
    cdsmdfeIDEprocEmi: TIntegerField;
    cdsmdfeIDEverProc: TWideStringField;
    cdsmdfeIDEUFIni: TWideStringField;
    cdsmdfeIDEUFFim: TWideStringField;
    cdsmdfeIDEcMunCarrega: TIntegerField;
    cdsmdfeIDExMunCarrega: TWideStringField;
    cdsmdfeIDEinfCpl: TWideMemoField;
    cdsmdfeIDEinfAdFisco: TWideMemoField;
    cdsmdfeIDEcodigofilial: TWideStringField;
    cdsmdfeIDEprotocolo: TWideStringField;
    cdsmdfeIDEdataautorizacao: TSQLTimeStampField;
    cdsmdfeIDEcMunDescarga: TIntegerField;
    cdsmdfeIDExMunDescarga: TWideStringField;
    cdsmdfeIDEchMDFe: TWideStringField;
    cdsmdfeIDEcstat: TIntegerField;
    cdsmdfeIDEvCarga: TFMTBCDField;
    cdsmdfeIDEcUnid: TWideStringField;
    cdsmdfeIDEqCarga: TFMTBCDField;
    cdsmdfeIDErecibo: TWideStringField;
    cdsmdfeIDExmotivo: TWideStringField;
    cdsmdfeIDExmsg: TWideStringField;
    cdsmdfeIDExJustificativaCancelamento: TWideStringField;
    cdsmdfeIDEprotocolocancelamento: TWideStringField;
    cdsmdfeIDEdatacancelamento: TSQLTimeStampField;
    cdsmdfeIDEprotocoloencerramento: TWideStringField;
    cdsmdfeIDEdataencerramento: TSQLTimeStampField;
    cdsmdfeInfDocuf: TWideStringField;
    cdsmdfeInfDoccodMunDest: TIntegerField;
    cdsmdfeInfDocmuniDest: TWideStringField;
    cdsmdfeInfDoctiponota: TWideStringField;
    cdsmdfeRodocodigofilial: TWideStringField;
    cdsmdfeRodoCPF_CNPJ_CIOT: TWideStringField;
    cdsmdfeRodorespSeg: TWideStringField;
    cdsmdfeRodoCNPJrespseg: TWideStringField;
    cdsmdfeRodoxSeg: TWideStringField;
    cdsmdfeRodoCNPJseg: TWideStringField;
    cdsmdfeRodonApol: TWideStringField;
    cdsmdfeRodonAver: TWideStringField;
    SQLDataSetdad: TSQLDataSet;
    DataSetProviderdad: TDataSetProvider;
    ClientDataSetdad: TClientDataSet;
    DataSourcedad: TDataSource;
    ClientDataSetdaddescricao: TWideStringField;
    ClientDataSetdadempresa: TWideStringField;
    ClientDataSetdadfantasia: TWideStringField;
    ClientDataSetdadcnpj: TWideStringField;
    ClientDataSetdadinscricao: TWideStringField;
    ClientDataSetdadendereco: TWideStringField;
    ClientDataSetdadnumero: TWideStringField;
    ClientDataSetdadcomplemento: TWideStringField;
    ClientDataSetdadcidade: TWideStringField;
    ClientDataSetdadbairro: TWideStringField;
    ClientDataSetdadcep: TWideStringField;
    ClientDataSetdadestado: TWideStringField;
    ClientDataSetdadtelefone1: TWideStringField;
    ClientDataSetdadtelefone2: TWideStringField;
    ClientDataSetdadtelefone3: TWideStringField;
    ClientDataSetdademail: TWideStringField;
    ClientDataSetdadinscricaomunicipal: TWideStringField;
    ClientDataSetdadCodigoFilial: TWideStringField;
    ClientDataSetdadcodigobanco: TIntegerField;
    ClientDataSetdadbanco: TWideStringField;
    ClientDataSetdadagencia: TWideStringField;
    ClientDataSetdadconta: TWideStringField;
    ClientDataSetdadcontactocobranca: TWideStringField;
    ClientDataSetdadtelefonecobranca: TWideStringField;
    ClientDataSetdadgrupo: TWideStringField;
    ClientDataSetdadativa: TWideStringField;
    ClientDataSetdadcontadespesa: TWideStringField;
    ClientDataSetdadsubconta: TWideStringField;
    ClientDataSetdaddescricaoconta: TWideStringField;
    ClientDataSetdaddescricaosubconta: TWideStringField;
    ClientDataSetdadsmtp: TWideStringField;
    ClientDataSetdadporta: TIntegerField;
    ClientDataSetdadusuarioemail: TWideStringField;
    ClientDataSetdadsenhaemail: TWideStringField;
    ClientDataSetdadwebsite: TWideStringField;
    ClientDataSetdadliberacao: TWideStringField;
    ClientDataSetdadvalidade: TWideStringField;
    ClientDataSetdaddata: TDateField;
    ClientDataSetdaddatacontrato: TDateField;
    ClientDataSetdadloginiqsistemas: TWideStringField;
    ClientDataSetdadsenhaiqsistemas: TWideStringField;
    ClientDataSetdadlogomarca: TBlobField;
    ClientDataSetdaddescricaoCNAE: TWideStringField;
    ClientDataSetdadCNAEsecundario: TWideStringField;
    ClientDataSetdaddescricaoCNAEsecundario: TWideStringField;
    ClientDataSetdadCNAEsecundario2: TWideStringField;
    ClientDataSetdaddescricaoCNAEsecundario2: TWideStringField;
    ClientDataSetdadinscricaoestadualinsctributario: TWideStringField;
    ClientDataSetdadCNAE: TWideStringField;
    ClientDataSetdadtipoempresa: TWideStringField;
    ClientDataSetdadcontador: TWideStringField;
    ClientDataSetdadcrccontador: TWideStringField;
    ClientDataSetdadprotect: TWideStringField;
    ClientDataSetdadcontadespesaCA: TWideStringField;
    ClientDataSetdadsubcontadespesaCA: TWideStringField;
    ClientDataSetdaddescricaocontaCA: TWideStringField;
    ClientDataSetdaddescricaosubcontaCA: TWideStringField;
    ClientDataSetdadnomeCobranca: TWideStringField;
    ClientDataSetdadenderecoCobranca: TWideStringField;
    ClientDataSetdadbairroCobranca: TWideStringField;
    ClientDataSetdadcidadeCobranca: TWideStringField;
    ClientDataSetdadcepCobranca: TWideStringField;
    ClientDataSetdadufCobranca: TWideStringField;
    ClientDataSetdadindicadoratividade: TWideStringField;
    ClientDataSetdadcpfcontador: TWideStringField;
    ClientDataSetdadcnpjcontador: TWideStringField;
    ClientDataSetdadcepcontador: TWideStringField;
    ClientDataSetdadenderecocontador: TWideStringField;
    ClientDataSetdadnumerocontador: TWideStringField;
    ClientDataSetdadcomplementocontador: TWideStringField;
    ClientDataSetdadbairrocontador: TWideStringField;
    ClientDataSetdadtelefonecontador: TWideStringField;
    ClientDataSetdadfaxcontador: TWideStringField;
    ClientDataSetdademailcontador: TWideStringField;
    ClientDataSetdadresponsavel: TWideStringField;
    ClientDataSetdadcpfresponsavel: TWideStringField;
    ClientDataSetdadcrt: TWideStringField;
    ClientDataSetdadversaopaf: TWideStringField;
    ClientDataSetdadcidadecontador: TWideStringField;
    ClientDataSetdadestadocontador: TWideStringField;
    ClientDataSetdadobservacao: TWideStringField;
    ClientDataSetdadatvidadereceitabruta: TWideStringField;
    ClientDataSetdadcodigodctf: TWideStringField;
    ClientDataSetdadpercentualreceitabruta: TFMTBCDField;
    ClientDataSetdadftpmidia: TWideStringField;
    ClientDataSetdaduserftpmidia: TWideStringField;
    ClientDataSetdadsenhaftpmidia: TWideStringField;
    ClientDataSetdadcredenciaisazureblobs: TWideMemoField;
    ClientDataSetdadcredenciaisazureblobsdriveclientes: TWideMemoField;
    ClientDataSetdadcredenciaisconexaodb: TWideMemoField;
    ClientDataSetdadurllogomarca: TWideMemoField;
    ClientDataSetdademailcpfconsulta: TWideStringField;
    ClientDataSetdadsenhacpfconsulta: TWideStringField;
    ClientDataSetdadcof: TWideStringField;
    ClientDataSetdadcstpisentrada: TWideStringField;
    ClientDataSetdadpisentrada: TFMTBCDField;
    ClientDataSetdadcstcofinsentrada: TWideStringField;
    ClientDataSetdadcofinsentrada: TFMTBCDField;
    ClientDataSetdadcstpissaida: TWideStringField;
    ClientDataSetdadpissaida: TFMTBCDField;
    ClientDataSetdadcstcofinssaida: TWideStringField;
    ClientDataSetdadcsticmssaida: TWideStringField;
    ClientDataSetdadicmssaida: TFMTBCDField;
    ClientDataSetdadfilialnumeracaoboleto: TWideStringField;
    ClientDataSetdadcofinssaida: TFMTBCDField;
    ClientDataSetdadsincronizar: TWideStringField;
    ClientDataSetdadeaddados: TWideStringField;
    ClientDataSetdadcaminhologomarca: TWideStringField;
    cdsmdfeIDEdiasprevisaoencerrar: TIntegerField;
    cdsmdfeXMLbkXML: TBlobField;
    qrPadrao2: TSQLQuery;
    procedure conexaoBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _dmMDFe: T_dmMDFe;
  Glb_user, glb_senha, glb_db, glb_ip, glb_port  : String;


implementation

uses dialogs, u_main, forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

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


function db_acesso(user,senha,db,ip, port:String; MultiConexao:Boolean;ChaveMaster:String):String;
var  arqtexto:TextFile;
     texto:String;
     aplicativo_sice: string;
begin
      aplicativo_sice := ExtractFilePath(application.ExeName);
      AssignFile(arqtexto,aplicativo_sice+'ip.cnf' );
      reset(arqtexto);
      while not eof (arqtexto) do
        begin
          readln(arqtexto,texto);
          ip := trim(copy(texto,1,50));
          ip:= Criptografar(ip, 'iq');
          //pega senha
          senha := trim(copy(texto,51,20));
          senha := Criptografar(senha, 'iq');
          //pega usuario
          user := trim(copy(texto,71,20));
          user := Criptografar(user, 'iq');
          //pega db
          db := trim(copy(texto,91,20));
          db := Criptografar(db, 'iq');
          //pega porta
          port := trim(copy(texto,131,20));
          port := Criptografar(port, 'iq');

        end;
      Glb_user  := user;
      glb_senha := senha;
      glb_db    := db;
      glb_ip    := ip;
      glb_port  := port;
      closefile(arqtexto);
end;


procedure T_dmMDFe.conexaoBeforeConnect(Sender: TObject);
begin
    if FileExists( (ExtractFilePath(application.ExeName)+'ip.cnf') ) then
    db_acesso('','','','','', false, '')
    else
    begin
       ShowMessage('Arquivo de conexão não encontrado!');
       application.Terminate;
    end;

    with Sender as TSQLConnection do
       begin
      if LoginPrompt = False then
      begin
        Params.Clear;
        Params.Values['User_Name'] := Glb_user;
        Params.Values['Password']  := glb_senha;
        Params.Values['Database']  := glb_db;
        Params.Values['HostName'] := glb_ip;
      end;
    end;

end;

end.
