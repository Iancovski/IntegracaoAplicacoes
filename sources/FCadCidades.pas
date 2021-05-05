unit FCadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TfrmCadCidades = class(TfrmRootCadastro)
    edtNome: TDBEdit;
    edtUF: TDBEdit;
    lblNome: TLabel;
    lblUF: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

{$R *.dfm}

uses DCidades, FireDAC.Comp.Client;

procedure TfrmCadCidades.btnCancelarClick(Sender: TObject);
begin
  inherited;
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CancelUpdates();
  Close;
end;

procedure TfrmCadCidades.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DataSource.DataSet.Post;

  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).ApplyUpdates();
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CommitUpdates();

  Close;
end;

procedure TfrmCadCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataSource.DataSet.Refresh;
end;

end.
