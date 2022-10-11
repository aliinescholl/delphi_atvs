object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 352
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
    Left = 160
    Top = 24
    Width = 77
    Height = 13
    Caption = #193'rea tri'#226'ngulo x'
  end
  object Label2: TLabel
    Left = 160
    Top = 112
    Width = 77
    Height = 13
    Caption = #193'rea tri'#226'ngulo y'
  end
  object edtTriAa: TLabel
    Left = 16
    Top = 56
    Width = 3
    Height = 13
  end
  object lblResultado: TLabel
    Left = 72
    Top = 240
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblResultado2: TLabel
    Left = 72
    Top = 312
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 59
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label4: TLabel
    Left = 48
    Top = 147
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label5: TLabel
    Left = 153
    Top = 59
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object Label6: TLabel
    Left = 153
    Top = 147
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object Label7: TLabel
    Left = 248
    Top = 147
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object Label8: TLabel
    Left = 248
    Top = 59
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object lblResultado3: TLabel
    Left = 72
    Top = 272
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnCalcular: TButton
    Left = 72
    Top = 192
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 5
    OnClick = btnCalcularClick
  end
  object btnCalcularOOP: TButton
    Left = 215
    Top = 192
    Width = 124
    Height = 25
    Caption = 'CalcularOOP'
    TabOrder = 7
    OnClick = btnCalcularOOPClick
  end
  object edtTriXA: TEdit
    Left = 72
    Top = 56
    Width = 75
    Height = 21
    TabOrder = 0
  end
  object edtTriXB: TEdit
    Left = 167
    Top = 56
    Width = 75
    Height = 21
    TabOrder = 1
  end
  object edtTriXC: TEdit
    Left = 264
    Top = 56
    Width = 75
    Height = 21
    TabOrder = 2
  end
  object edtTriYB: TEdit
    Left = 167
    Top = 144
    Width = 75
    Height = 21
    TabOrder = 4
  end
  object edtTriYA: TEdit
    Left = 72
    Top = 144
    Width = 75
    Height = 21
    TabOrder = 3
  end
  object edtTriYC: TEdit
    Left = 264
    Top = 144
    Width = 75
    Height = 21
    TabOrder = 6
  end
end
