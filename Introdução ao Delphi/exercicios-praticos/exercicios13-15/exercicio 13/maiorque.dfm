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
    Left = 56
    Top = 40
    Width = 272
    Height = 19
    Caption = 'Descubra se o n'#250'mero '#233' maior que 10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_numero: TEdit
    Left = 128
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn_descobrir: TButton
    Left = 128
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Maior que 10?'
    TabOrder = 1
    OnClick = btn_descobrirClick
  end
end
