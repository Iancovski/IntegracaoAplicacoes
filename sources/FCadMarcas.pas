unit FCadMarcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, DMarcas;

type
  TfrmCadMarcas = class(TfrmRootCadastro)
    lblNome: TLabel;
    edtNome: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMarcas: TfrmCadMarcas;

implementation

uses
  FireDAC.Comp.Client;

{$R *.dfm}

procedure TfrmCadMarcas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CancelUpdates();
  Close;
end;

procedure TfrmCadMarcas.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DataSource.DataSet.Post;

  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).ApplyUpdates();
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CommitUpdates();

  Close;
end;

procedure TfrmCadMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataSource.DataSet.Refresh;
end;

end.
