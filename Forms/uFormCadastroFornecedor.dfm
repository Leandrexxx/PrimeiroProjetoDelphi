inherited formCadastroFornecedor: TformCadastroFornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 470
  OnShow = FormShow
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 32
    Top = 82
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 128
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
  end
  object Label3: TLabel [2]
    Left = 32
    Top = 168
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
  end
  object Label4: TLabel [3]
    Left = 32
    Top = 208
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Label5: TLabel [4]
    Left = 32
    Top = 248
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
  end
  object Label6: TLabel [5]
    Left = 32
    Top = 288
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label7: TLabel [6]
    Left = 32
    Top = 328
    Width = 38
    Height = 13
    Caption = 'CIDADE'
  end
  object Label8: TLabel [7]
    Left = 32
    Top = 368
    Width = 40
    Height = 13
    Caption = 'ESTADO'
  end
  object Label9: TLabel [8]
    Left = 32
    Top = 408
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object DBLookupComboBox1: TDBLookupComboBox [10]
    Left = 32
    Top = 347
    Width = 289
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox [11]
    Left = 32
    Top = 387
    Width = 78
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [12]
    Left = 32
    Top = 101
    Width = 121
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object edtRazaoSocial: TDBEdit [13]
    Left = 32
    Top = 141
    Width = 289
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [14]
    Left = 32
    Top = 181
    Width = 289
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit4: TDBEdit [15]
    Left = 32
    Top = 221
    Width = 121
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit5: TDBEdit [16]
    Left = 32
    Top = 267
    Width = 289
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit6: TDBEdit [17]
    Left = 32
    Top = 307
    Width = 121
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [18]
    Left = 32
    Top = 427
    Width = 289
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 9
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDORES_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'select * from fornecedores'
      '')
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryCadastroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
end
