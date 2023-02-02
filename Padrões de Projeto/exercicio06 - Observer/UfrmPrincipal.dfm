object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 493
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline Frame11: TFrame1
    Left = 423
    Top = 325
    Width = 276
    Height = 156
    TabOrder = 0
    ExplicitLeft = 423
    ExplicitTop = 325
    ExplicitWidth = 276
    ExplicitHeight = 156
    inherited Label1: TLabel
      Width = 270
      ExplicitTop = 11
      ExplicitWidth = 270
    end
    inherited Memo1: TMemo
      Top = 32
      Width = 262
      Height = 119
      ExplicitTop = 32
      ExplicitWidth = 262
      ExplicitHeight = 119
    end
  end
  inline Frame21: TFrame2
    Left = 415
    Top = 8
    Width = 281
    Height = 123
    TabOrder = 1
    ExplicitLeft = 415
    ExplicitTop = 8
    ExplicitWidth = 281
  end
  inline Frame31: TFrame3
    Left = 415
    Top = 137
    Width = 281
    Height = 185
    TabOrder = 2
    ExplicitLeft = 415
    ExplicitTop = 137
    ExplicitWidth = 281
    ExplicitHeight = 185
    inherited Label1: TLabel
      Width = 281
      ExplicitLeft = 23
      ExplicitWidth = 281
    end
    inherited DBGrid1: TDBGrid
      Left = 3
      Top = 27
      Width = 281
      Height = 155
    end
  end
  inline Frame41: TFrame4
    Left = 8
    Top = 8
    Width = 393
    Height = 481
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 393
    ExplicitHeight = 481
    inherited Shape1: TShape
      Left = 239
      ExplicitLeft = 239
    end
    inherited BtnGravar: TButton
      Left = 251
      Top = 12
      ExplicitLeft = 251
      ExplicitTop = 12
    end
    inherited cmbOperacao: TComboBox
      Left = 88
      ExplicitLeft = 88
    end
    inherited ComboBox2: TComboBox
      Left = 88
      ExplicitLeft = 88
    end
    inherited edtValor: TEdit
      Left = 88
      Top = 70
      ExplicitLeft = 88
      ExplicitTop = 70
    end
    inherited DBGrid1: TDBGrid
      Top = 112
      Width = 352
      Height = 361
      Columns = <
        item
          Expanded = False
          FieldName = 'Operacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Categoria'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end>
    end
  end
end
