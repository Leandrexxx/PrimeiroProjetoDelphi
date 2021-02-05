inherited formCadastroCliente: TformCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 394
  ClientWidth = 907
  OnShow = FormShow
  ExplicitWidth = 913
  ExplicitHeight = 423
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 72
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 156
    Top = 72
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 383
    Top = 72
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 589
    Top = 72
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 133
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
  end
  object Label6: TLabel [5]
    Left = 156
    Top = 133
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [6]
    Left = 383
    Top = 133
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [7]
    Left = 16
    Top = 192
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 237
    Top = 192
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [9]
    Left = 16
    Top = 245
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [10]
    Left = 21
    Top = 293
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [11]
    Left = 143
    Top = 293
    Width = 12
    Height = 13
    Caption = 'IM'
    FocusControl = DBEdit11
  end
  object Label13: TLabel [12]
    Left = 232
    Top = 245
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit9
  end
  object Label14: TLabel [13]
    Left = 394
    Top = 245
    Width = 40
    Height = 13
    Caption = 'ESTADO'
    FocusControl = DBEdit9
  end
  inherited pnCabecalho: TPanel
    Width = 907
    ExplicitWidth = 907
  end
  object DBEdit1: TDBEdit [15]
    Left = 16
    Top = 91
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [16]
    Left = 156
    Top = 91
    Width = 221
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [17]
    Left = 383
    Top = 91
    Width = 200
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [18]
    Left = 589
    Top = 91
    Width = 148
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox [19]
    Left = 16
    Top = 152
    Width = 134
    Height = 21
    DataField = 'TIPO_FJ'
    DataSource = dsCadastro
    Items.Strings = (
      'Fisica'
      'Jur'#237'dica')
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [20]
    Left = 156
    Top = 152
    Width = 221
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [21]
    Left = 383
    Top = 152
    Width = 354
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [22]
    Left = 16
    Top = 208
    Width = 200
    Height = 21
    DataField = 'SITE'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [23]
    Left = 237
    Top = 210
    Width = 346
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [24]
    Left = 16
    Top = 264
    Width = 200
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [25]
    Left = 21
    Top = 312
    Width = 116
    Height = 21
    DataField = 'IE'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [26]
    Left = 143
    Top = 312
    Width = 224
    Height = 21
    DataField = 'IM'
    DataSource = dsCadastro
    TabOrder = 12
  end
  object DBLookupComboBox1: TDBLookupComboBox [27]
    Left = 232
    Top = 264
    Width = 145
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 13
  end
  object DBLookupComboBox2: TDBLookupComboBox [28]
    Left = 392
    Top = 264
    Width = 65
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 14
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    UpdateObject = nil
    SQL.Strings = (
      'select * from cliente')
    Left = 856
    Top = 200
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object fdQryCadastroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryCadastroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      FixedChar = True
      Size = 1
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 856
    Top = 256
  end
  inherited fdTransaction: TFDTransaction
    Left = 856
    Top = 312
  end
  inherited dsCadastro: TDataSource
    Left = 856
    Top = 152
  end
end
