unit cdkeyvault_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvListView, ComCtrls, Jpeg;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    edName: TLabeledEdit;
    edkey: TLabeledEdit;
    bttok: TButton;
    bttabbrechen: TButton;
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

procedure TForm3.bttokClick(Sender: TObject);
var
test: TListitem;
begin
form1.ListView1.Items.BeginUpdate;
test := form1.ListView1.Items.Add;
test.Caption := edName.Text;
test.SubItems.Add(edkey.Text);
form1.ListView1.Items.EndUpdate;
edkey.Text := '';
edName.Text := '';
close;
end;

end.
