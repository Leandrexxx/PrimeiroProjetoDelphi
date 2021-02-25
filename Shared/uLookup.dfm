object Lookup: TLookup
  OldCreateOrder = False
  Height = 263
  Width = 518
  object fdQryEstados: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'select * from estado')
    Left = 120
    Top = 40
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 120
    Top = 88
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 40
    Top = 40
  end
  object fdQryCidades: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'select * from cidade')
    Left = 200
    Top = 40
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 200
    Top = 88
  end
  object fdQryFornecedor: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'select * from fornecedores')
    Left = 288
    Top = 40
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 288
    Top = 96
  end
  object fdQryClientes: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'select id_cliente,'
      '       decode(tipo_fj,'#39'F'#39',nome,razao_social) NomeCliente '
      'from cliente')
    Left = 384
    Top = 48
  end
  object dsClientes: TDataSource
    DataSet = fdQryClientes
    Left = 384
    Top = 104
  end
  object fdQryProdutos: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'Select id_produto,'
      '       descricao,'
      'v_unitario'
      'from produto')
    Left = 456
    Top = 48
    object fdQryProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryProdutosDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryProdutosV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
  end
  object dsProdutos: TDataSource
    DataSet = fdQryProdutos
    Left = 456
    Top = 104
  end
end
