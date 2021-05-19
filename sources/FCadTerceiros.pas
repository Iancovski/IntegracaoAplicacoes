unit FCadTerceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadTerceiros = class(TfrmRootCadastro)
    edtNome: TDBEdit;
    lblNome: TLabel;
    edtCpfCnpj: TDBEdit;
    Label1: TLabel;
    edtEndereco: TDBEdit;
    Label2: TLabel;
    edtBairro: TDBEdit;
    Label3: TLabel;
    edtNumero: TDBEdit;
    Label4: TLabel;
    edtIdCidade: TDBEdit;
    Label5: TLabel;
    edtNomeCidade: TDBEdit;
    chkCliente: TDBCheckBox;
    chkFornecedor: TDBCheckBox;
    chkVendedor: TDBCheckBox;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTerceiros: TfrmCadTerceiros;

implementation

{$R *.dfm}

uses DTerceiros, FireDAC.Comp.Client;

procedure TfrmCadTerceiros.btnCancelarClick(Sender: TObject);
begin
  inherited;
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CancelUpdates();
  Close;
end;

procedure TfrmCadTerceiros.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DataSource.DataSet.Post;

  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).ApplyUpdates();
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CommitUpdates();

  Close;
end;

procedure TfrmCadTerceiros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataSource.DataSet.Refresh;
end;

end.
