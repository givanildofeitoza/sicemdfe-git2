object _frmNotasAvulsas: T_frmNotasAvulsas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 273
  ClientWidth = 850
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
  object pnlNtAvulsa: TPanel
    Left = 8
    Top = 8
    Width = 833
    Height = 257
    Color = 14215400
    ParentBackground = False
    TabOrder = 0
    object Label25: TLabel
      Left = 282
      Top = 97
      Width = 69
      Height = 13
      Caption = 'Valor da Nota:'
    end
    object Label27: TLabel
      Left = 279
      Top = 124
      Width = 72
      Height = 13
      Caption = 'Chave Acesso:'
    end
    object Label34: TLabel
      Left = 19
      Top = 97
      Width = 54
      Height = 13
      Caption = 'UF Origem:'
    end
    object Label35: TLabel
      Left = 14
      Top = 124
      Width = 63
      Height = 13
      Caption = 'Mun. origem:'
    end
    object Label36: TLabel
      Left = 19
      Top = 148
      Width = 56
      Height = 13
      Caption = 'UF Destino:'
    end
    object Label37: TLabel
      Left = 23
      Top = 174
      Width = 50
      Height = 13
      Caption = 'Mun.Dest:'
    end
    object Label5: TLabel
      Left = 291
      Top = 156
      Width = 60
      Height = 13
      Caption = 'Seg. Chave:'
    end
    object Label6: TLabel
      Left = 697
      Top = 150
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
    object Label1: TLabel
      Left = 19
      Top = 24
      Width = 217
      Height = 29
      Caption = 'Incluir notas avulsas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtchave: TEdit
      Left = 357
      Top = 119
      Width = 317
      Height = 21
      MaxLength = 44
      TabOrder = 0
    end
    object btnAddNFeAvulsa: TButton
      Left = 357
      Top = 209
      Width = 100
      Height = 40
      Caption = 'Incluir NF-e'
      TabOrder = 1
      OnClick = btnAddNFeAvulsaClick
    end
    object cboUfCarrAvulso: TComboBox
      Left = 85
      Top = 92
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = cboUfCarrAvulsoEnter
      OnExit = cboUfCarrAvulsoExit
    end
    object cboMunCarrAvulso: TComboBox
      Left = 85
      Top = 116
      Width = 178
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnEnter = cboMunCarrAvulsoEnter
    end
    object cboUfdessAvulso: TComboBox
      Left = 85
      Top = 140
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnEnter = cboUfdessAvulsoEnter
      OnExit = cboUfdessAvulsoExit
    end
    object cboMunDesAvulso: TComboBox
      Left = 85
      Top = 167
      Width = 178
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnEnter = cboMunDesAvulsoEnter
    end
    object txtvalor: TCurrencyEdit
      Left = 357
      Top = 92
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 6
    end
    object txtSegChave: TEdit
      Left = 357
      Top = 148
      Width = 317
      Height = 21
      Enabled = False
      MaxLength = 44
      TabOrder = 7
    end
    object chkcontingencia: TCheckBox
      Left = 680
      Top = 149
      Width = 17
      Height = 17
      TabOrder = 8
      OnClick = chkcontingenciaClick
    end
    object BitBtn1: TBitBtn
      Left = 704
      Top = 209
      Width = 105
      Height = 40
      Caption = 'Fechar'
      TabOrder = 9
      OnClick = BitBtn1Click
    end
  end
end
