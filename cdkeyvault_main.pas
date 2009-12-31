unit cdkeyvault_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvMenus, ToolWin, ComCtrls, JvExComCtrls, JvToolBar,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP;

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
    IdFTP1: TIdFTP;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
