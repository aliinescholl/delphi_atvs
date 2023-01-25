object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 142
    Top = 223
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 88
    Top = 37
    Width = 80
    Height = 16
    Caption = 'Primeiro valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 125
    Width = 82
    Height = 16
    Caption = 'Segundo valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 82
    Width = 55
    Height = 16
    Caption = 'Opera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 88
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 147
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 101
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object Button1: TButton
    Left = 88
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
end
