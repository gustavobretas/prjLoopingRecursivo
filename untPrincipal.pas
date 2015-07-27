unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, ComCtrls, StrUtils, Mask, rxToolEdit, DB,
  ADODB, FileCtrl;

type
  TfrmPrincipal = class(TForm)
    MainMenu: TMainMenu;
    este11: TMenuItem;
    Menu1Sub11: TMenuItem;
    Menu1Sub21: TMenuItem;
    Menu1Sub31: TMenuItem;
    Menu1Sub41: TMenuItem;
    Menu1Sub51: TMenuItem;
    Menu21: TMenuItem;
    Menu2Sub11: TMenuItem;
    Menu2Sub21: TMenuItem;
    Menu2Sub31: TMenuItem;
    Menu2Sub41: TMenuItem;
    Menu1Sub3Sub11: TMenuItem;
    Menu1Sub3Sub21: TMenuItem;
    btnLooping: TButton;
    TreeView: TTreeView;
    Bevel1: TBevel;
    btnArvore: TButton;
    btnSelecionado: TButton;
    btnLoopingArvore: TButton;
    ADOConnection1: TADOConnection;
    btnConection: TButton;
    procedure btnLoopingClick(Sender: TObject);
    procedure btnArvoreClick(Sender: TObject);
    procedure btnSelecionadoClick(Sender: TObject);
    procedure TreeViewDblClick(Sender: TObject);
    procedure btnLoopingArvoreClick(Sender: TObject);
    procedure btnConectionClick(Sender: TObject);
  private
    vgoList : TStringList;
    procedure mtdLoopingRecursivo(aoMenuItem : TMenuItem);
    procedure mtdMenuItemToTreeView(aoMenuItem : TMenuItem; aoNode : TTreeNode);
    procedure mtdTreeViewMenuItem(aoTreeView : TTreeView);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TForm2 }

procedure TfrmPrincipal.btnArvoreClick(Sender: TObject);
begin
  TreeView.Items.Clear;
  if not Assigned(vgoList) then
    vgoList := TStringList.Create;
  vgoList.Clear;
  mtdMenuItemToTreeView(MainMenu.Items, nil);
end;

procedure TfrmPrincipal.btnConectionClick(Sender: TObject);
var
  nTeste : String;
begin
//  ADOConnection1.Open();
  PromptForFileName(nTeste, EmptyStr, EmptyStr, EmptyStr, EmptyStr, True);
  ShowMessage(nTeste);
  SelectDirectory('Teste', 'C:', nTeste);
  ShowMessage(nTeste);
end;

procedure TfrmPrincipal.btnLoopingArvoreClick(Sender: TObject);
begin
  mtdTreeViewMenuItem(TreeView);
end;

procedure TfrmPrincipal.btnLoopingClick(Sender: TObject);
begin
  mtdLoopingRecursivo(MainMenu.Items);
end;

procedure TfrmPrincipal.btnSelecionadoClick(Sender: TObject);
begin
 if TreeView.Items.Count > 0 then
  begin
    ShowMessage(IntToStr(TreeView.Selected.StateIndex) + ' - ' + MainMenu.Items.ToString);
  end;
end;

procedure TfrmPrincipal.mtdLoopingRecursivo(aoMenuItem: TMenuItem);
var
  i: Integer;
begin
  for i := 0 to aoMenuItem.Count -1 do
  begin
    aoMenuItem.Items[i].Checked := not aoMenuItem.Items[i].Checked;
    mtdLoopingRecursivo(aoMenuItem.Items[i]);
  end;
end;

procedure TfrmPrincipal.mtdMenuItemToTreeView(aoMenuItem: TMenuItem; aoNode : TTreeNode);
var
  I: Integer;
  vloNode : TTreeNode;
begin
  for I := 0 to aoMenuItem.Count -1 do
  begin
    vloNode := TreeView.Items.AddChild(aoNode, AnsiReplaceStr(aoMenuItem.Items[i].Caption, '&', EmptyStr));
    vgoList.AddObject(vloNode.Text, aoMenuItem[i]);
    mtdMenuItemToTreeView(aoMenuItem.Items[i], vloNode);
  end;
end;

procedure TfrmPrincipal.mtdTreeViewMenuItem(aoTreeView: TTreeView);
var
  I: Integer;
begin
  for I := 0 to aoTreeView.Items.Count - 1 do
  begin
    ShowMessage(TMenuItem(vgoList.Objects[i]).Name);
  end;
end;

procedure TfrmPrincipal.TreeViewDblClick(Sender: TObject);
begin
  if TTreeView(Sender).Items.Count > 0 then
  begin
   ShowMessage(TMenuItem(vgoList.Objects[TTreeView(Sender).Selected.AbsoluteIndex]).Name);
  end;
end;

end.
