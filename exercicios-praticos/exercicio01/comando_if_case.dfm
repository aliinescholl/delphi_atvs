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
  object caixa_texto: TLabel
    Left = 128
    Top = 32
    Width = 161
    Height = 13
    Caption = 'Comandos Condicionais - If e Else'
  end
  object edt_caixa: TEdit
    Left = 40
    Top = 96
    Width = 156
    Height = 21
    TabOrder = 0
  end
  object btn_if: TButton
    Left = 40
    Top = 144
    Width = 75
    Height = 25
    Caption = 'If'
    TabOrder = 1
    OnClick = btn_ifClick
  end
  object btn_case: TButton
    Left = 121
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Case'
    TabOrder = 2
    OnClick = btn_caseClick
  end
  object caixa_radio: TRadioGroup
    Left = 224
    Top = 80
    Width = 186
    Height = 121
    Caption = 'N'#237'vel'
    Items.Strings = (
      'Estagi'#225'rio'
      'J'#250'nior'
      'S'#234'nior'
      'Pleno')
    TabOrder = 3
  end
end
