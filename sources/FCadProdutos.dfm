inherited frmCadProdutos: TfrmCadProdutos
  Caption = 'Cadastro de Produtos'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlGeral: TPanel
    object lblNome: TLabel [1]
      Left = 28
      Top = 194
      Width = 41
      Height = 16
      Caption = 'Nome*'
    end
    object Label1: TLabel [2]
      Left = 28
      Top = 258
      Width = 35
      Height = 16
      Caption = 'Marca'
    end
    object Label2: TLabel [3]
      Left = 28
      Top = 322
      Width = 55
      Height = 16
      Caption = 'Categoria'
    end
    object Label3: TLabel [4]
      Left = 28
      Top = 386
      Width = 84
      Height = 16
      Caption = 'Valor de Custo'
    end
    object Label4: TLabel [5]
      Left = 238
      Top = 386
      Width = 90
      Height = 16
      Caption = 'Pre'#231'o de Venda'
    end
    object Label5: TLabel [6]
      Left = 28
      Top = 450
      Width = 98
      Height = 16
      Caption = 'C'#243'digo de Barras'
    end
    object Label6: TLabel [7]
      Left = 238
      Top = 450
      Width = 136
      Height = 16
      Caption = 'Quantidade em Estoque'
    end
    inherited pnlTitulo: TPanel
      Caption = 'Cadastro de Produtos'
    end
    inherited pnlBotoes: TPanel
      inherited btnCancelar: TSpeedButton
        OnClick = btnCancelarClick
      end
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
    inherited edtCodigo: TDBEdit
      DataSource = DataSource
    end
    object edtNome: TDBEdit
      Left = 28
      Top = 216
      Width = 400
      Height = 24
      DataField = 'nome'
      DataSource = DataSource
      TabOrder = 3
    end
    object edtMarca: TDBEdit
      Left = 28
      Top = 280
      Width = 100
      Height = 24
      DataField = 'id_marca'
      DataSource = DataSource
      TabOrder = 4
    end
    object edtCategoria: TDBEdit
      Left = 28
      Top = 344
      Width = 100
      Height = 24
      DataField = 'id_categoria'
      DataSource = DataSource
      TabOrder = 5
    end
    object edtVlrCusto: TDBEdit
      Left = 28
      Top = 408
      Width = 190
      Height = 24
      DataField = 'vlr_custo'
      DataSource = DataSource
      TabOrder = 6
    end
    object edtVlrPreco: TDBEdit
      Left = 238
      Top = 408
      Width = 190
      Height = 24
      DataField = 'vlr_preco'
      DataSource = DataSource
      TabOrder = 7
    end
    object edtBarras: TDBEdit
      Left = 28
      Top = 472
      Width = 190
      Height = 24
      DataField = 'barras'
      DataSource = DataSource
      TabOrder = 8
    end
    object edtQtdEstoque: TDBEdit
      Left = 238
      Top = 472
      Width = 190
      Height = 24
      DataField = 'qtd_estoque'
      DataSource = DataSource
      TabOrder = 9
    end
    object edtNomeMarca: TDBEdit
      Left = 128
      Top = 280
      Width = 300
      Height = 24
      DataField = 'nome_marca'
      DataSource = DataSource
      Enabled = False
      TabOrder = 10
    end
    object edtNomeCategoria: TDBEdit
      Left = 128
      Top = 344
      Width = 300
      Height = 24
      DataField = 'nome_categoria'
      DataSource = DataSource
      Enabled = False
      TabOrder = 11
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmProdutos.fdProdutos
  end
end
