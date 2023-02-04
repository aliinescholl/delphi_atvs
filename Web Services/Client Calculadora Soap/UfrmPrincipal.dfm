object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'formPrincipal'
  ClientHeight = 232
  ClientWidth = 198
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 24
    Top = 110
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Operação: TLabel
    Left = 24
    Top = 70
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object lblResultado: TLabel
    Left = 72
    Top = 195
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object valor2: TEdit
    Left = 24
    Top = 129
    Width = 148
    Height = 21
    TabOrder = 0
  end
  object valor1: TEdit
    Left = 24
    Top = 43
    Width = 148
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 24
    Top = 164
    Width = 148
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object cmbOperacoes: TComboBox
    Left = 24
    Top = 89
    Width = 148
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Dividir'
      'Multiplicar')
  end
end
