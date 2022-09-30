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

procedure metakinhsh_labwn;
procedure sxediash(cnv:TCanvas);
procedure or9ogwnio(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure kuklos(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure str_or9ogwnio(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure grammh(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure rombos(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure trapezio(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure trigwno(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure or9_trigwno(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
procedure vale_eidos_grammhs(cnv:TCanvas);
procedure vale_keimeno(cnv:TCanvas);
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
procedure topo9ethsh_labwn;
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

procedure vale_xarakthristika(sx:TSxhma);
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

procedure TSxhma.vale_eidos_grammhs(cnv:TCanvas);
begin
  if eidos_grammhs='psSolid' then
     cnv.Pen.Style:=psSolid;
  if eidos_grammhs='psClear' then
     cnv.Pen.Style:=psClear;
  if eidos_grammhs='psDash' then
     cnv.Pen.Style:=psDash;
  if eidos_grammhs='psDashDot' then
     cnv.Pen.Style:=psDashDot;
  if eidos_grammhs='psDashDotDot' then
     cnv.Pen.Style:=psDashDotDot;
  if eidos_grammhs='psDot' then
     cnv.Pen.Style:=psDot;
  if eidos_grammhs='psInsideFrame' then
     cnv.Pen.Style:=psInsideframe;
  if eidos_grammhs='psPattern' then
     cnv.Pen.Style:=psPattern;
end;

procedure TSxhma.vale_keimeno(cnv:TCanvas);
begin
  cnv.Font.Size:=mege9os_grammatoseiras;
  cnv.Font.Name:=grammatoseira;
  cnv.Font.Color:=xrwma_grammatoseiras;
  cnv.TextRect(TRect.Create(0,0,Width,Height),(Width-cnv.TextWidth(keimeno)) div 2, (Height-cnv.TextHeight(keimeno)) div 2, keimeno);
end;

procedure TSxhma.or9ogwnio(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
begin
  if xrwma_gemismatos<>clNone then
  begin
     cnv.FillRect(thesix,thesiy,platos,uyos);
  end;
  cnv.Rectangle(thesix,thesiy,platos,uyos);
end;

procedure TSxhma.kuklos(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
begin
  if xrwma_gemismatos<>clNone then
  begin
     cnv.FloodFill(thesix+platos div 2, thesiy+uyos div 2, cnv.Brush.Color, fsBorder);
  end;
  cnv.Ellipse(thesix,thesiy,platos,uyos);
end;

procedure TSxhma.str_or9ogwnio(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
begin
  if xrwma_gemismatos<>clNone then
  begin
     cnv.FloodFill(thesix+platos div 2, thesiy+uyos div 2, cnv.Brush.Color, fsBorder);
  end;
  cnv.RoundRect(thesix,thesiy,platos,uyos,10,10);
end;

procedure TSxhma.grammh(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
begin
  cnv.Line(thesix,thesiy,platos,uyos);
end;

procedure TSxhma.rombos(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
var shmeia:array[0..7] of TPoint;
begin
  shmeia[0]:=TPoint.Create(Width div 2,thesiy);
  shmeia[1]:=TPoint.Create(Width-thesix,Height div 2);
  shmeia[2]:=TPoint.Create(Width div 2,Height-thesiy-1);
  shmeia[3]:=TPoint.Create(thesix,Height div 2);
  cnv.Polygon(shmeia,false,0,4);
  if xrwma_gemismatos<>clNone then
  begin
     cnv.FloodFill(thesix+platos div 2, thesiy+uyos div 2, cnv.Brush.Color, fsBorder);
  end;
end;

procedure TSxhma.trapezio(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
var shmeia:array[0..7] of TPoint;
begin
  shmeia[0]:=TPoint.Create(thesix, Height-thesiy - 1);
  shmeia[1]:=TPoint.Create(Width div 4 + thesix,thesiy);
  shmeia[2]:=TPoint.Create(Width - Width div 4 - thesix,thesiy);
  shmeia[3]:=TPoint.Create(Width - thesix, Height - thesiy - 1);
  cnv.Polygon(shmeia,false,0,4);
  if xrwma_gemismatos<>clNone then
  begin
     cnv.FloodFill(thesix+platos div 2, thesiy+uyos div 2, cnv.Brush.Color, fsBorder);
  end;
end;

procedure TSxhma.trigwno(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
var shmeia:array[0..7] of TPoint;
begin
  shmeia[0]:=TPoint.Create(Width div 2, thesiy);
  shmeia[1]:=TPoint.Create(Width - thesix, Height - thesiy - 1);
  shmeia[2]:=TPoint.Create(thesix, Height - thesiy - 1);
  cnv.Polygon(shmeia,false,0,3);
  if xrwma_gemismatos<>clNone then
  begin
     cnv.FloodFill(thesix+platos div 2, thesiy+uyos div 2, cnv.Brush.Color, fsBorder);
  end;
end;

procedure TSxhma.or9_trigwno(cnv:TCanvas;thesix,thesiy,platos,uyos:integer);
var shmeia:array[0..7] of TPoint;
begin
  shmeia[0]:=TPoint.Create(thesix, thesiy);
  shmeia[1]:=TPoint.Create(Width - thesix, Height - thesiy - 1);
  shmeia[2]:=TPoint.Create(thesix, Height - thesiy - 1);
  cnv.Polygon(shmeia,false,0,3);
  if xrwma_gemismatos<>clNone then
  begin
     cnv.FloodFill(thesix+platos div 2, thesiy+uyos div 2, cnv.Brush.Color, fsBorder);
  end;
end;

procedure TSxhma.sxediash(cnv:TCanvas);
var thesix,thesiy,platos,uyos:integer;
    shmeia:array[0..7] of TPoint;
begin

cnv.Pen.Color := xrwma_grammhs;
cnv.Pen.Width := paxos_grammhs;

vale_eidos_grammhs(cnv);

if xrwma_gemismatos<>clNone then
   cnv.Brush.Color := xrwma_gemismatos;

thesix:=paxos_grammhs-1;
thesiy:=paxos_grammhs-1;

platos:=Width-thesix;
uyos:=Height-thesiy;

case tupos of
1:or9ogwnio(cnv,thesix,thesiy,platos,uyos);
2:kuklos(cnv,thesix,thesiy,platos,uyos);
3:str_or9ogwnio(cnv,thesix,thesiy,platos,uyos);
4:grammh(cnv,thesix,thesiy,platos,uyos);
5:rombos(cnv,thesix,thesiy,platos,uyos);
6:trapezio(cnv,thesix,thesiy,platos,uyos);
7:trigwno(cnv,thesix,thesiy,platos,uyos);
8:or9_trigwno(cnv,thesix,thesiy,platos,uyos);
end;

if keimeno<>'' then
begin
  vale_keimeno(cnv);
end;

end;

procedure TSxhma.Paint;
begin
  inherited;
  sxediash(Canvas);
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
TSxediasthrio(Idiokthths).Katarghsh_Epiloghs_Ektos_Apo(Self);
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
TSxediasthrio(Idiokthths).vale_Epilemeno(Self);
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
  TSxediasthrio(Idiokthths).vale_Epilemeno(Self);
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

procedure TSxhma.vale_xarakthristika(sx:TSxhma);
begin
  Self.Left:=sx.Left;
  Self.Top:=sx.Top;
  Self.Width:=sx.Width;
  Self.Height:=sx.Height;
  Self.vale_tupo(sx.pare_tupo);
  Self.vale_keimeno(sx.pare_keimeno);
  Self.vale_xrwma_grammhs(sx.pare_xrwma_grammhs);
  Self.vale_paxos_grammhs(sx.pare_paxos_grammhs);
  Self.vale_eidos_grammhs(sx.pare_eidos_grammhs);
  Self.vale_grammatoseira(sx.pare_grammatoseira);
  Self.vale_mege9os_grammatoseiras(sx.pare_mege9os_grammatoseiras);
  Self.vale_xrwma_gemismatos(sx.pare_xrwma_gemismatos);
  Self.vale_xrwma_grammatoseiras(sx.pare_xrwma_grammatoseiras);
end;

end.

