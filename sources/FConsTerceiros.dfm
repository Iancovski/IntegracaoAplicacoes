inherited frmConsTerceiros: TfrmConsTerceiros
  Caption = 'Terceiros'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlGeral: TPanel
    inherited pnlTitulo: TPanel
      Caption = 'Terceiros'
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
          FieldName = 'cpf_cnpj'
          Title.Alignment = taCenter
          Title.Caption = 'CPF/CNPJ'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Title.Alignment = taCenter
          Title.Caption = 'Endere'#231'o'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Title.Alignment = taCenter
          Title.Caption = 'Bairro'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_cidade'
          Title.Alignment = taCenter
          Title.Caption = 'Cidade'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_cidade'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Title.Alignment = taCenter
          Title.Caption = 'Telefone'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Title.Alignment = taCenter
          Title.Caption = 'E-mail'
          Width = 200
          Visible = True
        end>
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmTerceiros.fdTerceiros
  end
end
