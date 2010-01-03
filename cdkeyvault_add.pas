unit cdkeyvault_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvListView, ComCtrls;

type
  TForm3 = class(TForm)
    edIcon: TLabeledEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    bttdurchsuchen: TButton;
    edName: TLabeledEdit;
    edkey: TLabeledEdit;
    bttok: TButton;
    bttabbrechen: TButton;
    procedure bttdurchsuchenClick(Sender: TObject);
    procedure bttabbrechenClick(Sender: TObject);
    procedure bttokClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form3: TForm3;

implementation

uses
cdkeyvault_main;
{$R *.dfm}

procedure TForm3.bttabbrechenClick(Sender: TObject);
begin
Close;
end;

procedure TForm3.bttdurchsuchenClick(Sender: TObject);
begin
if OpenDialog1.Execute then
  edicon.Text := Opendialog1.FileName;
end;

procedure TForm3.bttokClick(Sender: TObject);
var
test: TListitem;
begin
test := form1.ListView1.Items.Add;
test.Caption := edName.Text;
test.SubItems.Add(edkey.Text);
edkey.Text := '';
edName.Text := '';
close;
end;

end.
