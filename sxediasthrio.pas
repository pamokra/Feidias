unit sxediasthrio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, ExtCtrls, sxhma;

type TSxediasthrio=class(TPanel)
  private
  lista_sxhmatwn:TList;
  epilegmeno_sxhma:TSxhma;
  constructor Create(Idiokt:TComponent); override;

  procedure pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  public
    procedure KataxwrhseSxhma(sx:TSxhma);
    procedure AfaireseSxhma(sx:TSxhma);
    function pare_Epilegmeno:TSxhma;
    procedure vale_Epilemeno(sx:TSxhma);
    destructor Destroy;override;
end;

implementation

constructor TSxediasthrio.Create(Idiokt:TComponent);
begin
  Inherited Create(Idiokt);
  epilegmeno_sxhma:=nil;
  DoubleBuffered:=true;
  OnMouseDown:=@pathseKatw;
  lista_sxhmatwn:=TList.Create;
end;

destructor TSxediasthrio.Destroy;
begin
  inherited Destroy;
  lista_sxhmatwn.Free;
end;

procedure TSxediasthrio.pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var t:integer;
begin
if Button = mbLeft then
begin
for t:=0 to lista_sxhmatwn.Count-1 do
begin
  if Controls[t].ClassType=TSxhma then
  begin
  TSxhma(lista_sxhmatwn[t]).katarghsh_labwn;

end;
end;

end;

end;

procedure TSxediasthrio.KataxwrhseSxhma(sx:TSxhma);
begin
  lista_sxhmatwn.Add(sx);
  InsertControl(sx);
end;

procedure TSxediasthrio.AfaireseSxhma(sx:TSxhma);
begin
  lista_sxhmatwn.Remove(sx);
  RemoveControl(sx);
end;

function TSxediasthrio.pare_Epilegmeno:TSxhma;
begin
pare_epilegmeno:=epilegmeno_sxhma;
end;

procedure TSxediasthrio.vale_Epilemeno(sx:TSxhma);
begin
epilegmeno_sxhma:=sx;
end;

end.

