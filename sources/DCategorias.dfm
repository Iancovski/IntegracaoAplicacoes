object dmCategorias: TdmCategorias
  OldCreateOrder = False
  Height = 261
  Width = 486
  object fdCategorias: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConnection
    SchemaAdapter = fdSchemaAdapter
    SQL.Strings = (
      'select ID,'
      '       NOME'
      'from CATEGORIA')
    Left = 40
    Top = 40
    object fdCategoriasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdCategoriasnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
  end
  object fdSchemaAdapter: TFDSchemaAdapter
    Left = 408
    Top = 40
  end
end
