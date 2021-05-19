inherited frmConsCategorias: TfrmConsCategorias
  Caption = 'Categorias'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlGeral: TPanel
    inherited pnlTitulo: TPanel
      Caption = 'Categorias'
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
        end>
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCategorias.fdCategorias
  end
end
