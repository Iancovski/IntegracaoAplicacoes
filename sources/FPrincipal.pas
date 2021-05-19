unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB;

type
  TfrmPrincipal = class(TForm)
    ImageList: TImageList;
    pnlToolBar: TPanel;
    tbrMenu: TToolBar;
    btnPrincipal: TToolButton;
    btnVendas: TToolButton;
    btnCompras: TToolButton;
    btnTerceiros: TToolButton;
    btnCidades: TToolButton;
    btnProdutos: TToolButton;
    btnMarcas: TToolButton;
    btnCategorias: TToolButton;
    pnlGeral: TPanel;
    pnlTitulo: TPanel;
    FDConnection: TFDConnection;
    procedure btnCidadesClick(Sender: TObject);
    procedure btnCategoriasClick(Sender: TObject);
    procedure btnTerceirosClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses DCidades, FConsCidades, FConsCategorias, DCategorias, FConsTerceiros,
  DTerceiros, FConsProdutos, DProdutos;

procedure TfrmPrincipal.btnCategoriasClick(Sender: TObject);
var
  vForm: TfrmConsCategorias;
  vDm: TdmCategorias;
begin
  try
    vDm := TdmCategorias.Create(Self);
    vForm := TfrmConsCategorias.Create(Self);

    vDm.fdCategorias.Open();

    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TfrmPrincipal.btnCidadesClick(Sender: TObject);
var
  vForm: TfrmConsCidades;
  vDm: TdmCidades;
begin
  try
    vDm := TdmCidades.Create(Self);
    vForm := TfrmConsCidades.Create(Self);

    vDm.fdCidades.Open();

    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
var
  vForm: TfrmConsProdutos;
  vDm: TdmProdutos;
begin
  try
    vDm := TdmProdutos.Create(Self);
    vForm := TfrmConsProdutos.Create(Self);

    vDm.fdProdutos.Open();

    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TfrmPrincipal.btnTerceirosClick(Sender: TObject);
var
  vForm: TfrmConsTerceiros;
  vDm: TdmTerceiros;
begin
  try
    vDm := TdmTerceiros.Create(Self);
    vForm := TfrmConsTerceiros.Create(Self);

    vDm.fdTerceiros.Open();

    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

end.
