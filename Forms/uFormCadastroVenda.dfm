inherited formCadastroVenda: TformCadastroVenda
  Caption = 'Venda de Produtos'
  ClientHeight = 519
  ClientWidth = 1037
  ExplicitWidth = 1043
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 31
    Top = 63
    Width = 66
    Height = 13
    Caption = 'Codigo Venda'
  end
  inherited pnCabecalho: TPanel
    Width = 1037
    ExplicitWidth = 884
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 57
    Width = 1037
    Height = 80
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 884
    object Label2: TLabel
      Left = 121
      Top = 6
      Width = 69
      Height = 13
      Caption = 'Codigo Cliente'
    end
    object Label3: TLabel
      Left = 289
      Top = 6
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label4: TLabel
      Left = 432
      Top = 8
      Width = 70
      Height = 13
      Caption = 'Data Faturado'
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 24
      Width = 65
      Height = 21
      DataField = 'ID_VENDA_CAB'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 289
      Top = 24
      Width = 121
      Height = 21
      DataField = 'DATA'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 434
      Top = 24
      Width = 121
      Height = 21
      DataField = 'DATA_FATURADO'
      DataSource = dsCadastro
      TabOrder = 4
    end
    object edtCliente: TDBLookupComboBox
      Left = 121
      Top = 25
      Width = 145
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = Lookup.dsClientes
      KeyField = 'ID_CLIENTE'
      ListField = 'NOMECLIENTE'
      ListSource = Lookup.dsClientes
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 576
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Faturado'
      DataField = 'FATURADO'
      DataSource = dsCadastro
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 464
    Width = 1037
    Height = 55
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 884
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 137
    Width = 1037
    Height = 327
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 3
    ExplicitLeft = 31
    ExplicitTop = 143
    ExplicitWidth = 884
    object Label5: TLabel
      Left = 8
      Top = 37
      Width = 22
      Height = 13
      Caption = 'Item'
    end
    object Label6: TLabel
      Left = 256
      Top = 37
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label7: TLabel
      Left = 383
      Top = 37
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object Label8: TLabel
      Left = 510
      Top = 37
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object Label9: TLabel
      Left = 637
      Top = 37
      Width = 42
      Height = 13
      Caption = 'SubTotal'
    end
    object Label10: TLabel
      Left = 764
      Top = 37
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edtDescricaoItem: TDBLookupComboBox
      Left = 8
      Top = 56
      Width = 242
      Height = 21
      DataSource = dsCadastro
      KeyField = 'ID_PRODUTO'
      ListField = 'DESCRICAO'
      ListSource = Lookup.dsProdutos
      TabOrder = 0
    end
    object edtQuantidade: TDBAdvMoneyEdit
      Left = 256
      Top = 56
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 1
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
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
    end
    object edtValorUnitario: TAdvMoneyEdit
      Left = 383
      Top = 56
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 2
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
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
    end
    object edtDesconto: TAdvMoneyEdit
      Left = 510
      Top = 56
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 3
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
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
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 83
      Width = 1036
      Height = 243
      Align = alCustom
      DataSource = dsItens
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoProduto'
          Visible = True
        end>
    end
    object edtSubTotal: TAdvMoneyEdit
      Left = 637
      Top = 56
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 5
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
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
    end
    object edtName: TAdvMoneyEdit
      Left = 764
      Top = 56
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 6
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
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
    end
  end
  object btnGravarItens: TButton [5]
    Left = 912
    Top = 189
    Width = 81
    Height = 25
    Caption = 'Gravar Item'
    TabOrder = 4
  end
  inherited fdQryCadastro: TFDQuery
    AfterInsert = fdQryCadastroAfterInsert
    BeforePost = fdQryCadastroBeforePost
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_CAB_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA_CAB'
    UpdateObject = nil
    SQL.Strings = (
      'select * from venda_cab')
    Left = 792
    Top = 288
    object fdQryCadastroID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryCadastroDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryCadastroFATURADO: TWideStringField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object fdQryCadastroDATA_FATURADO: TDateField
      FieldName = 'DATA_FATURADO'
      Origin = 'DATA_FATURADO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 792
    Top = 336
  end
  inherited fdTransaction: TFDTransaction
    Left = 792
    Top = 384
  end
  inherited dsCadastro: TDataSource
    Left = 792
    Top = 432
  end
  object dsItens: TDataSource
    DataSet = fdQryItens
    Left = 840
    Top = 240
  end
  object fdQryItens: TFDQuery
    AfterInsert = fdQryItensAfterInsert
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'ID_VENDA_ITEM_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA_ITEM'
    UpdateObject = fdUpdCadastro
    SQL.Strings = (
      'select * from venda_item'
      'where id_venda_cab = :id_venda_cab ')
    Left = 792
    Top = 240
    ParamData = <
      item
        Name = 'ID_VENDA_CAB'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdQryItensID_VENDA_ITEM: TFDAutoIncField
      FieldName = 'ID_VENDA_ITEM'
      Origin = 'ID_VENDA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object fdQryItensQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryItensVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object fdQryItensDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object fdQryItensID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
    end
    object fdQryItensDescricaoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoProduto'
      LookupDataSet = Lookup.fdQryProdutos
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 80
      Lookup = True
    end
    object fdQryItensSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      Calculated = True
    end
    object fdQryItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
end
