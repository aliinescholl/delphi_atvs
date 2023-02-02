object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 338
  ClientWidth = 626
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
    Left = 8
    Top = 64
    Width = 55
    Height = 13
    Caption = 'Programas:'
  end
  object Label2: TLabel
    Left = 208
    Top = 64
    Width = 52
    Height = 13
    Caption = 'Processos:'
  end
  object Label3: TLabel
    Left = 416
    Top = 64
    Width = 110
    Height = 13
    Caption = 'Vari'#225'veis de Ambiente:'
  end
  object Button1: TButton
    Left = 232
    Top = 8
    Width = 129
    Height = 33
    Caption = 'Executar Comandos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object mmProgramas: TMemo
    Left = 8
    Top = 83
    Width = 185
    Height = 238
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object mmVariaveis: TMemo
    Left = 416
    Top = 83
    Width = 185
    Height = 238
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object mmProcessos: TMemo
    Left = 208
    Top = 83
    Width = 185
    Height = 238
    ScrollBars = ssBoth
    TabOrder = 3
  end
end
