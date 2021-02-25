unit uFormCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uLookup, AdvEdit, AdvMoneyEdit,
  DBAdvMoneyEdit, Vcl.Grids, Vcl.DBGrids, uBiblioteca, uDmDados;

type
  TformCadastroVenda = class(TformCadastroPai)
    fdQryCadastroID_VENDA_CAB: TIntegerField;
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroDATA: TDateField;
    fdQryCadastroFATURADO: TWideStringField;
    fdQryCadastroDATA_FATURADO: TDateField;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    edtCliente: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    dsItens: TDataSource;
    fdQryItens: TFDQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    edtDescricaoItem: TDBLookupComboBox;
    edtQuantidade: TDBAdvMoneyEdit;
    edtValorUnitario: TAdvMoneyEdit;
    edtDesconto: TAdvMoneyEdit;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtSubTotal: TAdvMoneyEdit;
    Label9: TLabel;
    edtName: TAdvMoneyEdit;
    Label10: TLabel;
    btnGravarItens: TButton;
    fdQryItensID_VENDA_ITEM: TFDAutoIncField;
    fdQryItensID_PRODUTO: TIntegerField;
    fdQryItensQTD: TSingleField;
    fdQryItensVALOR_UNITARIO: TSingleField;
    fdQryItensDESCONTO: TSingleField;
    fdQryItensID_VENDA_CAB: TIntegerField;
    fdQryItensDescricaoProduto: TStringField;
    fdQryItensSubTotal: TFloatField;
    fdQryItensTotal: TFloatField;
    fdtItens: TFDTransaction;
    edtTotTotal: TAdvMoneyEdit;
    edtTotDesconto: TAdvMoneyEdit;
    edtTotSubtotal: TAdvMoneyEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure fdQryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdQryItensAfterInsert(DataSet: TDataSet);
    procedure fdQryCadastroAfterOpen(DataSet: TDataSet);
    procedure fdQryCadastroAfterScroll(DataSet: TDataSet);
    procedure fdQryItensCalcFields(DataSet: TDataSet);
    procedure fdQryItensAfterPost(DataSet: TDataSet);
    procedure fdQryItensAfterDelete(DataSet: TDataSet);
    procedure fdQryItensAfterCancel(DataSet: TDataSet);
    procedure edtDescricaoItemClick(Sender: TObject);
    procedure btnGravarItensClick(Sender: TObject);
  private
    procedure SetItens(pIdVenda: integer);
    procedure GravarItem;
    procedure SetDadosProduto(pIdProduto: integer);
    procedure Totaliza;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroVenda: TformCadastroVenda;

implementation

{$R *.dfm}

procedure TformCadastroVenda.btnGravarItensClick(Sender: TObject);
begin
  inherited;
  GravarItem;
end;

procedure TformCadastroVenda.edtDescricaoItemClick(Sender: TObject);
begin
  inherited;
  setDadosProduto(edtDescricaoItem.KeyValue);
end;

procedure TformCadastroVenda.fdQryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroDATA.AsDateTime := Date;
end;

procedure TformCadastroVenda.fdQryCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TformCadastroVenda.fdQryCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TformCadastroVenda.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fdQryCadastroDATA_FATURADO.IsNull and (fdQryCadastroFATURADO.AsAnsiString = 'S') then
  begin
    fdQryCadastroDATA_FATURADO.AsDateTime := Date;
  end;

end;

procedure TformCadastroVenda.fdQryItensAfterCancel(DataSet: TDataSet);
begin
  inherited;
  fdtItens.RollbackRetaining;
end;

procedure TformCadastroVenda.fdQryItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  fdtItens.CommitRetaining;
  Totaliza;
end;

procedure TformCadastroVenda.fdQryItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryItensID_VENDA_CAB.AsInteger := fdQryCadastroID_VENDA_CAB.AsInteger;
end;

procedure TformCadastroVenda.fdQryItensAfterPost(DataSet: TDataSet);
begin
  inherited;
  fdtItens.CommitRetaining;
  Totaliza;
end;

procedure TformCadastroVenda.fdQryItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdQryItensSubTotal.AsFloat := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat);
  fdQryItensTotal.AsFloat := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat) - fdQryItensDESCONTO.AsFloat;
end;

procedure TformCadastroVenda.FormCreate(Sender: TObject);
begin
  inherited;
  atualizaFDQuery(Lookup.fdQryProdutos, '');
  atualizaFDQuery(Lookup.fdQryClientes,'');
end;

procedure TformCadastroVenda.GravarItem;
begin
  fdQryItens.Append;
  fdQryItensID_PRODUTO.AsInteger    := Integer(edtDescricaoItem.KeyValue);
  fdQryItensQTD.AsFloat             := edtQuantidade.Value;
  fdQryItensVALOR_UNITARIO.AsFloat  := edtValorUnitario.Value;
  fdQryItensDESCONTO.AsFloat        := edtDesconto.Value;
  fdQryItens.Post;
end;

procedure TformCadastroVenda.SetDadosProduto(pIdProduto: integer);
begin
  edtQuantidade.Value     := 1;
  edtValorUnitario.Value  := Lookup.fdQryProdutosV_UNITARIO.AsFloat;
end;

procedure TformCadastroVenda.SetItens(pIdVenda: integer);
begin
  fdQryItens.Close;
  fdQryItens.ParamByName('ID_VENDA_CAB').AsInteger := pIdVenda;
  AtualizaFDQuery(fdQryItens, '');
  Totaliza;
end;

procedure TformCadastroVenda.Totaliza;
var
  vQryTotais: TFDQuery;
  vSql: string;
begin
  vQryTotais    := TFDQuery.Create(nil);
  vQryTotais.Transaction := fdtItens;
  vQryTotais.Connection := dmDados.fdCon;
  try
    vSql := 'SELECT SUM(QTD * VALOR_UNITARIO) SUBTOTAL, SUM(COALESCE(DESCONTO,0)) DESCONTO, SUM((QTD*VALOR_UNITARIO) - COALESCE(DESCONTO,0)) TOTAL'+ #13 +
         ' FROM VENDA_ITEM' + #13 +
         'WHERE ID_VENDA_CAB = '+ fdQryCadastroID_VENDA_CAB.AsString;
    AtualizaFDQuery(vQryTotais, vSql);

    edtTotSubTotal.Value := vQryTotais.FieldByName('SUBTOTAL').AsFloat;
    edtTotDesconto.Value := vQryTotais.FieldByName('DESCONTO').AsFloat;
    edtTotTotal.Value    := vQryTotais.FieldByName('TOTAL').AsFloat;
  finally
    vQryTotais.Close;
    FreeAndNil(vQryTotais);
  end;
end;

end.
