inherited formFiltroFornecedores: TformFiltroFornecedores
  Caption = 'Filtro de Fornecedores'
  ClientWidth = 1031
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1047
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1031
    Height = 137
    ExplicitWidth = 1031
    ExplicitHeight = 137
    inherited Label1: TLabel
      Width = 60
      Caption = 'Raz'#227'o Social'
      ExplicitWidth = 60
    end
    object Label2: TLabel [1]
      Left = 296
      Top = 24
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    inherited edtFiltro: TEdit
      Width = 267
      ExplicitWidth = 267
    end
    inherited btnFiltro: TButton
      Left = 496
      ExplicitLeft = 496
    end
    inherited Panel2: TPanel
      Left = 905
      Height = 135
      ExplicitLeft = 905
      ExplicitHeight = 135
    end
    object edtCnpj: TEdit
      Left = 296
      Top = 43
      Width = 177
      Height = 21
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 137
    Width = 1031
    Height = 386
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'select * from fornecedores')
    Left = 632
    Top = 184
    object fdQryFiltroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryFiltroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryFiltroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object fdQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
  inherited dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 648
    Top = 248
  end
  inherited fdTransaction: TFDTransaction
    Left = 712
    Top = 288
  end
end
