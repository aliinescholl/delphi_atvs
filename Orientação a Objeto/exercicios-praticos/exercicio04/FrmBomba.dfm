object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 308
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object memoResultado: TMemo
    Left = 48
    Top = 32
    Width = 233
    Height = 241
    TabOrder = 0
  end
  object btnAbastecerPorLitro: TButton
    Left = 304
    Top = 134
    Width = 231
    Height = 25
    Caption = 'Abastecer por litro'
    TabOrder = 1
  end
  object btnQtdnaBomba: TButton
    Left = 304
    Top = 32
    Width = 231
    Height = 41
    Caption = 'Alterar Quantidade de Combust'#237'vel na Bomba'
    TabOrder = 2
    OnClick = btnQtdnaBombaClick
  end
  object btnAbastecerporvalor: TButton
    Left = 304
    Top = 165
    Width = 231
    Height = 25
    Caption = 'Abastecer por Valor'
    TabOrder = 3
    OnClick = btnAbastecerporvalorClick
  end
  object btnAlterarCombustivel: TButton
    Left = 304
    Top = 196
    Width = 231
    Height = 25
    Caption = 'Alterar combust'#237'vel'
    TabOrder = 4
  end
end
