object dmMarcas: TdmMarcas
  OldCreateOrder = False
  Height = 314
  Width = 510
  object fdMarcas: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConnection
    SchemaAdapter = fdSchemaAdapter
    SQL.Strings = (
      'select ID,'
      '       NOME'
      'from MARCA')
    Left = 40
    Top = 40
    object fdMarcasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdMarcasnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
  end
  object fdSchemaAdapter: TFDSchemaAdapter
    Left = 432
    Top = 40
  end
end
