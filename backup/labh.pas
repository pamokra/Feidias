unit labh;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StdCtrls, Graphics, Controls;

type TThesiLabhs=(epanw_aristera=1,epanw_deksia=2,katw_aristera=3,katw_deksia=4);

type TLabh=class(TLabel)
private
px,py:integer;
pathse:boolean;
public
  thesi:TThesiLabhs;
  constructor Create(Idiokt:TComponent);override;
procedure Paint; override;
procedure pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
procedure diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
procedure telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
end;

implementation

uses sxhma;
var tr_sxhma:TSxhma;

constructor TLabh.Create(Idiokt:TComponent);
begin
  inherited Create(Idiokt);
  tr_sxhma:=TSxhma(Idiokt);
  AutoSize:=false;
  Width:=10;
  Height:=10;
  OnMouseDown:=@pathseKatw;
  OnMouseMove:=@diadikasiaTrabhgmatos;
  OnMouseUp:=@telosTrabhgmatos;
end;

procedure TLabh.Paint;
begin
  inherited;

  Canvas.Brush.Color := clBlue;
  Canvas.Pen.Color := clGray;
  Canvas.pen.Width := 1;
  Canvas.Rectangle(0,0,Width,Height);

end;

procedure TLabh.pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button = mbLeft then
begin
    px:=X;
 py:=Y;
 pathse:=true;
end;
end;

procedure TLabh.diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if not pathse then exit;

   Self.Left:=Self.Left+(X-px);
   Self.Top:=Self.Top+(Y-py);

   if thesi=epanw_aristera then
   begin
    tr_sxhma.labh_ep_de3.Top:=Self.Top;
    tr_sxhma.labh_kat_ar.Left:=Self.Left;

    tr_sxhma.Left:=Self.Left + 5;
    tr_sxhma.Top:= Self.Top + 5;

    tr_sxhma.Width:=tr_sxhma.labh_ep_de3.left - tr_sxhma.labh_ep_ar.Left;
    tr_sxhma.Height:=tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top;
   end;

   if thesi=epanw_deksia then
   begin
    tr_sxhma.labh_ep_ar.Top:=Self.Top;
    tr_sxhma.labh_kat_de3.Left:=Self.Left;

    tr_sxhma.Top:=Self.Top+5;
    tr_sxhma.Width:=tr_sxhma.labh_ep_de3.left - tr_sxhma.labh_ep_ar.Left;
    tr_sxhma.Height:=tr_sxhma.labh_kat_de3.Top - tr_sxhma.labh_ep_de3.Top;
   end;

   if thesi=katw_aristera then
   begin
     tr_sxhma.labh_ep_ar.Left:=Self.Left;
     tr_sxhma.labh_kat_de3.Top:=Self.Top;

     tr_sxhma.Left :=Self.Left + 5;
     tr_sxhma.Width:=tr_sxhma.labh_kat_de3.left - tr_sxhma.labh_kat_ar.Left;
     tr_sxhma.Height:=tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top;
   end;

   if thesi=katw_deksia then
   begin
     tr_sxhma.labh_ep_de3.Left:=Self.Left;
     tr_sxhma.labh_kat_ar.Top:=Self.Top;

     tr_sxhma.Width:=tr_sxhma.labh_kat_de3.left - tr_sxhma.labh_kat_ar.Left;
     tr_sxhma.Height:=tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top;
   end;
end;
procedure TLabh.telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   pathse:=false;
end;

end.

