object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 120
    Top = 5
    Width = 223
    Height = 19
    Caption = 'Quantos andares tem o pr'#233'dio?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 30
    Width = 167
    Height = 19
    Caption = 'Qual limite de pessoas?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 104
    Top = 106
    Width = 369
    Height = 17
  end
  object Shape2: TShape
    Left = 96
    Top = 8
    Width = 18
    Height = 233
  end
  object aaa: TLabel
    Left = 120
    Top = 129
    Width = 184
    Height = 19
    Caption = 'Para qual andar deseja ir?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 120
    Top = 158
    Width = 151
    Height = 19
    Caption = 'Pessoas no elevador?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 128
    Top = 192
    Width = 46
    Height = 19
    Caption = 'Label3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnAndarElevador: TButton
    Left = 384
    Top = 200
    Width = 89
    Height = 25
    Caption = 'Clique em mim'
    TabOrder = 4
    OnClick = btnAndarElevadorClick
  end
  object scrollbar: TScrollBar
    Left = 8
    Top = 8
    Width = 73
    Height = 233
    Kind = sbVertical
    PageSize = 0
    ParentShowHint = False
    Position = 100
    ShowHint = False
    TabOrder = 5
  end
  object btnDefinir: TButton
    Left = 384
    Top = 75
    Width = 89
    Height = 25
    Caption = 'Definir'
    TabOrder = 2
    OnClick = btnDefinirClick
  end
  object edtTotalAndares: TEdit
    Left = 384
    Top = 7
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object edtLimitePessoas: TEdit
    Left = 384
    Top = 34
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object edtAndarAtual: TEdit
    Left = 384
    Top = 129
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object btnEntrar: TButton
    Left = 352
    Top = 156
    Width = 57
    Height = 25
    Caption = 'Entrar'
    TabOrder = 6
    OnClick = btnEntrarClick
  end
  object btnSair: TButton
    Left = 415
    Top = 156
    Width = 65
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btnSairClick
  end
end
