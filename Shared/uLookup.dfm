object Lookup: TLookup
  OldCreateOrder = False
  Height = 263
  Width = 518
  object fdQryEstados: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'select * from estado')
    Left = 288
    Top = 48
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 288
    Top = 96
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 56
    Top = 40
  end
  object fdQryCidades: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'select * from cidade')
    Left = 368
    Top = 48
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 368
    Top = 96
  end
end
