object FormRelActor: TFormRelActor
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Atores'
  ClientHeight = 239
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 56
    Top = 48
    Width = 297
    Height = 105
    Caption = 'Ator'
    TabOrder = 0
    object label1: TLabel
      Left = 16
      Top = 16
      Width = 58
      Height = 13
      Caption = #218'ltimo nome'
    end
    object btnExportar: TButton
      Left = 80
      Top = 62
      Width = 90
      Height = 25
      Caption = 'Exportar'
      TabOrder = 0
    end
    object edtLastName: TEdit
      Left = 16
      Top = 35
      Width = 257
      Height = 21
      TabOrder = 1
    end
    object btnVisualizar: TButton
      Left = 183
      Top = 62
      Width = 92
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 2
    end
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44938.907655914350000000
    ReportOptions.LastChange = 44938.907655914350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    Left = 152
    Top = 176
  end
  object FDQuery1: TFDQuery
    Connection = FrmDados.FDConnection1
    Left = 240
    Top = 176
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 312
    Top = 176
  end
end
