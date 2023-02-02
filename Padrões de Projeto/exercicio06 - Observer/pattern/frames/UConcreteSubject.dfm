object Frame4: TFrame4
  Left = 0
  Top = 0
  Width = 389
  Height = 277
  TabOrder = 0
  object Categoria: TLabel
    Left = 16
    Top = 45
    Width = 47
    Height = 13
    Caption = 'Categoria'
  end
  object Valor: TLabel
    Left = 16
    Top = 78
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label3: TLabel
    Left = 16
    Top = 19
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object Shape1: TShape
    Left = 259
    Top = 14
    Width = 6
    Height = 82
    Pen.Color = clSilver
  end
  object BtnGravar: TButton
    Left = 271
    Top = 14
    Width = 104
    Height = 82
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = BtnGravarClick
  end
  object cmbOperacao: TComboBox
    Left = 104
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 1
    OnChange = cmbOperacaoChange
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
  end
  object ComboBox2: TComboBox
    Left = 104
    Top = 43
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBox2'
  end
  object edtValor: TEdit
    Left = 104
    Top = 75
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 113
    Width = 360
    Height = 136
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Categoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Operacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      770000009619E0BD010000001800000003000000000003000000770009436174
      65676F7269610100490000000100055749445448020002001400084F70657261
      63616F01004900000001000557494454480200020014000556616C6F72080004
      000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 168
    object ClientDataSet1Operacao: TStringField
      FieldName = 'Operacao'
    end
    object ClientDataSet1Categoria: TStringField
      FieldName = 'Categoria'
    end
    object ClientDataSet1Valor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 248
    Top = 176
  end
end
