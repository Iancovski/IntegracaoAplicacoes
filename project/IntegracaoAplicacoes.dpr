program IntegracaoAplicacoes;

uses
  Vcl.Forms,
  FPrincipal in '..\sources\FPrincipal.pas' {frmPrincipal},
  FRootConsulta in '..\sources\root\FRootConsulta.pas' {frmRootConsulta},
  FRootCadastro in '..\sources\root\FRootCadastro.pas' {frmRootCadastro},
  FConsCidades in '..\sources\FConsCidades.pas' {frmConsCidades},
  FCadCidades in '..\sources\FCadCidades.pas' {frmCadCidades},
  DCidades in '..\sources\DCidades.pas' {dmCidades: TDataModule},
  FConsCategorias in '..\sources\FConsCategorias.pas' {frmConsCategorias},
  FCadCategorias in '..\sources\FCadCategorias.pas' {frmCadCategorias},
  DCategorias in '..\sources\DCategorias.pas' {dmCategorias: TDataModule},
  FConsTerceiros in '..\sources\FConsTerceiros.pas' {frmConsTerceiros},
  FCadTerceiros in '..\sources\FCadTerceiros.pas' {frmCadTerceiros},
  DTerceiros in '..\sources\DTerceiros.pas' {dmTerceiros: TDataModule},
  FConsProdutos in '..\sources\FConsProdutos.pas' {frmConsProdutos},
  FCadProdutos in '..\sources\FCadProdutos.pas' {frmCadProdutos},
  DProdutos in '..\sources\DProdutos.pas' {dmProdutos: TDataModule},
  DMarcas in '..\sources\DMarcas.pas' {dmMarcas: TDataModule},
  FCadMarcas in '..\sources\FCadMarcas.pas' {frmCadMarcas},
  FConsMarcas in '..\sources\FConsMarcas.pas' {frmConsMarcas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
