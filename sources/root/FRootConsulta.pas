unit FRootConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmRootConsulta = class(TForm)
    pnlGeral: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    btnExcluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnIncluir: TSpeedButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRootConsulta: TfrmRootConsulta;

implementation

{$R *.dfm}

end.
