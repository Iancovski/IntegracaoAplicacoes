unit DCidades;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmCidades = class(TDataModule)
    fdCidades: TFDQuery;
    fdCidadesid: TFDAutoIncField;
    fdCidadesnome: TWideStringField;
    fdCidadesuf: TWideStringField;
    fdSchemaAdapter: TFDSchemaAdapter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCidades: TdmCidades;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FPrincipal;

{$R *.dfm}

end.
