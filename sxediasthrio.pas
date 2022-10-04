unit sxediasthrio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, ExtCtrls, sxhma, Graphics, mhnumata, LCLIntf, Forms;

type TSxediasthrio=class(TPanel)
  private
  Idiokthths:TComponent;
  lista_sxhmatwn:TList;
  epilegmeno_sxhma:TSxhma;
  constructor Create(Idiokt:TComponent); override;

  procedure pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  procedure metakinhsh(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  public
    procedure KataxwrhseSxhma(sx:TSxhma);
    procedure KataxwrhseSxhmasthnArxh(sx:TSxhma);
    procedure AfaireseSxhma(sx:TSxhma);
    procedure Epilogh_Olwn;
    procedure Epilogh_Ektos_Apo(sx:TSxhma);
    procedure Katarghsh_Epiloghs_Ektos_Apo(sx:TSxhma);
    function pare_Epilegmeno:TSxhma;
    procedure vale_Epilemeno(sx:TSxhma);
    procedure e3agwgh_se_eikona(arx:String);
    destructor Destroy;override;
    function pare_Idiokthth:TComponent;
end;

implementation

constructor TSxediasthrio.Create(Idiokt:TComponent);
begin
  Inherited Create(Idiokt);
  Idiokthths:=Idiokt;
  epilegmeno_sxhma:=nil;
  DoubleBuffered:=true;
  OnMouseDown:=@pathseKatw;
  OnMouseMove :=@metakinhsh;
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

procedure TSxediasthrio.KataxwrhseSxhmasthnArxh(sx:TSxhma);
begin
  lista_sxhmatwn.Insert(0,sx);
  InsertControl(sx,0);
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

procedure TSxediasthrio.Epilogh_Olwn;
var t:integer;
begin
for t:=0 to lista_sxhmatwn.Count-1 do
begin
  if Controls[t].ClassType=TSxhma then
  begin
     TSxhma(lista_sxhmatwn[t]).topo9ethsh_labwn;
  end;
end;
end;

procedure TSxediasthrio.Epilogh_Ektos_Apo(sx:TSxhma);
var t:integer;
begin
for t:=0 to lista_sxhmatwn.Count-1 do
begin
  if Controls[t].ClassType=TSxhma then
  begin
     if sx=TSxhma(lista_sxhmatwn[t]) then
        TSxhma(lista_sxhmatwn[t]).topo9ethsh_labwn;
  end;
end;
end;

procedure TSxediasthrio.Katarghsh_Epiloghs_Ektos_Apo(sx:TSxhma);
var t:integer;
begin
for t:=0 to lista_sxhmatwn.Count-1 do
begin
  if Controls[t].ClassType=TSxhma then
  begin
    if sx<>TSxhma(lista_sxhmatwn[t]) then
        TSxhma(lista_sxhmatwn[t]).katarghsh_labwn;
  end;
end;
end;

procedure TSxediasthrio.e3agwgh_se_eikona(arx:String);
var eik:TBitmap;
    t:integer;
begin
   eik:=TBitmap.Create;
   eik.Width := 400;
   eik.Height := 400;
   eik.Canvas.Brush.Color := clWhite;
   eik.Canvas.FillRect(0,0,eik.Width,eik.Height);

  for t:=0 to Self.ControlCount-1 do
  begin
    if Self.Controls[t].ClassNameIs('TSxhma') then
    begin
       TSxhma(Self.Controls[t]).sxediash(eik.Canvas, true);
    end;
  end;

  eik.SaveToFile(arx);
  eik.Free;
end;

procedure TSxediasthrio.metakinhsh(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SendMessage(TForm(Idiokthths).Handle,WM_METAKINHSH_SE_SXEDIASTHRIO,Integer(X),Integer(Y));
end;

function TSxediasthrio.pare_Idiokthth:TComponent;
begin
  pare_Idiokthth:=Idiokthths;
end;

end.

