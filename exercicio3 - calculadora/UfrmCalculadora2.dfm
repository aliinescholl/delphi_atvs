object frmcalculadora2: Tfrmcalculadora2
  Left = 0
  Top = 0
  Caption = 'frmcalculadora'
  ClientHeight = 364
  ClientWidth = 546
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 138
    Top = 96
    Width = 254
    Height = 24
    Caption = 'CALCULADORA + DEVS2BLU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 393
    Top = 163
    Width = 15
    Height = 24
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object operador: TComboBox
    Left = 149
    Top = 160
    Width = 151
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir'
      'Resto'
      'Divis'#227'o Inteira')
  end
  object bt_calcular: TButton
    Left = 200
    Top = 224
    Width = 121
    Height = 25
    Caption = 'CALCULAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -20
    Font.Name = 'Malgun Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bt_calcularClick
  end
  object num1: TEdit
    Left = 70
    Top = 160
    Width = 73
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object num2: TEdit
    Left = 306
    Top = 160
    Width = 73
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object resultado: TEdit
    Left = 425
    Top = 160
    Width = 73
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
