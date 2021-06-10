unit sxhma;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StdCtrls, Graphics, labh, Controls;

type TSxhma=class(TLabel)
private
idiokthths:TComponent;
balelabes:boolean;

px,py:integer;
pathse:boolean;

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
end;

implementation
uses sxediasthrio;

constructor TSxhma.Create(Idiokt:TComponent);
begin
  inherited Create(Idiokt);
  idiokthths:=Idiokt;
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
  inherited Destroy;
  labh_ep_ar.Free;
  labh_ep_de3.Free;
  labh_kat_ar.Free;
  labh_kat_de3.Free;
end;

procedure TSxhma.Paint;
begin
  inherited;

  //Canvas.Brush.Color := clRed;
  Canvas.Pen.Color := clRed;
  Canvas.pen.Width := 1;
  Canvas.Rectangle(0,0,Width,Height);

end;

procedure TSxhma.pathseKlik(Sender:TObject);
begin

end;

procedure TSxhma.pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  balelabes:=not balelabes;
if balelabes then topo9ethsh_labwn else katarghsh_labwn;
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

end.

