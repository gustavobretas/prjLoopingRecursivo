object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Looping Recursivo'
  ClientHeight = 346
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 89
    Height = 346
    Align = alLeft
    Shape = bsSpacer
    ExplicitLeft = -6
  end
  object btnLooping: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Looping'
    TabOrder = 0
    OnClick = btnLoopingClick
  end
  object TreeView: TTreeView
    Left = 89
    Top = 0
    Width = 608
    Height = 346
    Align = alClient
    Indent = 19
    ReadOnly = True
    RightClickSelect = True
    RowSelect = True
    TabOrder = 1
    OnDblClick = TreeViewDblClick
  end
  object btnArvore: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = #193'rvore'
    TabOrder = 2
    OnClick = btnArvoreClick
  end
  object btnSelecionado: TButton
    Left = 8
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Selecionado'
    TabOrder = 3
    OnClick = btnSelecionadoClick
  end
  object btnLoopingArvore: TButton
    Left = 8
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Loop TreeView'
    TabOrder = 4
    OnClick = btnLoopingArvoreClick
  end
  object btnConection: TButton
    Left = 8
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Conection'
    TabOrder = 5
    OnClick = btnConectionClick
  end
  object MainMenu: TMainMenu
    Left = 128
    Top = 8
    object este11: TMenuItem
      Caption = 'Menu 1'
      object Menu1Sub11: TMenuItem
        Caption = 'Menu 1 Sub 1'
      end
      object Menu1Sub21: TMenuItem
        Caption = 'Menu 1 Sub 2'
      end
      object Menu1Sub31: TMenuItem
        Caption = 'Menu 1 Sub 3'
        object Menu1Sub3Sub11: TMenuItem
          Caption = 'Menu 1 Sub 3 Sub 1'
        end
        object Menu1Sub3Sub21: TMenuItem
          Caption = 'Menu 1 Sub 3 Sub 2'
        end
      end
      object Menu1Sub41: TMenuItem
        Caption = 'Menu 1 Sub 4'
      end
      object Menu1Sub51: TMenuItem
        Caption = 'Menu 1 Sub 5'
      end
    end
    object Menu21: TMenuItem
      Caption = 'Menu 2'
      object Menu2Sub11: TMenuItem
        Caption = 'Menu 2 Sub 1'
      end
      object Menu2Sub21: TMenuItem
        Caption = 'Menu 2 Sub 2'
      end
      object Menu2Sub31: TMenuItem
        Caption = 'Menu 2 Sub 3'
      end
      object Menu2Sub41: TMenuItem
        Caption = 'Menu 2 Sub 4'
      end
    end
  end
  object ADOConnection1: TADOConnection
    Left = 40
    Top = 176
  end
end
