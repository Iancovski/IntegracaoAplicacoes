unit FConsTerceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmConsTerceiros = class(TfrmRootConsulta)
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsTerceiros: TfrmConsTerceiros;

implementation

{$R *.dfm}

uses DTerceiros, FCadTerceiros, FireDAC.Comp.Client;

procedure TfrmConsTerceiros.btnAlterarClick(Sender: TObject);
var
  vForm: TfrmCadTerceiros;
begin
  inherited;
  if DataSource.DataSet.IsEmpty then begin
    Application.MessageBox('Não há registros para alterar.', 'Atenção', MB_ICONWARNING);
    Exit;
  end;

  DataSource.DataSet.Edit;

  try
    vForm := TfrmCadTerceiros.Create(Self);
    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TfrmConsTerceiros.btnExcluirClick(Sender: TObject);
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

procedure TfrmConsTerceiros.btnIncluirClick(Sender: TObject);
var
  vForm: TfrmCadTerceiros;
begin
  inherited;
  DataSource.DataSet.Append;

  try
    vForm := TfrmCadTerceiros.Create(Self);
    vForm.ShowModal;
  finally
    FreeAndNil(vForm);
  end;
end;

end.
