﻿object dmPedidos: TdmPedidos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 443
  Width = 558
  object FDConexão: TFDConnection
    Params.Strings = (
      'Database=devs2blu'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 392
    Top = 88
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\alinescholl\Documents\delphi_atvs\Banco de Dados\Ativid' +
      'ades Pr'#225'ticas\exercicio03\libmysql.dll'
    Left = 392
    Top = 216
  end
end
