unit uFormCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
   Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, MoneyEdit, dbmnyed, uLookup, AdvEdit,
  AdvMoneyEdit, DBAdvMoneyEdit, uBiblioteca;
type
  TformCadastroProduto = class(TformCadastroPai)
    fdQryCadastroID_PRODUTO: TIntegerField;
    fdQryCadastroDESCRICAO: TWideStringField;
    fdQryCadastroQTD: TSingleField;
    fdQryCadastroCUSTO: TSingleField;
    fdQryCadastroV_UNITARIO: TSingleField;
    fdQryCadastroUNIDADE: TWideStringField;
    fdQryCadastroPESO_LIQUIDO: TSingleField;
    fdQryCadastroPESO_BRUTO: TSingleField;
    fdQryCadastroFABRICANTE: TWideStringField;
    fdQryCadastroMARCA_MODELO: TWideStringField;
    fdQryCadastroID_FORNECEDOR: TIntegerField;
    dbDescricao: TDBEdit;
    Label1: TLabel;
    QTD: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    dbmQtd: TDBAdvMoneyEdit;
    dbPesoLiquido: TDBAdvMoneyEdit;
    DBMoneyEdit3: TDBAdvMoneyEdit;
    DBMoneyEdit1: TDBAdvMoneyEdit;
    DBMoneyEdit2: TDBAdvMoneyEdit;
    edtCodigo: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroProduto: TformCadastroProduto;

implementation

{$R *.dfm}

procedure TformCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;
  atualizaFDQuery(Lookup.fdQryFornecedor, '');

end;

end.
