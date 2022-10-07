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
    Top = 48
    Width = 187
    Height = 16
    Caption = 'Informe a quantidade de d'#243'lares'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 114
    Width = 137
    Height = 16
    Caption = 'Informe a cota'#231#227'o d'#243'lar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object label_resultado: TLabel
    Left = 144
    Top = 224
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_dolares: TEdit
    Left = 136
    Top = 80
    Width = 136
    Height = 21
    TabOrder = 0
  end
  object edt_cot_dolar: TEdit
    Left = 136
    Top = 136
    Width = 136
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btn_calcular: TButton
    Left = 136
    Top = 176
    Width = 136
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btn_calcularClick
  end
end
