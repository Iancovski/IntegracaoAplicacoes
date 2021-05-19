inherited frmCadTerceiros: TfrmCadTerceiros
  Caption = 'Cadastro de Terceiros'
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
      Width = 63
      Height = 16
      Caption = 'CPF/CNPJ*'
    end
    object Label2: TLabel [3]
      Left = 28
      Top = 322
      Width = 53
      Height = 16
      Caption = 'Endere'#231'o'
    end
    object Label3: TLabel [4]
      Left = 28
      Top = 386
      Width = 34
      Height = 16
      Caption = 'Bairro'
    end
    object Label4: TLabel [5]
      Left = 344
      Top = 386
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
    end
    object Label5: TLabel [6]
      Left = 28
      Top = 450
      Width = 39
      Height = 16
      Caption = 'Cidade'
    end
    inherited pnlTitulo: TPanel
      Caption = 'Cadastro de Terceiros'
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
    object edtCpfCnpj: TDBEdit
      Left = 28
      Top = 280
      Width = 400
      Height = 24
      DataField = 'cpf_cnpj'
      DataSource = DataSource
      TabOrder = 4
    end
    object edtEndereco: TDBEdit
      Left = 28
      Top = 344
      Width = 400
      Height = 24
      DataField = 'endereco'
      DataSource = DataSource
      TabOrder = 5
    end
    object edtBairro: TDBEdit
      Left = 28
      Top = 408
      Width = 300
      Height = 24
      DataField = 'bairro'
      DataSource = DataSource
      TabOrder = 6
    end
    object edtNumero: TDBEdit
      Left = 344
      Top = 408
      Width = 84
      Height = 24
      DataField = 'numero'
      DataSource = DataSource
      TabOrder = 7
    end
    object edtNomeCidade: TDBEdit
      Left = 128
      Top = 472
      Width = 300
      Height = 24
      DataField = 'nome_cidade'
      DataSource = DataSource
      Enabled = False
      TabOrder = 9
    end
    object edtIdCidade: TDBEdit
      Left = 28
      Top = 472
      Width = 100
      Height = 24
      DataField = 'id_cidade'
      DataSource = DataSource
      TabOrder = 8
    end
  end
  object chkCliente: TDBCheckBox [1]
    Left = 28
    Top = 520
    Width = 97
    Height = 17
    Caption = 'Cliente'
    DataField = 'cliente'
    DataSource = DataSource
    TabOrder = 1
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object chkFornecedor: TDBCheckBox [2]
    Left = 180
    Top = 520
    Width = 97
    Height = 17
    Caption = 'Fornecedor'
    DataField = 'fornecedor'
    DataSource = DataSource
    TabOrder = 2
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object chkVendedor: TDBCheckBox [3]
    Left = 351
    Top = 520
    Width = 77
    Height = 17
    Caption = 'Vendedor'
    DataField = 'vendedor'
    DataSource = DataSource
    TabOrder = 3
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  inherited DataSource: TDataSource
    DataSet = dmTerceiros.fdTerceiros
  end
end
