unit sxhma;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StdCtrls, Graphics, labh, Controls;

type TSxhma=class(TLabel)
private
idiokthths:TComponent;
balelabes:boolean;
tupos:integer;
px,py:integer;
pathse:boolean;
keimeno:String;
xrwma_grammhs:TColor;
paxos_grammhs:integer;
xrwma_gemismatos:TColor;
mege9os_grammatoseiras:integer;
grammatoseira:String;
xrwma_grammatoseiras:TColor;
eidos_grammhs:String;

procedure topo9ethsh_labwn;

procedure metakinhsh_labwn;
public
labh_ep_ar,labh_ep_de3,labh_kat_ar,labh_kat_de3:TLabh;
constructor Create(Idiokt:TComponent);override;
destructor Destroy;override;
procedure Paint; override;
procedure pathseKlik(Sender:TObject);
procedure pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
procedure diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
procedure telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
procedure katarghsh_labwn;
function pare_tupo:integer;
procedure vale_tupo(tup:integer);
function pare_keimeno:String;
procedure vale_keimeno(keim:String);
function pare_xrwma_grammhs:TColor;
procedure vale_xrwma_grammhs(xr:TColor);
function pare_paxos_grammhs:integer;
procedure vale_paxos_grammhs(pxg:integer);
function pare_xrwma_gemismatos:TColor;
procedure vale_xrwma_gemismatos(xr:TColor);
function pare_mege9os_grammatoseiras:integer;
procedure vale_mege9os_grammatoseiras(mg:integer);
function pare_grammatoseira:String;
procedure vale_grammatoseira(gram:String);
function pare_xrwma_grammatoseiras:TColor;
procedure vale_xrwma_grammatoseiras(xr:TColor);
function pare_eidos_grammhs:String;
procedure vale_eidos_grammhs(eidos:String);
end;

implementation
uses sxediasthrio;

constructor TSxhma.Create(Idiokt:TComponent);
begin
  inherited Create(Idiokt);
  idiokthths:=Idiokt;
  tupos:=1;

  paxos_grammhs:=1;
  xrwma_grammhs:=clBlack;
  xrwma_gemismatos:=clNone;
  eidos_grammhs:='psSolid';

  OnClick:=@pathseKlik;
  OnMouseDown:=@pathseKatw;
  OnMouseMove:=@diadikasiaTrabhgmatos;
  OnMouseUp:=@telosTrabhgmatos;
  balelabes:=false;
  labh_ep_ar:=TLabh.Create(Self);
  labh_ep_ar.thesi:=epanw_aristera;
  labh_ep_de3:=TLabh.Create(Self);
  labh_ep_de3.thesi:=epanw_deksia;
  labh_kat_ar:=TLabh.Create(Self);
  labh_kat_ar.thesi:=katw_aristera;
  labh_kat_de3:=TLabh.Create(Self);
  labh_kat_de3.thesi:=katw_deksia;

end;

destructor TSxhma.Destroy;
begin

  labh_ep_ar.Free;
  labh_ep_de3.Free;
  labh_kat_ar.Free;
  labh_kat_de3.Free;
  inherited Destroy;

end;

procedure TSxhma.Paint;
var thesix,thesiy,platos,uyos:integer;
begin
  inherited;

  Canvas.Pen.Color := xrwma_grammhs;
  Canvas.pen.Width := paxos_grammhs;

  if eidos_grammhs='psSolid' then
     Canvas.Pen.Style:=psSolid;
  if eidos_grammhs='psClear' then
     Canvas.Pen.Style:=psClear;
  if eidos_grammhs='psDash' then
     Canvas.Pen.Style:=psDash;
  if eidos_grammhs='psDashDot' then
     Canvas.Pen.Style:=psDashDot;
  if eidos_grammhs='psDashDotDot' then
     Canvas.Pen.Style:=psDashDotDot;
  if eidos_grammhs='psDot' then
     Canvas.Pen.Style:=psDot;
  if eidos_grammhs='psInsideFrame' then
     Canvas.Pen.Style:=psInsideframe;
  if eidos_grammhs='psPattern' then
     Canvas.Pen.Style:=psPattern;

  if xrwma_gemismatos<>clNone then
     Canvas.Brush.Color := xrwma_gemismatos;

  thesix:=paxos_grammhs-1;
  thesiy:=paxos_grammhs-1;

  platos:=Width-thesix;
  uyos:=Height-thesiy;

  if tupos=1 then
  begin
    if xrwma_gemismatos=clNone then
    begin
       Canvas.Rectangle(thesix,thesiy,platos,uyos);
    end
    else
    begin
       Canvas.FillRect(thesix,thesiy,platos,uyos);
       Canvas.Rectangle(thesix,thesiy,platos,uyos);
    end;
  end;

  if tupos=2 then
    if xrwma_gemismatos=clNone then
    begin
       Canvas.Ellipse(thesix,thesiy,platos,uyos);
    end
    else
    begin
       Canvas.Ellipse(thesix,thesiy,platos,uyos);
       Canvas.FloodFill(thesix+platos div 2, thesiy+uyos div 2, Canvas.Brush.Color, fsBorder);
    end;
  if tupos=3 then
    if xrwma_gemismatos=clNone then
    begin
       Canvas.RoundRect(thesix,thesiy,platos,uyos,10,10);
    end
    else
    begin
       Canvas.RoundRect(thesix,thesiy,platos,uyos,10,10);
       Canvas.FloodFill(thesix+platos div 2, thesiy+uyos div 2, Canvas.Brush.Color, fsBorder);
    end;

  if tupos=4 then
    Canvas.Line(thesix,thesiy,platos,uyos);

  if keimeno<>'' then
  begin
    Canvas.Font.Size:=mege9os_grammatoseiras;
    Canvas.Font.Name:=grammatoseira;
    Canvas.Font.Color:=xrwma_grammatoseiras;
    Canvas.TextRect(TRect.Create(0,0,Width,Height),(Width-Canvas.TextWidth(keimeno)) div 2, (Height-Canvas.TextHeight(keimeno)) div 2, keimeno);
  end;
end;

procedure TSxhma.pathseKlik(Sender:TObject);
begin

end;

procedure TSxhma.pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  balelabes:=not balelabes;
if balelabes then
begin
topo9ethsh_labwn;
TSxediasthrio(Idiokthths).vale_Epilemeno(Self);
end else
begin
katarghsh_labwn;
TSxediasthrio(Idiokthths).vale_Epilemeno(nil);
end;

if Button = mbLeft then
begin
   pathse:=true;
    px:=X;
 py:=Y;
end;
end;
procedure TSxhma.diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if not pathse then exit;

if not balelabes then
begin
topo9ethsh_labwn;
balelabes:=true;
end;
   Self.Left:=Self.Left+(X-px);
   Self.Top:=Self.Top+(Y-py);
   metakinhsh_labwn;
   TSxediasthrio(idiokthths).Invalidate;
end;
procedure TSxhma.telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
pathse:=false;
if not balelabes then
begin
  topo9ethsh_labwn;
  balelabes:=true;
end;

end;

procedure TSxhma.topo9ethsh_labwn;
begin
labh_ep_ar.Left:=Self.left-5;
labh_ep_ar.Top:=Self.Top-5;
TSxediasthrio(idiokthths).InsertControl(labh_ep_ar);
labh_ep_de3.Left:=Self.left+Self.Width-5;
labh_ep_de3.Top:=Self.Top-5;
TSxediasthrio(idiokthths).InsertControl(labh_ep_de3);
labh_kat_ar.Left:=Self.left-5;
labh_kat_ar.Top:=Self.Top+Self.Height-5;
TSxediasthrio(idiokthths).InsertControl(labh_kat_ar);
labh_kat_de3.Left:=Self.Width+Self.left-5;
labh_kat_de3.Top:=Self.Top+Self.Height-5;
TSxediasthrio(idiokthths).InsertControl(labh_kat_de3);
end;
procedure TSxhma.metakinhsh_labwn;
begin
labh_ep_ar.Left:=Self.left-5;
labh_ep_ar.Top:=Self.Top-5;
labh_ep_de3.Left:=Self.left+Self.Width-5;
labh_ep_de3.Top:=Self.Top-5;
labh_kat_ar.Left:=Self.left-5;
labh_kat_ar.Top:=Self.Top+Self.Height-5;
labh_kat_de3.Left:=Self.Width+Self.left-5;
labh_kat_de3.Top:=Self.Top+Self.Height-5;
end;

procedure TSxhma.katarghsh_labwn;
begin
TSxediasthrio(idiokthths).RemoveControl(labh_ep_ar);
TSxediasthrio(idiokthths).RemoveControl(labh_ep_de3);
TSxediasthrio(idiokthths).RemoveControl(labh_kat_ar);
TSxediasthrio(idiokthths).RemoveControl(labh_kat_de3);
balelabes:=false;
end;

function TSxhma.pare_tupo:integer;
begin
  pare_tupo:=tupos;
end;

procedure TSxhma.vale_tupo(tup:integer);
begin
  tupos:=tup;
end;

function TSxhma.pare_keimeno:String;
begin
  pare_keimeno:=keimeno;
end;

procedure TSxhma.vale_keimeno(keim:String);
begin
  keimeno:=keim;
end;

function TSxhma.pare_xrwma_grammhs:TColor;
begin
   pare_xrwma_grammhs:=xrwma_grammhs;
end;

procedure TSxhma.vale_xrwma_grammhs(xr:TColor);
begin
  xrwma_grammhs:=xr;
end;

function TSxhma.pare_paxos_grammhs:integer;
begin
  pare_paxos_grammhs:=paxos_grammhs;
end;

procedure TSxhma.vale_paxos_grammhs(pxg:integer);
begin
  paxos_grammhs:=pxg;
end;

function TSxhma.pare_xrwma_gemismatos:TColor;
begin
  pare_xrwma_gemismatos:=xrwma_gemismatos;
end;

procedure TSxhma.vale_xrwma_gemismatos(xr:TColor);
begin
  xrwma_gemismatos:=xr;
end;

function TSxhma.pare_mege9os_grammatoseiras:integer;
begin
  pare_mege9os_grammatoseiras:=mege9os_grammatoseiras;
end;

procedure TSxhma.vale_mege9os_grammatoseiras(mg:integer);
begin
  mege9os_grammatoseiras:=mg;
end;

function TSxhma.pare_grammatoseira:String;
begin
  pare_grammatoseira:=grammatoseira;
end;

procedure TSxhma.vale_grammatoseira(gram:String);
begin
  grammatoseira:=gram;
end;

function TSxhma.pare_xrwma_grammatoseiras:TColor;
begin
  pare_xrwma_grammatoseiras:=xrwma_grammatoseiras;
end;

procedure TSxhma.vale_xrwma_grammatoseiras(xr:TColor);
begin
  xrwma_grammatoseiras:=xr;
end;

function TSxhma.pare_eidos_grammhs:String;
begin
  pare_eidos_grammhs:=eidos_grammhs;
end;

procedure TSxhma.vale_eidos_grammhs(eidos:String);
begin
  eidos_grammhs:=eidos;
end;

end.

