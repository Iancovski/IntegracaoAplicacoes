unit FCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadProdutos = class(TfrmRootCadastro)
    edtNome: TDBEdit;
    lblNome: TLabel;
    edtMarca: TDBEdit;
    Label1: TLabel;
    edtCategoria: TDBEdit;
    Label2: TLabel;
    edtVlrCusto: TDBEdit;
    Label3: TLabel;
    edtVlrPreco: TDBEdit;
    Label4: TLabel;
    edtBarras: TDBEdit;
    Label5: TLabel;
    edtQtdEstoque: TDBEdit;
    Label6: TLabel;
    edtNomeMarca: TDBEdit;
    edtNomeCategoria: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

uses DProdutos, FireDAC.Comp.Client;

procedure TfrmCadProdutos.btnCancelarClick(Sender: TObject);
begin
  inherited;
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CancelUpdates();
  Close;
end;

procedure TfrmCadProdutos.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DataSource.DataSet.Post;

  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).ApplyUpdates();
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CommitUpdates();

  Close;
end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataSource.DataSet.Refresh;
end;

end.
