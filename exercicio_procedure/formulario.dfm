object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Top = 10
  Margins.Right = 10
  Margins.Bottom = 10
  Caption = 'Procedures e Functions'
  ClientHeight = 249
  ClientWidth = 447
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn_procedure: TButton
    Left = 24
    Top = 21
    Width = 91
    Height = 25
    Caption = 'Procedure'
    TabOrder = 0
    OnClick = btn_procedureClick
  end
  object btn_function: TButton
    Left = 121
    Top = 21
    Width = 91
    Height = 25
    Caption = 'Function'
    TabOrder = 1
    OnClick = btn_functionClick
  end
  object btn_par_ref: TButton
    Left = 24
    Top = 63
    Width = 188
    Height = 25
    Caption = 'Par'#226'metros de Refer'#234'ncia'
    TabOrder = 2
    OnClick = btn_par_refClick
  end
  object btn_var_const: TButton
    Left = 24
    Top = 102
    Width = 188
    Height = 25
    Caption = 'Par'#226'metros Constantes'
    TabOrder = 3
    OnClick = btn_var_constClick
  end
  object btn_array: TButton
    Left = 232
    Top = 63
    Width = 188
    Height = 25
    Caption = 'Array Aberto'
    TabOrder = 4
    OnClick = btn_arrayClick
  end
  object btn_array_variant: TButton
    Left = 232
    Top = 21
    Width = 188
    Height = 25
    Caption = 'Array Aberto Variant'
    TabOrder = 5
    OnClick = btn_array_variantClick
  end
  object btn_format: TButton
    Left = 232
    Top = 102
    Width = 188
    Height = 25
    Caption = 'Formats'
    TabOrder = 6
    OnClick = btn_formatClick
  end
  object btn_data: TButton
    Left = 24
    Top = 141
    Width = 188
    Height = 25
    Caption = 'Data'
    TabOrder = 7
    OnClick = btn_dataClick
  end
  object btn_sobrecarga: TButton
    Left = 232
    Top = 141
    Width = 188
    Height = 25
    Caption = 'Sobrecarga Fun'#231#245'es'
    TabOrder = 8
    OnClick = btn_sobrecargaClick
  end
  object btn_par_def: TButton
    Left = 24
    Top = 180
    Width = 188
    Height = 25
    Caption = 'Par'#226'metros Default'
    TabOrder = 9
    OnClick = btn_par_defClick
  end
  object btn_dec_forw: TButton
    Left = 232
    Top = 180
    Width = 188
    Height = 25
    Caption = 'Declara'#231#227'o Forward'
    TabOrder = 10
    OnClick = btn_dec_forwClick
  end
end
