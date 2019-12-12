object _frmFilial: T_frmFilial
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dados da empresa'
  ClientHeight = 444
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Grupo:'
  end
  object Label2: TLabel
    Left = 27
    Top = 51
    Width = 24
    Height = 13
    Caption = 'Filial:'
  end
  object Label3: TLabel
    Left = 27
    Top = 94
    Width = 34
    Height = 13
    Caption = 'Raz'#227'o:'
  end
  object Label4: TLabel
    Left = 16
    Top = 134
    Width = 45
    Height = 13
    Caption = 'Fantasia:'
  end
  object Label5: TLabel
    Left = 64
    Top = 174
    Width = 47
    Height = 13
    Caption = 'Inscri'#231#227'o:'
  end
  object Label6: TLabel
    Left = 299
    Top = 179
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object Label7: TLabel
    Left = 40
    Top = 327
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Label8: TLabel
    Left = 371
    Top = 253
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Label9: TLabel
    Left = 20
    Top = 253
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label10: TLabel
    Left = 293
    Top = 327
    Width = 28
    Height = 13
    Caption = 'Fone:'
  end
  object Label11: TLabel
    Left = 9
    Top = 219
    Width = 49
    Height = 13
    Caption = 'Endereco:'
  end
  object Label12: TLabel
    Left = 21
    Top = 285
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object Label13: TLabel
    Left = 327
    Top = 285
    Width = 23
    Height = 13
    Caption = 'Cep:'
  end
  object txtgrupo: TEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 12
    Text = '1'
    OnKeyPress = txtgrupoKeyPress
  end
  object txtfilial: TEdit
    Left = 64
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '00001'
    OnKeyPress = txtfilialKeyPress
  end
  object txtrazao: TEdit
    Left = 64
    Top = 91
    Width = 425
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object txtfantasia: TEdit
    Left = 64
    Top = 131
    Width = 425
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object txtinscricao: TEdit
    Left = 112
    Top = 171
    Width = 153
    Height = 21
    TabOrder = 3
    OnKeyPress = txtinscricaoKeyPress
  end
  object txtenderco: TEdit
    Left = 64
    Top = 211
    Width = 425
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object txtcidade: TEdit
    Left = 63
    Top = 247
    Width = 290
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object cbouf: TComboBox
    Left = 64
    Top = 324
    Width = 223
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    Text = 'PE-PERNAMBUCO'
    Items.Strings = (
      'RO-ROND'#212'NIA'
      'AC-ACRE'
      'AM-AMAZONAS'
      'RR-RORAIMA'
      'PA-PAR'#193
      'AP-AMAP'#193
      'TO-TOCANTINS'
      'MA-MARANH'#195'O'
      'PI-PIAU'#205
      'CE-CEAR'#193
      'RN-RIO GRANDE DO NORTE'
      'PB-PARA'#205'BA'
      'PE-PERNAMBUCO'
      'AL-ALAGOAS'
      'SE-SERGIPE'
      'BA-BAHIA'
      'MG-MINAS GERAIS'
      'ES-ESPIRITO SANTO'
      'RJ-RIO DE JANEIRO'
      'SP-S'#195'O PAULO'
      'PR-PARAN'#193
      'SC-SANTA CATARINA'
      'RS-RIO GRANDE DO SUL'
      'MS-MATO GROSSO DO SUL'
      'MT-MATO GROSSO'
      'GO-GOI'#193'S'
      'DF-DISTRITO FEDERAL')
  end
  object txtnumero: TEdit
    Left = 416
    Top = 247
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object txtfone: TMaskEdit
    Left = 334
    Top = 324
    Width = 152
    Height = 21
    EditMask = '(000)0000-0000;0;_'
    MaxLength = 14
    TabOrder = 11
    Text = ''
    OnKeyPress = txtfoneKeyPress
  end
  object txtcnpj: TMaskEdit
    Left = 344
    Top = 171
    Width = 142
    Height = 21
    EditMask = '00.000.000/0000-00;0;_'
    MaxLength = 18
    TabOrder = 4
    Text = ''
    OnKeyPress = txtcnpjKeyPress
  end
  object Button1: TButton
    Left = 160
    Top = 401
    Width = 131
    Height = 25
    Caption = 'Salvar'
    TabOrder = 13
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 395
    Top = 401
    Width = 118
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 14
    OnClick = Button2Click
  end
  object txtbairro: TEdit
    Left = 64
    Top = 282
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object txtcep: TMaskEdit
    Left = 374
    Top = 282
    Width = 110
    Height = 21
    EditMask = '00000-000;0;_'
    MaxLength = 9
    TabOrder = 9
    Text = ''
    OnKeyPress = txtcepKeyPress
  end
end
