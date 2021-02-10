inherited formFiltroClientes: TformFiltroClientes
  Caption = 'Filtro de Clientes'
  ClientWidth = 1031
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1047
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1031
    ExplicitWidth = 1031
    inherited Label1: TLabel
      Width = 78
      Caption = 'Nome do Cliente'
      ExplicitWidth = 78
    end
    object Label2: TLabel [1]
      Left = 248
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Fantasia'
    end
    object Label3: TLabel [2]
      Left = 424
      Top = 24
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label4: TLabel [3]
      Left = 560
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited edtFiltro: TEdit
      Width = 219
      ExplicitWidth = 219
    end
    inherited btnFiltro: TButton
      Left = 696
      OnClick = btnFiltroClick
      ExplicitLeft = 696
    end
    inherited Panel2: TPanel
      Left = 905
      ExplicitLeft = 905
      inherited Button1: TButton
        Left = 34
        ExplicitLeft = 34
      end
    end
    object edtFantasia: TEdit
      Left = 248
      Top = 43
      Width = 161
      Height = 21
      TabOrder = 3
    end
    object edtCnpj: TEdit
      Left = 424
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 560
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Button2: TButton
      Left = 777
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 858
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Vizualizar'
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 105
    Width = 1031
    Height = 418
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'C'#243'digo Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Fantasia'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF / CNPJ'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Title.Caption = 'Tipo Pessoa'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'e-mail'
        Width = 200
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'select * from cliente')
    Left = 656
    Top = 344
    object fdQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object fdQryFiltroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryFiltroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      FixedChar = True
      Size = 1
    end
    object fdQryFiltroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryFiltroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
  end
  inherited dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 656
    Top = 288
  end
  inherited fdTransaction: TFDTransaction
    Left = 656
    Top = 240
  end
end
