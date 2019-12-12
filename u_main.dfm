object _Main: T_Main
  Left = 0
  Top = 0
  ClientHeight = 710
  ClientWidth = 952
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgMain: TPageControl
    Left = 0
    Top = 69
    Width = 952
    Height = 641
    ActivePage = Configurações
    Align = alClient
    TabOrder = 0
    object Controle: TTabSheet
      Caption = 'Controle'
      object pnlControle: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 378
        Align = alTop
        Caption = 'pnlControle'
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 342
          Align = alTop
          Color = clWhite
          DataSource = dsIDELocal
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'cstat'
              Title.Caption = 'Status'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nMDF'
              Title.Caption = 'N'#250'mero'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'serie'
              Title.Caption = 'S'#233'rie'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dhEmi'
              Title.Caption = 'Data Emiss'#227'o'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'xMunCarrega'
              Title.Caption = 'Carregamento'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'xmotivo'
              Title.Caption = 'Descri'#231#227'o Status '
              Width = 205
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'protocolo'
              Title.Caption = 'Prot.Aut'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataautorizacao'
              Title.Caption = 'Data Aut.'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chMDFe'
              Title.Caption = 'Chave'
              Width = 326
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'protocolocancelamento'
              Title.Caption = 'Prot.Canc.'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'datacancelamento'
              Title.Caption = 'Data Canc.'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'protocoloencerramento'
              Title.Caption = 'Prot. Encer.'
              Width = 141
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataencerramento'
              Title.Caption = 'Data Encer.'
              Width = 64
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 1
          Top = 341
          Width = 942
          Height = 36
          Align = alBottom
          Color = clMedGray
          ParentBackground = False
          TabOrder = 1
          object RxSpeedButton1: TRxSpeedButton
            Left = 792
            Top = 8
            Width = 125
            Height = 25
            DropDownMenu = PopupMenu1
            Caption = 'Imprimir'
          end
          object BitBtn4: TBitBtn
            Left = 7
            Top = 8
            Width = 90
            Height = 25
            Caption = 'Criar'
            TabOrder = 0
            OnClick = BitBtn4Click
          end
          object btnEnviar: TBitBtn
            Left = 429
            Top = 8
            Width = 89
            Height = 25
            Caption = 'Enviar'
            TabOrder = 1
            OnClick = btnEnviarClick
          end
          object btnAlterar: TBitBtn
            Left = 113
            Top = 8
            Width = 82
            Height = 25
            Caption = 'Alterar'
            TabOrder = 2
            OnClick = btnAlterarClick
          end
          object btnCancelar: TBitBtn
            Left = 524
            Top = 8
            Width = 89
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 3
            OnClick = btnCancelarClick
          end
          object btnEncerrar: TBitBtn
            Left = 636
            Top = 8
            Width = 121
            Height = 25
            Caption = 'Encerrar'
            TabOrder = 4
            OnClick = btnEncerrarClick
          end
          object btnConsultarMDFe: TBitBtn
            Left = 292
            Top = 8
            Width = 89
            Height = 25
            Caption = 'Consultar'
            TabOrder = 5
            OnClick = btnConsultarMDFeClick
          end
        end
      end
      object MemoStatus: TMemo
        Left = 0
        Top = 378
        Width = 944
        Height = 235
        Align = alClient
        Color = 14215400
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Emissao: TTabSheet
      Caption = 'Emiss'#227'o'
      ImageIndex = 1
      object grpMDFe: TGroupBox
        Left = 0
        Top = 0
        Width = 944
        Height = 613
        Align = alClient
        Caption = 'MDF-e'
        TabOrder = 0
        object grpIdentificacao: TGroupBox
          Left = 2
          Top = 15
          Width = 940
          Height = 82
          Align = alTop
          Caption = 'Identifica'#231#227'o'
          TabOrder = 0
          object Label7: TLabel
            Left = 11
            Top = 17
            Width = 34
            Height = 13
            Caption = 'Modelo'
          end
          object Label8: TLabel
            Left = 59
            Top = 17
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
          end
          object Label9: TLabel
            Left = 111
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label10: TLabel
            Left = 199
            Top = 17
            Width = 64
            Height = 13
            Caption = 'Data Emiss'#227'o'
          end
          object Label11: TLabel
            Left = 330
            Top = 17
            Width = 85
            Height = 13
            Caption = 'UF Carregamento'
          end
          object Label12: TLabel
            Left = 618
            Top = 17
            Width = 101
            Height = 13
            Caption = 'UF Descarregamento'
          end
          object Label13: TLabel
            Left = 421
            Top = 17
            Width = 130
            Height = 13
            Caption = 'Munic'#237'pio de Carregamento'
          end
          object Label14: TLabel
            Left = 738
            Top = 17
            Width = 146
            Height = 13
            Caption = 'Munic'#237'pio de Descarregamento'
          end
          object txtmodeloMDF: TMaskEdit
            Left = 11
            Top = 36
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            ReadOnly = True
            TabOrder = 0
            Text = '58'
          end
          object txtserieMDF: TMaskEdit
            Left = 59
            Top = 36
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            ReadOnly = True
            TabOrder = 1
            Text = '1'
          end
          object txtnumeroMDF: TMaskEdit
            Left = 111
            Top = 36
            Width = 66
            Height = 21
            CharCase = ecUpperCase
            ReadOnly = True
            TabOrder = 2
            Text = ''
          end
          object cboUFCarregamento: TComboBox
            Left = 335
            Top = 36
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
            OnEnter = cboUFCarregamentoEnter
          end
          object cboUFDescarregamento: TComboBox
            Left = 618
            Top = 36
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 6
            OnEnter = cboUFDescarregamentoEnter
          end
          object cboMunicipioCarregamento: TComboBox
            Left = 421
            Top = 36
            Width = 178
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
            OnEnter = cboMunicipioCarregamentoEnter
          end
          object cboMunicipioDescarregamento: TComboBox
            Left = 738
            Top = 36
            Width = 178
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 7
            OnEnter = cboMunicipioDescarregamentoEnter
            OnExit = cboMunicipioDescarregamentoExit
          end
          object chkCidades: TCheckBox
            Left = 736
            Top = 59
            Width = 146
            Height = 17
            Caption = 'Mais de uma cidade'
            Checked = True
            Enabled = False
            State = cbChecked
            TabOrder = 8
            Visible = False
            OnClick = chkCidadesClick
          end
          object txtDataEmissao: TDateEdit
            Left = 199
            Top = 36
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 3
          end
        end
        object pa: TGroupBox
          Left = 2
          Top = 307
          Width = 940
          Height = 266
          Align = alTop
          Caption = 'Notas Fiscais'
          TabOrder = 1
          object Label23: TLabel
            Left = 11
            Top = 180
            Width = 63
            Height = 13
            Caption = 'Observa'#231#245'es'
          end
          object Label1: TLabel
            Left = 397
            Top = 179
            Width = 87
            Height = 13
            Caption = 'Valor da Carga R$'
          end
          object Label21: TLabel
            Left = 598
            Top = 180
            Width = 82
            Height = 13
            Caption = 'Peso bruto carga'
          end
          object Label22: TLabel
            Left = 508
            Top = 180
            Width = 76
            Height = 13
            Caption = 'Unidade Medida'
          end
          object SpeedButton1: TSpeedButton
            Left = 10
            Top = 238
            Width = 23
            Height = 20
            Caption = '.'
            Flat = True
            OnClick = SpeedButton1Click
          end
          object lblchv: TLabel
            Left = 42
            Top = 239
            Width = 165
            Height = 13
            Caption = 'Alterar chave de acesso do MDF-e'
            Visible = False
          end
          object txtInfComplementar: TMemo
            Left = 11
            Top = 200
            Width = 362
            Height = 33
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object txtvCarga: TCurrencyEdit
            Left = 397
            Top = 200
            Width = 97
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DisplayFormat = ' ,0.00'
            TabOrder = 1
          end
          object txtqCarga: TCurrencyEdit
            Left = 598
            Top = 200
            Width = 97
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DecimalPlaces = 4
            DisplayFormat = ' ,0.0000'
            TabOrder = 3
          end
          object txtcUnid: TComboBox
            Left = 508
            Top = 200
            Width = 72
            Height = 21
            CharCase = ecUpperCase
            ItemIndex = 0
            TabOrder = 2
            Text = '01 - KG'
            Items.Strings = (
              '01 - KG'
              '02 - TON')
          end
          object pgInserir: TPageControl
            Left = 1
            Top = 1
            Width = 844
            Height = 178
            ActivePage = TabSheet1
            TabOrder = 4
            object TabSheet1: TTabSheet
              Caption = 'Incluir NFe Pr'#243'prias'
              object GridNFE: TDBGrid
                Left = 0
                Top = 52
                Width = 734
                Height = 98
                DataSource = _dmMDFe.dsmdfeInfDoc
                ReadOnly = True
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'controleNFE'
                    Title.Caption = 'Controle'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'chNFe'
                    Title.Caption = 'Chave de Acesso'
                    Width = 227
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SegCodBarra'
                    Title.Caption = 'Seg. C'#243'd Barras'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'uf'
                    Title.Caption = 'UF'
                    Width = 32
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'muniDest'
                    Title.Caption = 'Munic'#237'pio Destino'
                    Width = 182
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'codMunDest'
                    Title.Caption = 'C'#243'd. Munic'#237'pio Destino'
                    Visible = True
                  end>
              end
              object ChkTer: TCheckBox
                Left = 189
                Top = 29
                Width = 157
                Height = 17
                Caption = 'Inserir Notas Avulsas'
                TabOrder = 2
                WordWrap = True
                OnClick = ChkTerClick
              end
              object btnRemoverNFe: TBitBtn
                Left = 740
                Top = 86
                Width = 71
                Height = 25
                Caption = 'Remover'
                TabOrder = 3
                OnClick = btnRemoverNFeClick
              end
              object pnlpropria: TPanel
                Left = 14
                Top = -6
                Width = 158
                Height = 52
                TabOrder = 0
                object txtSerieNFe: TMaskEdit
                  Left = 30
                  Top = 22
                  Width = 34
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 1
                  Text = ''
                  Visible = False
                  OnExit = txtSerieNFeExit
                end
                object txtNumeroNFe: TMaskEdit
                  Left = 7
                  Top = 22
                  Width = 57
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 0
                  Text = ''
                  Visible = False
                end
                object filialemitenteselecionada: TComboBox
                  Left = 7
                  Top = 20
                  Width = 44
                  Height = 21
                  TabOrder = 3
                  Visible = False
                end
                object btnAdicionarNFe: TBitBtn
                  Left = 0
                  Top = 18
                  Width = 137
                  Height = 25
                  Caption = 'Adicionar documento'
                  TabOrder = 2
                  OnClick = btnAdicionarNFeClick
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Definir Trajet'#243'ria'
              ImageIndex = 1
              object Label33: TLabel
                Left = 14
                Top = 12
                Width = 55
                Height = 13
                Caption = 'UF Trajeto:'
              end
              object cboUfTrajeto: TComboBox
                Left = 86
                Top = 12
                Width = 195
                Height = 21
                Style = csDropDownList
                CharCase = ecUpperCase
                TabOrder = 0
                OnEnter = cboUfTrajetoEnter
              end
              object memoUf: TMemo
                Left = 86
                Top = 39
                Width = 112
                Height = 106
                Color = 14215400
                ReadOnly = True
                TabOrder = 1
              end
              object Button1: TButton
                Left = 204
                Top = 39
                Width = 75
                Height = 25
                Caption = 'Adicionar'
                TabOrder = 2
                OnClick = Button1Click
              end
              object Memo1: TMemo
                Left = 309
                Top = 3
                Width = 516
                Height = 134
                Lines.Strings = (
                  'Regras:'
                  ''
                  
                    '  1- Os estados de carregamento e descarregamento n'#227'o precisam s' +
                    'er informados'
                  
                    '  2- Os estados devem ser informados na sequencia correta de tra' +
                    'nsporte.'
                  ''
                  'Obs: Informar a sequ'#234'ncia aleatoriamente pode causar rejei'#231#227'o. ')
                ReadOnly = True
                TabOrder = 3
              end
              object Button2: TButton
                Left = 204
                Top = 96
                Width = 75
                Height = 25
                Caption = 'Limpar'
                TabOrder = 4
                OnClick = Button2Click
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'NFe / CTe  Avulsos'
              ImageIndex = 2
              object pnlNtAvulsa: TPanel
                Left = 0
                Top = 3
                Width = 833
                Height = 147
                Color = 14215400
                ParentBackground = False
                TabOrder = 0
                object Label25: TLabel
                  Left = 290
                  Top = 11
                  Width = 69
                  Height = 13
                  Caption = 'Valor da Nota:'
                end
                object Label27: TLabel
                  Left = 287
                  Top = 38
                  Width = 72
                  Height = 13
                  Caption = 'Chave Acesso:'
                end
                object Label34: TLabel
                  Left = 27
                  Top = 11
                  Width = 54
                  Height = 13
                  Caption = 'UF Origem:'
                end
                object Label35: TLabel
                  Left = 22
                  Top = 38
                  Width = 63
                  Height = 13
                  Caption = 'Mun. origem:'
                end
                object Label36: TLabel
                  Left = 27
                  Top = 62
                  Width = 56
                  Height = 13
                  Caption = 'UF Destino:'
                end
                object Label37: TLabel
                  Left = 31
                  Top = 88
                  Width = 50
                  Height = 13
                  Caption = 'Mun.Dest:'
                end
                object Label5: TLabel
                  Left = 299
                  Top = 70
                  Width = 60
                  Height = 13
                  Caption = 'Seg. Chave:'
                end
                object Label6: TLabel
                  Left = 705
                  Top = 64
                  Width = 123
                  Height = 39
                  Caption = 
                    'Ativar segunda chave.'#13#10'(Apenas para notas '#13#10'emitidas em conting'#234 +
                    'ncia)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object txtchave: TEdit
                  Left = 365
                  Top = 33
                  Width = 317
                  Height = 21
                  MaxLength = 44
                  TabOrder = 0
                end
                object btnAddNFeAvulsa: TButton
                  Left = 365
                  Top = 91
                  Width = 100
                  Height = 40
                  Caption = 'Adicionar'
                  Enabled = False
                  TabOrder = 1
                  OnClick = btnAddNFeAvulsaClick
                end
                object cboUfCarrAvulso: TComboBox
                  Left = 93
                  Top = 6
                  Width = 50
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 2
                  OnEnter = cboUfCarrAvulsoEnter
                  OnExit = cboUfCarrAvulsoExit
                end
                object cboMunCarrAvulso: TComboBox
                  Left = 93
                  Top = 30
                  Width = 178
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 3
                  OnEnter = cboMunCarrAvulsoEnter
                end
                object cboUfdessAvulso: TComboBox
                  Left = 93
                  Top = 54
                  Width = 50
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 4
                  OnEnter = cboUfdessAvulsoEnter
                  OnExit = cboUfdessAvulsoExit
                end
                object cboMunDesAvulso: TComboBox
                  Left = 93
                  Top = 81
                  Width = 178
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 5
                  OnEnter = cboMunDesAvulsoEnter
                end
                object txtvalor: TCurrencyEdit
                  Left = 365
                  Top = 6
                  Width = 121
                  Height = 21
                  Margins.Left = 4
                  Margins.Top = 1
                  TabOrder = 6
                end
                object txtSegChave: TEdit
                  Left = 365
                  Top = 62
                  Width = 317
                  Height = 21
                  Enabled = False
                  MaxLength = 44
                  TabOrder = 7
                end
                object chkcontingencia: TCheckBox
                  Left = 688
                  Top = 63
                  Width = 17
                  Height = 17
                  TabOrder = 8
                  OnClick = chkcontingenciaClick
                end
              end
            end
            object tabCIOTseguro: TTabSheet
              Caption = 'Seguro / CIOT (Exclusivo para transportadoras)'
              Enabled = False
              ImageIndex = 3
              object Label47: TLabel
                Left = 13
                Top = 9
                Width = 25
                Height = 13
                Caption = 'CIOT'
              end
              object Label51: TLabel
                Left = 261
                Top = 9
                Width = 80
                Height = 13
                Caption = 'CNPJCPF (CIOT)'
              end
              object Label52: TLabel
                Left = 14
                Top = 55
                Width = 98
                Height = 13
                Caption = 'Respons'#225'vel Seguro'
              end
              object Label53: TLabel
                Left = 261
                Top = 55
                Width = 163
                Height = 13
                Caption = 'CNPJ  do respons'#225'vel pelo seguro'
              end
              object Label55: TLabel
                Left = 14
                Top = 96
                Width = 49
                Height = 13
                Caption = 'N'#176' Apolice'
              end
              object Label56: TLabel
                Left = 262
                Top = 96
                Width = 107
                Height = 13
                Caption = 'N'#250'mero da Averba'#231#227'o'
              end
              object Label54: TLabel
                Left = 503
                Top = 9
                Width = 101
                Height = 13
                Caption = 'Nome da Seguradora'
              end
              object Label57: TLabel
                Left = 506
                Top = 52
                Width = 98
                Height = 13
                Caption = 'CNPJ da seguradora'
              end
              object txtciot: TEdit
                Left = 13
                Top = 28
                Width = 210
                Height = 21
                TabOrder = 0
                Text = '000000000000'
                OnExit = txtciotExit
                OnKeyPress = txtciotKeyPress
              end
              object txtCPFCNPJciot: TEdit
                Left = 261
                Top = 28
                Width = 210
                Height = 21
                TabOrder = 1
                Text = '0000000000000'
                OnKeyPress = txtCPFCNPJciotKeyPress
              end
              object txtcnpjrespseg: TEdit
                Left = 262
                Top = 74
                Width = 210
                Height = 21
                TabOrder = 2
                Text = '00000000000'
                OnKeyPress = txtcnpjrespsegKeyPress
              end
              object txtnapolice: TEdit
                Left = 14
                Top = 115
                Width = 210
                Height = 21
                TabOrder = 3
                Text = '0'
                OnKeyPress = txtnapoliceKeyPress
              end
              object txtnraverbacao: TEdit
                Left = 261
                Top = 115
                Width = 210
                Height = 21
                TabOrder = 4
                Text = '0'
                OnKeyPress = txtnraverbacaoKeyPress
              end
              object txtseguradora: TEdit
                Left = 503
                Top = 28
                Width = 210
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 5
              end
              object txtcnpjseguradora: TEdit
                Left = 504
                Top = 69
                Width = 210
                Height = 21
                TabOrder = 6
                Text = '0000000000000'
                OnKeyPress = txtcnpjseguradoraKeyPress
              end
              object txtrespseg: TComboBox
                Left = 14
                Top = 71
                Width = 145
                Height = 21
                TabOrder = 7
                Text = '1 - Emitente do MDF-e '
                Items.Strings = (
                  '1 - Emitente do MDF-e '
                  '2 - Contratante ')
              end
            end
          end
          object txtChacesso: TEdit
            Left = 213
            Top = 238
            Width = 452
            Height = 21
            ParentShowHint = False
            ShowHint = False
            TabOrder = 5
            Visible = False
            OnKeyPress = txtChacessoKeyPress
          end
        end
        object btnSalvar: TBitBtn
          Left = 256
          Top = 574
          Width = 139
          Height = 25
          Caption = 'Salvar'
          TabOrder = 4
          OnClick = btnSalvarClick
        end
        object btnCancelarIDE: TBitBtn
          Left = 431
          Top = 574
          Width = 139
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelarIDEClick
        end
        object grpVeiculo: TGroupBox
          Left = 2
          Top = 97
          Width = 940
          Height = 210
          Align = alTop
          Caption = 'Informa'#231#245'es do Ve'#237'culo'
          TabOrder = 3
          object lblPlaca: TLabel
            Left = 174
            Top = 19
            Width = 25
            Height = 13
            Caption = 'Placa'
          end
          object Label2: TLabel
            Left = 358
            Top = 19
            Width = 27
            Height = 13
            Caption = 'RNTC'
          end
          object Label3: TLabel
            Left = 11
            Top = 162
            Width = 45
            Height = 13
            Caption = 'Condutor'
          end
          object Label4: TLabel
            Left = 479
            Top = 162
            Width = 120
            Height = 13
            Caption = 'CPF  (Somente N'#250'meros)'
          end
          object Label16: TLabel
            Left = 11
            Top = 68
            Width = 45
            Height = 13
            Caption = 'Tara (int)'
          end
          object Label17: TLabel
            Left = 131
            Top = 68
            Width = 95
            Height = 13
            Caption = 'Capacidade KG (int)'
          end
          object Label18: TLabel
            Left = 254
            Top = 68
            Width = 96
            Height = 13
            Caption = 'Capacidade M3 (int)'
          end
          object Label19: TLabel
            Left = 11
            Top = 113
            Width = 56
            Height = 13
            Caption = 'Tipo Ve'#237'culo'
          end
          object Label20: TLabel
            Left = 195
            Top = 113
            Width = 73
            Height = 13
            Caption = 'Tipo Carroceria'
          end
          object Label24: TLabel
            Left = 390
            Top = 113
            Width = 98
            Height = 13
            Caption = 'Tipo Unidade Tra'#231#227'o'
          end
          object Label15: TLabel
            Left = 466
            Top = 19
            Width = 48
            Height = 13
            Caption = 'RENAVAM'
          end
          object Label50: TLabel
            Left = 11
            Top = 19
            Width = 59
            Height = 13
            Caption = 'Tipo Emissor'
          end
          object Label61: TLabel
            Left = 587
            Top = 113
            Width = 115
            Height = 13
            Caption = 'Dias Para Encerramento'
          end
          object txtPlaca: TMaskEdit
            Left = 202
            Top = 38
            Width = 102
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 7
            TabOrder = 1
            Text = ''
          end
          object btnBuscarTransportadora: TBitBtn
            Left = 310
            Top = 36
            Width = 42
            Height = 25
            Caption = '...'
            TabOrder = 2
            OnClick = btnBuscarTransportadoraClick
          end
          object txtRNTC: TMaskEdit
            Left = 358
            Top = 38
            Width = 102
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 8
            TabOrder = 3
            Text = ''
            OnExit = txtRNTCExit
          end
          object txtCondutor: TMaskEdit
            Left = 11
            Top = 181
            Width = 449
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 11
            Text = ''
          end
          object txtCPFCondutor: TMaskEdit
            Left = 479
            Top = 181
            Width = 142
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 11
            TabOrder = 12
            Text = ''
            OnExit = txtCPFCondutorExit
            OnKeyPress = txtCPFCondutorKeyPress
          end
          object txtTara: TCurrencyEdit
            Left = 11
            Top = 86
            Width = 97
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DecimalPlaces = 0
            DisplayFormat = ' ,0'
            TabOrder = 5
          end
          object txtCapacidadeKG: TCurrencyEdit
            Left = 131
            Top = 86
            Width = 97
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DecimalPlaces = 0
            DisplayFormat = ' ,0'
            TabOrder = 6
          end
          object txtCapacidadeM3: TCurrencyEdit
            Left = 254
            Top = 86
            Width = 97
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DecimalPlaces = 0
            DisplayFormat = ' ,0'
            MaxValue = 1.000000000000000000
            MinValue = 9.000000000000000000
            TabOrder = 7
          end
          object cboTipoVeiculo: TComboBox
            Left = 11
            Top = 132
            Width = 178
            Height = 21
            CharCase = ecUpperCase
            ItemIndex = 0
            TabOrder = 8
            Text = '1 - TRUCK'
            Items.Strings = (
              '1 - TRUCK'
              '2 - TOCO'
              '3 - CAVALO MEC'#194'NICO'
              '4 - VAN'
              '5 - UTILIT'#193'RIO'
              '6 - OUTROS'
              '')
          end
          object cboTipoCarroceria: TComboBox
            Left = 195
            Top = 132
            Width = 178
            Height = 21
            CharCase = ecUpperCase
            ItemIndex = 1
            TabOrder = 9
            Text = '1 - ABERTA'
            Items.Strings = (
              '0 - N'#195'O APLIC'#193'VEL'
              '1 - ABERTA'
              '2 - FECHADA'
              '3 - GRANELEIRA'
              '4 - PORTA CONTAINER'
              '5 - SIDER')
          end
          object cboTipoUnidadeTracao: TComboBox
            Left = 390
            Top = 132
            Width = 178
            Height = 21
            CharCase = ecUpperCase
            ItemIndex = 0
            TabOrder = 10
            Text = '1 - RODOVI'#193'RIO TRA'#199#195'O'
            Items.Strings = (
              '1 - RODOVI'#193'RIO TRA'#199#195'O'
              '2 - RODOVI'#193'RIO REBOQUE'
              '3 - NAVIO'
              '4 - BALSA'
              '5 - AERONAVE'
              '6 - VAG'#195'O'
              '7 '#8211' OUTROS')
          end
          object txtRenavam: TMaskEdit
            Left = 466
            Top = 38
            Width = 102
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 11
            TabOrder = 4
            Text = ''
            OnExit = txtRenavamExit
          end
          object txtUFPlaca: TMaskEdit
            Left = 174
            Top = 38
            Width = 22
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 2
            TabOrder = 0
            Text = ''
          end
          object cboTipoEmit: TComboBox
            Left = 11
            Top = 38
            Width = 145
            Height = 21
            TabOrder = 13
            Text = '2 - Carga Pr'#243'pria'
            OnSelect = cboTipoEmitSelect
            Items.Strings = (
              '1 - Transportadora'
              '2 - Carga Pr'#243'pria')
          end
          object txtdiasconclusao: TEdit
            Left = 587
            Top = 132
            Width = 115
            Height = 21
            TabOrder = 14
            Text = '0'
            OnKeyPress = txtdiasconclusaoKeyPress
          end
        end
      end
    end
    object Configurações: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 19
        Top = 3
        Width = 721
        Height = 112
        Caption = 'Dados do Emitente'
        TabOrder = 0
        object Label30: TLabel
          Left = 16
          Top = 21
          Width = 227
          Height = 13
          Caption = 'CNPJ Emitente (informar sem pontos ou tra'#231'os)'
        end
        object Label31: TLabel
          Left = 264
          Top = 24
          Width = 245
          Height = 13
          Caption = 'Inscri'#231#227'o Emitente (informar sem pontos ou tra'#231'os)'
        end
        object Label26: TLabel
          Left = 16
          Top = 67
          Width = 114
          Height = 13
          Caption = 'C'#243'digo da filial emitente'
        end
        object txtEmitCNPJ: TEdit
          Left = 16
          Top = 40
          Width = 193
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object txtEmitIE: TEdit
          Left = 264
          Top = 40
          Width = 193
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object txtFilialEmitente: TMaskEdit
          Left = 16
          Top = 86
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '00001'
        end
        object ckMonoFilial: TCheckBox
          Left = 152
          Top = 90
          Width = 241
          Height = 17
          Caption = 'Buscar notas fiscais somente desta filial'
          Enabled = False
          TabOrder = 3
          Visible = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 19
        Top = 116
        Width = 721
        Height = 258
        Caption = 'Certificado'
        TabOrder = 1
        object Label28: TLabel
          Left = 312
          Top = 208
          Width = 17
          Height = 13
          Caption = 'PIN'
          Visible = False
        end
        object Label29: TLabel
          Left = 440
          Top = 208
          Width = 79
          Height = 13
          Caption = 'N'#250'mero de S'#233'rie'
          Visible = False
        end
        object sbtnGetCert: TSpeedButton
          Left = 667
          Top = 222
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          Visible = False
          OnClick = sbtnGetCertClick
        end
        object lSSLLib: TLabel
          Left = 54
          Top = 93
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'SSLLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lCryptLib: TLabel
          Left = 44
          Top = 132
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'CryptLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lHttpLib: TLabel
          Left = 50
          Top = 165
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'HttpLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lXmlSign: TLabel
          Left = 32
          Top = 197
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'XMLSignLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lSSLLib1: TLabel
          Left = 302
          Top = 93
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'SSLType'
          Color = clBtnFace
          ParentColor = False
        end
        object edtSenha2: TEdit
          Left = 312
          Top = 224
          Width = 113
          Height = 21
          PasswordChar = '*'
          TabOrder = 0
          Visible = False
        end
        object edtNumSerie: TEdit
          Left = 440
          Top = 224
          Width = 225
          Height = 21
          TabOrder = 1
          Visible = False
        end
        object cbSSLLib: TComboBox
          Left = 110
          Top = 93
          Width = 160
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          OnChange = cbSSLLibChange
        end
        object cbCryptLib: TComboBox
          Left = 110
          Top = 124
          Width = 160
          Height = 21
          Style = csDropDownList
          TabOrder = 3
          OnChange = cbCryptLibChange
        end
        object cbHttpLib: TComboBox
          Left = 110
          Top = 157
          Width = 160
          Height = 21
          Style = csDropDownList
          TabOrder = 4
          OnChange = cbHttpLibChange
        end
        object cbXmlSignLib: TComboBox
          Left = 110
          Top = 189
          Width = 160
          Height = 21
          Style = csDropDownList
          TabOrder = 5
          OnChange = cbXmlSignLibChange
        end
        object bitOpenSSL: TButton
          Left = 110
          Top = 219
          Width = 75
          Height = 25
          Caption = 'OpenSSL'
          TabOrder = 6
          OnClick = bitOpenSSLClick
        end
        object btnWinCrypt: TButton
          Left = 191
          Top = 219
          Width = 75
          Height = 25
          Caption = 'WinCrypt'
          TabOrder = 7
          OnClick = btnWinCryptClick
        end
        object cbSSLType: TComboBox
          Left = 349
          Top = 93
          Width = 160
          Height = 21
          Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
          Style = csDropDownList
          TabOrder = 8
        end
        object GroupBox10: TGroupBox
          Left = 3
          Top = 16
          Width = 670
          Height = 70
          TabOrder = 9
          object Label62: TLabel
            Left = 8
            Top = 16
            Width = 41
            Height = 13
            Caption = 'Caminho'
          end
          object Label63: TLabel
            Left = 272
            Top = 16
            Width = 17
            Height = 13
            Caption = 'PIN'
          end
          object sbtnCaminhoCert: TSpeedButton
            Left = 235
            Top = 32
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = sbtnCaminhoCertClick
          end
          object Label64: TLabel
            Left = 400
            Top = 16
            Width = 79
            Height = 13
            Caption = 'N'#250'mero de S'#233'rie'
          end
          object bitNunSerie: TSpeedButton
            Left = 631
            Top = 30
            Width = 27
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = bitNunSerieClick
          end
          object edtCaminho: TEdit
            Left = 8
            Top = 32
            Width = 225
            Height = 21
            Enabled = False
            TabOrder = 0
          end
          object edtSenha: TEdit
            Left = 272
            Top = 32
            Width = 113
            Height = 21
            PasswordChar = '*'
            TabOrder = 1
          end
          object txtNumSerie: TEdit
            Left = 400
            Top = 32
            Width = 225
            Height = 21
            TabOrder = 2
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 3
        Top = 380
        Width = 721
        Height = 130
        Caption = 'WebService'
        TabOrder = 2
        object Label32: TLabel
          Left = 8
          Top = 40
          Width = 109
          Height = 13
          Caption = 'Informe UF de Destino:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblIntervaloReq: TLabel
          Left = 488
          Top = 11
          Width = 213
          Height = 13
          Caption = 'Intervalo entre as requisi'#231#245'es: 1 segundo(s)'
        end
        object ckVisualizar: TCheckBox
          Left = 8
          Top = 59
          Width = 153
          Height = 17
          Caption = 'Visualizar Mensagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object _cbUF: TComboBox
          Left = 16
          Top = 82
          Width = 57
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 16
          ParentFont = False
          TabOrder = 1
          Text = 'PE'
          Visible = False
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object rgTipoAmb: TRadioGroup
          Left = 280
          Top = 13
          Width = 185
          Height = 52
          Caption = 'Selecione o Ambiente de Destino'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Produ'#231#227'o'
            'Homologa'#231#227'o')
          TabOrder = 2
        end
        object IntervaloReq: TRxSlider
          Left = 488
          Top = 24
          Width = 209
          Height = 40
          Increment = 1
          MinValue = 1
          MaxValue = 30
          TabOrder = 3
          Value = 1
        end
        object rgModo: TRadioGroup
          Left = 280
          Top = 71
          Width = 413
          Height = 46
          Caption = 'Modo'
          Columns = 3
          Items.Strings = (
            'Normal'
            'Contig'#234'ncia')
          TabOrder = 4
          Visible = False
        end
        object cbUF: TMaskEdit
          Left = 123
          Top = 37
          Width = 38
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 5
          Text = ''
        end
      end
      object Salvar: TBitBtn
        Left = 3
        Top = 516
        Width = 193
        Height = 25
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = SalvarClick
      end
      object btncadfilial: TBitBtn
        Left = 331
        Top = 520
        Width = 161
        Height = 25
        Caption = 'Alterar dados da filial'
        TabOrder = 4
        Visible = False
        OnClick = btncadfilialClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Filtrar'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 16
        Top = 24
        Width = 361
        Height = 89
        Caption = 'Status'
        TabOrder = 0
        object cbosit: TComboBox
          Left = 24
          Top = 40
          Width = 257
          Height = 21
          TabOrder = 0
          Items.Strings = (
            '000 - Em aberto'
            '100 - Autorizado o uso do MDFe'
            '101 - Cancelamento de MDFe homologado'
            '132 - Encerramento de MDFe homologado ')
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 119
        Width = 361
        Height = 122
        Caption = 'Per'#237'odo'
        TabOrder = 1
        object Label38: TLabel
          Left = 175
          Top = 68
          Width = 25
          Height = 13
          Caption = 'In'#237'cio'
        end
        object Label39: TLabel
          Left = 175
          Top = 98
          Width = 16
          Height = 13
          Caption = 'Fim'
        end
        object rdata1: TRadioButton
          Left = 24
          Top = 47
          Width = 113
          Height = 17
          Caption = 'Data autoriza'#231#227'o'
          TabOrder = 0
        end
        object rdata2: TRadioButton
          Left = 24
          Top = 70
          Width = 113
          Height = 17
          Caption = 'Data encerramento'
          TabOrder = 1
        end
        object rdata3: TRadioButton
          Left = 24
          Top = 93
          Width = 113
          Height = 17
          Caption = 'Data cancelamento'
          TabOrder = 2
        end
        object DateEdit1: TDateEdit
          Left = 216
          Top = 68
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
        object DateEdit3: TDateEdit
          Left = 216
          Top = 93
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 4
        end
        object rdata0: TRadioButton
          Left = 175
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Data emiss'#227'o'
          TabOrder = 5
        end
        object rtodas: TRadioButton
          Left = 24
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Sem data'
          TabOrder = 6
        end
      end
      object GroupBox6: TGroupBox
        Left = 16
        Top = 247
        Width = 361
        Height = 74
        Caption = 'Cahve de Acesso'
        TabOrder = 2
        object txtchavemdfe: TEdit
          Left = 16
          Top = 32
          Width = 321
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox7: TGroupBox
        Left = 16
        Top = 327
        Width = 361
        Height = 162
        Caption = 'Munic'#237'pios'
        TabOrder = 3
        object Label40: TLabel
          Left = 24
          Top = 40
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label41: TLabel
          Left = 104
          Top = 40
          Width = 96
          Height = 13
          Caption = 'Mun. Carregamento'
        end
        object Label42: TLabel
          Left = 24
          Top = 96
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label43: TLabel
          Left = 104
          Top = 96
          Width = 112
          Height = 13
          Caption = 'Mun. Descarregamento'
        end
        object cboUfc: TComboBox
          Left = 24
          Top = 59
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnEnter = cboUfcEnter
        end
        object cboMunc: TComboBox
          Left = 104
          Top = 59
          Width = 241
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object cboufdes: TComboBox
          Left = 24
          Top = 115
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          OnEnter = cboufdesEnter
        end
        object cbomundes: TComboBox
          Left = 104
          Top = 115
          Width = 241
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnEnter = cbomundesEnter
        end
      end
      object Button3: TButton
        Left = 22
        Top = 512
        Width = 155
        Height = 25
        Caption = 'Filtrar'
        TabOrder = 4
        OnClick = Button3Click
      end
      object GroupBox8: TGroupBox
        Left = 400
        Top = 24
        Width = 321
        Height = 97
        Caption = 'Dados MDFe'
        TabOrder = 5
        object Label44: TLabel
          Left = 32
          Top = 32
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
        end
        object Label45: TLabel
          Left = 32
          Top = 67
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object txtserie: TEdit
          Left = 96
          Top = 29
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object txtnum: TEdit
          Left = 96
          Top = 56
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
      object GroupBox9: TGroupBox
        Left = 400
        Top = 127
        Width = 321
        Height = 79
        Caption = 'Codigo Filial'
        TabOrder = 6
        object cbofilialfiltro: TComboBox
          Left = 16
          Top = 32
          Width = 289
          Height = 21
          TabOrder = 0
          OnEnter = cbofilialfiltroEnter
        end
      end
      object BitBtn6: TBitBtn
        Left = 400
        Top = 217
        Width = 169
        Height = 25
        Caption = 'Pendentes de encerramento'
        TabOrder = 7
        OnClick = BitBtn6Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Ferramentas'
      ImageIndex = 4
      object lbloperacao: TLabel
        Left = 3
        Top = 116
        Width = 55
        Height = 13
        Caption = 'Alterar XML'
      end
      object txtXML: TMemo
        Left = 0
        Top = 135
        Width = 705
        Height = 289
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 3
        Top = 541
        Width = 160
        Height = 25
        Caption = 'Alterar XML'
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object pnlSenha: TPanel
        Left = 0
        Top = 430
        Width = 705
        Height = 105
        TabOrder = 2
        Visible = False
        object Label48: TLabel
          Left = 32
          Top = 24
          Width = 50
          Height = 13
          Caption = 'Operador:'
        end
        object Label49: TLabel
          Left = 32
          Top = 64
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object txtoperador: TEdit
          Left = 88
          Top = 16
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object txtsenha: TEdit
          Left = 88
          Top = 56
          Width = 257
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 368
          Top = 16
          Width = 137
          Height = 25
          Caption = 'Confirmar'
          TabOrder = 2
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 368
          Top = 55
          Width = 137
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
          OnClick = BitBtn3Click
        end
      end
      object Panel3: TPanel
        Left = 3
        Top = 3
        Width = 702
        Height = 107
        TabOrder = 3
        object Label58: TLabel
          Left = 0
          Top = 0
          Width = 36
          Height = 13
          Caption = 'Buscar:'
        end
        object Label59: TLabel
          Left = 9
          Top = 40
          Width = 75
          Height = 13
          Caption = 'Data valida'#231#227'o:'
        end
        object Label60: TLabel
          Left = 49
          Top = 72
          Width = 41
          Height = 13
          Caption = 'Arquivo:'
        end
        object Edit1: TEdit
          Left = 96
          Top = 67
          Width = 361
          Height = 21
          TabOrder = 0
        end
        object dataxml: TDateEdit
          Left = 96
          Top = 32
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object BitBtn5: TBitBtn
          Left = 463
          Top = 64
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 2
          OnClick = BitBtn5Click
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 952
    Height = 69
    Align = alTop
    Color = 3155860
    ParentBackground = False
    TabOrder = 1
    object Image2: TImage
      Left = 7
      Top = 11
      Width = 226
      Height = 46
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000D70000
        0031080600000049603C2A0000000467414D410000B18E7CFB519300000A2F69
        4343504943432050726F66696C65000048C79D96775454D71687CFBD777AA1CD
        30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A8404411110145
        90A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979EFE5
        E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A38D3
        578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809FC8B
        DE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9224E
        CA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951CCEC
        641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B5833
        4998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F17200
        70A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCDA07B
        723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9A222
        5B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787EDAFFC
        52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBFF1C5
        7968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D23F1
        76BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4FF38
        F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379FFA9
        89FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950DCF5
        DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE712184C67
        09F9198B6BE26B09D08000240115C80315A001748121300356C016380237B002
        F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA412368
        01274007380D2E80CBE03AB809EE800760048C83E76006BC01F3100461213244
        81E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016A808
        2A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9B032
        AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005F83A
        7C071E819FC3B3084088080D51430C1106E282F82111482CC247362085483952
        87B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A436D40
        15A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C3A13
        5D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A4C31
        E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31EC39
        EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879BC14
        5E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F274813740876846042026133
        A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE23C9
        90F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9917C
        91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B95632
        47B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4A9B4
        9F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1A0B8
        5058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2A1B2
        59B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B26349
        CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE41F29
        A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F4950295
        D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256654A
        95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15AAD5A
        BFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D3573357B3
        59F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E8E4E
        B3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF4AFF
        86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1A811
        CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C5798
        E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283CBEE
        5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F4631
        E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED759CE
        595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8E1C8
        766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EAE15A
        E8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E76ECF
        612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C61DF
        15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F5015
        F034D0343037B03788121415D414F426D839B824F841886E8830A43B54323432
        B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3ABDD
        56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A198D8E
        0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63C729
        E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A12E6
        12FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483D482
        D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319F619
        55196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B572D
        7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B7FC8
        33C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D56C47
        6DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2AB85
        9DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65F4B2
        C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C657DE
        A972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED67AD4
        B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C1C0D
        3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5ADB4D6
        A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1F6EC
        F6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E2939
        4B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013DFD97
        BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D167D
        6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEBF26D
        AFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0E921
        FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1C69E
        FF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EAF3F9
        E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8EBC5E
        F6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC878A
        8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E00000009704859730000
        2E2300002E230178A53F7600000021744558744372656174696F6E2054696D65
        00323031383A30353A32332031343A34373A31324C45B50600000D1349444154
        78DAED5D0B7414D519CEEE6637C92E24814078A8A194C8E104D1027A14A4F290
        52B08A45E84B45F171F4684B39557BB06A1308A23DEDD116B40F6BEDA9544B55
        40AAA02D54285810AD152C1A6909AF4DE0249B40DCBC36D93CE8F79BBB7176B2
        B33BF7CE9DCD26DCEF9C7B6667F6FE8F7BE77E3373EFFCF78EE3ECD9B369BD05
        D82EC5E6368EFCF7399DCE5764D80E85422333323266391C8E09D82D44CA451A
        88948EE4427222752285911A3B3B3B57B95CAE1DCC8F4DD85C90AC7AEAE8E858
        969E9EBE3759F614E4C01121171AADA3BDBDFD2134B6C9D8CD43F2A67535AE76
        A436A40EF69B5208A90EB23B20B75ED438E4D7C2DE52B3F9D1C097C0DEF3A2F6
        4E9F3E3D70D0A0418B61F376EC4EC2D6C161FB16D8FE23F3FB30440BC5AB9D0F
        20D73520F69BC9B2A72007DDE46A6B6B9BE876BB3FE01186ECBB686457881A4F
        16B92A2B2BB3468E1CB914B61E441A24E2AB2297022FBAC985C673131ACF0B3C
        C2907D198DEC5BA2C693412EDC8DAF44C3FC835532287229F0424BAEEFA2F13C
        CD230CD957D1C86E10356E37B9907F39F4AF467259AD28452E055E68C9F57D34
        9E353CC2903D8E46365AD4B85DE4DAB061836BE1C285BF657D2B2950E452E085
        965CDF16199CA0C72ED1912C3BC8B572E54A677171F173D0BB446645297229F0
        423BA07191DBED3EC8AB00F26FA0A17D4DC4B81DE4824E7A0C7C487645297229
        F0226A281E27B1028DE63C5E2590FB3A4EFE5F78E564930B7EDC80FF37F00CB1
        73D856E452E08243FB1219BF9F41A3B98B5709E46A5A5A5A266665659DE49493
        46AEA6A6A67CAFD7FB31F40DB1A3A214B9147811452EF49FA6A1FFF4B68822E8
        D973E4C891AB0B0B0B5B3964A4910BBA5E84AE1BEDAA28452E055E44918B3D1A
        96A1E18C1351065DEB207B2B477E29E4C24561321ADFBF643C0EC2A74A6C8E20
        352165218D421A8DE3B72A7229F0C0A18F2D141D35D4C83F0CF9C7CCE42D2F2F
        CFC8C9C9719BD55D5656D6327DFAF476FD7194612B1AFB35A23E43BE0CE9D7AD
        ADAD9BF1685BA9FFBFA1A1210F654AF7F97CD5B48F7C5F843D8FA83D5ED4D5D5
        550C1B36AC2959F614E4A007B9D8DDEB25349E6F88283CDB0522E8CBC9284038
        1C1EEB76BB3F81BF4E015F4F5330F0AA55AB5E282929E94C86BF0AE70E1CB1A2
        E2ABABAB7DF9F9F9EFB088716E406708049D85FEDB3EBB0B005B3F839F0F08C8
        1DC01DE8FACCCC4CBFDD3E2A9C9B88492E02EE0817E28E40FD981C11C5D05B8D
        C67B391AEF09BB9C6777D9A3F0F10B9CBE1D080683337273738376F9A6A06048
        2E021AEEF568C0AF8A0E1450230E0402D3ECEA2FB4B5B55D820BC0014E9F4E83
        F41341FA0A3B7C525088202EB908F8FF5170EB615103905F6FD710796767E7F7
        40FEA738652CCD0923503F2FAD6B326552E0F7FB8FF1BCE250480D2424170B82
        A510A739A246D0A0EF4183FE8DFE386CBF8ECD6CB37A70279D817EDCBB1A79AE
        775B342A585A5A3AC1EAE005F434C1AED78A0E1EE00EFD25DCA13F4C963D0539
        48482E020D450F1830E0DF6850A3448CC046334DC6F4783CFFD31DFF1B0F69DB
        DBDBA768074920FF3E9B396D0A20F952DE693506E551E452480853E422A0615F
        EA72B9DE46A3CA1431043B6F4176B6EE985572D5413ED7AC7C4B4B4B818CBE96
        229782199826170157FE3B71E57F56D4983ED2C00AB9CACACA3C4545453CA156
        2761EB7C1995A6C8A560065CE42220FFB36858778A1883EC5EC85EA9D9172657
        7D7DFDA0ECECEC331CB6F7C0D634199596CAE4421D5D8E0BD8CD36B9D28AB21F
        0A8542AFF97CBE40AC0CF47A64E7CE9DAEA143873A91A77BD0075D0227CE5D8F
        4120F8EAA4840B6FE7E0C183EBCD3A023F56A4752DA424529F6BE1CF619BEAA8
        1BDCE43A71E244664141013D1E5E2A62503BB9D20AB99A9A9A86E1E455999585
        ADED56066574BA52965C2CC0D8D268A889F2B760F3F3DDBB7717EBC3D1E0EB78
        F8FA91A05E7AA1BF391C0E3F959191519E20EF51D159F014E00042EFB4B38E08
        DCE422A0EF320A85A7010EEE2B071BE1BB99FD1626172D93969797C773A58BBA
        6B5AC1B94E2E4D3D6C01C1166809065F27C0D7FF58D44B6B453EB97FFFFEE249
        9326B519E4E99FE4620E7E0527F14DDEC55F2834AAB6B6361F8F0D8D56C8C5A6
        F3B7998D2984AD2AE41D21A3D214B9A2EC95C05EA9C657EE17FB46403DEF0E06
        83F36345D2F46B72B1020A4DA947E1AE45E1B64A182DF443DEF4CAB714CD8E3B
        EE31AB95A6C8155D170D0D0D0591FEAFC8FA9709F4BF5755553573C48811CDBA
        E3FD9B5C35353503860C19729CF7F1100DA0180D60950472ED84FC0C0EBBF7C3
        EE93562B4D91AB87CD1B23D394686E1DCED1FB32F5A3BE9FD72F38D4EFC9C50A
        F9040A791FA70C2DD2799B0472FD02F2CB38EC966FDCB871DCA2458B3A2C96D9
        34B99097A2419ACDE48D53EEA966170F8A472EF84204AD63BB194897A11CE906
        79E985FF29B64B73EE261BBDE384CD15B0B9927E5344CF9C397372D078D3E991
        9DA574F6F8EE64F6BA7F2365419674DF8B343E4E1D5074CE2E8D7FDBB1117AB5
        02722DD146FAD805CBE482A3F350916FF0C850D8132A72BE5572E1A47E1327E6
        251EDB46A1589CFEF390EB4832672DC72317F59371AEFEAEC97B3BF23E67A0E7
        2EED3B4D0A3D33BADAA38C8F5B5D718B26CE8E1933668B3ED0406383FEBB2E59
        F5280396C98547968B795F70C2E63654D457AD928B2D4A738A67500536EBC3E1
        F0E44443BD0974F40B72A13EAFD2DE0D747AA2C8457724DCF1DB63E595412E42
        BCB62473402A599071E79A8D13B69D47267215B24A2EA6EB1FD0319DD3FE7F9B
        9B9BA747A6EDF3E25C24178DCE969494C47C9C96452EA6AB26D60A5E381EC0F1
        61917D9CBFE1468FB48970F2E4C99A64CC3290D1E7E2EAF73099DF43E60E19E4
        628DE01901BF0FE34A39DFE3F11C129055E48A2EA34C721D8B35F915C76B717C
        A866BF7F0F68D03B0D8AB6E01D39C3897B04276EB50C72B125092A7902782320
        9220151F3A74E8E9A2A2A2308F9C22575419BBC945239BD079377E7A58A24110
        1A3C7121DF9FA0F3C504F56544AE33DA516959E4423969206571029110F2CCD2
        D8DE86CD8509CEC31DDCE4A26F5D0D1F3EFC1238B710BBF78A0C49B34190BFCA
        20172B2C9DDC07452A9AC95720FD0E7E6D465FEC202A26AA525A5B5B6969B58E
        C87A1B9CE43AEAF7FBC79BC96B84D1A347B7EA7D32426F930B3616C0C626039D
        9FBD8249505F46E4FA54FB6D3559E4829E9F40CFF2043E3522CF40CD3E2D3E5B
        94C0C6750E74EE27A2825760BF20ADEBB3A5343810F9A264E4AB9234CD9FAE40
        F92277089DA3A140203094A6FECB22573018CCCDCECEA63BC4602BBE31FF1AB0
        A1753F684B043A9FAE98BA4541FBE47BAE24916BBED1D2E616C955AF5DCFA54F
        900B05FE2932FE50C44911C0B10D9165DB64918B40B7779CB85FDAE5B7229769
        7251F4CDEB063AAD904BDFC0A5908BDA14BD674B740AB4FD7A1E72D1DBEF5B44
        9C14010AF3659CD07F3227A5918BAD0445133267DAE1B722976972D19CBDAD06
        3AAD90AB19C77D9AFD98E4A2810F6C3E8D67033E2E4EC6B27F44AE8D56BE0EC9
        03FD8B4099E4228442A1F3D02FA2A9FFC365FBAEC8659A5C738D96DE3649AE6A
        E8CA8F71BC85A23934FB31C9051BCB6063ADDC33100D332B2ED32AC944AE2DA2
        DFD7E2017548D1BF9BA40D9C954D2E96672A3520ED899001452ED3E4221BDB0C
        74C62517DA4791C7E3F9D8C04618363234FBBD462E0AA383ED31F1F2503D10B9
        68DAC85C9B9D81994E1A457A4D775C3AB958C1E6A282376B4F8655A40AB9D868
        6D8FD1C7E3C78F1FA417A32940AEABB536743A0DC9C51EEBE9296A81818DA857
        1A7D855CB46CDA3C1B1D21DC1D6BED0DBBC8C50A371B365FB13ABA1941AA90CB
        284428329D2605C83513367618E42BF5FBFD8FD3947FF89A4ED3FB29A0D7EBF5
        5E84DFCBE37D4C03FE3C007F9ED0E8EA13E4B2F48590044E84902838F4CF06FF
        DB462E021E33C6A121D247252EB65A16452E73E48AA75314F41EB2AAAA6A9C76
        4E57AA900BBFDB917A8CB6A3ED6D22725184FAB53638B00B0DE11E5CA53E8993
        C756721158B4F58FF1F37ED165E1088A5CA6C925FC014503DDD4A598A7EFC7A5
        10B95A8CFAF744AE4D46CFB902462918722B74FE0A95F19689FCB6932B02B6EE
        C723F87993C86087229769724D85CE3D32CACDBA143F801F6B62FC972AE4A23A
        E9D1E5C1795A43E47A14BF7F14A9EFB4CFA33228DCC699F6F99AE8743CCCB621
        A41A245A5EAB8626D6217D100804F6EAA76327703269E48A80560FF6F97CDF61
        AF04AE327B3753E4324DAE2BA0F31DAB6566719F1418B0CEE0FF942097113EEB
        73516C21ABB8A47FFCAD37C8A5C5AE5DBBD2A74C9932160DAE900D7C5004808F
        450250A80D8D36D2C5A5168D7A5DE411973EE6808DD07407113436366ED2AC51
        91EAE4BA0C3ADF132D2B456260B31EE5591DEFF3537D865CBD055AE34E1B8C99
        08C160F0C3BCBCBC865E733805402B0DA30F39527F7CDFBE7D95B4C4194D2005
        C9C6C692C57F1FE5E4E474472F9C3973069CCD8E39D8830E79B9D7EB8D5A1792
        FA53B1F2E278458408D4C7BD0048EB8A4FED71C1A63E145BFA8040BFCF82F019
        6807B49480BBAEAEEE84994F4ED1F2EA695DF1AE51409B3A9A9595752A91BC15
        F409722928F4459899A8491332FF0F057ED125707102920000000049454E44AE
        426082}
    end
    object Label46: TLabel
      Left = 239
      Top = 44
      Width = 365
      Height = 13
      Caption = 
        'Manifestos de Documentos Fiscais Eletr'#244'nicos - MDF-e .    Vers'#227'o' +
        ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblversao: TLabel
      Left = 610
      Top = 44
      Width = 7
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dsIDELocal: TDataSource
    DataSet = _dmMDFe.cdsmdfeIDE
    OnDataChange = dsIDELocalDataChange
    Left = 860
    Top = 568
  end
  object OpenDialog1: TOpenDialog
    Left = 583
    Top = 153
  end
  object PopupMenu1: TPopupMenu
    Left = 508
    Top = 365
    object DAMDFe1: TMenuItem
      Caption = 'DAMDFe'
      OnClick = DAMDFe1Click
    end
    object RelatriodeMDFe1: TMenuItem
      Caption = 'Relat'#243'rio de MDF-e'
      OnClick = RelatriodeMDFe1Click
    end
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    ProjectFile = 'C:\iqsistemas\SICEMDF-e\Report\impRelMDFe.rav'
    Left = 300
    Top = 605
    RaveBlobNew = {
      8247000062F8613AB359E5405241561AB0AD01000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      00000000000080FF3FBFED84B000000006BFED84B01244006100740061005600
      690065007700310009446174615669657731BFED84B01A540052006100760065
      00440061007400610056006900650077000D5452617665446174615669657700
      050F000000BFED84B01A54005200610076006500440061007400610056006900
      650077000D54526176654461746156696577BFED84B012440061007400610056
      0069006500770031000944617461566965773108BFED84B01A43006F006D0070
      0069006C0065004E00650065006400650064000D436F6D70696C654E65656465
      6400BFED84B00A460061006C00730065000546616C7365BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B0124400610074
      0061005600690065007700310009446174615669657731BFED84B01C43006F00
      6E006E0065006300740069006F006E004E0061006D0065000E436F6E6E656374
      696F6E4E616D6506BFED84B02852007600440061007400610053006500740043
      006F006E006E0065006300740069006F006E0031001452764461746153657443
      6F6E6E656374696F6E31BFED84B000000D00BFED84B022540052006100760065
      0049006E00740065006700650072004600690065006C00640011545261766549
      6E74656765724669656C64BFED84B01C44006100740061005600690065007700
      3100730065007200690065000E446174615669657731736572696508BFED84B0
      124600690065006C0064004E0061006D006500094669656C644E616D6506BFED
      84B00A73006500720069006500057365726965BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00A730065007200690065
      00057365726965BFED84B008530069007A0065000453697A650104BFED84B000
      000000BFED84B0225400520061007600650049006E0074006500670065007200
      4600690065006C006400115452617665496E74656765724669656C64BFED84B0
      1A4400610074006100560069006500770031006E004D00440046000D44617461
      56696577316E4D444608BFED84B0124600690065006C0064004E0061006D0065
      00094669656C644E616D6506BFED84B0086E004D0044004600046E4D4446BFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B0086E004D0044004600046E4D4446BFED84B008530069007A0065000453697A
      650104BFED84B000000000BFED84B0225400520061007600650049006E007400
      65006700650072004600690065006C006400115452617665496E746567657246
      69656C64BFED84B02844006100740061005600690065007700310063006F006E
      00740072006F006C0065004E004600450014446174615669657731636F6E7472
      6F6C654E464508BFED84B0124600690065006C0064004E0061006D0065000946
      69656C644E616D6506BFED84B01663006F006E00740072006F006C0065004E00
      460045000B636F6E74726F6C654E4645BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B01663006F006E00740072006F00
      6C0065004E00460045000B636F6E74726F6C654E4645BFED84B008530069007A
      0065000453697A650104BFED84B000000000BFED84B020540052006100760065
      0053007400720069006E0067004600690065006C006400105452617665537472
      696E674669656C64BFED84B01C44006100740061005600690065007700310063
      0068004E00460065000E44617461566965773163684E466508BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B00A
      630068004E00460065000563684E4665BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00A630068004E00460065000563
      684E4665BFED84B008530069007A0065000453697A65015ABFED84B000000000
      BFED84B0205400520061007600650053007400720069006E0067004600690065
      006C006400105452617665537472696E674669656C64BFED84B0284400610074
      0061005600690065007700310053006500670043006F00640042006100720072
      00610014446174615669657731536567436F64426172726108BFED84B0124600
      690065006C0064004E0061006D006500094669656C644E616D6506BFED84B016
      53006500670043006F006400420061007200720061000B536567436F64426172
      7261BFED84B010460075006C006C004E0061006D0065000846756C6C4E616D65
      06BFED84B01653006500670043006F006400420061007200720061000B536567
      436F644261727261BFED84B008530069007A0065000453697A65014ABFED84B0
      00000000BFED84B0225400520061007600650049006E00740065006700650072
      004600690065006C006400115452617665496E74656765724669656C64BFED84
      B02A4400610074006100560069006500770031007400700055006E0069006400
      5400720061006E0073007000154461746156696577317470556E69645472616E
      737008BFED84B0124600690065006C0064004E0061006D006500094669656C64
      4E616D6506BFED84B0187400700055006E00690064005400720061006E007300
      70000C7470556E69645472616E7370BFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B0187400700055006E006900640054
      00720061006E00730070000C7470556E69645472616E7370BFED84B008530069
      007A0065000453697A650104BFED84B000000000BFED84B02054005200610076
      00650053007400720069006E0067004600690065006C00640010545261766553
      7472696E674669656C64BFED84B02A4400610074006100560069006500770031
      006900640055006E00690064005400720061006E007300700015446174615669
      6577316964556E69645472616E737008BFED84B0124600690065006C0064004E
      0061006D006500094669656C644E616D6506BFED84B0186900640055006E0069
      0064005400720061006E00730070000C6964556E69645472616E7370BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B018
      6900640055006E00690064005400720061006E00730070000C6964556E696454
      72616E7370BFED84B008530069007A0065000453697A650110BFED84B0000000
      00BFED84B0205400520061007600650053007400720069006E00670046006900
      65006C006400105452617665537472696E674669656C64BFED84B02A44006100
      740061005600690065007700310063006F006400690067006F00660069006C00
      690061006C0015446174615669657731636F6469676F66696C69616C08BFED84
      B0124600690065006C0064004E0061006D006500094669656C644E616D6506BF
      ED84B01863006F006400690067006F00660069006C00690061006C000C636F64
      69676F66696C69616CBFED84B010460075006C006C004E0061006D0065000846
      756C6C4E616D6506BFED84B01863006F006400690067006F00660069006C0069
      0061006C000C636F6469676F66696C69616CBFED84B008530069007A00650004
      53697A65010CBFED84B000000000BFED84B01A54005200610076006500420043
      0044004600690065006C0064000D54526176654243444669656C64BFED84B018
      44006100740061005600690065007700310076004E0046000C44617461566965
      7731764E4608BFED84B0124600690065006C0064004E0061006D006500094669
      656C644E616D6506BFED84B00676004E00460003764E46BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B00676004E0046
      0003764E46BFED84B008530069007A0065000453697A650122BFED84B01A4400
      6900730070006C006100790046006F0072006D00610074000D446973706C6179
      466F726D617406BFED84B00C2300230030002E0030003000062323302E3030BF
      ED84B000000000BFED84B0205400520061007600650053007400720069006E00
      67004600690065006C006400105452617665537472696E674669656C64BFED84
      B016440061007400610056006900650077003100750066000B44617461566965
      7731756608BFED84B0124600690065006C0064004E0061006D00650009466965
      6C644E616D6506BFED84B00475006600027566BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00475006600027566BFED
      84B008530069007A0065000453697A650106BFED84B000000000BFED84B02254
      00520061007600650049006E00740065006700650072004600690065006C0064
      00115452617665496E74656765724669656C64BFED84B0264400610074006100
      5600690065007700310063006F0064004D0075006E0044006500730074001344
      6174615669657731636F644D756E4465737408BFED84B0124600690065006C00
      64004E0061006D006500094669656C644E616D6506BFED84B01463006F006400
      4D0075006E0044006500730074000A636F644D756E44657374BFED84B0104600
      75006C006C004E0061006D0065000846756C6C4E616D6506BFED84B01463006F
      0064004D0075006E0044006500730074000A636F644D756E44657374BFED84B0
      08530069007A0065000453697A650104BFED84B000000000BFED84B020540052
      0061007600650053007400720069006E0067004600690065006C006400105452
      617665537472696E674669656C64BFED84B02244006100740061005600690065
      00770031006D0075006E0069004400650073007400114461746156696577316D
      756E694465737408BFED84B0124600690065006C0064004E0061006D00650009
      4669656C644E616D6506BFED84B0106D0075006E006900440065007300740008
      6D756E6944657374BFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B0106D0075006E0069004400650073007400086D756E
      6944657374BFED84B008530069007A0065000453697A65013EBFED84B0000000
      00BFED84B0205400520061007600650053007400720069006E00670046006900
      65006C006400105452617665537472696E674669656C64BFED84B02244006100
      74006100560069006500770031007400690070006F006E006F00740061001144
      61746156696577317469706F6E6F746108BFED84B0124600690065006C006400
      4E0061006D006500094669656C644E616D6506BFED84B0107400690070006F00
      6E006F0074006100087469706F6E6F7461BFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B0107400690070006F006E006F
      0074006100087469706F6E6F7461BFED84B008530069007A0065000453697A65
      0104BFED84B000000004BFED84B00E5200650070006F00720074003100075265
      706F7274310044360000BFED84B00A5000610067006500310005506167653101
      00BFED84B00A5000610067006500310005506167653101BFED84B00A50006100
      67006500310005506167653100BFED84B0165400520061007600650052006500
      70006F00720074000B54526176655265706F7274BFED84B00E5200650070006F
      00720074003100075265706F72743108BFED84B01A43006F006D00700069006C
      0065004E00650065006400650064000D436F6D70696C654E656564656400BFED
      84B00A460061006C00730065000546616C7365BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00E5200650070006F0072
      0074003100075265706F727431BFED84B0124600690072007300740050006100
      670065000946697273745061676500BFED84B01A5200650070006F0072007400
      31002E00500061006700650031000D5265706F7274312E5061676531BFED84B0
      1450006100720061006D00650074006500720073000A506172616D6574657273
      08BFED84B00000BFED84B00C5000490056006100720073000650495661727308
      BFED84B00000BFED84B0000000009C34000000BFED84B0125400520061007600
      6500500061006700650009545261766550616765BFED84B00A50006100670065
      00310005506167653108BFED84B01A43006F006D00700069006C0065004E0065
      0065006400650064000D436F6D70696C654E656564656400BFED84B00A460061
      006C00730065000546616C7365BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00A500061006700650031000550616765
      31BFED84B006420069006E000342696E0201BFED84B01247007200690064004C
      0069006E006500730009477269644C696E65730105BFED84B016470072006900
      6400530070006100630069006E0067000B4772696453706163696E670500D0CC
      CCCCCCCCCCFB3FBFED84B0164F007200690065006E0074006100740069006F00
      6E000B4F7269656E746174696F6E00BFED84B01270006F004400650066006100
      75006C00740009706F44656661756C74BFED84B0145000610067006500480065
      0069006700680074000A506167654865696768740500000000000000B00240BF
      ED84B01250006100670065005700690064007400680009506167655769647468
      0500000000000000880240BFED84B01250006100700065007200530069007A00
      650009506170657253697A650201BFED84B01450006100720061006D00650074
      006500720073000A506172616D657465727308BFED84B00000BFED84B00C5000
      490056006100720073000650495661727308BFED84B00000BFED84B000000100
      BFED84B0165400520061007600650052006500670069006F006E000B54526176
      65526567696F6EBFED84B00E52006500670069006F006E00310007526567696F
      6E3108BFED84B00C480065006900670068007400064865696768740500D0CCCC
      CCCCCCAC0240BFED84B0084C00650066007400044C656674050000CDCCCCCCCC
      CCFB3FBFED84B00654006F00700003546F70050080CCCCCCCCCCCCFB3FBFED84
      B00A570069006400740068000557696474680500D0CCCCCCCCCC840240BFED84
      B01A43006F006C0075006D006E00530070006100630069006E0067000D436F6C
      756D6E53706163696E670500000000000000000000BFED84B000000300BFED84
      B01254005200610076006500420061006E00640009545261766542616E64BFED
      84B00A420061006E00640031000542616E643108BFED84B00C41006E00630068
      006F00720006416E63686F720103BFED84B012420061006E0064005300740079
      006C0065000942616E645374796C6508BFED84B0105000720069006E0074004C
      006F006300085072696E744C6F6307BFED84B01870006C0042006F0064007900
      4800650061006400650072000C706C426F6479486561646572BFED84B00000BF
      ED84B0105000720069006E0074004F0063006300085072696E744F636307BFED
      84B00E70006F004600690072007300740007706F4669727374BFED84B0127000
      6F004E0065007700500061006700650009706F4E657750616765BFED84B00000
      BFED84B00000BFED84B01C43006F006E00740072006F006C006C006500720042
      0061006E0064000E436F6E74726F6C6C657242616E6400BFED84B01244006100
      74006100420061006E0064003100094461746142616E6431BFED84B00C480065
      006900670068007400064865696768740500A0999999999999FE3FBFED84B01A
      4D0069006E004800650069006700680074004C006500660074000D4D696E4865
      696768744C6566740500000000000000000000BFED84B01A50006F0073006900
      740069006F006E00560061006C00750065000D506F736974696F6E56616C7565
      0500000000000000000000BFED84B000000900BFED84B0125400520061007600
      6500540065007800740009545261766554657874BFED84B00A54006500780074
      00310005546578743108BFED84B00846006F006E00740004466F6E7408BFED84
      B00E430068006100720073006500740007436861727365740101BFED84B00A43
      006F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E
      616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0085300
      69007A0065000453697A650112BFED84B00A5300740079006C00650005537479
      6C6507BFED84B00C6600730042006F006C006400066673426F6C64BFED84B000
      00BFED84B00000BFED84B01646006F006E0074004A0075007300740069006600
      79000B466F6E744A75737469667900BFED84B00C70006A004C00650066007400
      06706A4C656674BFED84B0084C00650066007400044C6566740500C0CCCCCCCC
      CCCCFB3FBFED84B0085400650078007400045465787406BFED84B02452006500
      6C0061007400F300720069006F0020006400650020004D00440046002D006500
      1252656C6174F372696F206465204D44462D65BFED84B00654006F0070000354
      6F700500000000000000000000BFED84B00A5700690064007400680005576964
      74680500000000000000C00140BFED84B000000000BFED84B01A540052006100
      76006500440061007400610054006500780074000D5452617665446174615465
      7874BFED84B01244006100740061005400650078007400310009446174615465
      78743108BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800
      6100720073006500740007436861727365740101BFED84B00A43006F006C006F
      00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED
      84B00A41007200690061006C0005417269616CBFED84B008530069007A006500
      0453697A65010ABFED84B00A5300740079006C006500055374796C6507BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B00C70006A004C0065006600
      740006706A4C656674BFED84B0084C00650066007400044C6566740500D0CCCC
      CCCCCC8CFE3FBFED84B0085400650078007400045465787406BFED84B0185000
      6100720061006D002E00660069006C00690061006C000C506172616D2E66696C
      69616CBFED84B00654006F00700003546F7005007014AE47E17A94FD3FBFED84
      B00A57006900640074006800055769647468050000000000000080FF3FBFED84
      B01244006100740061004600690065006C00640009446174614669656C6406BF
      ED84B01850006100720061006D002E00660069006C00690061006C000C506172
      616D2E66696C69616CBFED84B000000000BFED84B01254005200610076006500
      540065007800740009545261766554657874BFED84B00A540065007800740036
      0005546578743608BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A65010ABFED84B00A5300740079006C006500055374796C65
      07BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B00C70006A004C00
      65006600740006706A4C656674BFED84B0084C00650066007400044C65667405
      00C0CCCCCCCCCCCCFB3FBFED84B0085400650078007400045465787406BFED84
      B00E460069006C00690061006C003A000746696C69616C3ABFED84B00654006F
      00700003546F700500A0999999999999FD3FBFED84B00A570069006400740068
      000557696474680500D0CCCCCCCCCCCCFD3FBFED84B000000000BFED84B01454
      00520061007600650048004C0069006E0065000A5452617665484C696E65BFED
      84B00C48004C0069006E006500310006484C696E653108BFED84B00C48006500
      6900670068007400064865696768740500000000000000000000BFED84B0084C
      00650066007400044C6566740500D0CCCCCCCCCCCCFB3FBFED84B0124C006900
      6E00650057006900640074006800094C696E6557696474680500000000000000
      80FF3FBFED84B0084E00450053005700044E45535700BFED84B00A460061006C
      00730065000546616C7365BFED84B00654006F00700003546F70050000000000
      000080FE3FBFED84B00A570069006400740068000557696474680500A0999999
      9999810240BFED84B000000000BFED84B01A5400520061007600650044006100
      7400610054006500780074000D54526176654461746154657874BFED84B01244
      00610074006100540065007800740039000944617461546578743908BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A65010ABF
      ED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B000
      00BFED84B01646006F006E0074004A007500730074006900660079000B466F6E
      744A75737469667900BFED84B00C70006A004C0065006600740006706A4C6566
      74BFED84B0084C00650066007400044C6566740500D0CCCCCCCCCCBC0140BFED
      84B0085400650078007400045465787406BFED84B0245200650070006F007200
      74002E00430075007200720065006E0074005000610067006500125265706F72
      742E43757272656E7450616765BFED84B00654006F00700003546F700500D0CC
      CCCCCCCCCCFB3FBFED84B00A5700690064007400680005576964746805008099
      9999999999FE3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B0245200650070006F00720074002E0043007500
      7200720065006E0074005000610067006500125265706F72742E43757272656E
      7450616765BFED84B000000000BFED84B01A5400520061007600650044006100
      7400610054006500780074000D54526176654461746154657874BFED84B01444
      006100740061005400650078007400310030000A4461746154657874313008BF
      ED84B00846006F006E00740004466F6E7408BFED84B00E430068006100720073
      006500740007436861727365740101BFED84B00A43006F006C006F0072000543
      6F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100
      7200690061006C0005417269616CBFED84B008530069007A0065000453697A65
      010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED
      84B00000BFED84B01646006F006E0074004A007500730074006900660079000B
      466F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A
      4C656674BFED84B0084C00650066007400044C6566740500B8EB51B81E85DB01
      40BFED84B0085400650078007400045465787406BFED84B0225200650070006F
      00720074002E0054006F00740061006C0050006100670065007300115265706F
      72742E546F74616C5061676573BFED84B00654006F00700003546F700500D0CC
      CCCCCCCCCCFB3FBFED84B00A5700690064007400680005576964746805000000
      0000000080FF3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B0225200650070006F00720074002E0054006F00
      740061006C0050006100670065007300115265706F72742E546F74616C506167
      6573BFED84B000000000BFED84B0125400520061007600650054006500780074
      0009545261766554657874BFED84B00A54006500780074003700055465787437
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C6566740500000000000000
      B00140BFED84B0085400650078007400045465787406BFED84B0085000E10067
      003A000450E1673ABFED84B00654006F00700003546F700500D0CCCCCCCCCCCC
      FB3FBFED84B00A570069006400740068000557696474680500A0285C8FC2F5A8
      FD3FBFED84B000000000BFED84B0125400520061007600650054006500780074
      0009545261766554657874BFED84B00A54006500780074003800055465787438
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A65010ABFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C6566740500A8EB51B81E85
      D30140BFED84B0085400650078007400045465787406BFED84B0046400650002
      6465BFED84B00654006F00700003546F700500D0CCCCCCCCCCCCFB3FBFED84B0
      0A57006900640074006800055769647468050040FFFFFFFFFFFFFC3FBFED84B0
      00000000BFED84B0125400520061007600650054006500780074000954526176
      6554657874BFED84B00A5400650078007400390005546578743908BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A65010ABFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C6566740500383333333333B30040BFED84
      B0085400650078007400045465787406BFED84B04E2A0053006F006D0065006E
      007400650020004D00440046002D006500200063006F006D0020007300740061
      0074007500730020003100300030002C00310030003100200065002000310033
      003200272A536F6D656E7465204D44462D6520636F6D20737461747573203130
      302C313031206520313332BFED84B00654006F00700003546F700500A0999999
      999999FD3FBFED84B00A57006900640074006800055769647468050030333333
      3333A30140BFED84B000000000BFED84B0125400520061007600650042006100
      6E00640009545261766542616E64BFED84B00A420061006E0064003200054261
      6E643208BFED84B00C41006E00630068006F00720006416E63686F720103BFED
      84B012420061006E0064005300740079006C0065000942616E645374796C6508
      BFED84B0105000720069006E0074004C006F006300085072696E744C6F6307BF
      ED84B01A70006C00470072006F00750070004800650061006400650072000D70
      6C47726F7570486561646572BFED84B00000BFED84B00000BFED84B01C43006F
      006E00740072006F006C006C0065007200420061006E0064000E436F6E74726F
      6C6C657242616E6400BFED84B0124400610074006100420061006E0064003100
      094461746142616E6431BFED84B01A470072006F007500700044006100740061
      0056006900650077000D47726F7570446174615669657700BFED84B012440061
      00740061005600690065007700310009446174615669657731BFED84B0104700
      72006F00750070004B00650079000847726F75704B657906BFED84B0086E004D
      0044004600046E4D4446BFED84B00C4800650069006700680074000648656967
      68740500A0999999999999FE3FBFED84B01A4D0069006E004800650069006700
      680074004C006500660074000D4D696E4865696768744C656674050000000000
      0000000000BFED84B01A50006F0073006900740069006F006E00560061006C00
      750065000D506F736974696F6E56616C75650500000000000000000000BFED84
      B000000500BFED84B01254005200610076006500540065007800740009545261
      766554657874BFED84B00A5400650078007400320005546578743208BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A65010BBF
      ED84B00A5300740079006C006500055374796C6507BFED84B00C660073004200
      6F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C6566740500E0CCCCCCCCCCCCFB3FBFED84B0085400650078
      007400045465787406BFED84B00E4E00FA006D00650072006F003A00074EFA6D
      65726F3ABFED84B00654006F00700003546F700500D0CCCCCCCCCCCCFC3FBFED
      84B00A570069006400740068000557696474680500A0999999999999FE3FBFED
      84B000000000BFED84B01A540052006100760065004400610074006100540065
      00780074000D54526176654461746154657874BFED84B0124400610074006100
      540065007800740037000944617461546578743708BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A65010BBFED84B00A530074
      0079006C006500055374796C6507BFED84B00C6600730042006F006C00640006
      6673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C6566740500B047E17A14AEC7FE3FBFED84B008540065007800740004546578
      7406BFED84B0086E004D0044004600046E4D4446BFED84B00654006F00700003
      546F700500D0CCCCCCCCCCCCFC3FBFED84B00A57006900640074006800055769
      6474680500A0999999999999FE3FBFED84B01244006100740061004600690065
      006C00640009446174614669656C6406BFED84B0086E004D0044004600046E4D
      4446BFED84B01044006100740061005600690065007700084461746156696577
      00BFED84B0124400610074006100560069006500770031000944617461566965
      7731BFED84B000000000BFED84B0125400520061007600650054006500780074
      0009545261766554657874BFED84B00A54006500780074003300055465787433
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A65010BBFED84B00A5300740079006C006500055374796C6507BFED84B00C66
      00730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED
      84B01646006F006E0074004A007500730074006900660079000B466F6E744A75
      737469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED
      84B0084C00650066007400044C6566740500D0CCCCCCCCCCCCFF3FBFED84B008
      5400650078007400045465787406BFED84B00C5300E9007200690065003A0006
      53E97269653ABFED84B00654006F00700003546F700500D0CCCCCCCCCCCCFC3F
      BFED84B00A570069006400740068000557696474680500E051B81E85EBD1FD3F
      BFED84B000000000BFED84B01A54005200610076006500440061007400610054
      006500780074000D54526176654461746154657874BFED84B012440061007400
      6100540065007800740038000944617461546578743808BFED84B00846006F00
      6E00740004466F6E7408BFED84B00E4300680061007200730065007400074368
      61727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED
      84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C00
      05417269616CBFED84B008530069007A0065000453697A65010BBFED84B00A53
      00740079006C006500055374796C6507BFED84B00C6600730042006F006C0064
      00066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074
      004A007500730074006900660079000B466F6E744A75737469667900BFED84B0
      0C70006A004C0065006600740006706A4C656674BFED84B0084C006500660074
      00044C6566740500A0F5285C8FC2850040BFED84B00854006500780074000454
      65787406BFED84B00A73006500720069006500057365726965BFED84B0065400
      6F00700003546F700500D8CCCCCCCCCCCCFC3FBFED84B00A5700690064007400
      6800055769647468050000000000000080FE3FBFED84B0124400610074006100
      4600690065006C00640009446174614669656C6406BFED84B00A730065007200
      69006500057365726965BFED84B0104400610074006100560069006500770008
      446174615669657700BFED84B012440061007400610056006900650077003100
      09446174615669657731BFED84B000000000BFED84B012540052006100760065
      00540065007800740009545261766554657874BFED84B00A5400650078007400
      340005546578743408BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A65010ABFED84B00A5300740079006C006500055374796C
      6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      0500C0CCCCCCCCCCCCFB3FBFED84B0085400650078007400045465787406BFED
      84B081565B002000200020002000200020002000200020002000200020002000
      2000430068006100760065002D004E0046002D00650020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020005D005B00200020002000560061006C006F00
      7200200052002400200020002000200020005D005B0020005500460020006400
      6500730020002E005D005B0020004D0075006E0069006300ED00700069006F00
      200044006500730074002E002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020005D005B00
      200020005400690070006F0020004E006F007400610020005D0080AB5B202020
      202020202020202020202043686176652D4E462D652020202020202020202020
      2020202020202020202020202020202020202020202020202020202020202020
      205D5B20202056616C6F7220522420202020205D5B20554620646573202E5D5B
      204D756E6963ED70696F20446573742E20202020202020202020202020202020
      2020202020202020202020202020202020202020202020205D5B20205469706F
      204E6F7461205DBFED84B00654006F00700003546F700500D0CCCCCCCCCCCCFD
      3FBFED84B00A570069006400740068000557696474680500A099999999998102
      40BFED84B000000000BFED84B01A540052006100760065004400610074006100
      420061006E0064000D54526176654461746142616E64BFED84B0124400610074
      006100420061006E0064003100094461746142616E643108BFED84B00C41006E
      00630068006F00720006416E63686F720103BFED84B012420061006E00640053
      00740079006C0065000942616E645374796C6508BFED84B00000BFED84B01A47
      0072006F0075007000440061007400610056006900650077000D47726F757044
      6174615669657700BFED84B01244006100740061005600690065007700310009
      446174615669657731BFED84B010470072006F00750070004B00650079000847
      726F75704B657906BFED84B0086E004D0044004600046E4D4446BFED84B00C48
      0065006900670068007400064865696768740500800AD7A3703D8AFD3FBFED84
      B01A4D0069006E004800650069006700680074004C006500660074000D4D696E
      4865696768744C6566740500000000000000000000BFED84B01A50006F007300
      6900740069006F006E00560061006C00750065000D506F736974696F6E56616C
      75650500000000000000000000BFED84B01A43006F006C0075006D006E005300
      70006100630069006E0067000D436F6C756D6E53706163696E67050000000000
      0000000000BFED84B01044006100740061005600690065007700084461746156
      69657700BFED84B0124400610074006100560069006500770031000944617461
      5669657731BFED84B000000600BFED84B01A5400520061007600650044006100
      7400610054006500780074000D54526176654461746154657874BFED84B01244
      00610074006100540065007800740032000944617461546578743208BFED84B0
      0846006F006E00740004466F6E7408BFED84B00E430068006100720073006500
      740007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F
      720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069
      0061006C0005417269616CBFED84B008530069007A0065000453697A650108BF
      ED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B000
      00BFED84B01646006F006E0074004A007500730074006900660079000B466F6E
      744A75737469667900BFED84B00C70006A004C0065006600740006706A4C6566
      74BFED84B0084C00650066007400044C6566740500C0CCCCCCCCCCCCFC3FBFED
      84B0085400650078007400045465787406BFED84B00A630068004E0046006500
      0563684E4665BFED84B00654006F00700003546F700500000000000000000000
      BFED84B00A570069006400740068000557696474680500103333333333D30040
      BFED84B01244006100740061004600690065006C00640009446174614669656C
      6406BFED84B00A630068004E00460065000563684E4665BFED84B01044006100
      74006100560069006500770008446174615669657700BFED84B0124400610074
      0061005600690065007700310009446174615669657731BFED84B000000000BF
      ED84B01A54005200610076006500440061007400610054006500780074000D54
      526176654461746154657874BFED84B012440061007400610054006500780074
      0033000944617461546578743308BFED84B00846006F006E00740004466F6E74
      08BFED84B00E430068006100720073006500740007436861727365740101BFED
      84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00
      6500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84
      B008530069007A0065000453697A650108BFED84B00A5300740079006C006500
      055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E007400
      4A007500730074006900660079000B466F6E744A75737469667900BFED84B00C
      70006A004C0065006600740006706A4C656674BFED84B0084C00650066007400
      044C6566740500888FC2F5285CDF0040BFED84B0085400650078007400045465
      787406BFED84B00676004E00460003764E46BFED84B00654006F00700003546F
      700500000000000000000000BFED84B00A570069006400740068000557696474
      680500403333333333B3FE3FBFED84B01244006100740061004600690065006C
      00640009446174614669656C6406BFED84B00676004E00460003764E46BFED84
      B0104400610074006100560069006500770008446174615669657700BFED84B0
      1244006100740061005600690065007700310009446174615669657731BFED84
      B000000000BFED84B01A54005200610076006500440061007400610054006500
      780074000D54526176654461746154657874BFED84B012440061007400610054
      0065007800740034000944617461546578743408BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650108BFED84B00A53007400
      79006C006500055374796C6507BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C656674050010295C8FC2F5880140BFED84B0085400650078
      007400045465787406BFED84B00475006600027566BFED84B00654006F007000
      03546F700500000000000000000000BFED84B00A570069006400740068000557
      69647468050080CCCCCCCCCCCCFD3FBFED84B012440061007400610046006900
      65006C00640009446174614669656C6406BFED84B00475006600027566BFED84
      B0104400610074006100560069006500770008446174615669657700BFED84B0
      1244006100740061005600690065007700310009446174615669657731BFED84
      B000000000BFED84B01A54005200610076006500440061007400610054006500
      780074000D54526176654461746154657874BFED84B012440061007400610054
      0065007800740035000944617461546578743508BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650107BFED84B00A53007400
      79006C006500055374796C6507BFED84B00000BFED84B00000BFED84B0164600
      6F006E0074004A007500730074006900660079000B466F6E744A757374696679
      00BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00
      650066007400044C6566740500B0C2F5285C8F9A0140BFED84B0085400650078
      007400045465787406BFED84B0106D0075006E0069004400650073007400086D
      756E6944657374BFED84B00654006F00700003546F7005000000000000000000
      00BFED84B00A570069006400740068000557696474680500F0FFFFFFFFFF9F00
      40BFED84B01244006100740061004600690065006C0064000944617461466965
      6C6406BFED84B0106D0075006E0069004400650073007400086D756E69446573
      74BFED84B0104400610074006100560069006500770008446174615669657700
      BFED84B012440061007400610056006900650077003100094461746156696577
      31BFED84B000000000BFED84B01A540052006100760065004400610074006100
      54006500780074000D54526176654461746154657874BFED84B0124400610074
      006100540065007800740036000944617461546578743608BFED84B00846006F
      006E00740004466F6E7408BFED84B00E43006800610072007300650074000743
      6861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BF
      ED84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C
      0005417269616CBFED84B008530069007A0065000453697A650108BFED84B00A
      5300740079006C006500055374796C6507BFED84B00000BFED84B00000BFED84
      B01646006F006E0074004A007500730074006900660079000B466F6E744A7573
      7469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84
      B0084C00650066007400044C6566740500888FC2F5285CEF0140BFED84B00854
      00650078007400045465787406BFED84B0107400690070006F006E006F007400
      6100087469706F6E6F7461BFED84B00654006F00700003546F70050000000000
      0000000000BFED84B00A570069006400740068000557696474680500D0CCCCCC
      CCCCCCFD3FBFED84B01244006100740061004600690065006C00640009446174
      614669656C6406BFED84B0107400690070006F006E006F007400610008746970
      6F6E6F7461BFED84B01044006100740061005600690065007700084461746156
      69657700BFED84B0124400610074006100560069006500770031000944617461
      5669657731BFED84B000000000BFED84B0125400520061007600650054006500
      7800740009545261766554657874BFED84B00A54006500780074003500055465
      78743508BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800
      6100720073006500740007436861727365740101BFED84B00A43006F006C006F
      00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED
      84B00A41007200690061006C0005417269616CBFED84B008530069007A006500
      0453697A65010ABFED84B00A5300740079006C006500055374796C6507BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B00C70006A004C0065006600
      740006706A4C656674BFED84B0084C00650066007400044C6566740500D0CCCC
      CCCCCCCCFB3FBFED84B0085400650078007400045465787406BFED84B081882E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E0080C42E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2EBFED84B00654006F00700003546F700500508F
      C2F5285C8FFC3FBFED84B00A570069006400740068000557696474680500A099
      99999999810240BFED84B0000000}
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 404
    Top = 605
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = _dmMDFe.cdsmdfeInfDoc
    Left = 524
    Top = 605
  end
  object ACBrMDFe1: TACBrMDFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = ACBrMDFeDAMDFeRL1
    Left = 388
    Top = 373
  end
  object ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrMDFe = ACBrMDFe1
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    PrintDialog = True
    Left = 444
    Top = 373
  end
end
