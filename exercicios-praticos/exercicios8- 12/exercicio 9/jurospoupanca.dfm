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
    Top = 40
    Width = 158
    Height = 16
    Caption = 'Informe  o valor depositado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object label_resultado: TLabel
    Left = 91
    Top = 216
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 152
    Top = 107
    Width = 115
    Height = 16
    Caption = 'Por quantos meses?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_val_depositado: TEdit
    Left = 152
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn_calcular: TButton
    Left = 152
    Top = 171
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btn_calcularClick
  end
  object edt_meses: TEdit
    Left = 152
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
end