object frmRootConsulta: TfrmRootConsulta
  Left = 0
  Top = 0
  Caption = 'T'#237'tulo'
  ClientHeight = 681
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object pnlGeral: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 681
    Align = alClient
    BevelOuter = bvNone
    Color = 15789036
    ParentBackground = False
    TabOrder = 0
    object pnlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 1264
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      Caption = 'T'#237'tulo'
      Color = 9863764
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pnlBotoes: TPanel
      Left = 0
      Top = 50
      Width = 1264
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      Color = 15393764
      ParentBackground = False
      TabOrder = 1
      object btnExcluir: TSpeedButton
        Left = 200
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        Caption = 'Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 0
      end
      object btnAlterar: TSpeedButton
        Left = 100
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        Caption = 'Alterar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 8
      end
      object btnIncluir: TSpeedButton
        Left = 0
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        Caption = 'Incluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 8
      end
    end
    object DBGrid: TDBGrid
      Left = 0
      Top = 100
      Width = 1264
      Height = 581
      Align = alClient
      Color = 15789036
      DataSource = DataSource
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DataSource: TDataSource
    Left = 616
    Top = 112
  end
end
