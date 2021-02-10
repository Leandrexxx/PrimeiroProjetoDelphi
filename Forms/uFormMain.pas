unit uFormMain;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, uFormCadastroCidade,
  uFormCadastroCliente, uFormCadastroEstado, uFormFiltroClientes, uFormFiltroPai;

type
  TformMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvGlowButton2: TAdvGlowButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvGlowButton3: TAdvGlowButton;
    AdvToolBar3: TAdvToolBar;
    btnFiltroClientes: TAdvGlowButton;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btnFiltroClientesClick(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

{$R *.dfm}


procedure TformMain.AdvGlowButton1Click(Sender: TObject);
begin
  formCadastroEstado := TformCadastroEstado.Create(Self); //Aqui ele instancia e cria

  try
    formCadastroEstado.ShowModal; //Aqui ele mostra
  finally
    FreeAndNil(formCadastroEstado); //Aqui ele destroi quando eu fechar a Janela
  end;
end;

procedure TformMain.AdvGlowButton2Click(Sender: TObject);
begin
  formCadastroCliente :=  TformCadastroCliente.Create(Self); //Aqui ele instancia e cria

  Try
    formCadastroCliente.ShowModal;  //Aqui ele mostra -- Show Modal é uma function, ele retorna um integer
  Finally
    FreeAndNil(formCadastroCliente); //Aqui ele destroi quando eu fechar a Janela
  End;
end;

procedure TformMain.AdvGlowButton3Click(Sender: TObject);
begin
  formCadastroCidade := TformCadastroCidade.Create(Self);

  Try
    formCadastroCidade.ShowModal;
  Finally
    FreeAndNil(formCadastroCidade);
  End;
end;

procedure TformMain.btnFiltroClientesClick(Sender: TObject);
begin
  try
    formFiltroClientes := tformFiltroClientes.create(self);
    formFiltroClientes.Show;
  finally

  end;
end;

end.
