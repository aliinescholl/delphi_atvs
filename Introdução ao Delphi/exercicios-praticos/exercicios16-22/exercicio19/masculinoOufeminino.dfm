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
  object memo_lista: TMemo
    Left = 48
    Top = 16
    Width = 305
    Height = 153
    TabOrder = 0
  end
  object btn_pessoa: TButton
    Left = 48
    Top = 200
    Width = 305
    Height = 25
    Caption = 'Clique em mim (2 em 1) -com array- '
    TabOrder = 1
    OnClick = btn_pessoaClick
  end
  object Button1: TButton
    Left = 48
    Top = 248
    Width = 146
    Height = 25
    Caption = 'Receber Nomes'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 248
    Width = 153
    Height = 25
    Caption = 'Listar -com record-'
    TabOrder = 3
    OnClick = Button2Click
  end
end
