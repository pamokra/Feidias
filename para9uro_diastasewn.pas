unit para9uro_diastasewn;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TDiastaseis }

  TDiastaseis = class(TForm)
    Button1: TButton;
    Button2: TButton;
    pl_platos: TEdit;
    pl_uyos: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Diastaseis: TDiastaseis;

implementation

{$R *.lfm}

{ TDiastaseis }

procedure TDiastaseis.Button2Click(Sender: TObject);
begin

end;

end.

