object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 213
  ClientWidth = 307
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
    Left = 24
    Top = 29
    Width = 26
    Height = 13
    Caption = 'CEP: '
  end
  object lblLogradouro: TLabel
    Left = 24
    Top = 112
    Width = 78
    Height = 13
    Caption = 'lblLogradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCidade: TLabel
    Left = 24
    Top = 150
    Width = 51
    Height = 13
    Caption = 'lblCidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBairro: TLabel
    Left = 24
    Top = 131
    Width = 47
    Height = 13
    Caption = 'lblBairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bnconsultarviacorreios: TButton
    Left = 160
    Top = 77
    Width = 121
    Height = 25
    Caption = 'Consultar via correios'
    TabOrder = 0
    OnClick = bnconsultarviacorreiosClick
  end
  object btnViacep: TButton
    Left = 160
    Top = 46
    Width = 121
    Height = 25
    Caption = 'Consultar ViaCEP'
    TabOrder = 1
    OnClick = btnViacepClick
  end
  object Edit1: TEdit
    Left = 24
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
end
