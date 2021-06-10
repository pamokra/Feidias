unit kurio_para9uro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  ComCtrls, Menus, sxediasthrio;

type

  { TKurio }

  TKurio = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    perioxh_sxediwn: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SaveDialog1: TSaveDialog;
    ScrollBox1: TScrollBox;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    koumpiDhmiourgias: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    procedure MenuItem10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure koumpiDhmiourgiasClick(Sender: TObject);
  private

  public
    trexon_sxediasthrio:TSxediasthrio;

  end;

var
  Kurio: TKurio;

implementation

uses sxhma;

{$R *.lfm}

{ TKurio }

procedure TKurio.SpeedButton3Click(Sender: TObject);
begin
end;

procedure TKurio.koumpiDhmiourgiasClick(Sender: TObject);
var
  TabSheet: TTabSheet;
  sxd: TSxediasthrio;
begin
  TabSheet := TTabSheet.Create(perioxh_sxediwn);
  TabSheet.Caption := 'Νέο έγγραφο';
  TabSheet.PageControl := perioxh_sxediwn;
  perioxh_sxediwn.ActivePage:=TabSheet;
  sxd:=TSxediasthrio.Create(Self);
  sxd.Align:=alClient;
  sxd.Parent:=TabSheet;
  sxd.Show;
  trexon_sxediasthrio:=sxd;
end;

procedure TKurio.SpeedButton1Click(Sender: TObject);
var sx:TSxhma;
begin
  if trexon_sxediasthrio<>nil then
  begin
  sx:=TSxhma.Create(trexon_sxediasthrio);
  sx.AutoSize:=false;
  sx.Left:=10;
  sx.Top:=10;
  sx.Width:=100;
  sx.Height:=100;
  trexon_sxediasthrio.KataxwrhseSxhma(sx);
  trexon_sxediasthrio.Invalidate;
  end else
  begin
    showMessage('Δεν υπάρχει ανοικτό έγγραφο!');
  end;
end;

procedure TKurio.MenuItem10Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

