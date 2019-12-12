object _frSelecionarCertificado: T_frSelecionarCertificado
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 284
  ClientWidth = 791
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
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 775
    Height = 217
    RowCount = 2
    FixedRows = 0
    TabOrder = 0
    OnSelectCell = StringGrid1SelectCell
  end
  object BitBtn1: TBitBtn
    Left = 616
    Top = 231
    Width = 167
    Height = 45
    Caption = 'Selecionar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
