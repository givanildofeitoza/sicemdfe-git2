object _dmMDFe: T_dmMDFe
  OldCreateOrder = False
  Height = 653
  Width = 785
  object conexao: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'DevartMySQLDirect'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DbxDevartMySql'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver190.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartMySqlMetaDataCommandFactory,DbxD' +
        'evartMySqlDriver190.bpl'
      'ProductName=DevartMySQL'
      'GetDriverFunc=getSQLDriverMySQLDirect'
      'LibraryName=dbexpmda40.dll'
      'VendorLib=not used'
      'MaxBlobSize=-1'
      'FetchAll=True'
      'EnableBoolean=False'
      'UseUnicode=True'
      'IPVersion=IPv4'
      'BlobSize=-1'
      'HostName=localhost:3307'
      'DataBase=sice'
      'User_Name=root'
      'Password=iq@2013tex')
    BeforeConnect = conexaoBeforeConnect
    Left = 16
    Top = 8
  end
  object sdsmdfeIDE: TSQLDataSet
    CommandText = 
      'select * from mdfeide where cstat = 0 and date(dhemi) = date(cur' +
      'rent_date)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 136
    Top = 48
  end
  object qrPadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 32
    Top = 240
  end
  object dsmdfeIDE: TDataSource
    DataSet = cdsmdfeIDE
    Left = 456
    Top = 48
  end
  object cdsmdfeIDE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmdfeIDE'
    Left = 352
    Top = 48
    object cdsmdfeIDEcUF: TWideStringField
      FieldName = 'cUF'
      Size = 2
    end
    object cdsmdfeIDEtpAmb: TIntegerField
      FieldName = 'tpAmb'
    end
    object cdsmdfeIDEtpEmit: TIntegerField
      FieldName = 'tpEmit'
    end
    object cdsmdfeIDEmodelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object cdsmdfeIDEserie: TIntegerField
      FieldName = 'serie'
    end
    object cdsmdfeIDEnMDF: TIntegerField
      FieldName = 'nMDF'
    end
    object cdsmdfeIDEcMDF: TIntegerField
      FieldName = 'cMDF'
    end
    object cdsmdfeIDEmodal: TIntegerField
      FieldName = 'modal'
    end
    object cdsmdfeIDEdhEmi: TSQLTimeStampField
      FieldName = 'dhEmi'
    end
    object cdsmdfeIDEtpEmis: TIntegerField
      FieldName = 'tpEmis'
    end
    object cdsmdfeIDEprocEmi: TIntegerField
      FieldName = 'procEmi'
    end
    object cdsmdfeIDEverProc: TWideStringField
      FieldName = 'verProc'
      Size = 10
    end
    object cdsmdfeIDEUFIni: TWideStringField
      FieldName = 'UFIni'
      Size = 2
    end
    object cdsmdfeIDEUFFim: TWideStringField
      FieldName = 'UFFim'
      Size = 2
    end
    object cdsmdfeIDEcMunCarrega: TIntegerField
      FieldName = 'cMunCarrega'
    end
    object cdsmdfeIDExMunCarrega: TWideStringField
      FieldName = 'xMunCarrega'
      Size = 60
    end
    object cdsmdfeIDEinfCpl: TWideMemoField
      FieldName = 'infCpl'
      BlobType = ftWideMemo
    end
    object cdsmdfeIDEinfAdFisco: TWideMemoField
      FieldName = 'infAdFisco'
      BlobType = ftWideMemo
    end
    object cdsmdfeIDEcodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsmdfeIDEprotocolo: TWideStringField
      FieldName = 'protocolo'
    end
    object cdsmdfeIDEdataautorizacao: TSQLTimeStampField
      FieldName = 'dataautorizacao'
    end
    object cdsmdfeIDEcMunDescarga: TIntegerField
      FieldName = 'cMunDescarga'
    end
    object cdsmdfeIDExMunDescarga: TWideStringField
      FieldName = 'xMunDescarga'
      Size = 60
    end
    object cdsmdfeIDEchMDFe: TWideStringField
      FieldName = 'chMDFe'
      Size = 44
    end
    object cdsmdfeIDEcstat: TIntegerField
      FieldName = 'cstat'
    end
    object cdsmdfeIDEvCarga: TFMTBCDField
      FieldName = 'vCarga'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object cdsmdfeIDEcUnid: TWideStringField
      FieldName = 'cUnid'
      Size = 2
    end
    object cdsmdfeIDEqCarga: TFMTBCDField
      FieldName = 'qCarga'
      Precision = 17
      Size = 4
    end
    object cdsmdfeIDErecibo: TWideStringField
      FieldName = 'recibo'
    end
    object cdsmdfeIDExmotivo: TWideStringField
      FieldName = 'xmotivo'
      Size = 100
    end
    object cdsmdfeIDExmsg: TWideStringField
      FieldName = 'xmsg'
      Size = 100
    end
    object cdsmdfeIDExJustificativaCancelamento: TWideStringField
      FieldName = 'xJustificativaCancelamento'
      Size = 100
    end
    object cdsmdfeIDEprotocolocancelamento: TWideStringField
      FieldName = 'protocolocancelamento'
    end
    object cdsmdfeIDEdatacancelamento: TSQLTimeStampField
      FieldName = 'datacancelamento'
    end
    object cdsmdfeIDEprotocoloencerramento: TWideStringField
      FieldName = 'protocoloencerramento'
    end
    object cdsmdfeIDEdataencerramento: TSQLTimeStampField
      FieldName = 'dataencerramento'
    end
    object cdsmdfeIDEdiasprevisaoencerrar: TIntegerField
      FieldName = 'diasprevisaoencerrar'
    end
  end
  object dspmdfeIDE: TDataSetProvider
    DataSet = sdsmdfeIDE
    Left = 240
    Top = 48
  end
  object sdsmdfeRodo: TSQLDataSet
    CommandText = 'select * from `mdferodo`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 136
    Top = 128
  end
  object dsmdfeRodo: TDataSource
    DataSet = cdsmdfeRodo
    Left = 456
    Top = 128
  end
  object cdsmdfeRodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmdfeRodo'
    Left = 352
    Top = 128
    object cdsmdfeRodoserie: TIntegerField
      FieldName = 'serie'
    end
    object cdsmdfeRodonMDF: TIntegerField
      FieldName = 'nMDF'
    end
    object cdsmdfeRodoRNTRC: TWideStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object cdsmdfeRodoCIOT: TWideStringField
      FieldName = 'CIOT'
      Size = 12
    end
    object cdsmdfeRodoveicTracao_cInt: TWideStringField
      FieldName = 'veicTracao_cInt'
      Size = 3
    end
    object cdsmdfeRodoveicTracao_placa: TWideStringField
      FieldName = 'veicTracao_placa'
      Size = 7
    end
    object cdsmdfeRodoveicTracao_RENAVAM: TWideStringField
      FieldName = 'veicTracao_RENAVAM'
      Size = 9
    end
    object cdsmdfeRodoveicTracao_tara: TIntegerField
      FieldName = 'veicTracao_tara'
    end
    object cdsmdfeRodoveicTracao_capKG: TIntegerField
      FieldName = 'veicTracao_capKG'
    end
    object cdsmdfeRodoveicTracao_capM3: TIntegerField
      FieldName = 'veicTracao_capM3'
    end
    object cdsmdfeRodoveicTracao_tpRod: TIntegerField
      FieldName = 'veicTracao_tpRod'
    end
    object cdsmdfeRodoveicTracao_tpCar: TIntegerField
      FieldName = 'veicTracao_tpCar'
    end
    object cdsmdfeRodoveicTracao_UF: TWideStringField
      FieldName = 'veicTracao_UF'
      Size = 2
    end
    object cdsmdfeRodoveicTracao_condutor_xNome: TWideStringField
      FieldName = 'veicTracao_condutor_xNome'
      Size = 60
    end
    object cdsmdfeRodoveicTracao_condutor_CPF: TWideStringField
      FieldName = 'veicTracao_condutor_CPF'
      Size = 11
    end
    object cdsmdfeRodoveicReboque_cInt: TWideStringField
      FieldName = 'veicReboque_cInt'
      Size = 3
    end
    object cdsmdfeRodoveicReboque_placa: TWideStringField
      FieldName = 'veicReboque_placa'
      Size = 7
    end
    object cdsmdfeRodoveicReboque_RENAVAM: TWideStringField
      FieldName = 'veicReboque_RENAVAM'
      Size = 9
    end
    object cdsmdfeRodoveicReboque_tara: TIntegerField
      FieldName = 'veicReboque_tara'
    end
    object cdsmdfeRodoveicReboque_capKG: TIntegerField
      FieldName = 'veicReboque_capKG'
    end
    object cdsmdfeRodoveicReboque_capM3: TIntegerField
      FieldName = 'veicReboque_capM3'
    end
    object cdsmdfeRodoveicReboque_tpCar: TIntegerField
      FieldName = 'veicReboque_tpCar'
    end
    object cdsmdfeRodoveicReboque_UF: TWideStringField
      FieldName = 'veicReboque_UF'
      Size = 2
    end
    object cdsmdfeRodocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsmdfeRodoCPF_CNPJ_CIOT: TWideStringField
      FieldName = 'CPF_CNPJ_CIOT'
      Size = 15
    end
    object cdsmdfeRodorespSeg: TWideStringField
      FieldName = 'respSeg'
      Size = 1
    end
    object cdsmdfeRodoCNPJrespseg: TWideStringField
      FieldName = 'CNPJrespseg'
      Size = 15
    end
    object cdsmdfeRodoxSeg: TWideStringField
      FieldName = 'xSeg'
      Size = 50
    end
    object cdsmdfeRodoCNPJseg: TWideStringField
      FieldName = 'CNPJseg'
      Size = 15
    end
    object cdsmdfeRodonApol: TWideStringField
      FieldName = 'nApol'
      Size = 1
    end
    object cdsmdfeRodonAver: TWideStringField
      FieldName = 'nAver'
      Size = 1
    end
  end
  object dspmdfeRodo: TDataSetProvider
    DataSet = sdsmdfeRodo
    Left = 240
    Top = 128
  end
  object sdsmdfeInfDoc: TSQLDataSet
    CommandText = 'select * from `mdfeinfdoc` order by munidest'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 136
    Top = 200
  end
  object dsmdfeInfDoc: TDataSource
    DataSet = cdsmdfeInfDoc
    Left = 456
    Top = 200
  end
  object cdsmdfeInfDoc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmdfeInfDoc'
    Left = 352
    Top = 200
    object cdsmdfeInfDocserie: TIntegerField
      FieldName = 'serie'
    end
    object cdsmdfeInfDocnMDF: TIntegerField
      FieldName = 'nMDF'
    end
    object cdsmdfeInfDoccontroleNFE: TIntegerField
      FieldName = 'controleNFE'
    end
    object cdsmdfeInfDocchNFe: TWideStringField
      FieldName = 'chNFe'
      Size = 44
    end
    object cdsmdfeInfDocSegCodBarra: TWideStringField
      FieldName = 'SegCodBarra'
      Size = 36
    end
    object cdsmdfeInfDoctpUnidTransp: TIntegerField
      FieldName = 'tpUnidTransp'
    end
    object cdsmdfeInfDocidUnidTransp: TWideStringField
      FieldName = 'idUnidTransp'
      Size = 7
    end
    object cdsmdfeInfDoccodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsmdfeInfDocvNF: TFMTBCDField
      FieldName = 'vNF'
      Precision = 12
      Size = 2
    end
    object cdsmdfeInfDocuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object cdsmdfeInfDoccodMunDest: TIntegerField
      FieldName = 'codMunDest'
    end
    object cdsmdfeInfDocmuniDest: TWideStringField
      FieldName = 'muniDest'
      Size = 30
    end
    object cdsmdfeInfDoctiponota: TWideStringField
      FieldName = 'tiponota'
      Size = 1
    end
  end
  object dspmdfeInfDoc: TDataSetProvider
    DataSet = sdsmdfeInfDoc
    Left = 240
    Top = 200
  end
  object sdsmdfeXML: TSQLDataSet
    CommandText = 'select * from `mdfexml`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 136
    Top = 264
  end
  object dsmdfeXML: TDataSource
    DataSet = cdsmdfeXML
    Left = 456
    Top = 264
  end
  object cdsmdfeXML: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmdfeXML'
    Left = 352
    Top = 264
    object cdsmdfeXMLserie: TIntegerField
      FieldName = 'serie'
    end
    object cdsmdfeXMLnMDF: TIntegerField
      FieldName = 'nMDF'
    end
    object cdsmdfeXMLcodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsmdfeXMLXML: TBlobField
      FieldName = 'XML'
    end
    object cdsmdfeXMLbkXML: TBlobField
      FieldName = 'bkXML'
    end
  end
  object dspmdfeXML: TDataSetProvider
    DataSet = sdsmdfeXML
    Left = 240
    Top = 264
  end
  object sdsTransportadora: TSQLDataSet
    CommandText = 'select * from `transportadoras`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 136
    Top = 328
  end
  object dsTransportadora: TDataSource
    DataSet = cdsTransportadora
    Left = 456
    Top = 328
  end
  object cdsTransportadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransportadora'
    Left = 352
    Top = 328
    object cdsTransportadorainc: TIntegerField
      FieldName = 'inc'
    end
    object cdsTransportadoracodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsTransportadorarazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Size = 40
    end
    object cdsTransportadorafantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 30
    end
    object cdsTransportadoraendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object cdsTransportadorabairro: TWideStringField
      FieldName = 'bairro'
    end
    object cdsTransportadoracidade: TWideStringField
      FieldName = 'cidade'
      Size = 30
    end
    object cdsTransportadoracep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object cdsTransportadoraestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object cdsTransportadorainscricao: TWideStringField
      FieldName = 'inscricao'
    end
    object cdsTransportadoracnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 18
    end
    object cdsTransportadoracpf: TWideStringField
      FieldName = 'cpf'
      Size = 14
    end
    object cdsTransportadoratelefone: TWideStringField
      FieldName = 'telefone'
      Size = 15
    end
    object cdsTransportadorafax: TWideStringField
      FieldName = 'fax'
      Size = 15
    end
    object cdsTransportadoraemail: TWideStringField
      FieldName = 'email'
      Size = 150
    end
    object cdsTransportadorasite: TWideStringField
      FieldName = 'site'
      Size = 100
    end
    object cdsTransportadoraobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object cdsTransportadoranumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
  end
  object dspTransportadora: TDataSetProvider
    DataSet = sdsTransportadora
    Left = 240
    Top = 328
  end
  object sdsVeiculos: TSQLDataSet
    CommandText = 'select * from `veiculos`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 136
    Top = 392
  end
  object dsVeiculos: TDataSource
    DataSet = cdsVeiculos
    Left = 456
    Top = 392
  end
  object cdsVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVeiculos'
    Left = 352
    Top = 392
    object cdsVeiculosinc: TIntegerField
      FieldName = 'inc'
    end
    object cdsVeiculoscodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsVeiculosidtransportadora: TIntegerField
      FieldName = 'idtransportadora'
    end
    object cdsVeiculosveiculo: TWideStringField
      FieldName = 'veiculo'
    end
    object cdsVeiculosplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsVeiculosmotorista: TWideStringField
      FieldName = 'motorista'
      Size = 30
    end
    object cdsVeiculoscapacidadeKg: TFMTBCDField
      FieldName = 'capacidadeKg'
      Precision = 12
      Size = 2
    end
    object cdsVeiculoscapacidadem3: TFMTBCDField
      FieldName = 'capacidadem3'
      Precision = 12
      Size = 2
    end
    object cdsVeiculoscombustivel: TWideStringField
      FieldName = 'combustivel'
      Size = 15
    end
    object cdsVeiculosconsumoKm: TIntegerField
      FieldName = 'consumoKm'
    end
    object cdsVeiculosANTT: TWideStringField
      FieldName = 'ANTT'
      Size = 25
    end
    object cdsVeiculosmarca: TWideStringField
      FieldName = 'marca'
    end
    object cdsVeiculosestadoplaca: TWideStringField
      FieldName = 'estadoplaca'
      Size = 2
    end
    object cdsVeiculostiporodado: TIntegerField
      FieldName = 'tiporodado'
    end
    object cdsVeiculostipocarroceria: TIntegerField
      FieldName = 'tipocarroceria'
    end
    object cdsVeiculostara: TFMTBCDField
      FieldName = 'tara'
      Precision = 12
      Size = 2
    end
    object cdsVeiculosrenavam: TWideStringField
      FieldName = 'renavam'
      Size = 11
    end
  end
  object dspVeiculos: TDataSetProvider
    DataSet = sdsVeiculos
    Left = 240
    Top = 392
  end
  object sdsQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 32
    Top = 304
  end
  object SQLDataSetdad: TSQLDataSet
    CommandText = 'select * from filiais where grupo = 1 limit 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 136
    Top = 448
  end
  object DataSetProviderdad: TDataSetProvider
    DataSet = SQLDataSetdad
    Left = 240
    Top = 448
  end
  object ClientDataSetdad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderdad'
    Left = 352
    Top = 448
    object ClientDataSetdaddescricao: TWideStringField
      FieldName = 'descricao'
      Size = 35
    end
    object ClientDataSetdadempresa: TWideStringField
      FieldName = 'empresa'
      Size = 50
    end
    object ClientDataSetdadfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object ClientDataSetdadcnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 18
    end
    object ClientDataSetdadinscricao: TWideStringField
      FieldName = 'inscricao'
    end
    object ClientDataSetdadendereco: TWideStringField
      FieldName = 'endereco'
      Size = 40
    end
    object ClientDataSetdadnumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object ClientDataSetdadcomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 50
    end
    object ClientDataSetdadcidade: TWideStringField
      FieldName = 'cidade'
      Size = 30
    end
    object ClientDataSetdadbairro: TWideStringField
      FieldName = 'bairro'
    end
    object ClientDataSetdadcep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object ClientDataSetdadestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object ClientDataSetdadtelefone1: TWideStringField
      FieldName = 'telefone1'
      Size = 16
    end
    object ClientDataSetdadtelefone2: TWideStringField
      FieldName = 'telefone2'
      Size = 16
    end
    object ClientDataSetdadtelefone3: TWideStringField
      FieldName = 'telefone3'
      Size = 16
    end
    object ClientDataSetdademail: TWideStringField
      FieldName = 'email'
      Size = 40
    end
    object ClientDataSetdadinscricaomunicipal: TWideStringField
      FieldName = 'inscricaomunicipal'
    end
    object ClientDataSetdadCodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object ClientDataSetdadcodigobanco: TIntegerField
      FieldName = 'codigobanco'
    end
    object ClientDataSetdadbanco: TWideStringField
      FieldName = 'banco'
      Size = 15
    end
    object ClientDataSetdadagencia: TWideStringField
      FieldName = 'agencia'
      Size = 6
    end
    object ClientDataSetdadconta: TWideStringField
      FieldName = 'conta'
    end
    object ClientDataSetdadcontactocobranca: TWideStringField
      FieldName = 'contactocobranca'
      Size = 30
    end
    object ClientDataSetdadtelefonecobranca: TWideStringField
      FieldName = 'telefonecobranca'
      Size = 11
    end
    object ClientDataSetdadgrupo: TWideStringField
      FieldName = 'grupo'
      Size = 15
    end
    object ClientDataSetdadativa: TWideStringField
      FieldName = 'ativa'
      Size = 1
    end
    object ClientDataSetdadcontadespesa: TWideStringField
      FieldName = 'contadespesa'
      Size = 5
    end
    object ClientDataSetdadsubconta: TWideStringField
      FieldName = 'subconta'
      Size = 5
    end
    object ClientDataSetdaddescricaoconta: TWideStringField
      FieldName = 'descricaoconta'
      Size = 30
    end
    object ClientDataSetdaddescricaosubconta: TWideStringField
      FieldName = 'descricaosubconta'
      Size = 30
    end
    object ClientDataSetdadsmtp: TWideStringField
      FieldName = 'smtp'
      Size = 60
    end
    object ClientDataSetdadporta: TIntegerField
      FieldName = 'porta'
    end
    object ClientDataSetdadusuarioemail: TWideStringField
      FieldName = 'usuarioemail'
      Size = 50
    end
    object ClientDataSetdadsenhaemail: TWideStringField
      FieldName = 'senhaemail'
      Size = 50
    end
    object ClientDataSetdadwebsite: TWideStringField
      FieldName = 'website'
      Size = 100
    end
    object ClientDataSetdadliberacao: TWideStringField
      FieldName = 'liberacao'
      Size = 30
    end
    object ClientDataSetdadvalidade: TWideStringField
      FieldName = 'validade'
      Size = 30
    end
    object ClientDataSetdaddata: TDateField
      FieldName = 'data'
    end
    object ClientDataSetdaddatacontrato: TDateField
      FieldName = 'datacontrato'
    end
    object ClientDataSetdadloginiqsistemas: TWideStringField
      FieldName = 'loginiqsistemas'
      Size = 60
    end
    object ClientDataSetdadsenhaiqsistemas: TWideStringField
      FieldName = 'senhaiqsistemas'
      Size = 60
    end
    object ClientDataSetdadlogomarca: TBlobField
      FieldName = 'logomarca'
    end
    object ClientDataSetdaddescricaoCNAE: TWideStringField
      FieldName = 'descricaoCNAE'
      Size = 100
    end
    object ClientDataSetdadCNAEsecundario: TWideStringField
      FieldName = 'CNAEsecundario'
      Size = 10
    end
    object ClientDataSetdaddescricaoCNAEsecundario: TWideStringField
      FieldName = 'descricaoCNAEsecundario'
      Size = 100
    end
    object ClientDataSetdadCNAEsecundario2: TWideStringField
      FieldName = 'CNAEsecundario2'
      Size = 10
    end
    object ClientDataSetdaddescricaoCNAEsecundario2: TWideStringField
      FieldName = 'descricaoCNAEsecundario2'
      Size = 100
    end
    object ClientDataSetdadinscricaoestadualinsctributario: TWideStringField
      FieldName = 'inscricaoestadualinsctributario'
    end
    object ClientDataSetdadCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object ClientDataSetdadtipoempresa: TWideStringField
      FieldName = 'tipoempresa'
      Size = 30
    end
    object ClientDataSetdadcontador: TWideStringField
      FieldName = 'contador'
      Size = 50
    end
    object ClientDataSetdadcrccontador: TWideStringField
      FieldName = 'crccontador'
      Size = 10
    end
    object ClientDataSetdadprotect: TWideStringField
      FieldName = 'protect'
      Size = 100
    end
    object ClientDataSetdadcontadespesaCA: TWideStringField
      FieldName = 'contadespesaCA'
      Size = 5
    end
    object ClientDataSetdadsubcontadespesaCA: TWideStringField
      FieldName = 'subcontadespesaCA'
      Size = 5
    end
    object ClientDataSetdaddescricaocontaCA: TWideStringField
      FieldName = 'descricaocontaCA'
      Size = 30
    end
    object ClientDataSetdaddescricaosubcontaCA: TWideStringField
      FieldName = 'descricaosubcontaCA'
      Size = 30
    end
    object ClientDataSetdadnomeCobranca: TWideStringField
      FieldName = 'nomeCobranca'
      Size = 50
    end
    object ClientDataSetdadenderecoCobranca: TWideStringField
      FieldName = 'enderecoCobranca'
      Size = 100
    end
    object ClientDataSetdadbairroCobranca: TWideStringField
      FieldName = 'bairroCobranca'
    end
    object ClientDataSetdadcidadeCobranca: TWideStringField
      FieldName = 'cidadeCobranca'
      Size = 60
    end
    object ClientDataSetdadcepCobranca: TWideStringField
      FieldName = 'cepCobranca'
      Size = 10
    end
    object ClientDataSetdadufCobranca: TWideStringField
      FieldName = 'ufCobranca'
      Size = 2
    end
    object ClientDataSetdadindicadoratividade: TWideStringField
      FieldName = 'indicadoratividade'
      Size = 1
    end
    object ClientDataSetdadcpfcontador: TWideStringField
      FieldName = 'cpfcontador'
      Size = 11
    end
    object ClientDataSetdadcnpjcontador: TWideStringField
      FieldName = 'cnpjcontador'
      Size = 14
    end
    object ClientDataSetdadcepcontador: TWideStringField
      FieldName = 'cepcontador'
      Size = 8
    end
    object ClientDataSetdadenderecocontador: TWideStringField
      FieldName = 'enderecocontador'
      Size = 40
    end
    object ClientDataSetdadnumerocontador: TWideStringField
      FieldName = 'numerocontador'
      Size = 10
    end
    object ClientDataSetdadcomplementocontador: TWideStringField
      FieldName = 'complementocontador'
      Size = 15
    end
    object ClientDataSetdadbairrocontador: TWideStringField
      FieldName = 'bairrocontador'
    end
    object ClientDataSetdadtelefonecontador: TWideStringField
      FieldName = 'telefonecontador'
      Size = 16
    end
    object ClientDataSetdadfaxcontador: TWideStringField
      FieldName = 'faxcontador'
      Size = 16
    end
    object ClientDataSetdademailcontador: TWideStringField
      FieldName = 'emailcontador'
      Size = 100
    end
    object ClientDataSetdadresponsavel: TWideStringField
      FieldName = 'responsavel'
      Size = 50
    end
    object ClientDataSetdadcpfresponsavel: TWideStringField
      FieldName = 'cpfresponsavel'
      Size = 11
    end
    object ClientDataSetdadcrt: TWideStringField
      FieldName = 'crt'
      Size = 1
    end
    object ClientDataSetdadversaopaf: TWideStringField
      FieldName = 'versaopaf'
      Size = 5
    end
    object ClientDataSetdadcidadecontador: TWideStringField
      FieldName = 'cidadecontador'
      Size = 30
    end
    object ClientDataSetdadestadocontador: TWideStringField
      FieldName = 'estadocontador'
      Size = 2
    end
    object ClientDataSetdadobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 50
    end
    object ClientDataSetdadatvidadereceitabruta: TWideStringField
      FieldName = 'atvidadereceitabruta'
      Size = 8
    end
    object ClientDataSetdadcodigodctf: TWideStringField
      FieldName = 'codigodctf'
      Size = 7
    end
    object ClientDataSetdadpercentualreceitabruta: TFMTBCDField
      FieldName = 'percentualreceitabruta'
      Precision = 14
      Size = 3
    end
    object ClientDataSetdadftpmidia: TWideStringField
      FieldName = 'ftpmidia'
      Size = 100
    end
    object ClientDataSetdaduserftpmidia: TWideStringField
      FieldName = 'userftpmidia'
      Size = 50
    end
    object ClientDataSetdadsenhaftpmidia: TWideStringField
      FieldName = 'senhaftpmidia'
      Size = 100
    end
    object ClientDataSetdadcredenciaisazureblobs: TWideMemoField
      FieldName = 'credenciaisazureblobs'
      BlobType = ftWideMemo
    end
    object ClientDataSetdadcredenciaisazureblobsdriveclientes: TWideMemoField
      FieldName = 'credenciaisazureblobsdriveclientes'
      BlobType = ftWideMemo
    end
    object ClientDataSetdadcredenciaisconexaodb: TWideMemoField
      FieldName = 'credenciaisconexaodb'
      BlobType = ftWideMemo
    end
    object ClientDataSetdadurllogomarca: TWideMemoField
      FieldName = 'urllogomarca'
      BlobType = ftWideMemo
    end
    object ClientDataSetdademailcpfconsulta: TWideStringField
      FieldName = 'emailcpfconsulta'
      Size = 50
    end
    object ClientDataSetdadsenhacpfconsulta: TWideStringField
      FieldName = 'senhacpfconsulta'
      Size = 50
    end
    object ClientDataSetdadcof: TWideStringField
      FieldName = 'cof'
      Size = 1
    end
    object ClientDataSetdadcstpisentrada: TWideStringField
      FieldName = 'cstpisentrada'
      Size = 2
    end
    object ClientDataSetdadpisentrada: TFMTBCDField
      FieldName = 'pisentrada'
      Precision = 7
      Size = 3
    end
    object ClientDataSetdadcstcofinsentrada: TWideStringField
      FieldName = 'cstcofinsentrada'
      Size = 2
    end
    object ClientDataSetdadcofinsentrada: TFMTBCDField
      FieldName = 'cofinsentrada'
      Precision = 7
      Size = 3
    end
    object ClientDataSetdadcstpissaida: TWideStringField
      FieldName = 'cstpissaida'
      Size = 2
    end
    object ClientDataSetdadpissaida: TFMTBCDField
      FieldName = 'pissaida'
      Precision = 7
      Size = 3
    end
    object ClientDataSetdadcstcofinssaida: TWideStringField
      FieldName = 'cstcofinssaida'
      Size = 2
    end
    object ClientDataSetdadcsticmssaida: TWideStringField
      FieldName = 'csticmssaida'
      Size = 2
    end
    object ClientDataSetdadicmssaida: TFMTBCDField
      FieldName = 'icmssaida'
      Precision = 7
      Size = 3
    end
    object ClientDataSetdadfilialnumeracaoboleto: TWideStringField
      FieldName = 'filialnumeracaoboleto'
      Size = 5
    end
    object ClientDataSetdadcofinssaida: TFMTBCDField
      FieldName = 'cofinssaida'
      Precision = 7
      Size = 3
    end
    object ClientDataSetdadsincronizar: TWideStringField
      FieldName = 'sincronizar'
      Size = 1
    end
    object ClientDataSetdadeaddados: TWideStringField
      FieldName = 'eaddados'
      Size = 100
    end
    object ClientDataSetdadcaminhologomarca: TWideStringField
      FieldName = 'caminhologomarca'
      Size = 200
    end
  end
  object DataSourcedad: TDataSource
    DataSet = ClientDataSetdad
    Left = 456
    Top = 448
  end
  object qrPadrao2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 32
    Top = 184
  end
  object sdsConffinanc: TSQLDataSet
    CommandText = 'select * from configfinanc where codigofilial='#39'00001'#39';'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 133
    Top = 508
  end
  object dspConffinanc: TDataSetProvider
    DataSet = sdsConffinanc
    Left = 237
    Top = 508
  end
  object cdsconffinanc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConffinanc'
    Left = 349
    Top = 508
    object cdsconffinancCodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object cdsconffinancfatmaiordesvenda: TFMTBCDField
      FieldName = 'fatmaiordesvenda'
      Precision = 7
      Size = 2
    end
    object cdsconffinanclimitevalor: TFMTBCDField
      FieldName = 'limitevalor'
      Precision = 12
      Size = 2
    end
    object cdsconffinancfatmaiordescrec: TFMTBCDField
      FieldName = 'fatmaiordescrec'
      Precision = 7
      Size = 2
    end
    object cdsconffinancfatjurdia: TFMTBCDField
      FieldName = 'fatjurdia'
      Precision = 7
      Size = 3
    end
    object cdsconffinancfatmaiordescrecjur: TFMTBCDField
      FieldName = 'fatmaiordescrecjur'
      Precision = 7
      Size = 2
    end
    object cdsconffinancfatjurant: TFMTBCDField
      FieldName = 'fatjurant'
      Precision = 7
      Size = 3
    end
    object cdsconffinancfatnrdias: TIntegerField
      FieldName = 'fatnrdias'
    end
    object cdsconffinancfatultnumnf: TFMTBCDField
      FieldName = 'fatultnumnf'
      Precision = 20
      Size = 0
    end
    object cdsconffinancClimesesrencad: TIntegerField
      FieldName = 'Climesesrencad'
    end
    object cdsconffinancCliData: TWideStringField
      FieldName = 'CliData'
      Size = 1
    end
    object cdsconffinancclindiasnaocobrar: TIntegerField
      FieldName = 'clindiasnaocobrar'
    end
    object cdsconffinancPerClasse: TWideStringField
      FieldName = 'PerClasse'
      Size = 1
    end
    object cdsconffinancCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsconffinancprodutoscadastro: TWideStringField
      FieldName = 'produtoscadastro'
      Size = 1
    end
    object cdsconffinancrecalcularprevenda: TWideStringField
      FieldName = 'recalcularprevenda'
      Size = 1
    end
    object cdsconffinancvalorsalario: TFMTBCDField
      FieldName = 'valorsalario'
      Precision = 12
      Size = 2
    end
    object cdsconffinanccpfobrigatorio: TWideStringField
      FieldName = 'cpfobrigatorio'
      Size = 1
    end
    object cdsconffinancmsg1: TWideStringField
      FieldName = 'msg1'
      Size = 255
    end
    object cdsconffinancmsg2: TWideStringField
      FieldName = 'msg2'
      Size = 255
    end
    object cdsconffinancdiasvencimento: TIntegerField
      FieldName = 'diasvencimento'
    end
    object cdsconffinancintervalocrediario: TIntegerField
      FieldName = 'intervalocrediario'
    end
    object cdsconffinancqtdprateleiras: TWideStringField
      FieldName = 'qtdprateleiras'
      Size = 1
    end
    object cdsconffinancinstrucaocobranca: TWideStringField
      FieldName = 'instrucaocobranca'
      Size = 200
    end
    object cdsconffinancboletobancario: TWideStringField
      FieldName = 'boletobancario'
      Size = 1
    end
    object cdsconffinancdevolucaocomnota: TWideStringField
      FieldName = 'devolucaocomnota'
      Size = 1
    end
    object cdsconffinancrecibocaixa: TWideStringField
      FieldName = 'recibocaixa'
      Size = 1
    end
    object cdsconffinancdespesacontasapagar: TWideStringField
      FieldName = 'despesacontasapagar'
      Size = 1
    end
    object cdsconffinancposicaocodigobalanca: TWideStringField
      FieldName = 'posicaocodigobalanca'
      Size = 2
    end
    object cdsconffinancalterarpreco: TWideStringField
      FieldName = 'alterarpreco'
      Size = 1
    end
    object cdsconffinanccliusafatorlimite: TWideStringField
      FieldName = 'cliusafatorlimite'
      Size = 1
    end
    object cdsconffinancclifatorlimite: TFMTBCDField
      FieldName = 'clifatorlimite'
      Precision = 7
      Size = 2
    end
    object cdsconffinancconta: TWideStringField
      FieldName = 'conta'
      Size = 5
    end
    object cdsconffinancsubconta: TWideStringField
      FieldName = 'subconta'
      Size = 5
    end
    object cdsconffinancmaxarredondamento: TFMTBCDField
      FieldName = 'maxarredondamento'
      Precision = 12
      Size = 2
    end
    object cdsconffinancalterarprecotransferencia: TWideStringField
      FieldName = 'alterarprecotransferencia'
      Size = 1
    end
    object cdsconffinancrestricaoprevenda: TWideStringField
      FieldName = 'restricaoprevenda'
      Size = 1
    end
    object cdsconffinancqtditenstabela: TIntegerField
      FieldName = 'qtditenstabela'
    end
    object cdsconffinanctaxafinanciamento: TFMTBCDField
      FieldName = 'taxafinanciamento'
      Precision = 9
      Size = 3
    end
    object cdsconffinancescolherfilialtransferencia: TWideStringField
      FieldName = 'escolherfilialtransferencia'
      Size = 1
    end
    object cdsconffinancimpentradacarne: TWideStringField
      FieldName = 'impentradacarne'
      Size = 1
    end
    object cdsconffinancdescontocartaofidelidade: TFMTBCDField
      FieldName = 'descontocartaofidelidade'
      Precision = 8
      Size = 2
    end
    object cdsconffinancdiasparatrocasenhasoperadores: TIntegerField
      FieldName = 'diasparatrocasenhasoperadores'
    end
    object cdsconffinancdiasparamudarsituacao: TIntegerField
      FieldName = 'diasparamudarsituacao'
    end
    object cdsconffinancsituacaoautomatica: TWideStringField
      FieldName = 'situacaoautomatica'
      Size = 15
    end
    object cdsconffinanclocalcobrancaboleto: TWideStringField
      FieldName = 'localcobrancaboleto'
      Size = 50
    end
    object cdsconffinancabatercreditocompraCH: TWideStringField
      FieldName = 'abatercreditocompraCH'
      Size = 1
    end
    object cdsconffinancdiascorridosvencimentos: TWideStringField
      FieldName = 'diascorridosvencimentos'
      Size = 1
    end
    object cdsconffinancretidosbaixarestoque: TWideStringField
      FieldName = 'retidosbaixarestoque'
      Size = 1
    end
    object cdsconffinancescolherfiliallctdb: TWideStringField
      FieldName = 'escolherfiliallctdb'
      Size = 1
    end
    object cdsconffinanccpmf: TFMTBCDField
      FieldName = 'cpmf'
      Precision = 7
      Size = 2
    end
    object cdsconffinanciss: TFMTBCDField
      FieldName = 'iss'
      Precision = 7
      Size = 2
    end
    object cdsconffinanccofins: TFMTBCDField
      FieldName = 'cofins'
      Precision = 7
      Size = 3
    end
    object cdsconffinancbdorigemprevenda: TWideStringField
      FieldName = 'bdorigemprevenda'
      Size = 30
    end
    object cdsconffinancoperadordigitarsenhanaprevenda: TWideStringField
      FieldName = 'operadordigitarsenhanaprevenda'
      Size = 1
    end
    object cdsconffinancabaterestoqueprevenda: TWideStringField
      FieldName = 'abaterestoqueprevenda'
      Size = 1
    end
    object cdsconffinanctextogarantia: TWideMemoField
      FieldName = 'textogarantia'
      BlobType = ftWideMemo
    end
    object cdsconffinancmostraqtddisponivel: TWideStringField
      FieldName = 'mostraqtddisponivel'
      Size = 1
    end
    object cdsconffinancmostrarprecominimo: TWideStringField
      FieldName = 'mostrarprecominimo'
      Size = 1
    end
    object cdsconffinancvalorbonificaocartaofidelidade: TFMTBCDField
      FieldName = 'valorbonificaocartaofidelidade'
      Precision = 12
      Size = 2
    end
    object cdsconffinancpontuacaobonificacaocartaofidelidade: TFMTBCDField
      FieldName = 'pontuacaobonificacaocartaofidelidade'
      Precision = 10
      Size = 2
    end
    object cdsconffinanciof: TFloatField
      FieldName = 'iof'
    end
    object cdsconffinancpis: TFMTBCDField
      FieldName = 'pis'
      Precision = 7
      Size = 3
    end
    object cdsconffinancirrf: TFMTBCDField
      FieldName = 'irrf'
      Precision = 7
      Size = 2
    end
    object cdsconffinancsituacaoautomaticainferior: TWideStringField
      FieldName = 'situacaoautomaticainferior'
      Size = 15
    end
    object cdsconffinancdiasparamudarsituacaoinferior: TIntegerField
      FieldName = 'diasparamudarsituacaoinferior'
    end
    object cdsconffinancbuscaautomatica: TWideStringField
      FieldName = 'buscaautomatica'
      Size = 1
    end
    object cdsconffinancmostrarprecoatacado: TWideStringField
      FieldName = 'mostrarprecoatacado'
      Size = 1
    end
    object cdsconffinanciof2: TFloatField
      FieldName = 'iof2'
    end
    object cdsconffinancprodcodaut: TWideStringField
      FieldName = 'prodcodaut'
      Size = 1
    end
    object cdsconffinancboletocobrebemX: TWideStringField
      FieldName = 'boletocobrebemX'
      Size = 1
    end
    object cdsconffinancespecieNF: TWideStringField
      FieldName = 'especieNF'
      Size = 5
    end
    object cdsconffinancserieNF: TWideStringField
      FieldName = 'serieNF'
      Size = 5
    end
    object cdsconffinancmodeloDocFiscal: TWideStringField
      FieldName = 'modeloDocFiscal'
      Size = 2
    end
    object cdsconffinancCSLL: TFMTBCDField
      FieldName = 'CSLL'
      Precision = 7
      Size = 2
    end
    object cdsconffinancEmitirNF_e: TWideStringField
      FieldName = 'EmitirNF_e'
      Size = 1
    end
    object cdsconffinancmsgnotafiscal: TWideMemoField
      FieldName = 'msgnotafiscal'
      BlobType = ftWideMemo
    end
    object cdsconffinanccfopsaida: TWideStringField
      FieldName = 'cfopsaida'
      Size = 5
    end
    object cdsconffinanccfopsaidaECF: TWideStringField
      FieldName = 'cfopsaidaECF'
      Size = 5
    end
    object cdsconffinanccalculamargempordentro: TWideStringField
      FieldName = 'calculamargempordentro'
      Size = 1
    end
    object cdsconffinancultimoselonf: TFMTBCDField
      FieldName = 'ultimoselonf'
      Precision = 20
      Size = 0
    end
    object cdsconffinancbuscaautomaticaprd: TWideStringField
      FieldName = 'buscaautomaticaprd'
      Size = 1
    end
    object cdsconffinancorigembackup: TWideStringField
      FieldName = 'origembackup'
      Size = 200
    end
    object cdsconffinancdestinobackup: TWideStringField
      FieldName = 'destinobackup'
      Size = 200
    end
    object cdsconffinancdigitoIniBal: TWideStringField
      FieldName = 'digitoIniBal'
      Size = 1
    end
    object cdsconffinancdevolucaomaiorrec: TWideStringField
      FieldName = 'devolucaomaiorrec'
      Size = 1
    end
    object cdsconffinancfilialmae: TWideStringField
      FieldName = 'filialmae'
      Size = 5
    end
    object cdsconffinancdescontoservico: TFMTBCDField
      FieldName = 'descontoservico'
      Precision = 7
      Size = 2
    end
    object cdsconffinancprodcadcustopreco: TWideStringField
      FieldName = 'prodcadcustopreco'
      Size = 1
    end
    object cdsconffinancentradaperguntaalteracusto: TWideStringField
      FieldName = 'entradaperguntaalteracusto'
      Size = 1
    end
    object cdsconffinancnegociacaojurosnavenda: TWideStringField
      FieldName = 'negociacaojurosnavenda'
      Size = 1
    end
    object cdsconffinancpermitirporcontacliente: TWideStringField
      FieldName = 'permitirporcontacliente'
      Size = 1
    end
    object cdsconffinancBCICMSProduto: TWideStringField
      FieldName = 'BCICMSProduto'
      Size = 1
    end
    object cdsconffinancemissornfe: TWideStringField
      FieldName = 'emissornfe'
      Size = 1
    end
    object cdsconffinancmsgrodapecupom: TWideStringField
      FieldName = 'msgrodapecupom'
      Size = 100
    end
    object cdsconffinancprevisualizarnfe: TWideStringField
      FieldName = 'previsualizarnfe'
      Size = 1
    end
    object cdsconffinancvendasemprecomvendedor: TWideStringField
      FieldName = 'vendasemprecomvendedor'
      Size = 1
    end
    object cdsconffinanctotalbrutocomencargos: TWideStringField
      FieldName = 'totalbrutocomencargos'
      Size = 1
    end
    object cdsconffinancvendaimportadavnfe: TWideStringField
      FieldName = 'vendaimportadavnfe'
      Size = 1
    end
    object cdsconffinancaliquotaretencaofrete: TFMTBCDField
      FieldName = 'aliquotaretencaofrete'
      Precision = 7
      Size = 2
    end
    object cdsconffinanctotalnofinalcodbalanca: TWideStringField
      FieldName = 'totalnofinalcodbalanca'
      Size = 1
    end
    object cdsconffinancativarassistentegerencial: TWideStringField
      FieldName = 'ativarassistentegerencial'
      Size = 1
    end
    object cdsconffinancdiasreservaestoquedav: TIntegerField
      FieldName = 'diasreservaestoquedav'
    end
    object cdsconffinancmaximodescontogerencial: TFMTBCDField
      FieldName = 'maximodescontogerencial'
      Precision = 7
      Size = 2
    end
    object cdsconffinanctransportarsaldocaixa: TWideStringField
      FieldName = 'transportarsaldocaixa'
      Size = 1
    end
    object cdsconffinancsempreabrircupomcomcliente: TWideStringField
      FieldName = 'sempreabrircupomcomcliente'
      Size = 1
    end
    object cdsconffinancnumerocarnegerador: TWideStringField
      FieldName = 'numerocarnegerador'
      Size = 2
    end
    object cdsconffinancnumeroetiquetagerador: TWideStringField
      FieldName = 'numeroetiquetagerador'
      Size = 2
    end
    object cdsconffinancdbclienterestricao: TFMTBCDField
      FieldName = 'dbclienterestricao'
      Precision = 10
      Size = 2
    end
    object cdsconffinancdestinoentrada: TWideStringField
      FieldName = 'destinoentrada'
      Size = 1
    end
    object cdsconffinancvalidarncm: TWideStringField
      FieldName = 'validarncm'
      Size = 1
    end
    object cdsconffinancinventarioautomatico: TWideStringField
      FieldName = 'inventarioautomatico'
      Size = 1
    end
    object cdsconffinancnfedevolucaoentrarestoque: TWideStringField
      FieldName = 'nfedevolucaoentrarestoque'
      Size = 1
    end
    object cdsconffinancaceitardescontoatacado: TWideStringField
      FieldName = 'aceitardescontoatacado'
      Size = 1
    end
    object cdsconffinancalterarprecofiliaisentrada: TWideStringField
      FieldName = 'alterarprecofiliaisentrada'
      Size = 1
    end
    object cdsconffinancencerrartransfdestino: TWideStringField
      FieldName = 'encerrartransfdestino'
      Size = 1
    end
    object cdsconffinancdescfidelidadeavista: TWideStringField
      FieldName = 'descfidelidadeavista'
      Size = 1
    end
    object cdsconffinancrodarscripts: TWideStringField
      FieldName = 'rodarscripts'
      Size = 1
    end
    object cdsconffinancverificarvenda: TWideStringField
      FieldName = 'verificarvenda'
      Size = 1
    end
    object cdsconffinancduplicidadeProdutosBalanco: TWideStringField
      FieldName = 'duplicidadeProdutosBalanco'
      Size = 1
    end
    object cdsconffinancnfcetransacaobanco: TWideStringField
      FieldName = 'nfcetransacaobanco'
      Size = 1
    end
    object cdsconffinancmascarafiscal: TWideStringField
      FieldName = 'mascarafiscal'
      Size = 1
    end
    object cdsconffinanccustogerencial: TWideStringField
      FieldName = 'custogerencial'
      Size = 1
    end
    object cdsconffinancdevmenorqueparcela: TWideStringField
      FieldName = 'devmenorqueparcela'
      Size = 1
    end
    object cdsconffinancgerarposicaoestoque: TWideStringField
      FieldName = 'gerarposicaoestoque'
      Size = 1
    end
    object cdsconffinanctipoprodutopesquisa: TWideStringField
      FieldName = 'tipoprodutopesquisa'
      Size = 2
    end
    object cdsconffinancsaldoporoperador: TWideStringField
      FieldName = 'saldoporoperador'
      Size = 1
    end
    object cdsconffinancmostrarsaldoliquido: TWideStringField
      FieldName = 'mostrarsaldoliquido'
      Size = 1
    end
    object cdsconffinancvalorcomprafidelizacao: TFMTBCDField
      FieldName = 'valorcomprafidelizacao'
      Precision = 10
      Size = 2
    end
    object cdsconffinancpontuacaomaxima: TIntegerField
      FieldName = 'pontuacaomaxima'
    end
    object cdsconffinancqtdpontosfidelizacao: TIntegerField
      FieldName = 'qtdpontosfidelizacao'
    end
    object cdsconffinancvalidarestoquenaprevenda: TWideStringField
      FieldName = 'validarestoquenaprevenda'
      Size = 1
    end
    object cdsconffinancvalidarqtdprateleira: TWideStringField
      FieldName = 'validarqtdprateleira'
      Size = 1
    end
    object cdsconffinanctransferenciatransito: TWideStringField
      FieldName = 'transferenciatransito'
      Size = 1
    end
    object cdsconffinancpontuacaoiqcardcr: TWideStringField
      FieldName = 'pontuacaoiqcardcr'
      Size = 1
    end
    object cdsconffinancpontuacaoiqcardca: TWideStringField
      FieldName = 'pontuacaoiqcardca'
      Size = 1
    end
    object cdsconffinanccoeficientepontosiqcard: TFMTBCDField
      FieldName = 'coeficientepontosiqcard'
      Precision = 7
      Size = 2
    end
    object cdsconffinancusarcontrolelote: TWideStringField
      FieldName = 'usarcontrolelote'
      Size = 1
    end
    object cdsconffinanccaixapersonalizado: TWideStringField
      FieldName = 'caixapersonalizado'
      Size = 1
    end
    object cdsconffinancpoperacionalcustoentrada: TFMTBCDField
      FieldName = 'poperacionalcustoentrada'
      Precision = 12
      Size = 2
    end
    object cdsconffinanccreditarLucroReal: TWideStringField
      FieldName = 'creditarLucroReal'
      Size = 1
    end
    object cdsconffinanclibEntSemPedido: TWideStringField
      FieldName = 'libEntSemPedido'
      Size = 1
    end
    object cdsconffinancsincronizar: TWideStringField
      FieldName = 'sincronizar'
      Size = 1
    end
    object cdsconffinancfilialSincronizada: TWideStringField
      FieldName = 'filialSincronizada'
      Size = 1
    end
    object cdsconffinanccontaReceitaPis: TIntegerField
      FieldName = 'contaReceitaPis'
    end
    object cdsconffinanccontaReceitaCofins: TIntegerField
      FieldName = 'contaReceitaCofins'
    end
    object cdsconffinancexcluirprevendas: TWideStringField
      FieldName = 'excluirprevendas'
      Size = 1
    end
    object cdsconffinanccancelarvendarejeicaocartao: TWideStringField
      FieldName = 'cancelarvendarejeicaocartao'
      Size = 1
    end
    object cdsconffinanctipoContaSPED: TWideStringField
      FieldName = 'tipoContaSPED'
      Size = 2
    end
    object cdsconffinancgerartransfnavenda: TWideStringField
      FieldName = 'gerartransfnavenda'
      Size = 1
    end
    object cdsconffinancserietransferenciavenda: TWideStringField
      FieldName = 'serietransferenciavenda'
      Size = 3
    end
    object cdsconffinancromaneiovenda: TWideStringField
      FieldName = 'romaneiovenda'
      Size = 1
    end
    object cdsconffinanccfopTransferenciavenda: TWideStringField
      FieldName = 'cfopTransferenciavenda'
      Size = 5
    end
    object cdsconffinanclimitevendasemidentificacao: TFMTBCDField
      FieldName = 'limitevendasemidentificacao'
      Precision = 12
      Size = 2
    end
    object cdsconffinancCertificadoArquivo: TBlobField
      FieldName = 'CertificadoArquivo'
    end
    object cdsconffinancCertificadoSenha: TWideStringField
      FieldName = 'CertificadoSenha'
      Size = 255
    end
    object cdsconffinancCertificadoNumSerie: TWideStringField
      FieldName = 'CertificadoNumSerie'
      Size = 128
    end
    object cdsconffinancCertificadoDataVencimento: TDateField
      FieldName = 'CertificadoDataVencimento'
    end
    object cdsconffinancCertificadoidCS: TWideStringField
      FieldName = 'CertificadoidCS'
      Size = 10
    end
    object cdsconffinancCertificadoCSC: TWideStringField
      FieldName = 'CertificadoCSC'
      Size = 50
    end
    object cdsconffinancCertificadoSSLLib: TIntegerField
      FieldName = 'CertificadoSSLLib'
    end
    object cdsconffinancCertificadoCryptLib: TIntegerField
      FieldName = 'CertificadoCryptLib'
    end
    object cdsconffinancCertificadoHttpLib: TIntegerField
      FieldName = 'CertificadoHttpLib'
    end
    object cdsconffinancCertificadoXmlSignLib: TIntegerField
      FieldName = 'CertificadoXmlSignLib'
    end
    object cdsconffinancWebServiceUF: TWideStringField
      FieldName = 'WebServiceUF'
      Size = 2
    end
    object cdsconffinancWebServiceAmbiente: TIntegerField
      FieldName = 'WebServiceAmbiente'
    end
    object cdsconffinancWebServiceSSLType: TIntegerField
      FieldName = 'WebServiceSSLType'
    end
    object cdsconffinancModoEmissaoModo: TIntegerField
      FieldName = 'ModoEmissaoModo'
    end
    object cdsconffinancPropEnvioIntervalo: TIntegerField
      FieldName = 'PropEnvioIntervalo'
    end
    object cdsconffinancPropEnvioTimeOut: TIntegerField
      FieldName = 'PropEnvioTimeOut'
    end
    object cdsconffinancImpressaoNomeImpressora: TWideStringField
      FieldName = 'ImpressaoNomeImpressora'
      Size = 128
    end
    object cdsconffinancImpressaoExibirResumoCanhoto: TIntegerField
      FieldName = 'ImpressaoExibirResumoCanhoto'
    end
    object cdsconffinancImpressaoExpandirLogoMarca: TIntegerField
      FieldName = 'ImpressaoExpandirLogoMarca'
    end
    object cdsconffinancImpressaoFormularioContinuo: TIntegerField
      FieldName = 'ImpressaoFormularioContinuo'
    end
    object cdsconffinancImpressaoImprimeDescAcresItem: TIntegerField
      FieldName = 'ImpressaoImprimeDescAcresItem'
    end
    object cdsconffinancImpressaoImprimeEmUmaLinha: TIntegerField
      FieldName = 'ImpressaoImprimeEmUmaLinha'
    end
    object cdsconffinancImpressaoImprimeLogoLateral: TIntegerField
      FieldName = 'ImpressaoImprimeLogoLateral'
    end
    object cdsconffinancImpressaoImprimeNomeFantasia: TIntegerField
      FieldName = 'ImpressaoImprimeNomeFantasia'
    end
    object cdsconffinancImpressaoImprimirDescPorc: TIntegerField
      FieldName = 'ImpressaoImprimirDescPorc'
    end
    object cdsconffinancImpressaoImprimirDetalhamentoEspecifico: TIntegerField
      FieldName = 'ImpressaoImprimirDetalhamentoEspecifico'
    end
    object cdsconffinancImpressaoImprimirItens: TIntegerField
      FieldName = 'ImpressaoImprimirItens'
    end
    object cdsconffinancImpressaoImprimirTotalLiquido: TIntegerField
      FieldName = 'ImpressaoImprimirTotalLiquido'
    end
    object cdsconffinancImpressaoImprimirTributos: TIntegerField
      FieldName = 'ImpressaoImprimirTributos'
    end
    object cdsconffinancImpressaoUsarCodigoEanImpressao: TIntegerField
      FieldName = 'ImpressaoUsarCodigoEanImpressao'
    end
    object cdsconffinancImpressaoTributosSeparadamente: TIntegerField
      FieldName = 'ImpressaoTributosSeparadamente'
    end
    object cdsconffinancImpressaoViaConsumidor: TIntegerField
      FieldName = 'ImpressaoViaConsumidor'
    end
    object cdsconffinancImpressaoLogoemCima: TIntegerField
      FieldName = 'ImpressaoLogoemCima'
    end
    object cdsconffinancImpressaoImpressaoResumida: TIntegerField
      FieldName = 'ImpressaoImpressaoResumida'
    end
    object cdsconffinancImpressaoLarguraBobina: TIntegerField
      FieldName = 'ImpressaoLarguraBobina'
    end
    object cdsconffinancImpressaoProdutosPorPagina: TIntegerField
      FieldName = 'ImpressaoProdutosPorPagina'
    end
    object cdsconffinancImpressaoTamanhoFonteEndereco: TIntegerField
      FieldName = 'ImpressaoTamanhoFonteEndereco'
    end
    object cdsconffinancImpressaoTamanhoFonte_DemaisCampos: TIntegerField
      FieldName = 'ImpressaoTamanhoFonte_DemaisCampos'
    end
    object cdsconffinancImpressaoExibirResumoCanhoto_texto: TWideStringField
      FieldName = 'ImpressaoExibirResumoCanhoto_texto'
      Size = 50
    end
    object cdsconffinancImpressaoFonteTributos: TWideStringField
      FieldName = 'ImpressaoFonteTributos'
    end
    object cdsconffinancImpressaoLogomarca: TBlobField
      FieldName = 'ImpressaoLogomarca'
    end
    object cdsconffinancserieNFCeSiceWeb: TIntegerField
      FieldName = 'serieNFCeSiceWeb'
    end
    object cdsconffinancEmitenteFilial: TWideStringField
      FieldName = 'EmitenteFilial'
      Size = 5
    end
    object cdsconffinancgerarNFeTransfVenda: TWideStringField
      FieldName = 'gerarNFeTransfVenda'
      Size = 1
    end
    object cdsconffinancalterarprecooffline: TWideStringField
      FieldName = 'alterarprecooffline'
      Size = 1
    end
    object cdsconffinancfechamentoDiarioAutomatico: TWideStringField
      FieldName = 'fechamentoDiarioAutomatico'
      Size = 1
    end
    object cdsconffinancfidelizarrecebimento: TWideStringField
      FieldName = 'fidelizarrecebimento'
      Size = 1
    end
    object cdsconffinancsaldoCaixaSP: TWideStringField
      FieldName = 'saldoCaixaSP'
      Size = 1
    end
    object cdsconffinancidademaximacadastro: TIntegerField
      FieldName = 'idademaximacadastro'
    end
    object cdsconffinancidademinimacadastro: TIntegerField
      FieldName = 'idademinimacadastro'
    end
    object cdsconffinancmensagemadicionalcarne: TWideStringField
      FieldName = 'mensagemadicionalcarne'
      Size = 50
    end
    object cdsconffinancanaliseobrigatoria: TWideStringField
      FieldName = 'analiseobrigatoria'
      Size = 1
    end
    object cdsconffinancipcnf2: TBlobField
      FieldName = 'ipcnf2'
    end
    object cdsconffinancformaPagamentoDescontoMaximo: TWideStringField
      FieldName = 'formaPagamentoDescontoMaximo'
      Size = 2
    end
    object cdsconffinancnaoFinalizarEntradaCriticasTributarias: TWideStringField
      FieldName = 'naoFinalizarEntradaCriticasTributarias'
      Size = 1
    end
    object cdsconffinancmargemlucrominima: TFMTBCDField
      FieldName = 'margemlucrominima'
      Precision = 12
      Size = 2
    end
    object cdsconffinanctaxaadmcartaodiferenciada: TWideStringField
      FieldName = 'taxaadmcartaodiferenciada'
      Size = 1
    end
    object cdsconffinancexibirAnunciosPDV: TWideStringField
      FieldName = 'exibirAnunciosPDV'
      Size = 1
    end
    object cdsconffinancimpulsionarVendasAnunciosPDV: TWideStringField
      FieldName = 'impulsionarVendasAnunciosPDV'
      Size = 1
    end
    object cdsconffinancmarcarItensEntrada: TWideStringField
      FieldName = 'marcarItensEntrada'
      Size = 1
    end
    object cdsconffinancfilialcabecalhorenegociacao: TWideStringField
      FieldName = 'filialcabecalhorenegociacao'
      Size = 5
    end
    object cdsconffinancspoolimpressao: TWideStringField
      FieldName = 'spoolimpressao'
      Size = 1
    end
    object cdsconffinancreceberdocumentosdiferentescrediario: TWideStringField
      FieldName = 'receberdocumentosdiferentescrediario'
      Size = 1
    end
  end
  object dsConffinanc: TDataSource
    DataSet = cdsconffinanc
    Left = 453
    Top = 508
  end
  object sdstrajeto: TSQLDataSet
    CommandText = 'SELECT * FROM mdfetrajeto WHERE codigofilial='#39'00001'#39';'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 133
    Top = 572
  end
  object dsptrajeto: TDataSetProvider
    DataSet = sdstrajeto
    Left = 237
    Top = 572
  end
  object cdstrajeto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsptrajeto'
    Left = 349
    Top = 572
    object cdstrajetoid: TIntegerField
      FieldName = 'id'
    end
    object cdstrajetoestado: TWideStringField
      FieldName = 'estado'
      Size = 30
    end
    object cdstrajetoserie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object cdstrajetonmdf: TWideStringField
      FieldName = 'nmdf'
      Size = 5
    end
    object cdstrajetocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
  end
  object dstrajeto: TDataSource
    DataSet = cdstrajeto
    Left = 453
    Top = 572
  end
end
