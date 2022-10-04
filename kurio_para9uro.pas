unit kurio_para9uro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  ComCtrls, Menus, StdCtrls, sxediasthrio, sxhma, Messages, mhnumata;

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
    koumpi_eidos_grammhs: TSpeedButton;
    koumpi_xrwma_gemismatos: TSpeedButton;
    koumpi_rombos: TSpeedButton;
    koumpi_rombos1: TSpeedButton;
    koumpi_rombos2: TSpeedButton;
    koumpi_trapezio: TSpeedButton;
    koumpi_paxos_grammhs: TSpeedButton;
    koumpi_morfopoihsh_keimenou: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ant_thesi_x: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    sxediasthrio_thesi_x: TLabel;
    MenuItem11: TMenuItem;
    epilogh_EpiloghOlwn: TMenuItem;
    MenuItem12: TMenuItem;
    epilogh_Eisagwgh_Antikeimeno: TMenuItem;
    epilogh_Eisagwgh_O9ogwniou: TMenuItem;
    epilogh_Eisagwgh_Kuklos: TMenuItem;
    epilogh_Str_Or9ogwnio: TMenuItem;
    epilogh_Eisagwgh_Grammhs: TMenuItem;
    epilogh_Eisagwgh_Rombou: TMenuItem;
    epilogh_Eisagwgh_Trapeziou: TMenuItem;
    epilogh_Eisagwgh_Trigwnou: TMenuItem;
    epilogh_Eisagwgh_Or9_Trigwnou: TMenuItem;
    menou_Probolhs: TMenuItem;
    menou_Emfanishs: TMenuItem;
    epilogh_emfanishs_ergaleiwn_leitourgiwn: TMenuItem;
    epilogh_emfanishs_ergaleiwn_morfopoihshs: TMenuItem;
    epilogh_emfanishs_ergaleiwn_sxhmatwn: TMenuItem;
    epilogh_emfanishs_ergaleiwn_probolhs: TMenuItem;
    menou_e3agwgh: TMenuItem;
    MenuItem14: TMenuItem;
    epilogh_e3agwgh_se_eikona: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Morfh_Keimenou: TFontDialog;
    koumpi_epikollhsh: TSpeedButton;
    diaxwristiko1: TPanel;
    Panel1: TPanel;
    sxediasthrio_thesi_y: TLabel;
    sxhma_uyos: TLabel;
    sxhma_thesi_y: TLabel;
    sxhma_thesi_x: TLabel;
    sxhma_platos: TLabel;
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
    ergaleia_sxhmatwn: TPanel;
    ergaleia_morfopoihshs: TPanel;
    ergaleia_leitourgiwn: TPanel;
    ergaleia_probolhs: TPanel;
    Apo9hkeush: TSaveDialog;
    ScrollBox1: TScrollBox;
    koumpi_or9ogwniou: TSpeedButton;
    koumpi_grammhs: TSpeedButton;
    koumpi_kuklou: TSpeedButton;
    koumpi_xrwma_grammhs: TSpeedButton;
    koumpiDhmiourgias: TSpeedButton;
    koumpiAnoigma: TSpeedButton;
    koumpiApo9hkeush: TSpeedButton;
    koumpi_apokoph: TSpeedButton;
    koumpi_antigrafh: TSpeedButton;
    koumpi_str_or9ogwniou: TSpeedButton;
    procedure epilogh_ApokophClick(Sender: TObject);
    procedure epilogh_diagrafhClick(Sender: TObject);
    procedure epilogh_e3agwgh_se_eikonaClick(Sender: TObject);
    procedure epilogh_eidos_grammhsClick(Sender: TObject);
    procedure epilogh_eisagwgh_keimenoClick(Sender: TObject);
    procedure epilogh_Eisagwgh_Antikeimenou(Sender: TObject);
    procedure epilogh_emfanishs_ergaleiwn_leitourgiwnClick(Sender: TObject);
    procedure epilogh_emfanishs_ergaleiwn_morfopoihshsClick(Sender: TObject);
    procedure epilogh_emfanishs_ergaleiwn_probolhsClick(Sender: TObject);
    procedure epilogh_emfanishs_ergaleiwn_sxhmatwnClick(Sender: TObject);
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
    procedure koumpi_antigrafhClick(Sender: TObject);
    procedure koumpi_apokophClick(Sender: TObject);
    procedure koumpi_eidos_grammhsClick(Sender: TObject);
    procedure koumpi_epikollhshClick(Sender: TObject);
    procedure koumpi_morfopoihsh_keimenouClick(Sender: TObject);
    procedure koumpi_paxos_grammhsClick(Sender: TObject);
    procedure koumpi_xrwma_gemismatosClick(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure epilogh_AntigrafhClick(Sender: TObject);
    procedure epilogh_EpikollhshClick(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure epilogh_Apo9hkeushClick(Sender: TObject);
    procedure epilogh_Apo9hkeush_WsClick(Sender: TObject);
    procedure koumpi_ergaleiou(Sender: TObject);
    procedure koumpi_xrwma_grammhsClick(Sender: TObject);
    procedure koumpiDhmiourgiasClick(Sender: TObject);
  private
    onoma_arxeiou:TStringList;
    proxeiro:TSxhma;
    procedure dhmiourgia;
    procedure anoigma_arxeiou(arx:String);
    procedure apo9hkeush_arxeiou(arx:String);
    procedure kataskeuh_sxhmatos(tupos:integer);
    procedure diagrafh;
    procedure apokoph;
    procedure antigrafh;
    procedure epikollhsh;
    procedure emfanish_para9urou_xrwmatos_grammhs;
    procedure emfanish_para9urou_paxous_grammhs;
    procedure emfanish_para9urou_xrwmatos_gemismatos;
    procedure emfanish_para9urou_morfhs_keimenou;
    procedure emfanish_para9urou_eidous_grammhs;
    procedure thesi_sto_sxediasthrio(var Msg: TMessage); message WM_METAKINHSH_SE_SXEDIASTHRIO;
    procedure thesi_sxhmatos(var Msg: TMessage); message WM_METAKINHSH_SXHMATOS;
    procedure mege9os_sxhmatos(var Msg: TMessage); message WM_TRABHGMA_SXHMATOS;
  public
    trexon_sxediasthrio:TSxediasthrio;

  end;

var
  Kurio: TKurio;

implementation

uses para9uro_paxous_grammhs, para9uro_eisagwghs_keimenou,
     para9uro_eidos_grammhs, para9uro_diastasewn;

{$R *.lfm}

{ TKurio }

procedure TKurio.emfanish_para9urou_eidous_grammhs;
begin
  if Eidos_Grammhs.ShowModal=mrOk then
  begin
    if trexon_sxediasthrio.pare_Epilegmeno<>nil then
    begin
       trexon_sxediasthrio.pare_Epilegmeno.vale_eidos_grammhs(Eidos_Grammhs.pare_eidos_grammhs);
    end;
  end;
end;

procedure TKurio.emfanish_para9urou_morfhs_keimenou;
begin
  if Morfh_Keimenou.Execute then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.vale_mege9os_grammatoseiras(Morfh_Keimenou.Font.Size);
     trexon_sxediasthrio.pare_Epilegmeno.vale_grammatoseira(Morfh_Keimenou.Font.Name);
     trexon_sxediasthrio.pare_Epilegmeno.vale_xrwma_grammatoseiras(Morfh_Keimenou.Font.Color);
  end;
end;

procedure TKurio.emfanish_para9urou_xrwmatos_gemismatos;
begin
  if Xrwma.Execute then
  begin
     trexon_sxediasthrio.pare_Epilegmeno.vale_xrwma_gemismatos(Xrwma.Color);
  end;
end;

procedure TKurio.emfanish_para9urou_paxous_grammhs;
begin
  if Paxos_Grammhs.ShowModal=mrOk then
  begin
    if trexon_sxediasthrio.pare_Epilegmeno<>nil then
    begin
       trexon_sxediasthrio.pare_Epilegmeno.vale_paxos_grammhs(StrToInt(Paxos_Grammhs.pl_paxos_grammhs.Text));
    end;
  end;
end;

procedure TKurio.emfanish_para9urou_xrwmatos_grammhs;
begin
  if Xrwma.Execute then
    begin
       trexon_sxediasthrio.pare_Epilegmeno.vale_xrwma_grammhs(Xrwma.Color);
    end;
end;

procedure TKurio.epikollhsh;
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

procedure TKurio.antigrafh;
begin
  if trexon_sxediasthrio.pare_Epilegmeno<>nil then
  begin
     proxeiro:=trexon_sxediasthrio.pare_Epilegmeno;
  end;
end;

procedure TKurio.apokoph;
begin
  if trexon_sxediasthrio.pare_Epilegmeno=nil then exit;
  proxeiro:=trexon_sxediasthrio.pare_Epilegmeno;
  trexon_sxediasthrio.AfaireseSxhma(trexon_sxediasthrio.pare_Epilegmeno);
  proxeiro.katarghsh_labwn;
end;

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
  if Diastaseis.ShowModal=mrOk then
  begin
    TabSheet := TTabSheet.Create(perioxh_sxediwn);
    TabSheet.Caption := 'Νέο έγγραφο';
    onoma_arxeiou.Add('');
    TabSheet.PageControl := perioxh_sxediwn;
    perioxh_sxediwn.ActivePage:=TabSheet;
    sxd:=TSxediasthrio.Create(Self);
    sxd.Width:=StrToInt(Diastaseis.pl_platos.Text);
    sxd.Height :=StrToInt(Diastaseis.pl_uyos.Text);
    sxd.Color:=clWhite;
    sxd.BorderWidth := 1;
    sxd.BorderStyle := bsSingle;
    sxd.Left:= (TabSheet.Width-sxd.Width) div 2;
    sxd.Top:= (TabSheet.Height-sxd.Height) div 2;
    sxd.Parent:=TabSheet;
    sxd.Show;
    trexon_sxediasthrio:=sxd;
  end;
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

procedure TKurio.koumpi_xrwma_grammhsClick(Sender: TObject);
begin
  emfanish_para9urou_xrwmatos_grammhs;
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
  antigrafh;
end;

procedure TKurio.epilogh_EpikollhshClick(Sender: TObject);
begin
  epikollhsh;
end;

procedure TKurio.MenuItem6Click(Sender: TObject);
begin
  dhmiourgia;
end;

procedure TKurio.epilogh_paxos_grammhsClick(Sender: TObject);
begin
  emfanish_para9urou_paxous_grammhs;
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

procedure TKurio.epilogh_Eisagwgh_Antikeimenou(Sender: TObject);
begin
  kataskeuh_sxhmatos(TMenuItem(Sender).Tag);
end;

procedure TKurio.epilogh_emfanishs_ergaleiwn_leitourgiwnClick(Sender: TObject);
begin
  ergaleia_leitourgiwn.Visible:=not ergaleia_leitourgiwn.Visible;
end;

procedure TKurio.epilogh_emfanishs_ergaleiwn_morfopoihshsClick(Sender: TObject);
begin
  ergaleia_morfopoihshs.Visible:=not ergaleia_morfopoihshs.Visible;
end;

procedure TKurio.epilogh_emfanishs_ergaleiwn_probolhsClick(Sender: TObject);
begin
  ergaleia_probolhs.Visible:=not ergaleia_probolhs.Visible;
end;

procedure TKurio.epilogh_emfanishs_ergaleiwn_sxhmatwnClick(Sender: TObject);
begin
  ergaleia_sxhmatwn.Visible:=not ergaleia_sxhmatwn.Visible;
end;

procedure TKurio.epilogh_EpiloghOlwnClick(Sender: TObject);
begin
  trexon_sxediasthrio.Epilogh_Olwn;
end;

procedure TKurio.epilogh_eidos_grammhsClick(Sender: TObject);
begin
  emfanish_para9urou_eidous_grammhs;
end;

procedure TKurio.epilogh_diagrafhClick(Sender: TObject);
begin
  diagrafh;
end;

procedure TKurio.epilogh_e3agwgh_se_eikonaClick(Sender: TObject);
begin
  if Apo9hkeush.Execute then
  begin
    trexon_sxediasthrio.e3agwgh_se_eikona(Apo9hkeush.FileName);
  end;
end;

procedure TKurio.epilogh_ApokophClick(Sender: TObject);
begin
   apokoph;
end;

procedure TKurio.epilogh_keimenoClick(Sender: TObject);
begin
  emfanish_para9urou_morfhs_keimenou;
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
  emfanish_para9urou_xrwmatos_gemismatos;
end;

procedure TKurio.epilogh_xrwma_grammhsClick(Sender: TObject);
begin
  emfanish_para9urou_xrwmatos_grammhs;
end;

procedure TKurio.FormCreate(Sender: TObject);
begin
  onoma_arxeiou:=TStringList.Create;
end;

procedure TKurio.FormDestroy(Sender: TObject);
begin
  onoma_arxeiou.Free;
end;

procedure TKurio.koumpi_antigrafhClick(Sender: TObject);
begin
  antigrafh;
end;

procedure TKurio.koumpi_apokophClick(Sender: TObject);
begin
  apokoph;
end;

procedure TKurio.koumpi_eidos_grammhsClick(Sender: TObject);
begin
  emfanish_para9urou_eidous_grammhs;
end;

procedure TKurio.koumpi_epikollhshClick(Sender: TObject);
begin
  epikollhsh;
end;

procedure TKurio.koumpi_morfopoihsh_keimenouClick(Sender: TObject);
begin
  emfanish_para9urou_morfhs_keimenou;
end;

procedure TKurio.koumpi_paxos_grammhsClick(Sender: TObject);
begin
  emfanish_para9urou_paxous_grammhs;
end;

procedure TKurio.koumpi_xrwma_gemismatosClick(Sender: TObject);
begin
  emfanish_para9urou_xrwmatos_gemismatos;
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

procedure TKurio.thesi_sto_sxediasthrio(var Msg: TMessage);
begin
  sxediasthrio_thesi_x.Caption:=IntToStr(Msg.WParam);
  sxediasthrio_thesi_y.Caption:=IntToStr(Msg.LParam);
end;

procedure TKurio.thesi_sxhmatos(var Msg: TMessage);
begin
  sxhma_thesi_x.Caption:=IntToStr(Msg.WParam);
  sxhma_thesi_y.Caption:=IntToStr(Msg.LParam);
end;

procedure TKurio.mege9os_sxhmatos(var Msg: TMessage);
begin
  sxhma_platos.Caption := IntToStr(Msg.WParam);
  sxhma_uyos.Caption := IntToStr(Msg.LParam);
end;

end.

