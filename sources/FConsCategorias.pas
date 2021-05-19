unit FConsCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmConsCategorias = class(TfrmRootConsulta)
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCategorias: TfrmConsCategorias;

implementation

{$R *.dfm}

uses DCategorias, FireDAC.Comp.Client, FCadCategorias;

procedure TfrmConsCategorias.btnAlterarClick(Sender: TObject);
var
  vForm: TfrmCadCategorias;
begin
  inherited;
  if DataSource.DataSet.IsEmpty then begin
    Application.MessageBox('Não há registros para alterar.', 'Atenção', MB_ICONWARNING);
    Exit;
  end;

  DataSource.DataSet.Edit;

  try
    vForm := TfrmCadCategorias.Create(Self);
    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TfrmConsCategorias.btnExcluirClick(Sender: TObject);
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

procedure TfrmConsCategorias.btnIncluirClick(Sender: TObject);
var
  vForm: TfrmCadCategorias;
begin
  inherited;
  DataSource.DataSet.Append;

  try
    vForm := TfrmCadCategorias.Create(Self);
    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

end.
