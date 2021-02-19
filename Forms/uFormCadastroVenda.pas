unit uFormCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uLookup, AdvEdit, AdvMoneyEdit,
  DBAdvMoneyEdit, Vcl.Grids, Vcl.DBGrids, uBiblioteca;

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
    procedure FormCreate(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure fdQryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdQryItensAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroVenda: TformCadastroVenda;

implementation

{$R *.dfm}

procedure TformCadastroVenda.fdQryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroDATA.AsDateTime := Date;
end;

procedure TformCadastroVenda.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fdQryCadastroDATA_FATURADO.IsNull and (fdQryCadastroFATURADO.AsAnsiString = 'S') then
  begin
    fdQryCadastroDATA_FATURADO.AsDateTime := Date;
  end;

end;

procedure TformCadastroVenda.fdQryItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryItensID_VENDA_CAB.AsInteger := fdQryCadastroID_VENDA_CAB.AsInteger;
end;

procedure TformCadastroVenda.FormCreate(Sender: TObject);
begin
  inherited;
  atualizaFDQuery(Lookup.fdQryProdutos);
  atualizaFDQuery(Lookup.fdQryClientes);
end;

end.
