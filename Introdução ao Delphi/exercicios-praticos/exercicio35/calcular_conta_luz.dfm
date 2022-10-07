object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 325
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 30
    Width = 412
    Height = 24
    Margins.Top = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Quantos KW foram gastos?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 241
  end
  object lblResultado: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 274
    Width = 412
    Height = 16
    Margins.Top = 30
    Align = alTop
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 4
  end
  object edt_qtd_kw: TEdit
    AlignWithMargins = True
    Left = 80
    Top = 77
    Width = 258
    Height = 21
    Margins.Left = 80
    Margins.Top = 20
    Margins.Right = 80
    Align = alTop
    Alignment = taCenter
    TabOrder = 0
  end
  object btnCalcular: TButton
    AlignWithMargins = True
    Left = 100
    Top = 216
    Width = 218
    Height = 25
    Margins.Left = 100
    Margins.Top = 20
    Margins.Right = 100
    Align = alTop
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object rgroupTipo: TRadioGroup
    AlignWithMargins = True
    Left = 80
    Top = 121
    Width = 258
    Height = 72
    Margins.Left = 80
    Margins.Top = 20
    Margins.Right = 80
    Align = alTop
    Caption = 'Tipo'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Resid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria'
      'Fazenda')
    TabOrder = 1
  end
end
