program Agenda;

uses
  Forms,
  UnitAgenda in 'UnitAgenda.pas' {FormAgenda},
  Unit1 in 'Unit1.pas' {FormPesquisa};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormAgenda, FormAgenda);
  Application.CreateForm(TFormPesquisa, FormPesquisa);
  Application.Run;
end.
