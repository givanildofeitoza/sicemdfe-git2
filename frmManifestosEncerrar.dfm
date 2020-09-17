object _frmManifestosEncerrar: T_frmManifestosEncerrar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 450
  ClientWidth = 1019
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1019
    Height = 49
    Align = alTop
    Caption = 'Existem manifestos pendentes de encerramento'
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object gridMdf: TStringGrid
    Left = 864
    Top = 64
    Width = 147
    Height = 89
    ColCount = 6
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 55
    Width = 1003
    Height = 338
    DataSource = _dmMDFe.dsmdfeIDE
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'serie'
        Title.Caption = 'S'#233'rie'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nMDF'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chMDFe'
        Title.Caption = 'Chave de acesso'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dhEmi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigofilial'
        Title.Caption = 'Filial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'protocolo'
        Title.Caption = 'Protocolo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataautorizacao'
        Title.Caption = 'Data autorizacao'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 399
    Width = 121
    Height = 43
    Caption = 'Encerrar'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 906
    Top = 399
    Width = 105
    Height = 43
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
end
