inherited frmCadMarcas: TfrmCadMarcas
  Caption = 'Cadastro de Marcas'
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
    inherited pnlTitulo: TPanel
      Caption = 'Cadastro de Marcas'
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
  end
  inherited DataSource: TDataSource
    DataSet = dmMarcas.fdMarcas
  end
end
