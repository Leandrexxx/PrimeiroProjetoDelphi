unit uFormFiltroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.ExtCtrls, uFormCadastroProduto;

type
  TformFiltroProdutos = class(TformFiltroPai)
    DBGrid1: TDBGrid;
    edtDescricao: TEdit;
    Label2: TLabel;
    fdQryFiltroID_PRODUTO: TIntegerField;
    fdQryFiltroDESCRICAO: TWideStringField;
    fdQryFiltroQTD: TSingleField;
    fdQryFiltroCUSTO: TSingleField;
    fdQryFiltroV_UNITARIO: TSingleField;
    fdQryFiltroUNIDADE: TWideStringField;
    fdQryFiltroPESO_LIQUIDO: TSingleField;
    fdQryFiltroPESO_BRUTO: TSingleField;
    fdQryFiltroFABRICANTE: TWideStringField;
    fdQryFiltroMARCA_MODELO: TWideStringField;
    fdQryFiltroFORNECEDOR: TWideStringField;
    Button2: TButton;
    Button3: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  formFiltroProdutos: TformFiltroProdutos;

implementation

{$R *.dfm}

procedure TformFiltroProdutos.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TformFiltroProdutos.Button2Click(Sender: TObject);
begin
  inherited;
  formCadastroProduto := TformCadastroProduto.Create(Self);
  Try
    formCadastroProduto.fdQryCadastro.Insert;
    formCadastroProduto.ShowModal;
  Finally
    FreeAndNil(formCadastroProduto);
  End;
end;

procedure TformFiltroProdutos.Button3Click(Sender: TObject);
begin
  inherited;

  formCadastroProduto := TformCadastroProduto .Create(Self);
  Try
    formCadastroProduto .fdQryCadastro.Locate('ID_PRODUTO', fdQryFiltro.FieldByName('ID_PRODUTO').AsInteger,[]);
    formCadastroProduto .ShowModal;
  Finally
    FreeAndNil(formCadastroProduto );
  End;
end;

procedure TformFiltroProdutos.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add(' select p.id_produto,');
  fdQryFiltro.SQL.Add('        p.descricao,');
  fdQryFiltro.SQL.Add('        p.qtd,');
  fdQryFiltro.SQL.Add('        p.custo,');
  fdQryFiltro.SQL.Add('        p.v_unitario,');
  fdQryFiltro.SQL.Add('        p.unidade,');
  fdQryFiltro.SQL.Add('        p.peso_liquido,');
  fdQryFiltro.SQL.Add('        p.peso_bruto,');
  fdQryFiltro.SQL.Add('        p.fabricante,');
  fdQryFiltro.SQL.Add('        p.marca_modelo,');
  fdQryFiltro.SQL.Add('        f.razao_social as fornecedor');
  fdQryFiltro.SQL.Add(' from  produto p left join fornecedores f on f.id_fornecedor = p.id_fornecedor');
  fdQryFiltro.SQL.Add(' where 1 = 1');

  if StrToIntDef(edtFiltro.Text, 0) > 0 then
  begin
     fdQryFiltro.SQL.Add('And p.id_produto = ' + edtFiltro.Text);
  end;

  if Trim(edtDescricao.Text) <> ''  then
  begin
    fdQryFiltro.SQL.Add('And Upper(p.descricao) like ' + QuotedStr('%' + UpperCase(Trim(edtDescricao.Text) + '%') ) );
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
