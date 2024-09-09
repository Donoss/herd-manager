unit uFrameSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.DBGrids, Aurelius.Engine.ObjectManager, Aurelius.Linq,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset, Aurelius.Comp.Manager;

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
    Panel4: TPanel;
    BitBtn2: TBitBtn;
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
    btnCancel: TButton;
    btnSave: TButton;
    dsSite: TDataSource;
    AureliusDatasetSite: TAureliusDataset;
    AureliusDatasetSiteId: TStringField;
    AureliusDatasetSiteSiteType: TStringField;
    AureliusDatasetSiteHoldingNumber: TStringField;
    AureliusDatasetSiteName: TStringField;
    AureliusDatasetSiteAddress: TStringField;
    AureliusDatasetSitePostcode: TStringField;
    AureliusDatasetSiteState: TStringField;
    AureliusDatasetSiteOperatorName: TStringField;
    AureliusDatasetSiteOperatorAddress: TStringField;
    AureliusDatasetSiteOperatorPostcode: TStringField;
    AureliusDatasetSiteOperatorFlag: TBooleanField;
    btnAdd: TButton;
    btnEdit: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uFrmMain, uSiteModel, uDataManager;

procedure TFrameOurSites.BitBtn2Click(Sender: TObject);
begin
  SplitView2.Close;
end;

procedure TFrameOurSites.btnEditClick(Sender: TObject);
begin
  SplitView2.Open;
  if AppContext = cOurSites then
    AureliusDatasetSite.Edit;
end;

procedure TFrameOurSites.btnCancelClick(Sender: TObject);
begin
  AureliusDatasetSite.Cancel;
  SplitView2.Close;
end;

procedure TFrameOurSites.btnSaveClick(Sender: TObject);
begin
  AureliusDatasetSite.Post;
  AureliusManager.Flush;
end;

procedure TFrameOurSites.DBGrid1DblClick(Sender: TObject);
begin
   SplitView2.Open;
end;

end.
