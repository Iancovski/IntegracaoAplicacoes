unit DCategorias;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TdmCategorias = class(TDataModule)
    fdCategorias: TFDQuery;
    fdSchemaAdapter: TFDSchemaAdapter;
    fdCategoriasid: TFDAutoIncField;
    fdCategoriasnome: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCategorias: TdmCategorias;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FPrincipal;

{$R *.dfm}

end.
