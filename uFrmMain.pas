unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.Buttons, Vcl.WinXPanels, Data.DB, Vcl.Grids, Vcl.DBGrids,

  System.Generics.Collections,
  Vcl.Mask, Vcl.DBCtrls, uFrameSite;

type
  TfrmMain = class(TForm)
    BitBtn1: TBitBtn;
    SplitView1: TSplitView;
    btnMovements: TButton;
    btnTagging: TButton;
    btnDeaths: TButton;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    btnDashboard: TButton;
    btnSettings: TButton;
    btnOurSites: TButton;
    btnOtherSites: TButton;
    ComboBox2: TComboBox;
    Label2: TLabel;
    FrameOurSites: TFrameOurSites;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnOurSitesClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Frame11DBGrid1DblClick(Sender: TObject);
    procedure SplitView1Closed(Sender: TObject);
    procedure SplitView1Opened(Sender: TObject);
    procedure PopulateSpecies;
  private
    { Private declarations }
    procedure EnableSpeciesView;
    procedure ArrangeSpeciesButtons;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  AppContext: String;

const
  cDashboard = 'Dashboard';
  cMovements = 'Movements';
  cTagging = 'Tagging';
  cDeaths = 'Deaths';
  cOurSites = 'Our Sites';
  cOtherSites = 'Other Sites';
  cSettings = 'Settings';

implementation

{$R *.dfm}

uses uDataManager, uSiteModel, uSiteData, uAnimalData;

procedure TfrmMain.ArrangeSpeciesButtons;
var
  Btn: TButton;
  BtnWidth, YPos: Integer;
begin
  YPos := 5; // Start positioning from a top margin (adjust as needed)
  Btn := btnDashboard;
  if Btn.Enabled then
  begin
    Btn.Top := YPos;
    Btn.Visible := True;
    Inc(YPos, Btn.Height + 5); // Add some space after the button
  end
  else
    Btn.Visible := False;

  Btn := btnMovements;
  if Btn.Enabled then
  begin
    Btn.Top := YPos;
    Btn.Visible := True;
    Inc(YPos, Btn.Height + 5); // Add some space after the button
  end
  else
    Btn.Visible := False;

  Btn := btnTagging;
  if Btn.Enabled then
  begin
    Btn.Top := YPos;
    Btn.Visible := True;
    Inc(YPos, Btn.Height + 5); // Add some space after the button
  end
  else
    Btn.Visible := False;

  Btn := btnDeaths;
  if Btn.Enabled then
  begin
    Btn.Top := YPos;
    Btn.Visible := True;
    Inc(YPos, Btn.Height + 5); // Add some space after the button
  end
  else
    Btn.Visible := False;

  Btn := btnOurSites;
  if Btn.Enabled then
  begin
    Btn.Top := YPos;
    Btn.Visible := True;
    Inc(YPos, Btn.Height + 5); // Add some space after the button
  end
  else
    Btn.Visible := False;

  Btn := btnOtherSites;
  if Btn.Enabled then
  begin
    Btn.Top := YPos;
    Btn.Visible := True;
    Inc(YPos, Btn.Height + 5); // Add some space after the button
  end
  else
    Btn.Visible := False;

end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
  SplitView1.Opened := not SplitView1.Opened;

end;

procedure TfrmMain.btnOurSitesClick(Sender: TObject);

begin
  AppContext := cOurSites;
  SiteData.GetOurSitesList;
  FrameOurSites.Align := alClient;
  FrameOursites.Visible := true;

end;

procedure TfrmMain.ComboBox1Change(Sender: TObject);
begin
  EnableSpeciesView;
end;

procedure TfrmMain.EnableSpeciesView;
begin
  if (ComboBox1.Text = 'Wildboar') or (ComboBox1.Text = 'Pigs') then
  begin
    // Pigs and Wildboar
    btnTagging.Enabled := True;
    btnDeaths.Enabled := False;
  end
  else
  begin
    btnTagging.Enabled := True;
    btnDeaths.Enabled := True;
  end;

  ArrangeSpeciesButtons;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  PopulateSpecies;
  ArrangeSpeciesButtons;
  SplitView1.Close;
  AppContext := cDashboard;

end;

procedure TfrmMain.Frame11DBGrid1DblClick(Sender: TObject);
begin
  FrameOurSites.SplitView2.Open;
end;

procedure TfrmMain.PopulateSpecies;
begin
  ComboBox1.Items.Clear;
  ComboBox1.Items.Add('All');
  AnimalData.AureliusDatasetSpecies.First;
  while not AnimalData.AureliusDatasetSpecies.Eof do
  begin
    ComboBox1.Items.Add(AnimalData.AureliusDatasetSpecies.FieldByName('Species')
      .AsString);
    AnimalData.AureliusDatasetSpecies.Next;
  end;

  ComboBox1.ItemIndex := 0; // Select 'All'
end;

procedure TfrmMain.SplitView1Closed(Sender: TObject);
var
  i: Integer;
  Btn: TButton;
begin
  for i := 0 to SplitView1.ControlCount - 1 do
  begin
    if SplitView1.Controls[i] is TButton then
    begin
      Btn := TButton(SplitView1.Controls[i]);
      Btn.Width := 50;
      Btn.Caption := '';
    end;
  end;

end;

procedure TfrmMain.SplitView1Opened(Sender: TObject);
var
  i: Integer;
  Btn: TButton;
begin
  for i := 0 to SplitView1.ControlCount - 1 do
  begin
    if SplitView1.Controls[i] is TButton then
    begin
      Btn := TButton(SplitView1.Controls[i]);
      Btn.Width := 190;
    end;
  end;
  with btnDashboard do
    Caption := cDashboard;
  Hint := cDashboard;
  with btnMovements do
    Caption := cMovements;
  Hint := cMovements;
  with btnTagging do
    Caption := cTagging;
  Hint := cTagging;
  with btnDeaths do
    Caption := cDeaths;
  Hint := cDeaths;
  with btnOurSites do
    Caption := cOurSites;
  Hint := cOurSites;
  with btnOtherSites do
    Caption := cOtherSites;
  Hint := cOtherSites;
  with btnSettings do
    Caption := cSettings;
  Hint := cSettings;

end;

end.
