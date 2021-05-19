unit DProdutos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TdmProdutos = class(TDataModule)
    fdProdutos: TFDQuery;
    fdSchemaAdapter: TFDSchemaAdapter;
    fdProdutosid: TFDAutoIncField;
    fdProdutosnome: TWideStringField;
    fdProdutosid_marca: TIntegerField;
    fdProdutosid_categoria: TIntegerField;
    fdProdutosbarras: TWideStringField;
    fdProdutosvlr_custo: TFloatField;
    fdProdutosvlr_preco: TFloatField;
    fdProdutosqtd_estoque: TFloatField;
    fdProdutosnome_marca: TWideStringField;
    fdProdutosnome_categoria: TWideStringField;
    procedure fdProdutosid_marcaValidate(Sender: TField);
    procedure fdProdutosid_categoriaValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmProdutos: TdmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FPrincipal, Vcl.Forms, Winapi.Windows;

{$R *.dfm}

procedure TdmProdutos.fdProdutosid_categoriaValidate(Sender: TField);
var
  vFdPesq: TFDQuery;
begin
  fdProdutosnome_categoria.Clear;

  if Sender.AsInteger = 0 then
    Exit;

  try
    vFdPesq := TFDQuery.Create(Self);
    vFdPesq.Connection := frmPrincipal.FDConnection;
    vFdPesq.SQL.Add('select NOME from CATEGORIA where ID = :ID');
    vFdPesq.Params.ParamByName('ID').AsInteger := Sender.AsInteger;
    vFdPesq.Open();

    if vFdPesq.IsEmpty then begin
      Application.MessageBox('Categoria não cadastrada.', 'Atenção', MB_ICONWARNING);
      Abort;
    end
    else
      fdProdutosnome_categoria.AsString := vFdPesq.Fields.FieldByName('NOME').AsString;
  finally
    FreeAndNil(vFdPesq);
  end;
end;

procedure TdmProdutos.fdProdutosid_marcaValidate(Sender: TField);
var
  vFdPesq: TFDQuery;
begin
  fdProdutosnome_marca.Clear;

  if Sender.AsInteger = 0 then
    Exit;

  try
    vFdPesq := TFDQuery.Create(Self);
    vFdPesq.Connection := frmPrincipal.FDConnection;
    vFdPesq.SQL.Add('select NOME from MARCA where ID = :ID');
    vFdPesq.Params.ParamByName('ID').AsInteger := Sender.AsInteger;
    vFdPesq.Open();

    if vFdPesq.IsEmpty then begin
      Application.MessageBox('Marca não cadastrada.', 'Atenção', MB_ICONWARNING);
      Abort;
    end
    else
      fdProdutosnome_marca.AsString := vFdPesq.Fields.FieldByName('NOME').AsString;
  finally
    FreeAndNil(vFdPesq);
  end;
end;

end.
