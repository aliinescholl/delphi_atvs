object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt_dia: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Dia'
  end
  object edt_temp: TEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Temperatura'
  end
  object mmHistorico: TMemo
    Left = 24
    Top = 136
    Width = 209
    Height = 113
    TabOrder = 2
  end
  object btn_gravar: TButton
    Left = 158
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btn_gravarClick
  end
  object btn_consult: TButton
    Left = 158
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = btn_consultClick
  end
end
