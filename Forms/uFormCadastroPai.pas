unit uFormCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uDmDados, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  TformCadastroPai = class(TForm)
    pnCabecalho: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdQryCadastro: TFDQuery;
    fdUpdCadastro: TFDUpdateSQL;
    fdTransaction: TFDTransaction;
    dsCadastro: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroPai: TformCadastroPai;

implementation

{$R *.dfm}

procedure TformCadastroPai.btnNovoClick(Sender: TObject);
begin
  if not (fdQryCadastro.State in [dsEdit, dsInsert]) then
begin
  fdQryCadastro.Insert;
end;

end;

procedure TformCadastroPai.btnGravarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
  begin
    fdTransaction.StartTransaction;
    fdQryCadastro.Post;
    fdTransaction.CommitRetaining;
    ShowMessage('Pronto');
  end;
end;

procedure TformCadastroPai.btnCancelarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then begin
    fdQryCadastro.Cancel;
    fdTransaction.RollbackRetaining;
  end;

end;

procedure TformCadastroPai.btnExcluirClick(Sender: TObject);
begin
  fdQryCadastro.Edit;
  fdQryCadastro.FieldByName('DTEXCLUIDO').AsDateTime := Date;
  fdTransaction.StartTransaction;
  fdQryCadastro.Post;
  fdTransaction.CommitRetaining;
end;

procedure TformCadastroPai.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TformCadastroPai.FormCreate(Sender: TObject);
begin
   fdQryCadastro.Open();
end;

end.
