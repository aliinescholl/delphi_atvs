object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 114
  ClientWidth = 199
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
    Left = 8
    Top = 8
    Width = 178
    Height = 23
    Caption = 'Informe um n'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNumero: TEdit
    Left = 8
    Top = 37
    Width = 178
    Height = 28
    TabOrder = 0
  end
  object btnTabuada: TButton
    Left = 8
    Top = 71
    Width = 178
    Height = 34
    Caption = 'Tabuada'
    TabOrder = 1
    OnClick = btnTabuadaClick
  end
end
