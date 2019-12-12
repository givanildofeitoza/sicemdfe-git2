object _frmVeiculos: T_frmVeiculos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 473
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 49
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -6
    object Label1: TLabel
      Left = 24
      Top = 9
      Width = 99
      Height = 29
      Caption = 'Ve'#237'culos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 345
    Width = 573
    Height = 128
    Align = alBottom
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 2
      Top = 6
      Width = 568
      Height = 115
      Caption = 'Pesquisa r'#225'pida'
      TabOrder = 1
    end
    object rgTipo: TRadioGroup
      Left = 40
      Top = 24
      Width = 289
      Height = 41
      Caption = 'Tipo'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ve'#237'culo'
        'Placa'
        'Motorista')
      TabOrder = 2
      OnClick = rgTipoClick
    end
    object btnfechar: TBitBtn
      Left = 464
      Top = 59
      Width = 91
      Height = 33
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = btnfecharClick
    end
    object txtPesquisa: TEdit
      Left = 40
      Top = 71
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = txtPesquisaChange
    end
  end
  object dbgridVeiculos: TDBGrid
    Left = 0
    Top = 49
    Width = 573
    Height = 296
    Align = alClient
    DataSource = _dm.DSourceVeiculos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgridVeiculosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'veiculo'
        Title.Caption = 'Ve'#237'culos'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'placa'
        Title.Caption = 'Placa'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'motorista'
        Title.Caption = 'Motorista'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'capacidadeKg'
        Title.Caption = 'Capacidade Kg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'capacidadem3'
        Title.Caption = 'Cap. em M'#178
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marca'
        Title.Caption = 'Marca'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'renavam'
        Title.Caption = 'Renavam'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigofilial'
        Title.Caption = 'Filial'
        Width = 64
        Visible = True
      end>
  end
end
