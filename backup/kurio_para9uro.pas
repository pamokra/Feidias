unit kurio_para9uro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  ComCtrls, Menus, sxediasthrio, sxhma;

type

  { TKurio }

  TKurio = class(TForm)
    epilogh_eisagwgh_keimeno: TMenuItem;
    epilogh_eidos_grammhs: TMenuItem;
    epilogh_diagrafh: TMenuItem;
    epilogh_Metakinhsh: TMenuItem;
    epilogh_Metakinhsh_Aristera: TMenuItem;
    epilogh_Metakinhsh_Deksia: TMenuItem;
    epilogh_Metakinhsh_Epanw: TMenuItem;
    epilogh_Metakinhsh_Katw: TMenuItem;
    epilogh_Diata3hs: TMenuItem;
    epilogh_Metafora_Proskhnio: TMenuItem;
    epilogh_Metafora_Paraskhnio: TMenuItem;
    MenuItem11: TMenuItem;
    epilogh_EpiloghOlwn: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Morfh_Keimenou: TFontDialog;
    Xrwma: TColorDialog;
    KurioMenou: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    epilogh_Apokoph: TMenuItem;
    epilogh_Antigrafh: TMenuItem;
    epilogh_Epikollhsh: TMenuItem;
    epilogh_xrwma_grammhs: TMenuItem;
    epilogh_paxos_grammhs: TMenuItem;
    epilogh_xrwma_gemismatos: TMenuItem;
    epilogh_keimeno: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    epilogh_Apo9hkeush: TMenuItem;
    epilogh_Apo9hkeush_Ws: TMenuItem;
    Anoigma: TOpenDialog;
    perioxh_sxediwn: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Apo9hkeush: TSaveDialog;
    ScrollBox1: TScrollBox;
    koumpi_or9ogwniou: TSpeedButton;
    koumpi_grammhs: TSpeedButton;
    koumpi_kuklou: TSpeedButton;
    SpeedButton3: TSpeedButton;
    koumpiDhmiourgias: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    koumpi_str_or9ogwniou: TSpeedButton;
    procedure epilogh_ApokophClick(Sender: TObject);
    procedure epilogh_diagrafhClick(Sender: TObject);
    procedure epilogh_eidos_grammhsClick(Sender: TObject);
    procedure epilogh_eisagwgh_keimenoClick(Sender: TObject);
    procedure epilogh_EpiloghOlwnClick(Sender: TObject);
    procedure epilogh_keimenoClick(Sender: TObject);
    procedure epilogh_Metafora_ParaskhnioClick(Sender: TObject);
    procedure epilogh_Metafora_ProskhnioClick(Sender: TObject);
    procedure epilogh_Metakinhsh_AristeraClick(Sender: TObject);
    procedure epilogh_Metakinhsh_DeksiaClick(Sender: TObject);
    procedure epilogh_Metakinhsh_EpanwClick(Sender: TObject);
    procedure epilogh_Metakinhsh_KatwClick(Sender: TObject);
    procedure epilogh_paxos_grammhsClick(Sender: TObject);
    procedure epilogh_xrwma_gemismatosClick(Sender: TObject);
    procedure epilogh_xrwma_grammhsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure epilogh_AntigrafhClick(Sender: TObject);
    procedure epilogh_EpikollhshClick(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure epilogh_Apo9hkeushClick(Sender: TObject);
    procedure epilogh_Apo9hkeush_WsClick(Sender: TObject);
    procedure koumpi_ergaleiou(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure koumpiDhmiourgiasClick(Sender: TObject);
  private
    onoma_arxeiou:TStringList;
    proxeiro:TSxhma;
    procedure dhmiourgia;
    procedure anoigma_arxeiou(arx:String);
    procedure apo9hkeush_arxeiou(arx:String);
    procedure kataskeuh_sxhmatos(tupos:integer);
    procedure diagrafh;
  public
    trexon_sxediasthrio:TSxediasthrio;

  end;

var
  Kurio: TKurio;

implementation

uses para9uro_paxous_grammhs, para9uro_eisagwghs_keimenou,
     para9uro_eidos_grammhs;

{$R *.lfm}

{ TKurio }

procedure TKurio.diagrafh;
begin
  if trexon_sxediasthrio<>nil then
  begin
    if trexon_sxediasthrio.pare_Epilegmeno<>nil then
    begin
      trexon_sxediasthrio.pare_Epilegmeno.katarghsh_labwn;
      trexon_sxediasthrio.AfaireseSxhma(trexon_sxediasthrio.pare_Epilegmeno);
    end;
  end;
end;

procedure TKurio.kataskeuh_sxhmatos(tupos:integer);
var sx:TSxhma;
begin
if trexon_sxediasthrio<>nil then
begin
sx:=TSxhma.Create(trexon_sxediasthrio);
sx.vale_tupo(tupos);
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

procedure TKurio.dhmiourgia;
var
  TabSheet: TTabSheet;
  sxd: TSxediasthrio;
begin
  TabSheet := TTabSheet.Create(perioxh_sxediwn);
  TabSheet.Caption := 'Νέο έγγραφο';
  onoma_arxeiou.Add('');
  TabSheet.PageControl := perioxh_sxediwn;
  perioxh_sxediwn.ActivePage:=TabSheet;
  sxd:=TSxediasthrio.Create(Self);
  sxd.Align:=alClient;
  sxd.Parent:=TabSheet;
  sxd.Show;
  trexon_sxediasthrio:=sxd;
end;

procedure TKurio.anoigma_arxeiou(arx:String);
var t:integer;
    dedomena:TStringList;
    trexon_sxhma:TSxhma;
    TabSheet: TTabSheet;
    sxd: TSxediasthrio;
begin
  TabSheet := TTabSheet.Create(perioxh_sxediwn);
  TabSheet.Caption := arx;
  TabSheet.PageControl := perioxh_sxediwn;
  perioxh_sxediwn.ActivePage:=TabSheet;
  sxd:=TSxediasthrio.Create(Self);
  sxd.Align:=alClient;
  sxd.Parent:=TabSheet;
  sxd.Show;
  trexon_sxediasthrio:=sxd;

   dedomena:=TStringList.Create;
   dedomena.LoadFromFile(arx);

   onoma_arxeiou.Add(arx);

   for t:=0 to dedomena.Count-1 do
   begin
     if Trim(dedomena[t])='<SXHMA>' then
     begin
        trexon_sxhma:=TSxhma.Create(trexon_sxediasthrio);
        trexon_sxhma.AutoSize:=false;
     end;

     if Trim(dedomena[t])='<TYPOS>' then
     begin
        trexon_sxhma.vale_tupo(StrToInt(Trim(dedomena[t+1])));
     end;

     if Trim(dedomena[t])='<X>' then
     begin
        trexon_sxhma.Left:=StrToInt(Trim(dedomena[t+1]));
     end;

     if Trim(dedomena[t])='<Y>' then
     begin
        trexon_sxhma.Top:=StrToInt(Trim(dedomena[t+1]));
     end;

     if Trim(dedomena[t])='<PLATOS>' then
     begin
        trexon_sxhma.Width:=StrToInt(Trim(dedomena[t+1]));
     end;

     if Trim(dedomena[t])='<YUOS>' then
     begin
        trexon_sxhma.Height:=StrToInt(Trim(dedomena[t+1]));
     end;

     if Trim(dedomena[t])='<XRWMA_GRAMMHS>' then
     begin
        trexon_sxhma.vale_xrwma_grammhs(StringToColor(Trim(dedomena[t+1])));
     end;

     if Trim(dedomena[t])='<PAXOS_GRAMMHS>' then
     begin
        trexon_sxhma.vale_paxos_grammhs(StrToInt(Trim(dedomena[t+1])));
     end;

     if Trim(dedomena[t])='<EIDOS_GRAMMHS>' then
     begin
        trexon_sxhma.vale_eidos_grammhs(Trim(dedomena[t+1]));
     end;

     if Trim(dedomena[t])='<XRWMA_GEMISMATOS>' then
     begin
        trexon_sxhma.vale_xrwma_gemismatos(StringToColor(Trim(dedomena[t+1])));
     end;

     if Trim(dedomena[t])='<KEIMENO>' then
     begin
        trexon_sxhma.vale_keimeno(Trim(dedomena[t+1]));
     end;

     if Trim(dedomena[t])='<MEGE8OS_GRAMMATOSEIRAS>' then
     begin
        trexon_sxhma.vale_mege9os_grammatoseiras(StrToInt(Trim(dedomena[t+1])));
     end;

     if Trim(dedomena[t])='<GRAMMATOSEIRA>' then
     begin
        trexon_sxhma.vale_grammatoseira(Trim(dedomena[t+1]));
     end;

     if Trim(dedomena[t])='<XRWMA_GRAMMATOSEIRAS>' then
     begin
        trexon_sxhma.vale_xrwma_grammatoseiras(StringToColor(Trim(dedomena[t+1])));
     end;

     if Trim(dedomena[t])='</SXHMA>' then
     begin
        trexon_sxediasthrio.kataxwrhseSxhma(trexon_sxhma);
        trexon_sxediasthrio.Invalidate;
     end;
   end;
end;

procedure TKurio.apo9hkeush_arxeiou(arx:String);
var t:integer;
    dedomena:TStringList;
begin
  dedomena:=TStringList.Create;
  dedomena.Add('<SXHMATA>');
  for t:=0 to trexon_sxediasthrio.ControlCount-1 do
  begin
    if trexon_sxediasthrio.Controls[t].ClassNameIs('TSxhma') then
    begin
      dedomena.Add('<SXHMA>');
      dedomena.Add('<TYPOS>');
      dedomena.Add(IntToStr(TSxhma(trexon_sxediasthrio.Controls[t]).pare_tupo));
      dedomena.Add('</TYPOS>');
      dedomena.Add('<X>');
      dedomena.Add(IntToStr(trexon_sxediasthrio.Controls[t].Left));
      dedomena.Add('</X>');
      dedomena.Add('<Y>');
      dedomena.Add(IntToStr(trexon_sxediasthrio.Controls[t].Top));
      dedomena.Add('</Y>');
      dedomena.Add('<PLATOS>');
      dedomena.Add(IntToStr(trexon_sxediasthrio.Controls[t].Width));
      dedomena.Add('</PLATOS>');
      dedomena.Add('<YUOS>');
      dedomena.Add(IntToStr(trexon_sxediasthrio.Controls[t].Height));
      dedomena.Add('</YUOS>');
      dedomena.Add('<XRWMA_GRAMMHS>');
      dedomena.Add(ColorToString(TSxhma(trexon_sxediasthrio.Controls[t]).pare_xrwma_grammhs));
      dedomena.Add('</XRWMA_GRAMMHS>');
      dedomena.Add('<PAXOS_GRAMMHS>');
      dedomena.Add(IntToStr(TSxhma(trexon_sxediasthrio.Controls[t]).pare_paxos_grammhs));
      dedomena.Add('</PAXOS_GRAMMHS>');
      dedomena.Add('<EIDOS_GRAMMHS>');
      dedomena.Add(TSxhma(trexon_sxediasthrio.Controls[t]).pare_eidos_grammhs);
      dedomena.Add('</EIDOS_GRAMMHS>');
      dedomena.Add('<XRWMA_GEMISMATOS>');
      dedomena.Add(ColorToString(TSxhma(trexon_sxediasthrio.Controls[t]).pare_xrwma_gemismatos));
      dedomena.Add('</XRWMA_GEMISMATOS>');
      dedomena.Add('<KEIMENO>');
      dedomena.Add(TSxhma(trexon_sxediasthrio.Controls[t]).pare_keimeno);
      dedomena.Add('</KEIMENO>');
      dedomena.Add('<MEGE8OS_GRAMMATOSEIRAS>');
      dedomena.Add(IntToStr(TSxhma(trexon_sxediasthrio.Controls[t]).pare_mege9os_grammatoseiras));
      dedomena.Add('</MEGE8OS_GRAMMATOSEIRAS>');
      dedomena.Add('<GRAMMATOSEIRA>');
      dedomena.Add(TSxhma(trexon_sxediasthrio.Controls[t]).pare_grammatoseira);
      dedomena.Add('</GRAMMATOSEIRA>');
      dedomena.Add('<XRWMA_GRAMMATOSEIRAS>');
      dedomena.Add(ColorToString(TSxhma(trexon_sxediasthrio.Controls[t]).pare_xrwma_grammatoseiras));
      dedomena.Add('</XRWMA_GRAMMATOSEIRAS>');
      dedomena.Add('</SXHMA>');
    end;
  end;
  dedomena.Add('</SXHMATA>');
  dedomena.SaveToFile(arx);
  onoma_arxeiou[perioxh_sxediwn.ActivePageIndex]:=arx;
  dedomena.Free;
end;

procedure TKurio.SpeedButton3Click(Sender: TObject);
begin
end;

procedure TKurio.koumpiDhmiourgiasClick(Sender: TObject);
begin
  dhmiourgia;
end;

procedure TKurio.koumpi_ergaleiou(Sender: TObject);
begin
  kataskeuh_sxhmatos(TSpeedButton(Sender).Tag);
end;

procedure TKurio.MenuItem10Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TKurio.epilogh_AntigrafhClick(Sender: TObject);
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     proxeiro:=trexon_sxediasthrio.pare_Epilegmeno;
  end;
end;

procedure TKurio.epilogh_EpikollhshClick(Sender: TObject);
var sx:TSxhma;
begin
  if proxeiro<>nil then
  begin
    sx:=TSxhma.Create(trexon_sxediasthrio);
    sx.AutoSize:=false;
    sx.vale_xarakthristika(proxeiro);
    sx.Left:=sx.Left+5;
    sx.Top:=sx.Top+5;
    trexon_sxediasthrio.KataxwrhseSxhma(sx);
    trexon_sxediasthrio.vale_Epilemeno(sx);
  end;
end;

procedure TKurio.MenuItem6Click(Sender: TObject);
begin
  dhmiourgia;
end;

procedure TKurio.epilogh_paxos_grammhsClick(Sender: TObject);
begin
  if Paxos_Grammhs.ShowModal=mrOk then
  begin
    if trexon_sxediasthrio.pare_Epilegmeno<>nil then
    begin
       trexon_sxediasthrio.pare_Epilegmeno.vale_paxos_grammhs(StrToInt(Paxos_Grammhs.pl_paxos_grammhs.Text));
    end;
  end;
end;

procedure TKurio.epilogh_eisagwgh_keimenoClick(Sender: TObject);
begin
  if Eisagwgh_Keimenou.ShowModal=mrOk then
  begin
    if trexon_sxediasthrio.pare_Epilegmeno<>nil then
    begin
       trexon_sxediasthrio.pare_Epilegmeno.vale_keimeno(Eisagwgh_Keimenou.pl_keimeno.Text);
    end;
  end;
end;

procedure TKurio.epilogh_EpiloghOlwnClick(Sender: TObject);
begin
  trexon_sxediasthrio.Epilogh_Olwn;
end;

procedure TKurio.epilogh_eidos_grammhsClick(Sender: TObject);
begin
  if Eidos_Grammhs.ShowModal=mrOk then
  begin
    if trexon_sxediasthrio.pare_Epilegmeno<>nil then
    begin
       trexon_sxediasthrio.pare_Epilegmeno.vale_eidos_grammhs(Eidos_Grammhs.pare_eidos_grammhs);
    end;
  end;
end;

procedure TKurio.epilogh_diagrafhClick(Sender: TObject);
begin
  diagrafh;
end;

procedure TKurio.epilogh_ApokophClick(Sender: TObject);
begin
  if trexon_sxediasthrio.pare_Epilegmeno=nil then exit;
  proxeiro:=trexon_sxediasthrio.pare_Epilegmeno;
  trexon_sxediasthrio.AfaireseSxhma(trexon_sxediasthrio.pare_Epilegmeno);
  proxeiro.katarghsh_labwn;
end;

procedure TKurio.epilogh_keimenoClick(Sender: TObject);
begin
  if Morfh_Keimenou.Execute then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.vale_mege9os_grammatoseiras(Morfh_Keimenou.Font.Size);
     trexon_sxediasthrio.pare_Epilegmeno.vale_grammatoseira(Morfh_Keimenou.Font.Name);
     trexon_sxediasthrio.pare_Epilegmeno.vale_xrwma_grammatoseiras(Morfh_Keimenou.Font.Color);
  end;
end;

procedure TKurio.epilogh_Metafora_ParaskhnioClick(Sender: TObject);
var sx:TSxhma;
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     sx:=trexon_sxediasthrio.pare_Epilegmeno;
     sx.katarghsh_labwn;
     trexon_sxediasthrio.AfaireseSxhma(sx);
     trexon_sxediasthrio.KataxwrhseSxhmasthnArxh(sx);
     sx.topo9ethsh_labwn;
  end;
end;

procedure TKurio.epilogh_Metafora_ProskhnioClick(Sender: TObject);
var sx:TSxhma;
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     sx:=trexon_sxediasthrio.pare_Epilegmeno;
     sx.katarghsh_labwn;
     trexon_sxediasthrio.AfaireseSxhma(sx);
     trexon_sxediasthrio.KataxwrhseSxhma(sx);
     sx.topo9ethsh_labwn;
  end;
end;

procedure TKurio.epilogh_Metakinhsh_AristeraClick(Sender: TObject);
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.Left:=trexon_sxediasthrio.pare_Epilegmeno.Left-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Left-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Left-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Left-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Left-1;
  end;
end;

procedure TKurio.epilogh_Metakinhsh_DeksiaClick(Sender: TObject);
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.Left:=trexon_sxediasthrio.pare_Epilegmeno.Left+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Left+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Left+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Left+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Left:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Left+1;
  end;
end;

procedure TKurio.epilogh_Metakinhsh_EpanwClick(Sender: TObject);
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.Top:=trexon_sxediasthrio.pare_Epilegmeno.Top-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Top-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Top-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Top-1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Top-1;
  end;
end;

procedure TKurio.epilogh_Metakinhsh_KatwClick(Sender: TObject);
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.Top:=trexon_sxediasthrio.pare_Epilegmeno.Top+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_ar.Top+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_ep_de3.Top+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_ar.Top+1;
     trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Top:=trexon_sxediasthrio.pare_Epilegmeno.labh_kat_de3.Top+1;
  end;
end;

procedure TKurio.epilogh_xrwma_gemismatosClick(Sender: TObject);
begin
  if Xrwma.Execute then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.vale_xrwma_gemismatos(Xrwma.Color);
  end;
end;

procedure TKurio.epilogh_xrwma_grammhsClick(Sender: TObject);
begin
  if Xrwma.Execute then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.vale_xrwma_grammhs(Xrwma.Color);
  end;
end;

procedure TKurio.FormCreate(Sender: TObject);
begin
  onoma_arxeiou:=TStringList.Create;
end;

procedure TKurio.FormDestroy(Sender: TObject);
begin
  onoma_arxeiou.Free;
end;

procedure TKurio.MenuItem7Click(Sender: TObject);
begin
  if Anoigma.Execute then
  begin
    anoigma_arxeiou(Anoigma.FileName);
  end;
end;

procedure TKurio.epilogh_Apo9hkeushClick(Sender: TObject);
begin
  if onoma_arxeiou[perioxh_sxediwn.ActivePageIndex]<>'' then
     apo9hkeush_arxeiou(onoma_arxeiou[perioxh_sxediwn.ActivePageIndex])
  else
     epilogh_Apo9hkeushClick(Sender);
end;

procedure TKurio.epilogh_Apo9hkeush_WsClick(Sender: TObject);
begin
  if Apo9hkeush.Execute then
  begin
    apo9hkeush_arxeiou(Apo9hkeush.FileName);
  end;
end;

end.

