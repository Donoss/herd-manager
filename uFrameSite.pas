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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid2: TDBGrid;
    btnCloseSplit2: TBitBtn;
    Panel2: TPanel;
    btnAdd: TButton;
    btnEdit: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnCloseSplit2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure OpenMaintSiteForm(AEditMode: TEditMode);
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
  SplitView2.Close;
end;

procedure TFrameOurSites.btnEditClick(Sender: TObject);
begin
  OpenMaintSiteForm(emAdd);
end;

procedure TFrameOurSites.DBGrid1DblClick(Sender: TObject);
begin
   SplitView2.Open;
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
    // Optionally free the form or handle cleanup as needed
  end;
end;

end.
