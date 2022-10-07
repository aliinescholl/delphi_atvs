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
    Left = 112
    Top = 40
    Width = 170
    Height = 13
    Caption = 'Qual custo de f'#225'brica do seu carro?'
  end
  object resultado: TLabel
    Left = 64
    Top = 176
    Width = 51
    Height = 13
  end
  object edt_custofabrica: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn_calcular: TButton
    Left = 136
    Top = 128
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btn_calcularClick
  end
end
