unit FConsMarcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmConsMarcas = class(TfrmRootConsulta)
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMarcas: TfrmConsMarcas;

implementation

{$R *.dfm}

uses FCadMarcas, FireDAC.Comp.Client, DMarcas;

procedure TfrmConsMarcas.btnAlterarClick(Sender: TObject);
var
  vForm: TfrmCadMarcas;
begin
  inherited;
  if DataSource.DataSet.IsEmpty then begin
    Application.MessageBox('Não há registros para alterar.', 'Atenção', MB_ICONWARNING);
    Exit;
  end;

  DataSource.DataSet.Edit;

  try
    vForm := TfrmCadMarcas.Create(Self);
    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TfrmConsMarcas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if DataSource.DataSet.IsEmpty then begin
    Application.MessageBox('Não há registros para excluir.', 'Atenção', MB_ICONWARNING);
    Exit;
  end;

  if Application.MessageBox('Deseja excluir o registro selecionado?', 'Atenção', MB_ICONQUESTION + MB_YESNO) = IDNO then
    Exit;

  DataSource.DataSet.Delete;

  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).ApplyUpdates();
  TFDSchemaAdapter(TFDQuery(DataSource.DataSet).SchemaAdapter).CommitUpdates();

  DataSource.DataSet.Refresh;
end;

procedure TfrmConsMarcas.btnIncluirClick(Sender: TObject);
var
  vForm: TfrmCadMarcas;
begin
  inherited;
  DataSource.DataSet.Append;

  try
    vForm := TfrmCadMarcas.Create(Self);
    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

end.
