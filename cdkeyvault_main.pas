unit cdkeyvault_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ToolWin, ComCtrls;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    Hinzufgen3: TMenuItem;
    Entfernen3: TMenuItem;
    ListView1: TListView;
    MainMenu1: TMainMenu;
    Men1: TMenuItem;
    Passwortndern1: TMenuItem;
    Beenden1: TMenuItem;
    Keyhinzufgen1: TMenuItem;
    Keyhinzufgen2: TMenuItem;
    Keyentfernen1: TMenuItem;
    N1: TMenuItem;
    Keysexportieren1: TMenuItem;
    Keysimportieren1: TMenuItem;
    N2: TMenuItem;
    Uploaden1: TMenuItem;
    Downloaden1: TMenuItem;
    procedure Upload1Click(Sender: TObject);
    procedure Hinzufgen1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Entfernen3Click(Sender: TObject);
    procedure Keyhinzufgen2Click(Sender: TObject);
    procedure Keyentfernen1Click(Sender: TObject);
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

procedure TForm1.Entfernen3Click(Sender: TObject);
begin
if Listview1.ItemIndex = -1 then
Application.MessageBox('Kein Key ausgewählt', 'Fehler', MB_Iconerror or MB_Ok)
else
listview1.DeleteSelected;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
column: TListColumn;
begin
//Viewstyle auf die Report Ansicht stellen
Listview1.ViewStyle := vsreport;
//Jetzt kann man die ganze Zeile mit der Maus makieren nicht nur die Caption
listview1.RowSelect := true;
//Zwei Spalten wird erstellt
column := listview1.Columns.Add;
column.Caption := 'Anwendung';
column.Width := round(listview1.Width/2)-2;
column := listview1.Columns.Add;
column.Caption := 'Key';
column.Width := round(listview1.Width/2)-2;
end;

procedure TForm1.Hinzufgen1Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.Keyentfernen1Click(Sender: TObject);
begin
if Listview1.ItemIndex = -1 then
Application.Messagebox('Kein Key ausgewählt', 'Fehler', MB_Iconerror or MB_Ok)
else
listview1.DeleteSelected;
end;

procedure TForm1.Keyhinzufgen2Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.Upload1Click(Sender: TObject);
begin
form2.ShowModal;
end;



end.
