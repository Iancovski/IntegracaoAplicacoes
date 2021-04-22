unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Data.DBXMySQL, Data.DB, Data.SqlExpr;

type
  TfrmPrincipal = class(TForm)
    ImageList: TImageList;
    pnlToolBar: TPanel;
    SQLConnection: TSQLConnection;
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
