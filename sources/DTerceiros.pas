unit DTerceiros;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TdmTerceiros = class(TDataModule)
    fdTerceiros: TFDQuery;
    fdSchemaAdapter: TFDSchemaAdapter;
    fdTerceirosid: TFDAutoIncField;
    fdTerceirosnome: TWideStringField;
    fdTerceiroscpf_cnpj: TWideStringField;
    fdTerceirosendereco: TWideStringField;
    fdTerceirosbairro: TWideStringField;
    fdTerceirosnumero: TIntegerField;
    fdTerceirosid_cidade: TIntegerField;
    fdTerceirostelefone: TWideStringField;
    fdTerceirosemail: TWideStringField;
    fdTerceirosnome_cidade: TWideStringField;
    fdTerceiroscliente: TWideStringField;
    fdTerceirosfornecedor: TWideStringField;
    fdTerceirosvendedor: TWideStringField;
    procedure fdTerceirosid_cidadeValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTerceiros: TdmTerceiros;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FPrincipal, Vcl.Forms, Winapi.Windows;

{$R *.dfm}

procedure TdmTerceiros.fdTerceirosid_cidadeValidate(Sender: TField);
var
  vFdPesq: TFDQuery;
begin
  fdTerceirosnome_cidade.Clear;

  if Sender.AsInteger = 0 then
    Exit;

  try
    vFdPesq := TFDQuery.Create(Self);
    vFdPesq.Connection := frmPrincipal.FDConnection;
    vFdPesq.SQL.Add('select NOME from CIDADE where ID = :ID');
    vFdPesq.Params.ParamByName('ID').AsInteger := Sender.AsInteger;
    vFdPesq.Open();

    if vFdPesq.IsEmpty then begin
      Application.MessageBox('Cidade não cadastrada.', 'Atenção', MB_ICONWARNING);
      Abort;
    end
    else
      fdTerceirosnome_cidade.AsString := vFdPesq.Fields.FieldByName('NOME').AsString;
  finally
    FreeAndNil(vFdPesq);
  end;
end;

end.
