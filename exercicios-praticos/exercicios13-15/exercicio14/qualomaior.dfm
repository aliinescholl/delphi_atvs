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
    Top = 24
    Width = 115
    Height = 23
    Caption = 'Qual '#233' Maior?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_num1: TEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt_num2: TEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn_descobrir: TButton
    Left = 136
    Top = 160
    Width = 121
    Height = 25
    Caption = 'Descubra'
    TabOrder = 2
    OnClick = btn_descobrirClick
  end
end
