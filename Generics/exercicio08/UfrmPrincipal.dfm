object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 271
  ClientWidth = 418
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
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object btnPush: TButton
    Left = 16
    Top = 43
    Width = 105
    Height = 25
    Caption = 'Push'
    TabOrder = 1
    OnClick = btnPushClick
  end
  object Memo1: TMemo
    Left = 169
    Top = 16
    Width = 232
    Height = 238
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object btnPop: TButton
    Left = 16
    Top = 74
    Width = 105
    Height = 25
    Caption = 'Pop'
    TabOrder = 3
    OnClick = btnPopClick
  end
  object btnPeek: TButton
    Left = 16
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Peek'
    TabOrder = 4
    OnClick = btnPeekClick
  end
  object btnTrimExcess: TButton
    Left = 16
    Top = 167
    Width = 105
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 5
    OnClick = btnTrimExcessClick
  end
  object btnExtract: TButton
    Left = 16
    Top = 105
    Width = 105
    Height = 25
    Caption = 'Extract'
    TabOrder = 6
    OnClick = btnExtractClick
  end
  object btnCount: TButton
    Left = 16
    Top = 198
    Width = 105
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = btnCountClick
  end
  object btnCapacity: TButton
    Left = 16
    Top = 229
    Width = 105
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = btnCapacityClick
  end
end
