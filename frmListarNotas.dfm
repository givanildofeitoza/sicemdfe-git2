object _frmListarNotas: T_frmListarNotas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 424
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 28
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label2: TLabel
      Left = 95
      Top = 8
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label3: TLabel
      Left = 197
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Filial:'
    end
    object cbofilial: TComboBox
      Left = 197
      Top = 27
      Width = 356
      Height = 21
      TabOrder = 2
    end
    object txtnumero: TEdit
      Left = 95
      Top = 27
      Width = 81
      Height = 21
      TabOrder = 1
      OnKeyPress = txtnumeroKeyPress
    end
    object txtserie: TEdit
      Left = 24
      Top = 27
      Width = 53
      Height = 21
      TabOrder = 0
      OnExit = txtserieExit
      OnKeyPress = txtserieKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 478
      Top = 50
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 383
    Width = 654
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 227
      Top = 6
      Width = 115
      Height = 25
      Caption = 'Incluir documento'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 520
      Top = 6
      Width = 115
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object gridNotas: TDBGrid
    Left = 0
    Top = 81
    Width = 654
    Height = 302
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cbdntfserie'
        Title.Caption = 'S'#233'rie'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CbdNtfNumero'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CbdxNome_dest'
        Title.Caption = 'Destinat'#225'rio'
        Width = 267
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CbdNFEChaAcesso'
        Title.Caption = 'Chave de acesso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CbdCodigoFilial'
        Title.Caption = 'Filial'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 568
    Top = 160
  end
  object qrpadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT cbdntfserie,CbdNtfNumero,CbdxNome_dest,CbdNFEChaAcesso,Cb' +
        'dCodigoFilial  FROM cbd001 '
      'WHERE cbdcodigofilial ='#39'00001'#39
      'limit 1;')
    SQLConnection = _dmMDFe.conexao
    Left = 504
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 400
    Top = 144
    object ClientDataSet1cbdntfserie: TWideStringField
      FieldName = 'cbdntfserie'
      Size = 3
    end
    object ClientDataSet1CbdNtfNumero: TIntegerField
      FieldName = 'CbdNtfNumero'
    end
    object ClientDataSet1CbdxNome_dest: TWideStringField
      FieldName = 'CbdxNome_dest'
      Size = 60
    end
    object ClientDataSet1CbdNFEChaAcesso: TWideStringField
      FieldName = 'CbdNFEChaAcesso'
      Size = 44
    end
    object ClientDataSet1CbdCodigoFilial: TWideStringField
      FieldName = 'CbdCodigoFilial'
      Size = 5
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qrpadrao
    Left = 296
    Top = 160
  end
end
