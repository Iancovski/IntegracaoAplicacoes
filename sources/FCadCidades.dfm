inherited frmCadCidades: TfrmCadCidades
  Caption = 'Cadastro de Cidades'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlGeral: TPanel
    object lblNome: TLabel [0]
      Left = 28
      Top = 194
      Width = 41
      Height = 16
      Caption = 'Nome*'
    end
    object lblUF: TLabel [1]
      Left = 438
      Top = 194
      Width = 23
      Height = 16
      Caption = 'UF*'
    end
    inherited pnlTitulo: TPanel
      Caption = 'Cadastro de Cidades'
    end
    inherited pnlBotoes: TPanel
      inherited btnCancelar: TSpeedButton
        OnClick = btnCancelarClick
      end
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
    object edtNome: TDBEdit [5]
      Left = 28
      Top = 216
      Width = 400
      Height = 24
      DataField = 'nome'
      DataSource = DataSource
      TabOrder = 2
    end
    object edtUF: TDBEdit [6]
      Left = 438
      Top = 216
      Width = 50
      Height = 24
      DataField = 'uf'
      DataSource = DataSource
      TabOrder = 3
    end
    inherited edtCodigo: TDBEdit
      DataSource = DataSource
      TabOrder = 4
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCidades.fdCidades
  end
end
