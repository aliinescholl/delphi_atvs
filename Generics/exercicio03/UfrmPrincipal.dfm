object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 135
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
  object btnMes: TButton
    Left = 24
    Top = 65
    Width = 57
    Height = 25
    Caption = 'Mes'
    TabOrder = 0
    OnClick = btnMesClick
  end
  object btnDia: TButton
    Left = 104
    Top = 65
    Width = 65
    Height = 25
    Caption = 'Dias'
    TabOrder = 1
    OnClick = btnDiaClick
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 2
  end
end