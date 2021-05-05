object dmCidades: TdmCidades
  OldCreateOrder = False
  Height = 434
  Width = 557
  object fdCidades: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConnection
    SchemaAdapter = fdSchemaAdapter
    SQL.Strings = (
      'select ID,'
      '       NOME,'
      '       UF'
      'from CIDADE')
    Left = 40
    Top = 40
    object fdCidadesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdCidadesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object fdCidadesuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object fdSchemaAdapter: TFDSchemaAdapter
    Left = 464
    Top = 40
  end
end
