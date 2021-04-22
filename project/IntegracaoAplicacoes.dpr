program IntegracaoAplicacoes;

uses
  Vcl.Forms,
  FPrincipal in '..\sources\FPrincipal.pas' {frmPrincipal},
  FRootConsulta in '..\sources\root\FRootConsulta.pas' {frmRootConsulta},
  FRootCadastro in '..\sources\root\FRootCadastro.pas' {frmRootCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRootConsulta, frmRootConsulta);
  Application.CreateForm(TfrmRootCadastro, frmRootCadastro);
  Application.Run;
end.
