object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 250
  ClientWidth = 195
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
    Top = 8
    Width = 50
    Height = 13
    Caption = 'N'#250'mero 1:'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 53
    Height = 13
    Caption = 'N'#250'mero 2: '
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 51
    Height = 13
    Caption = 'Opera'#231#227'o:'
  end
  object lblResultado: TLabel
    Left = 64
    Top = 208
    Width = 66
    Height = 13
    Caption = 'RESULTADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNum1: TEdit
    Left = 24
    Top = 29
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edtNum2: TEdit
    Left = 24
    Top = 77
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object cmboperacao: TComboBox
    Left = 24
    Top = 123
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object Calcular: TButton
    Left = 24
    Top = 163
    Width = 145
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = CalcularClick
  end
end
