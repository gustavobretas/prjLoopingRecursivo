program prjLoopingRecursivo;

uses
  Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'LoopingRecursivo';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
