program prjCursoBasico;

uses
  Vcl.Forms,
  uDmDados in 'Forms\uDmDados.pas' {dmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {formConfigBanco},
  uFormCadastroPai in 'Forms\uFormCadastroPai.pas' {formCadastroPai},
  uFormCadastroCliente in 'Forms\uFormCadastroCliente.pas' {formCadastroCliente},
  uFormCadastroEstado in 'Forms\uFormCadastroEstado.pas' {formCadastroEstado},
  uFormCadastroCidade in 'Forms\uFormCadastroCidade.pas' {formCadastroCidade},
  uLookup in 'Shared\uLookup.pas' {Lookup: TDataModule},
  uFormMain in 'Forms\uFormMain.pas' {formMain},
  uFormFiltroPai in 'Forms\uFormFiltroPai.pas' {formFiltroPai},
  uFormFiltroClientes in 'Forms\uFormFiltroClientes.pas' {formFiltroClientes},
  uFormCadastroFornecedor in 'Forms\uFormCadastroFornecedor.pas' {formCadastroFornecedor},
  uFormFiltroFornecedor in 'Forms\uFormFiltroFornecedor.pas' {formFiltroFornecedores},
  uFormFiltroProdutos in 'Forms\uFormFiltroProdutos.pas' {formFiltroProdutos},
  uFormCadastroProduto in 'Forms\uFormCadastroProduto.pas' {formCadastroProduto},
  uFormCadastroVenda in 'Forms\uFormCadastroVenda.pas' {formCadastroVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TformConfigBanco, formConfigBanco);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TLookup, Lookup);
  Application.Run;
end.
