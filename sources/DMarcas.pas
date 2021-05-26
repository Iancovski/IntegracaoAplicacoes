unit DMarcas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TdmMarcas = class(TDataModule)
    fdMarcas: TFDQuery;
    fdSchemaAdapter: TFDSchemaAdapter;
    fdMarcasid: TFDAutoIncField;
    fdMarcasnome: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMarcas: TdmMarcas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
