object frmReajusteFuncionarios: TfrmReajusteFuncionarios
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 286
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 450
    Height = 19
    Align = alTop
    Alignment = taCenter
    Caption = 'De quantos funcion'#225'rios deseja fazer reajuste?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 329
  end
  object edt_qtd_func: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 28
    Width = 450
    Height = 21
    Align = alTop
    Alignment = taCenter
    TabOrder = 0
    ExplicitWidth = 412
  end
  object btn_cadastrar: TButton
    AlignWithMargins = True
    Left = 3
    Top = 55
    Width = 222
    Height = 30
    Align = alLeft
    BiDiMode = bdLeftToRight
    Caption = 'Cadastrar Funcionarios'
    ParentBiDiMode = False
    TabOrder = 1
  end
  object memo_resultado: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 91
    Width = 450
    Height = 192
    Align = alBottom
    Alignment = taCenter
    TabOrder = 2
    ExplicitWidth = 412
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 231
    Top = 55
    Width = 222
    Height = 30
    Align = alRight
    BiDiMode = bdLeftToRight
    Caption = 'Calcular Reajuste'
    ParentBiDiMode = False
    TabOrder = 3
    ExplicitLeft = 11
    ExplicitTop = 63
  end
end
