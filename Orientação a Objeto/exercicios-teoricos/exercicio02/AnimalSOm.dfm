object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 144
  ClientWidth = 197
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
    Left = 64
    Top = 8
    Width = 56
    Height = 23
    Caption = 'Animal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object comboboxAnimais: TComboBox
    Left = 24
    Top = 37
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Cachorro'
      'Gato'
      'P'#225'ssaro')
  end
  object btnSom: TButton
    Left = 24
    Top = 75
    Width = 145
    Height = 25
    Caption = 'Que som eu fa'#231'o?'
    TabOrder = 1
    OnClick = btnSomClick
  end
end
