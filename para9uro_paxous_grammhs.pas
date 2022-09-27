unit para9uro_paxous_grammhs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls;

type

  { TPaxos_Grammhs }

  TPaxos_Grammhs = class(TForm)
    Button1: TButton;
    Button2: TButton;
    pl_paxos_grammhs: TEdit;
    Label1: TLabel;
    koumpi_PanwKatw: TUpDown;
    procedure koumpi_PanwKatwClick(Sender: TObject; Button: TUDBtnType);
  private

  public

  end;

var
  Paxos_Grammhs: TPaxos_Grammhs;

implementation

{$R *.lfm}

{ TPaxos_Grammhs }

procedure TPaxos_Grammhs.koumpi_PanwKatwClick(Sender: TObject;
  Button: TUDBtnType);
var ari9mos:integer;
begin
  ari9mos:=StrToInt(pl_paxos_grammhs.Text);
  if Button=btNext then
  begin
    if ari9mos=30 then exit;
    Inc(ari9mos);
    pl_paxos_grammhs.Text:=IntToStr(ari9mos);
  end;
  if Button=btPrev then
  begin
    if ari9mos=1 then exit;
    Dec(ari9mos);
    pl_paxos_grammhs.Text:=IntToStr(ari9mos);
  end;
end;

end.

