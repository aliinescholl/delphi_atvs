﻿object FrmContaCorrente: TFrmContaCorrente
  Left = 0
  Top = 0
  Caption = 'Conta Corrente'
  ClientHeight = 470
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 27
    Width = 124
    Height = 19
    Caption = 'Nome Correntista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 91
    Width = 122
    Height = 19
    Caption = 'N'#250'mero da conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 96
    Top = 155
    Width = 39
    Height = 19
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNomeCorrentista: TEdit
    Left = 56
    Top = 52
    Width = 137
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtNumConta: TEdit
    Left = 56
    Top = 116
    Width = 137
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtSaldo: TEdit
    Left = 56
    Top = 180
    Width = 137
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnCadastrar: TButton
    Left = 56
    Top = 235
    Width = 137
    Height = 32
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnCadastrarClick
  end
  object btnDepósito: TButton
    Left = 240
    Top = 116
    Width = 121
    Height = 33
    Caption = 'Depositar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnDepósitoClick
  end
  object btnAlterarNome: TButton
    Left = 240
    Top = 49
    Width = 121
    Height = 33
    Caption = 'Editar Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnAlterarNomeClick
  end
  object btnSaque: TButton
    Left = 240
    Top = 177
    Width = 121
    Height = 33
    Caption = 'Sacar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnSaqueClick
  end
  object memoListar: TMemo
    Left = 56
    Top = 288
    Width = 305
    Height = 161
    TabOrder = 7
  end
  object btnListar: TButton
    Left = 240
    Top = 235
    Width = 121
    Height = 32
    Caption = 'Listar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnListarClick
  end
end
