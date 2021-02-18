inherited formFiltroProdutos: TformFiltroProdutos
  Caption = 'Filtro de Produtos'
  ClientWidth = 880
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 896
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 880
    inherited Label1: TLabel
      Width = 33
      Caption = 'Codigo'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 126
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited edtFiltro: TEdit
      Width = 99
      ExplicitWidth = 99
    end
    inherited btnFiltro: TButton
      Left = 480
      OnClick = btnFiltroClick
      ExplicitLeft = 480
    end
    inherited Panel2: TPanel
      Left = 754
    end
    object edtDescricao: TEdit
      Left = 126
      Top = 43
      Width = 339
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 585
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 674
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Vizualizar'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 105
    Width = 880
    Height = 418
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
      'select  p.id_produto,'
      '        p.descricao,'
      '        p.qtd,'
      '        p.custo,'
      '        p.v_unitario,'
      '        p.unidade,'
      '        p.peso_liquido,'
      '        p.peso_bruto,'
      '        p.fabricante,'
      '        p.marca_modelo,'
      '        f.razao_social as fornecedor'
      'from  produto p'
      'left join fornecedores f'
      'on f.id_fornecedor = p.id_fornecedor'
      'where 1 = 1')
    object fdQryFiltroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryFiltroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryFiltroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryFiltroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryFiltroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      FixedChar = True
      Size = 4
    end
    object fdQryFiltroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryFiltroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryFiltroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryFiltroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryFiltroFORNECEDOR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  inherited dsFiltro: TDataSource
    DataSet = fdQryFiltro
  end
end
