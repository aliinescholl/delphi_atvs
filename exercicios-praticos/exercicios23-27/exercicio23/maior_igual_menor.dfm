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
    Left = 128
    Top = 40
    Width = 163
    Height = 24
    Caption = 'Digite um N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_num: TEdit
    Left = 128
    Top = 88
    Width = 163
    Height = 21
    TabOrder = 0
  end
  object btn_mostrar: TButton
    Left = 128
    Top = 136
    Width = 163
    Height = 25
    Caption = 'Classificar'
    TabOrder = 1
    OnClick = btn_mostrarClick
  end
end
