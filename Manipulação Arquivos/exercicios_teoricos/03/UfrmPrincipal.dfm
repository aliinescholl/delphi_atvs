object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 513
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 37
    Height = 13
    Caption = '1'#170' Nota'
  end
  object Label2: TLabel
    Left = 8
    Top = 10
    Width = 76
    Height = 13
    Caption = 'Nome do Aluno:'
  end
  object Label3: TLabel
    Left = 135
    Top = 56
    Width = 37
    Height = 13
    Caption = '2'#170' Nota'
  end
  object edtNome: TEdit
    Left = 8
    Top = 29
    Width = 426
    Height = 21
    TabOrder = 0
  end
  object edtPrimeiraNota: TEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSegundaNota: TEdit
    Left = 135
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 262
    Top = 76
    Width = 83
    Height = 29
    Caption = 'Gravar Aluno'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnLer: TButton
    Left = 351
    Top = 76
    Width = 83
    Height = 29
    Caption = 'Ler Alunos'
    TabOrder = 4
    OnClick = btnLerClick
  end
  object mmDiario: TMemo
    Left = 8
    Top = 120
    Width = 426
    Height = 385
    TabOrder = 5
  end
end
