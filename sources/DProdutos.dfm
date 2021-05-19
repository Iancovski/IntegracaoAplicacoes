object dmProdutos: TdmProdutos
  OldCreateOrder = False
  Height = 173
  Width = 429
  object fdProdutos: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConnection
    SchemaAdapter = fdSchemaAdapter
    SQL.Strings = (
      'select P.ID,'
      '       P.NOME,'
      '       P.ID_MARCA,'
      '       P.ID_CATEGORIA,'
      '       P.BARRAS,'
      '       P.VLR_CUSTO,'
      '       P.VLR_PRECO,'
      '       P.QTD_ESTOQUE,'
      '       M.NOME as NOME_MARCA,'
      '       C.NOME as NOME_CATEGORIA'
      'from PRODUTO P'
      'left join MARCA M on M.ID = P.ID_MARCA'
      'left join CATEGORIA C on C.ID = P.ID_CATEGORIA')
    Left = 40
    Top = 40
    object fdProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdProdutosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object fdProdutosid_marca: TIntegerField
      FieldName = 'id_marca'
      Origin = 'id_marca'
      Required = True
      OnValidate = fdProdutosid_marcaValidate
    end
    object fdProdutosid_categoria: TIntegerField
      FieldName = 'id_categoria'
      Origin = 'id_categoria'
      Required = True
      OnValidate = fdProdutosid_categoriaValidate
    end
    object fdProdutosbarras: TWideStringField
      FieldName = 'barras'
      Origin = 'barras'
    end
    object fdProdutosvlr_custo: TFloatField
      FieldName = 'vlr_custo'
      Origin = 'vlr_custo'
      Required = True
    end
    object fdProdutosvlr_preco: TFloatField
      FieldName = 'vlr_preco'
      Origin = 'vlr_preco'
      Required = True
    end
    object fdProdutosqtd_estoque: TFloatField
      FieldName = 'qtd_estoque'
      Origin = 'qtd_estoque'
    end
    object fdProdutosnome_marca: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_marca'
      Origin = 'nome'
      ProviderFlags = []
      Size = 100
    end
    object fdProdutosnome_categoria: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_categoria'
      Origin = 'nome'
      ProviderFlags = []
      Size = 50
    end
  end
  object fdSchemaAdapter: TFDSchemaAdapter
    Left = 352
    Top = 40
  end
end
