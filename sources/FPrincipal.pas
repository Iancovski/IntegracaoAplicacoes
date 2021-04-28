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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
