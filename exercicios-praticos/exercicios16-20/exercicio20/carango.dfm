object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object Label1: TLabel
    Left = 136
    Top = 8
    Width = 130
    Height = 24
    Caption = 'Carango Velho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 64
    Top = 70
    Width = 297
    Height = 156
    TabOrder = 0
  end
  object btn_cadastrar: TButton
    Left = 64
    Top = 232
    Width = 153
    Height = 25
    Caption = 'Cadastrar Carros'
    TabOrder = 1
    OnClick = btn_cadastrarClick
  end
end
