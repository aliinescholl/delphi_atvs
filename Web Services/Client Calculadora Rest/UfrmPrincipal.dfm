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
  object Edit1: TEdit
    Left = 64
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 64
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
  end
  object Button1: TButton
    Left = 64
    Top = 179
    Width = 121
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9090/somar/1/1'
    Params = <>
    Left = 240
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 240
    Top = 96
  end
  object RESTResponse1: TRESTResponse
    Left = 240
    Top = 144
  end
end
