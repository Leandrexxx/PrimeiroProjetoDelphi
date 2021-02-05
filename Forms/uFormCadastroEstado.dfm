inherited formCadastroEstado: TformCadastroEstado
  Caption = 'Cadastro de Estados'
  ClientHeight = 203
  ClientWidth = 583
  ExplicitWidth = 589
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 32
    Top = 72
    Width = 57
    Height = 13
    Caption = 'ID_ESTADO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 112
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 248
    Top = 112
    Width = 29
    Height = 13
    Caption = 'SIGLA'
    FocusControl = DBEdit3
  end
  inherited pnCabecalho: TPanel
    Width = 583
    inherited btnSair: TBitBtn
      Left = 480
      ExplicitLeft = 480
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 32
    Top = 88
    Width = 73
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 32
    Top = 131
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 248
    Top = 131
    Width = 43
    Height = 21
    DataField = 'SIGLA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    SQL.Strings = (
      'select * from estado')
    Left = 392
    Top = 88
    object fdQryCadastroID_ESTADO: TFDAutoIncField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 352
    Top = 144
  end
  inherited fdTransaction: TFDTransaction
    Left = 416
    Top = 144
  end
  inherited dsCadastro: TDataSource
    Left = 320
    Top = 88
  end
end
