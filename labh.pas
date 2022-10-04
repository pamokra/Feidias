unit labh;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StdCtrls, Graphics, Controls;

type TThesiLabhs=(epanw_aristera=1,epanw_deksia=2,katw_aristera=3,katw_deksia=4);

type TLabh=class(TLabel)
private
Idiokthths:TComponent;
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

uses sxhma, kurio_para9uro,sxediasthrio, LCLIntf, mhnumata, Forms;
var tr_sxhma:TSxhma;

constructor TLabh.Create(Idiokt:TComponent);
begin
  inherited Create(Idiokt);
  Idiokthths:=Idiokt;
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
 tr_sxhma:=Kurio.trexon_sxediasthrio.pare_Epilegmeno;
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

    if tr_sxhma.labh_ep_de3.left - tr_sxhma.labh_ep_ar.Left < 0 then
    begin
      tr_sxhma.Left:=tr_sxhma.labh_ep_de3.left + 5;
    end else
      tr_sxhma.Left:=Self.Left + 5;

    if tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top < 0 then
    begin
      tr_sxhma.Top:= tr_sxhma.labh_kat_ar.Top + 5;
    end else
      tr_sxhma.Top:= Self.Top + 5;

    tr_sxhma.Width:=abs(tr_sxhma.labh_ep_de3.left - tr_sxhma.labh_ep_ar.Left);
    tr_sxhma.Height:=abs(tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top);
   end;

   if thesi=epanw_deksia then
   begin
    tr_sxhma.labh_ep_ar.Top:=Self.Top;
    tr_sxhma.labh_kat_de3.Left:=Self.Left;

    tr_sxhma.Top:=Self.Top+5;
    if tr_sxhma.labh_ep_de3.left - tr_sxhma.labh_ep_ar.Left < 0 then
    begin
      tr_sxhma.Left:=tr_sxhma.labh_ep_de3.left + 5;
    end;
    if tr_sxhma.labh_kat_de3.Top - tr_sxhma.labh_ep_de3.Top < 0 then
    begin
      tr_sxhma.Top:=tr_sxhma.labh_ep_de3.Top + 5;
    end;
    tr_sxhma.Width:=abs(tr_sxhma.labh_ep_de3.left - tr_sxhma.labh_ep_ar.Left);
    tr_sxhma.Height:=abs(tr_sxhma.labh_kat_de3.Top - tr_sxhma.labh_ep_de3.Top);
   end;

   if thesi=katw_aristera then
   begin
     tr_sxhma.labh_ep_ar.Left:=Self.Left;
     tr_sxhma.labh_kat_de3.Top:=Self.Top;

     if tr_sxhma.labh_kat_de3.left - tr_sxhma.labh_kat_ar.Left < 0 then
     begin
       tr_sxhma.Left :=tr_sxhma.labh_kat_de3.Left + 5;
     end else
       tr_sxhma.Left :=Self.Left + 5;

     if tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top < 0 then
     begin
       tr_sxhma.Top := Self.Top + 5;
     end else
       tr_sxhma.Top := tr_sxhma.labh_ep_ar.Top + 5;

     tr_sxhma.Width:=abs(tr_sxhma.labh_kat_de3.left - tr_sxhma.labh_kat_ar.Left);
     tr_sxhma.Height:=abs(tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top);
   end;

   if thesi=katw_deksia then
   begin
     tr_sxhma.labh_ep_de3.Left:=Self.Left;
     tr_sxhma.labh_kat_ar.Top:=Self.Top;
     if tr_sxhma.labh_kat_de3.left - tr_sxhma.labh_kat_ar.Left < 0 then
     begin
       tr_sxhma.Left:=tr_sxhma.labh_kat_de3.left + 5;
     end;
     if tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top < 0 then
     begin
       tr_sxhma.Top:=tr_sxhma.labh_kat_de3.Top + 5;
     end;
     tr_sxhma.Width:=abs(tr_sxhma.labh_kat_de3.left - tr_sxhma.labh_kat_ar.Left);
     tr_sxhma.Height:=abs(tr_sxhma.labh_kat_ar.Top - tr_sxhma.labh_ep_ar.Top);
   end;

   SendMessage(TForm(TSxediasthrio(TSxhma(Idiokthths).pare_Idiokthth).pare_Idiokthth).Handle,WM_METAKINHSH_SXHMATOS,Integer(tr_sxhma.Left),Integer(tr_sxhma.Top));
   SendMessage(TForm(TSxediasthrio(TSxhma(Idiokthths).pare_Idiokthth).pare_Idiokthth).Handle,WM_TRABHGMA_SXHMATOS,Integer(tr_sxhma.Width),Integer(tr_sxhma.Height));

end;

procedure TLabh.telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   pathse:=false;
end;

end.

