unit uFormCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uLookup,
  uDmDados, uFormCadastroCliente, uFormCadastroEstado, uFormCadastroCidade,
  Vcl.Mask, Vcl.DBCtrls

  ;

type
  TformCadastroFornecedor = class(TformCadastroPai)
    fdQryCadastroID_FORNECEDOR: TIntegerField;
    fdQryCadastroRAZAO_SOCIAL: TWideStringField;
    fdQryCadastroFANTASIA: TWideStringField;
    fdQryCadastroCNPJ: TWideStringField;
    fdQryCadastroENDERECO: TWideStringField;
    fdQryCadastroBAIRRO: TWideStringField;
    fdQryCadastroID_CIDADE: TIntegerField;
    fdQryCadastroID_ESTADO: TIntegerField;
    fdQryCadastroEMAIL: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    edtRazaoSocial: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroFornecedor: TformCadastroFornecedor;

implementation

{$R *.dfm}

procedure TformCadastroFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  Lookup.fdQryEstados.Open();
  Lookup.fdQryEstados.FetchAll;

  Lookup.fdQryCidades.Open();
  lookup.fdQryCidades.FetchAll;

  edtRazaoSocial.SetFocus;
end;

end.
