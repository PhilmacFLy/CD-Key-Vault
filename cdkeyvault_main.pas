unit cdkeyvault_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvMenus, ToolWin, ComCtrls, JvExComCtrls, JvToolBar,
  JvListView, ImgList, JvImageList;

type
  TForm1 = class(TForm)
    JvMainMenu1: TJvMainMenu;
    Men1: TMenuItem;
    Passwortndern1: TMenuItem;
    Beenden1: TMenuItem;
    Keys1: TMenuItem;
    Hinzufgen1: TMenuItem;
    Entfernen1: TMenuItem;
    N1: TMenuItem;
    Importieren1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Upload1: TMenuItem;
    Download1: TMenuItem;
    JvListView1: TJvListView;
    JvImageList1: TJvImageList;
    procedure Upload1Click(Sender: TObject);
    procedure Hinzufgen1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

uses
cdkeyvault_upload, cdkeyvault_add;

{$R *.dfm}

procedure TForm1.Hinzufgen1Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.Upload1Click(Sender: TObject);
begin
form2.ShowModal;
end;

end.
