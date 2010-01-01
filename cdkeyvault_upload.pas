unit cdkeyvault_upload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TForm2 = class(TForm)
    Image1: TImage;
    lb_upload: TLabel;
    ed_host: TLabeledEdit;
    ed_verzeichnis: TLabeledEdit;
    ed_user: TLabeledEdit;
    ed_pw: TLabeledEdit;
    cb_ologin: TCheckBox;
    ed_ouser: TLabeledEdit;
    ed_opw: TLabeledEdit;
    btt_upload: TButton;
    IdFTP1: TIdFTP;
    procedure cb_ologinClick(Sender: TObject);
    procedure btt_uploadClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btt_uploadClick(Sender: TObject);
begin
IDFtp1.Host := ed_host.Text;
IDFtp1.Username := ed_user.Text;
IDFtp1.Password := ed_pw.Text;

end;

procedure TForm2.cb_ologinClick(Sender: TObject);
begin
if
  cb_ologin.Checked
then
  begin
    ed_ouser.Enabled := true;
    ed_opw.Enabled := true;
    ed_ouser.Visible := true;
    ed_opw.Visible := true;
    btt_upload.Top := 422;
    form2.Height := 488;
  end
else
  begin
    ed_ouser.Enabled := false;
    ed_opw.Enabled := false;
    ed_ouser.Visible := false;
    ed_opw.Visible := false;
    btt_upload.Top := 319;
    form2.Height := 382;
  end;
end;

end.
