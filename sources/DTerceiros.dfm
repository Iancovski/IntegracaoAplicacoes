object dmTerceiros: TdmTerceiros
  OldCreateOrder = False
  Height = 232
  Width = 509
  object fdTerceiros: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConnection
    SchemaAdapter = fdSchemaAdapter
    SQL.Strings = (
      'select T.ID,'
      '       T.NOME,'
      '       T.CPF_CNPJ,'
      '       T.ENDERECO,'
      '       T.BAIRRO,'
      '       T.NUMERO,'
      '       T.ID_CIDADE,'
      '       T.TELEFONE,'
      '       T.EMAIL,'
      '       T.CLIENTE,'
      '       T.FORNECEDOR,'
      '       T.VENDEDOR,'
      '       C.NOME as NOME_CIDADE'
      'from TERCEIRO T'
      'left join CIDADE C on C.ID = T.ID_CIDADE')
    Left = 40
    Top = 40
    object fdTerceirosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdTerceirosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object fdTerceiroscpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
    end
    object fdTerceirosendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object fdTerceirosbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object fdTerceirosnumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
    end
    object fdTerceirosid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      OnValidate = fdTerceirosid_cidadeValidate
    end
    object fdTerceirostelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 100
    end
    object fdTerceirosemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object fdTerceirosnome_cidade: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cidade'
      Origin = 'nome'
      ProviderFlags = []
      Size = 50
    end
    object fdTerceiroscliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
      FixedChar = True
      Size = 1
    end
    object fdTerceirosfornecedor: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      FixedChar = True
      Size = 1
    end
    object fdTerceirosvendedor: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'vendedor'
      Origin = 'vendedor'
      FixedChar = True
      Size = 1
    end
  end
  object fdSchemaAdapter: TFDSchemaAdapter
    Left = 432
    Top = 40
  end
end
