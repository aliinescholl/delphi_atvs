object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 296
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
    Left = 96
    Top = 32
    Width = 241
    Height = 24
    Caption = 'Quantos KW foram gastos?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 96
    Top = 255
    Width = 33
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_qtd_kw: TEdit
    Left = 112
    Top = 72
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object btnCalcular: TButton
    Left = 112
    Top = 216
    Width = 177
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object rgroupTipo: TRadioGroup
    Left = 112
    Top = 99
    Width = 177
    Height = 105
    Caption = 'Tipo'
    Items.Strings = (
      'Resid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria')
    TabOrder = 2
  end
end
