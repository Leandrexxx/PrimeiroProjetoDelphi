inherited formCadastroCidade: TformCadastroCidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 204
  ClientWidth = 555
  ExplicitWidth = 561
  ExplicitHeight = 233
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 72
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 112
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  inherited pnCabecalho: TPanel
    Width = 555
    inherited btnSair: TBitBtn
      Left = 448
      ExplicitLeft = 448
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 24
    Top = 88
    Width = 73
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 24
    Top = 128
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT* FROM CIDADE')
    Left = 344
    Top = 80
    object fdQryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 408
    Top = 80
  end
  inherited fdTransaction: TFDTransaction
    Left = 344
    Top = 136
  end
  inherited dsCadastro: TDataSource
    Left = 288
    Top = 80
  end
end
