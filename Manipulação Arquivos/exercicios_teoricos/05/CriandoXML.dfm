object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmLeitura: TMemo
    Left = 16
    Top = 16
    Width = 385
    Height = 193
    Lines.Strings = (
      'mmLeitura')
    TabOrder = 0
  end
  object btnExecutar: TButton
    Left = 16
    Top = 224
    Width = 97
    Height = 33
    Caption = 'Executar'
    TabOrder = 1
    OnClick = btnExecutarClick
  end
  object XMLDocument1: TXMLDocument
    Left = 312
    Top = 56
  end
end
