unit uFormFiltroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TformFiltroFornecedores = class(TformFiltroPai)
    fdQryFiltroID_FORNECEDOR: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TWideStringField;
    fdQryFiltroFANTASIA: TWideStringField;
    fdQryFiltroCNPJ: TWideStringField;
    fdQryFiltroENDERECO: TWideStringField;
    fdQryFiltroBAIRRO: TWideStringField;
    fdQryFiltroID_CIDADE: TIntegerField;
    fdQryFiltroID_ESTADO: TIntegerField;
    fdQryFiltroEMAIL: TWideStringField;
    DBGrid1: TDBGrid;
    edtCnpj: TEdit;
    Label2: TLabel;
  private

    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroFornecedores: TformFiltroFornecedores;

implementation

{$R *.dfm}

{ TformFiltroFornecedores }

procedure TformFiltroFornecedores.Filtrar;
begin
   fdQryFiltro.Close;
   fdQryFiltro.SQL.Clear;
   fdQryFiltro.SQL.Add('SELECT * FROM FORNECEDORES');
   fdQryFiltro.SQL.Add('WHERE 1 = 1');
   if Trim(edtFiltro.Text)<> '' then
   begin
     fdQryFiltro.SQL.Add('AND UPPER(TRIM(RAZAO_SOCIAL)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%'));
   end;

   if Trim(edtFiltro.Text)<> '' then
   begin
     fdQryFiltro.SQL.Add(' And Upper(Trim( replace( replace( replace(Cnpj, ''.'',''''),''-'',''''),''/'',''''))) Like' + QuotedStr('%' + UpperCase(Trim(edtCnpj.Text)) + '%'));
   end;

   fdQryFiltro.Open();
   fdQryFiltro.FetchAll;

end;

end.
