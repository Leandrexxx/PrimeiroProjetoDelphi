unit uFormFiltroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDmDados;

type
  TformFiltroPai = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    btnConsulta: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroPai: TformFiltroPai;

implementation

{$R *.dfm}

end.
