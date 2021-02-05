unit uFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBiblioteca, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TformConfigBanco = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    btnConfigurar: TButton;
    opnPastas: TOpenDialog;
    procedure btnConfigurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure Configura;

  public
    { Public declarations }
  end;

var
  formConfigBanco: TformConfigBanco;

implementation

{$R *.dfm}

{ TformConfigBanco }

procedure TformConfigBanco.btnConfigurarClick(Sender: TObject);
begin
   Configura;
end;

procedure TformConfigBanco.Configura;
var
  vFileName: string;
begin
  if opnPastas.Execute  then
  begin
    edtLocal.text := opnPastas.FileName;
    vFileName := ExtractFilePath(Application.ExeName) + 'config.ini';
    SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
    ShowMessage ( ' Pronto ');
    Self.Close;

  end;
end;

procedure TformConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;

end;

end.
