object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 394
  ClientWidth = 373
  Color = 16498427
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 104
    Top = 16
    Width = 162
    Height = 24
    Caption = 'Calcular Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object resultado: TLabel
    Left = 60
    Top = 227
    Width = 68
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 58
    Width = 152
    Height = 19
    Caption = 'Nome do Funcion'#225'rio'
    Color = 16498939
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 172
    Width = 106
    Height = 19
    Caption = 'Vendas do M'#234's'
    Color = 16498939
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 104
    Top = 114
    Width = 82
    Height = 19
    Caption = 'Sal'#225'rio Fixo'
    Color = 16498939
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object edt_nome_func: TEdit
    Left = 104
    Top = 80
    Width = 162
    Height = 24
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TextHint = 'Nome do Funcion'#225'rio'
  end
  object edt_salario: TEdit
    Left = 104
    Top = 139
    Width = 162
    Height = 24
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = 'Sal'#225'rio Fixo'
  end
  object edt_vendas: TEdit
    Left = 104
    Top = 197
    Width = 162
    Height = 24
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TextHint = 'Vendas do m'#234's'
  end
  object btn_calcular: TButton
    Left = 104
    Top = 256
    Width = 162
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btn_calcularClick
  end
end
