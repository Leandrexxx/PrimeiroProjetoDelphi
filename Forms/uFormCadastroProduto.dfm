inherited formCadastroProduto: TformCadastroProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 239
  ExplicitHeight = 268
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 135
    Top = 69
    Width = 59
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object QTD: TLabel [1]
    Left = 430
    Top = 69
    Width = 21
    Height = 13
    Caption = 'QTD'
  end
  object Label2: TLabel [2]
    Left = 23
    Top = 125
    Width = 34
    Height = 13
    Caption = 'CUSTO'
  end
  object Label3: TLabel [3]
    Left = 135
    Top = 125
    Width = 64
    Height = 13
    Caption = 'VALOR UNIT.'
  end
  object Label4: TLabel [4]
    Left = 252
    Top = 125
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label5: TLabel [5]
    Left = 491
    Top = 125
    Width = 63
    Height = 13
    Caption = 'PESO BRUTO'
  end
  object Label6: TLabel [6]
    Left = 352
    Top = 125
    Width = 72
    Height = 13
    Caption = 'PESO LIQUIDO'
  end
  object Label7: TLabel [7]
    Left = 26
    Top = 171
    Width = 63
    Height = 13
    Caption = 'FABRICANTE'
  end
  object Label8: TLabel [8]
    Left = 272
    Top = 171
    Width = 82
    Height = 13
    Caption = 'MARCA/MODELO'
  end
  object Label9: TLabel [9]
    Left = 23
    Top = 69
    Width = 41
    Height = 13
    Caption = 'CODIGO'
  end
  inherited pnCabecalho: TPanel
    TabOrder = 10
    ExplicitLeft = 26
    ExplicitTop = 47
  end
  object dbDescricao: TDBEdit [11]
    Left = 135
    Top = 88
    Width = 289
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [12]
    Left = 252
    Top = 144
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [13]
    Left = 24
    Top = 190
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FABRICANTE'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit6: TDBEdit [14]
    Left = 272
    Top = 190
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MARCA_MODELO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object dbmQtd: TDBMoneyEdit [15]
    Left = 432
    Top = 88
    Width = 56
    Height = 21
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    TabOrder = 2
    Version = '1.1.2.0'
    DataField = 'QTD'
    DataSource = dsCadastro
  end
  object dbPesoLiquido: TDBMoneyEdit [16]
    Left = 352
    Top = 144
    Width = 105
    Height = 21
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    TabOrder = 6
    Version = '1.1.2.0'
    DataField = 'PESO_LIQUIDO'
    DataSource = dsCadastro
  end
  object DBMoneyEdit3: TDBMoneyEdit [17]
    Left = 491
    Top = 144
    Width = 105
    Height = 21
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    TabOrder = 7
    Version = '1.1.2.0'
    DataField = 'PESO_BRUTO'
    DataSource = dsCadastro
  end
  object DBMoneyEdit1: TDBMoneyEdit [18]
    Left = 23
    Top = 144
    Width = 90
    Height = 21
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    TabOrder = 3
    Version = '1.1.2.0'
    DataField = 'CUSTO'
    DataSource = dsCadastro
  end
  object DBMoneyEdit2: TDBMoneyEdit [19]
    Left = 135
    Top = 144
    Width = 90
    Height = 21
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    TabOrder = 4
    Version = '1.1.2.0'
    DataField = 'V_UNITARIO'
    DataSource = dsCadastro
  end
  object edtCodigo: TDBEdit [20]
    Left = 23
    Top = 88
    Width = 98
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 0
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'select * from produto')
    Left = 640
    Top = 56
    object fdQryCadastroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryCadastroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryCadastroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryCadastroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryCadastroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      FixedChar = True
      Size = 4
    end
    object fdQryCadastroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryCadastroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryCadastroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryCadastroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Top = 104
  end
  inherited fdTransaction: TFDTransaction
    Left = 624
    Top = 168
  end
  inherited dsCadastro: TDataSource
    Left = 576
    Top = 8
  end
end
