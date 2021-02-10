unit uFormFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDmDados, Vcl.Grids, Vcl.DBGrids, uFormCadastroCliente, uFormCadastroCidade;

type
  TformFiltroClientes = class(TformFiltroPai)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    edtFantasia: TEdit;
    edtCnpj: TEdit;
    edtCodigo: TEdit;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    fdQryFiltroID_CLIENTE: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TWideStringField;
    fdQryFiltroFANTASIA: TWideStringField;
    fdQryFiltroCPF_CNPJ: TWideStringField;
    fdQryFiltroTIPO_FJ: TWideStringField;
    fdQryFiltroNOME: TWideStringField;
    fdQryFiltroEMAIL: TWideStringField;
    fdQryFiltroSITE: TWideStringField;
    fdQryFiltroENDERECO: TWideStringField;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure Filtrar;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroClientes: TformFiltroClientes;

implementation

{$R *.dfm}

procedure TformFiltroClientes.btnFiltroClick(Sender: TObject);
begin
  inherited;
 Filtrar;
end;

procedure TformFiltroClientes.Button2Click(Sender: TObject);
begin
  inherited;
  formCadastroCliente := TformCadastroCliente.Create(Self);
  Try
    formCadastroCliente.fdQryCadastro.Insert;
    formCadastroCliente.ShowModal;
  Finally
    FreeAndNil(formCadastroCliente);
  End;
end;

procedure TformFiltroClientes.Button3Click(Sender: TObject);
begin
  inherited;

  formCadastroCliente := TformCadastroCliente.Create(Self);
  Try
    formCadastroCliente.fdQryCadastro.Locate('ID_CLIENTE', fdQryFiltro.FieldByName('ID_CLIENTE').AsInteger,[]);
    formCadastroCliente.ShowModal;
  Finally
    FreeAndNil(formCadastroCliente);
  End;
end;

procedure TformFiltroClientes.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('Select * from cliente');
  fdQryFiltro.SQL.Add(' WHERE 1 = 1');

  if Trim(edtFiltro.Text) <> '' then
    begin
      fdQryFiltro.SQL.Add(' And Upper(TRIM(Razao_Social )) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%'));
    end;

  if Trim(edtFantasia.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add(' And Upper(TRIM(Fantasia)) Like ' + QuotedStr('%' + UpperCase(Trim(edtFantasia.Text)) + '%'));
  end;

  if Trim(edtCnpj.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add(' And Upper(Trim( replace( replace( replace(Cpf_Cnpj, ''.'',''''),''-'',''''),''/'',''''))) Like' + QuotedStr('%' + UpperCase(Trim(edtCnpj.Text)) + '%'));
  end;

  if StrToIntDef(edtCodigo.Text, 0) > 0  then
  begin
    fdQryFiltro.SQL.Add(' And ID_CLIENTE = ' + edtCodigo.Text);
  end;


  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;

end;

end.
