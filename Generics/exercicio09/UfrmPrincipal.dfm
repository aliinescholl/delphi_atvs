object aa: Taa
  Left = 0
  Top = 0
  ClientHeight = 379
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
  object Label1: TLabel
    Left = 162
    Top = 34
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object NOME: TLabel
    Left = 304
    Top = 34
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object edtcpf: TEdit
    Left = 162
    Top = 53
    Width = 103
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 304
    Top = 53
    Width = 106
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 162
    Top = 80
    Width = 248
    Height = 101
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object btnAdd: TButton
    Left = 32
    Top = 30
    Width = 105
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = btnAddClick
  end
  object btnRemove: TButton
    Left = 32
    Top = 93
    Width = 105
    Height = 25
    Caption = 'Remove'
    TabOrder = 4
    OnClick = btnRemoveClick
  end
  object btnTryGetValue: TButton
    Left = 32
    Top = 63
    Width = 105
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 5
    OnClick = btnTryGetValueClick
  end
  object BtnTrimExcess: TButton
    Left = 32
    Top = 125
    Width = 105
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = BtnTrimExcessClick
  end
  object btnClear: TButton
    Left = 32
    Top = 279
    Width = 105
    Height = 25
    Caption = 'Clear'
    TabOrder = 7
    OnClick = btnClearClick
  end
  object btnListaValue: TButton
    Left = 32
    Top = 248
    Width = 105
    Height = 25
    Caption = 'ListaValue'
    TabOrder = 8
    OnClick = btnListaValueClick
  end
  object btnListaKey: TButton
    Left = 32
    Top = 218
    Width = 105
    Height = 25
    Caption = 'ListaKey'
    TabOrder = 9
    OnClick = btnListaKeyClick
  end
  object btnAddOrSetValue: TButton
    Left = 32
    Top = 187
    Width = 105
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 10
    OnClick = btnAddOrSetValueClick
  end
  object btnContainsKey: TButton
    Left = 32
    Top = 156
    Width = 105
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 11
    OnClick = btnContainsKeyClick
  end
  object btnOnKeyNotify: TButton
    Left = 32
    Top = 310
    Width = 105
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 12
    OnClick = btnOnKeyNotifyClick
  end
  object btnOnValueNotify: TButton
    Left = 32
    Top = 341
    Width = 105
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 13
    OnClick = btnOnValueNotifyClick
  end
end
