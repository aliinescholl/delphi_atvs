object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 507
  ClientWidth = 473
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
    Left = 205
    Top = 27
    Width = 99
    Height = 13
    Caption = 'Prazo de pagamento'
  end
  object Label2: TLabel
    Left = 113
    Top = 27
    Width = 65
    Height = 13
    Caption = 'Qtd. Parcelas'
  end
  object Label3: TLabel
    Left = 8
    Top = 27
    Width = 56
    Height = 13
    Caption = 'Valor Atual:'
  end
  object edtValor: TEdit
    Left = 8
    Top = 46
    Width = 99
    Height = 21
    TabOrder = 0
  end
  object EdtQtdParcelas: TEdit
    Left = 113
    Top = 46
    Width = 86
    Height = 21
    TabOrder = 1
  end
  object cmbPrazoPagamento: TComboBox
    Left = 205
    Top = 46
    Width = 155
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Mensal'
      'Anual')
  end
  object Button1: TButton
    Left = 366
    Top = 39
    Width = 99
    Height = 36
    Caption = 'Gerar Proje'#231#227'o'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 88
    Width = 457
    Height = 401
    TabOrder = 4
  end
end
