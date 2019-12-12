object _frmVeiculos: T_frmVeiculos
  Left = 0
  Top = 0
  Caption = 'Transportadoras e Ve'#237'culos'
  ClientHeight = 498
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTransportadoras: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 247
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 780
      Height = 13
      Align = alTop
      Caption = 'Transportadoras'
      Color = clHotLight
      ParentColor = False
      ExplicitWidth = 80
    end
    object Label3: TLabel
      Left = 1
      Top = 191
      Width = 46
      Height = 13
      Caption = 'Pesquisar'
    end
    object gridTransportadoras: TDBGrid
      Left = 1
      Top = 20
      Width = 780
      Height = 165
      Align = alCustom
      DataSource = _dmMDFe.dsTransportadora
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = gridTransportadorasCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'fantasia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'razaosocial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpj'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Visible = True
        end>
    end
    object txtPesquisa: TMaskEdit
      Left = 53
      Top = 191
      Width = 308
      Height = 21
      TabOrder = 1
      Text = ''
    end
    object Button2: TButton
      Left = 369
      Top = 189
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = Button2Click
    end
    object rtipopesq: TRadioGroup
      Left = 51
      Top = 213
      Width = 310
      Height = 30
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'Razao Social'
        'Fantasia'
        'Filial')
      TabOrder = 3
    end
  end
  object pnlVeiculos: TPanel
    Left = 0
    Top = 247
    Width = 782
    Height = 217
    Align = alClient
    TabOrder = 1
    ExplicitTop = 233
    ExplicitHeight = 207
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 780
      Height = 13
      Align = alTop
      Caption = 'Ve'#237'culos'
      Color = clHotLight
      ParentColor = False
      ExplicitWidth = 38
    end
    object gridVeiculos: TDBGrid
      Left = 1
      Top = 14
      Width = 780
      Height = 202
      Align = alClient
      DataSource = _dmMDFe.dsVeiculos
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'veiculo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'placa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'motorista'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'capacidadeKg'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'capacidadem3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'combustivel'
          Visible = True
        end>
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 464
    Width = 782
    Height = 34
    Align = alBottom
    TabOrder = 2
    object btnFechar: TButton
      Left = 688
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object DataSource1: TDataSource
    DataSet = _dmMDFe.cdsTransportadora
    OnDataChange = DataSource1DataChange
    Left = 616
    Top = 88
  end
end
