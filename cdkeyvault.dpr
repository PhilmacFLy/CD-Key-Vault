program cdkeyvault;

uses
  Forms,
  cdkeyvault_main in 'cdkeyvault_main.pas' {Form1},
  cdkeyvault_upload in 'cdkeyvault_upload.pas' {Form2},
  cdkeyvault_add in 'cdkeyvault_add.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
