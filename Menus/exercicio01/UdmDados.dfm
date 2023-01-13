object FrmDados: TFrmDados
  Left = 0
  Top = 0
  Caption = 'Udm Conex'#227'o'
  ClientHeight = 281
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
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'User_Name=root'
      'Password=root'
      'Database=sakila'
      'DriverID=MySQL')
    Left = 232
    Top = 96
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\mysql\Desktop\delphi_atvs\Menus\exercicio01\libmysql.dl' +
      'l'
    Left = 120
    Top = 120
  end
end
