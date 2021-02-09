object formFiltroPai: TformFiltroPai
  Left = 0
  Top = 0
  Caption = 'formFiltroPai'
  ClientHeight = 523
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtFiltro: TEdit
      Left = 14
      Top = 43
      Width = 331
      Height = 21
      TabOrder = 0
    end
    object btnFiltro: TButton
      Left = 360
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
    end
  end
  object fdQryFiltro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    Left = 464
    Top = 144
  end
  object dsFiltro: TDataSource
    Left = 448
    Top = 224
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 528
    Top = 184
  end
end
