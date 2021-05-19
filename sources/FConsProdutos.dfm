inherited frmConsProdutos: TfrmConsProdutos
  Caption = 'Produtos'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlGeral: TPanel
    inherited pnlTitulo: TPanel
      Caption = 'Produtos'
    end
    inherited pnlBotoes: TPanel
      inherited btnExcluir: TSpeedButton
        OnClick = btnExcluirClick
      end
      inherited btnAlterar: TSpeedButton
        OnClick = btnAlterarClick
      end
      inherited btnIncluir: TSpeedButton
        OnClick = btnIncluirClick
      end
    end
    inherited DBGrid: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'barras'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo de Barras'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_marca'
          Title.Alignment = taCenter
          Title.Caption = 'Marca'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_marca'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Marca'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_categoria'
          Title.Alignment = taCenter
          Title.Caption = 'Categoria'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_categoria'
          Title.Alignment = taCenter
          Title.Caption = 'Categoria'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_custo'
          Title.Alignment = taCenter
          Title.Caption = 'Valor de Custo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_preco'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o de Venda'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtd_estoque'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade em Estoque'
          Width = 150
          Visible = True
        end>
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmProdutos.fdProdutos
  end
end
