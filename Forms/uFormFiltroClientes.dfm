inherited formFiltroPai1: TformFiltroPai1
  Caption = 'Filtro de Clientes'
  ClientWidth = 1031
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
    inherited edtFiltro: TEdit
      Width = 323
      ExplicitWidth = 323
    end
    inherited btnFiltro: TButton
      Left = 352
      ExplicitLeft = 352
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
    Active = True
    SQL.Strings = (
      'select * from cliente')
    Left = 656
    Top = 344
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
