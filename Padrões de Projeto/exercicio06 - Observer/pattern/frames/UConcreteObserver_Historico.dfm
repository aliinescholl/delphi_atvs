object Frame3: TFrame3
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 320
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'D'#233'bitos agrupados por categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 214
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 22
    Width = 317
    Height = 215
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Categoria'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Width = 107
        Visible = True
      end>
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      5A0000009619E0BD0100000018000000020000000000030000005A0009436174
      65676F726961010049000000010005574944544802000200320005546F74616C
      080004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 96
    object ClientDataSet1Categoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object ClientDataSet1Total: TCurrencyField
      FieldName = 'Total'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 232
    Top = 96
  end
end
