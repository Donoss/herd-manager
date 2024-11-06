unit uFrameSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.DBGrids, Aurelius.Engine.ObjectManager, Aurelius.Linq,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset, Aurelius.Comp.Manager,
   uAppTypes, Vcl.ComCtrls,

  Vcl.CheckLst,

  Aurelius.Validation.Interfaces,

  Aurelius.Engine.Exceptions,
  System.Notification;


type
  TFrameOurSites = class(TFrame)
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SplitView2: TSplitView;
    Panel2: TPanel;
    btnCloseView: TButton;
    Panel1: TPanel;
    Panel4: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    btnEdit: TButton;
    btnAdd: TButton;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBGrid2: TDBGrid;
    procedure btnAddClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure OpenMaintSiteForm(AEditMode: TEditMode);
    procedure SplitView2Closing(Sender: TObject);
    procedure SplitView2Opening(Sender: TObject);
    procedure btnCloseViewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uFrmMain, uFrmMaintSite, uDataManager, uSiteData, uDataUtils, uSiteModel;

procedure TFrameOurSites.btnAddClick(Sender: TObject);
begin
  OpenMaintSiteForm(emAdd);
end;

procedure TFrameOurSites.btnCloseViewClick(Sender: TObject);
begin
  SplitView2.Opened := not SplitView2.Opened;
end;



procedure TFrameOurSites.btnEditClick(Sender: TObject);
begin
  OpenMaintSiteForm(emEdit);
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
    SiteData.dsSite.DataSet.Refresh;
  end;
end;



procedure TFrameOurSites.SplitView2Closing(Sender: TObject);
begin
  btnCloseView.ImageName := 'previous64';
end;

procedure TFrameOurSites.SplitView2Opening(Sender: TObject);
begin
  btnCloseView.ImageName := 'next64'
end;

end.
