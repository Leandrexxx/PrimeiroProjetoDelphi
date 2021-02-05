object formCadastroPai: TformCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'formCadastroPai'
  ClientHeight = 366
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 57
    Align = alTop
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 8
      Top = 5
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 112
      Top = 5
      Width = 75
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 216
      Top = 5
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 320
      Top = 5
      Width = 75
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 616
      Top = 5
      Width = 75
      Height = 41
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    UpdateObject = fdUpdCadastro
    Left = 632
    Top = 144
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = dmDados.fdCon
    Left = 632
    Top = 200
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 632
    Top = 256
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 632
    Top = 96
  end
end
