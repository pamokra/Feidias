program Feidias;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, kurio_para9uro, sxediasthrio, sxhma, labh, para9uro_paxous_grammhs,
  para9uro_eisagwghs_keimenou, para9uro_eidos_grammhs, para9uro_diastasewn,
  mhnumata
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TKurio, Kurio);
  Application.CreateForm(TPaxos_Grammhs, Paxos_Grammhs);
  Application.CreateForm(TEisagwgh_Keimenou, Eisagwgh_Keimenou);
  Application.CreateForm(TEidos_grammhs, Eidos_grammhs);
  Application.CreateForm(TDiastaseis, Diastaseis);
  Application.Run;
end.

