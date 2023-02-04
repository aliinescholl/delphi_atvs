object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 123
  ClientWidth = 363
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
    Left = 33
    Top = 31
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label2: TLabel
    Left = 160
    Top = 79
    Width = 60
    Height = 13
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValor: TEdit
    Left = 33
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnechoDOuble: TButton
    Left = 160
    Top = 48
    Width = 75
    Height = 25
    Caption = 'EchoDouble'
    TabOrder = 1
    OnClick = btnechoDOubleClick
  end
  object btnHelloWorld: TButton
    Left = 248
    Top = 48
    Width = 75
    Height = 25
    Caption = 'HelloWorld'
    TabOrder = 2
    OnClick = btnHelloWorldClick
  end
end
