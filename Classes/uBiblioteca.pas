unit uBiblioteca;

interface
uses IniFiles, System.SysUtils, Vcl.Forms, FireDAC.Comp.Client;

procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor: string);
function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
procedure AtualizaFDQuery(const pFDQuery: TFDQuery);

implementation

procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor: string);
var vArquivo: TIniFile;
begin
   vArquivo := TIniFile.Create(pLocal);

   vArquivo.WriteString(pSessao, pSubSessao, pValor );

   vArquivo.Free;

end;

function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
var vArquivo: TIniFile;

begin
  vArquivo := TIniFile.Create(pLocal);

  Result := vArquivo.ReadString(pSessao, pSubSessao, '');

  vArquivo.Free;
end;

procedure AtualizaFDQuery(const pFDQuery: TFDQuery);
begin
  pFDQuery.Close;
  pFDQuery.Open();
  pFDQuery.FetchAll;
end;
end.
