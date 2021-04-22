unit FRootCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRootCadastro = class(TForm)
    pnlGeral: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
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
