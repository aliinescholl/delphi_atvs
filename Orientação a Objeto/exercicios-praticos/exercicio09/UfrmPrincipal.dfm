object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 219
  ClientWidth = 158
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
    Left = 18
    Top = 75
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object Label2: TLabel
    Left = 18
    Top = 29
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object lblresultado: TLabel
    Left = 50
    Top = 178
    Width = 59
    Height = 13
    Caption = 'RESULTADO'
  end
  object edtPreco: TEdit
    Left = 18
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtQtd: TEdit
    Left = 18
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 18
    Top = 131
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
