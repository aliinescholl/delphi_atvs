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
    Top = 16
    Width = 161
    Height = 35
    Caption = 'Servi'#231'o Militar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object memo_resultado: TMemo
    Left = 72
    Top = 81
    Width = 273
    Height = 121
    TabOrder = 0
  end
  object btn_cadastrar: TButton
    Left = 72
    Top = 216
    Width = 129
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = btn_cadastrarClick
  end
  object btn_listar: TButton
    Left = 216
    Top = 216
    Width = 129
    Height = 25
    Caption = 'Listar'
    TabOrder = 2
    OnClick = btn_listarClick
  end
end
