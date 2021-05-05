unit FRootCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TfrmRootCadastro = class(TForm)
    pnlGeral: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    edtCodigo: TDBEdit;
    lblCodigo: TLabel;
    DataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRootCadastro: TfrmRootCadastro;

implementation

{$R *.dfm}

end.
