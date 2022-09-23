unit para9uro_eidos_grammhs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TEidos_grammhs }

  TEidos_grammhs = class(TForm)
    Button1: TButton;
    Button2: TButton;
    al_eidh_grammwn: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    function pare_eidos_grammhs:String;
  end;

var
  Eidos_grammhs: TEidos_grammhs;

implementation

{$R *.lfm}

{ TEidos_grammhs }

procedure TEidos_grammhs.FormShow(Sender: TObject);
begin

end;

procedure TEidos_grammhs.FormCreate(Sender: TObject);
var t:integer;
begin
   al_eidh_grammwn.Items.Add('psSolid');
   al_eidh_grammwn.Items.Add('psClear');
   al_eidh_grammwn.Items.Add('psDash');
   al_eidh_grammwn.Items.Add('psDashDot');
   al_eidh_grammwn.Items.Add('psDashDotDot');
   al_eidh_grammwn.Items.Add('psDot');
   al_eidh_grammwn.Items.Add('psInsideFrame');
   al_eidh_grammwn.Items.Add('psPattern');

   al_eidh_grammwn.ItemIndex := 0;
end;

function TEidos_grammhs.pare_eidos_grammhs:String;
begin
  pare_eidos_grammhs:=al_eidh_grammwn.Items[al_eidh_grammwn.ItemIndex];
end;


end.

