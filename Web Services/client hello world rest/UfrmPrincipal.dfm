object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 172
  ClientWidth = 348
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
    Left = 128
    Top = 55
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
  object btnHelloWorld: TButton
    Left = 128
    Top = 24
    Width = 105
    Height = 25
    Caption = 'Hello World'
    TabOrder = 0
    OnClick = btnHelloWorldClick
  end
  object btnPingPong: TButton
    Left = 8
    Top = 24
    Width = 105
    Height = 25
    Caption = 'PingPong'
    TabOrder = 1
    OnClick = btnPingPongClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9090/ping'
    Params = <>
    Left = 96
    Top = 96
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 24
    Top = 96
  end
  object RESTResponse1: TRESTResponse
    Left = 168
    Top = 96
  end
end
