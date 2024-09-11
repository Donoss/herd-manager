unit uFrameSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.DBGrids, Aurelius.Engine.ObjectManager, Aurelius.Linq,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset, Aurelius.Comp.Manager,
  scControls, scAdvancedControls, uAppTypes;

type
  TFrameOurSites = class(TFrame)
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SplitView2: TSplitView;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    btnCloseSplit2: TBitBtn;
    Panel2: TPanel;
    btnAdd: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    procedure btnAddClick(Sender: TObject);
    procedure btnCloseSplit2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure OpenMaintSiteForm(AEditMode: TEditMode);
    procedure SplitView2Closing(Sender: TObject);
    procedure SplitView2Opening(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uFrmMain, uFrmMaintSite, uDataManager;

procedure TFrameOurSites.btnAddClick(Sender: TObject);
begin
  OpenMaintSiteForm(emAdd);
end;

procedure TFrameOurSites.btnCloseSplit2Click(Sender: TObject);
begin
  SplitView2.Opened := not SplitView2.Opened;
end;

procedure TFrameOurSites.DBGrid1DblClick(Sender: TObject);
begin
  OpenMaintSiteForm(emEdit);
end;

procedure TFrameOurSites.OpenMaintSiteForm(AEditMode: TEditMode);
begin
  // Check if FrmMaintSite is nil or create a new instance
  if not Assigned(FrmMaintSite) then
    FrmMaintSite := TFrmMaintSite.Create(nil);

  try
    FrmMaintSite.SetEditMode(AEditMode);  // Pass Add or Edit mode
    FrmMaintSite.ShowModal;  // Open the form modally (or Show if non-modal)
  finally
    DataManager.dsSite.DataSet.Refresh;
  end;
end;

procedure TFrameOurSites.SplitView2Closing(Sender: TObject);
begin
  btnCloseSplit2.ImageName := 'previous64';
end;

procedure TFrameOurSites.SplitView2Opening(Sender: TObject);
begin
  btnCloseSplit2.ImageName := 'next64'
end;

end.
