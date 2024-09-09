unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  AdvTypes, Vcl.Buttons, Vcl.WinXPanels, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset,
  Aurelius.Engine.ObjectManager, Aurelius.Linq, Aurelius.Comp.Manager,
  Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq, Aurelius.Criteria.Projections,
  System.Generics.Collections,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmMain = class(TForm)
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    BitBtn1: TBitBtn;
    SplitView1: TSplitView;
    btnMovements: TButton;
    Panel1: TPanel;
    btnTagging: TButton;
    btnDeaths: TButton;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    btnDashboard: TButton;
    btnSettings: TButton;
    btnOurSites: TButton;
    btnOtherSites: TButton;
    SplitView2: TSplitView;
    ComboBox2: TComboBox;
    DBGrid1: TDBGrid;
    dsSite: TDataSource;
    AureliusManager: TAureliusManager;
    AureliusDatasetSite: TAureliusDataset;
    Panel3: TPanel;
    AureliusDatasetSiteId: TStringField;
    AureliusDatasetSiteSiteType: TStringField;
    AureliusDatasetSiteName: TStringField;
    AureliusDatasetSiteAddress: TStringField;
    AureliusDatasetSitePostcode: TStringField;
    AureliusDatasetSiteHoldingNumber: TStringField;
    Panel4: TPanel;
    AureliusDatasetSiteState: TStringField;
    AureliusDatasetSiteOperatorName: TStringField;
    AureliusDatasetSiteOperatorAddress: TStringField;
    AureliusDatasetSiteOperatorPostcode: TStringField;
    AureliusDatasetSiteOperatorFlag: TBooleanField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    BitBtn2: TBitBtn;
    btnAdd: TButton;
    btnEdit: TButton;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBGrid2: TDBGrid;
    Label11: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOurSitesClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SplitView1Closed(Sender: TObject);
    procedure SplitView1Opened(Sender: TObject);
    procedure SplitView2Opened(Sender: TObject);
  private
    { Private declarations }
    procedure EnableSpeciesView;
    procedure ArrangeSpeciesButtons;
    procedure EnableContextView;
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

uses uDataManager, uSiteModel;

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

procedure TfrmMain.BitBtn2Click(Sender: TObject);
begin
  SplitView2.Close;
end;

procedure TfrmMain.btnEditClick(Sender: TObject);
begin
  SplitView2.Open;
  if AppContext = cOurSites then
    AureliusDatasetSite.Edit;
end;

procedure TfrmMain.btnOurSitesClick(Sender: TObject);
var
  LOurSiteList: TObjectList<TSite>;
begin
  AppContext := cOurSites;
  EnableContextView;
  Panel1.Caption := AppContext;
  LOurSiteList := AureliusManager.Find<TSite>
    .Where(TLinq.Eq('OperatorFlag', True))  // Filter where OperatorFlag is True
    .OrderBy('Name')                        // Order by Name
    .List;                                  // Fetch the list
  try
    AureliusDatasetSite.SetSourceList(LOurSiteList);
    AureliusDatasetSite.Open;
  except
    LOurSiteList.Free;
    raise;
  end;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
   AureliusDatasetSite.Post;
end;

procedure TfrmMain.ComboBox1Change(Sender: TObject);
begin
  EnableSpeciesView;
end;

procedure TfrmMain.DBGrid1DblClick(Sender: TObject);
begin
  SplitView2.Open;
end;

procedure TfrmMain.EnableContextView;
begin
  if AppContext = cDashboard then
  begin
    btnAdd.Visible := False;
    btnEdit.Visible := False;
  end
  else
  begin
    btnAdd.Visible := True;
    btnEdit.Visible := True;
  end;
end;

procedure TfrmMain.EnableSpeciesView;
begin
  case ComboBox1.ItemIndex of
    0, 1, 3, 4, 5, 6, 7:
      begin // all but pigs
        btnTagging.Enabled := True;
        btnDeaths.Enabled := True;
      end;
    2:
      begin // Pigs
        btnTagging.Enabled := True;
        btnDeaths.Enabled := False;
      end;

  end;

  ArrangeSpeciesButtons;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  ArrangeSpeciesButtons;
  SplitView1.Close;
  SplitView2.Close;
  AppContext := cDashboard;
  EnableContextView;

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

procedure TfrmMain.SplitView2Opened(Sender: TObject);
begin
  BitBtn2.Visible := True;
end;

end.
