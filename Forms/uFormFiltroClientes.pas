unit uFormFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDmDados, Vcl.Grids, Vcl.DBGrids;

type
  TformFiltroPai1 = class(TformFiltroPai)
    DBGrid1: TDBGrid;
  private
    procedure Filtrar;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroPai1: TformFiltroPai1;

implementation

{$R *.dfm}

procedure TformFiltroPai1.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('Select * from cliente');
  fdQryFiltro.SQL.Add(' WHERE 1 = 1');

  if Trim(edtFiltro.Text) <> '' then
    begin
      fdQryFiltro.SQL.Add( ' And Upper(TRIM(Razao_Social )) = ' + QuotedStr(UpperCase(Trim(edtFiltro.Text))));
    end;

      fdQryFiltro.Open();
      fdQryFiltro.FetchAll;

end;

end.
