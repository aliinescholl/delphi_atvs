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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnAdd: TButton
    Left = 24
    Top = 64
    Width = 89
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = btnAddClick
  end
  object btnOnNotify: TButton
    Left = 24
    Top = 219
    Width = 89
    Height = 25
    Caption = 'Notify'
    TabOrder = 1
    OnClick = btnOnNotifyClick
  end
  object btnListar: TButton
    Left = 24
    Top = 126
    Width = 89
    Height = 25
    Caption = 'Listar'
    TabOrder = 2
    OnClick = btnListarClick
  end
  object btnCount: TButton
    Left = 24
    Top = 188
    Width = 89
    Height = 25
    Caption = 'Count'
    TabOrder = 3
    OnClick = btnCountClick
  end
  object btnCapacity: TButton
    Left = 24
    Top = 157
    Width = 89
    Height = 25
    Caption = 'Capacity'
    TabOrder = 4
    OnClick = btnCapacityClick
  end
  object btnRemove: TButton
    Left = 24
    Top = 95
    Width = 89
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = btnRemoveClick
  end
  object Edit1: TEdit
    Left = 24
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 176
    Top = 29
    Width = 224
    Height = 220
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
end
