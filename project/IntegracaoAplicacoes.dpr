program IntegracaoAplicacoes;

uses
  Vcl.Forms,
  FPrincipal in '..\sources\FPrincipal.pas' {frmPrincipal},
  FRootConsulta in '..\sources\root\FRootConsulta.pas' {frmRootConsulta},
  FRootCadastro in '..\sources\root\FRootCadastro.pas' {frmRootCadastro},
  FConsCidades in '..\sources\FConsCidades.pas' {frmConsCidades},
  FCadCidades in '..\sources\FCadCidades.pas' {frmCadCidades},
  DCidades in '..\sources\DCidades.pas' {dmCidades: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
