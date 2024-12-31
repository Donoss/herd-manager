unit uFrmSites;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Mask, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  AdvToolBar, Vcl.Buttons, AdvGlowButton, Vcl.TitleBarCtrls, Vcl.ButtonGroup,
  Math;

type
  TFrmSites = class(TForm)
    DBGrid1: TDBGrid;
    SplitView2: TSplitView;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    ToolBar3: TToolBar;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    SplitView1: TSplitView;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    SplitView4: TSplitView;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    dsContacts: TDataSource;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    btnCloseContact: TSpeedButton;
    Panel3: TPanel;
    btnCancelContact: TSpeedButton;
    btnSaveContact: TSpeedButton;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel2: TPanel;
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ApplyFilters;
    procedure ComboBox2Change(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure dsContactsStateChange(Sender: TObject);
    procedure UpdateSiteContactsView;
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure btnCloseContactClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure btnSaveContactClick(Sender: TObject);
    procedure btnCancelContactClick(Sender: TObject);
    procedure SplitView4Exit(Sender: TObject);
    procedure SplitView4Closing(Sender: TObject);
    procedure CheckContactState;
    procedure GroupBox4Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSites: TFrmSites;

implementation

{$R *.dfm}

uses uUtilities, uImages, uSiteData;

procedure TFrmSites.ApplyFilters;
var
  FilterString: string;
begin
  // Start by setting up the IS_OWNED filter based on CheckBox1 state
  if CheckBox1.Checked then
    FilterString := 'IS_OWNED = True'
  else
    FilterString := '';

  // Add additional filter based on ComboBox1 selection
  if ComboBox2.Text <> '' then
  begin
    // Add AND condition if IS_OWNED filter is already applied
    if FilterString <> '' then
      FilterString := FilterString + ' AND ';

    // Filter by the ComboBox selection (assuming you have a field 'SITE_TYPE' in your dataset)
    FilterString := FilterString + Format('VW_SITE_TYPE = ''%s''',
      [ComboBox2.Text]);
  end;

  // Apply the combined filter
  SiteData.FDQuerySites.Filter := FilterString;
  SiteData.FDQuerySites.Filtered := FilterString <> '';
  // Enable filtering only if there’s a filter string

  // Refresh the dataset to apply the new filter
  SiteData.FDQuerySites.Refresh;
end;

procedure TFrmSites.CheckBox1Click(Sender: TObject);
begin
  ApplyFilters;
end;

procedure TFrmSites.CheckContactState;
begin
  if dsContacts.State in [dsInsert, dsEdit] then
    if MessageDlg('Save changes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
    begin
      dsContacts.DataSet.Post;
    end
    else
    begin
      dsContacts.DataSet.Cancel;
    end;
end;

procedure TFrmSites.ComboBox2Change(Sender: TObject);
begin
  ApplyFilters;
end;

procedure TFrmSites.DBGrid1DblClick(Sender: TObject);
begin
  SplitView2.Opened := True;
end;

procedure TFrmSites.DBGrid2DblClick(Sender: TObject);
begin
  // if not SplitView4.Opened then
  SplitView4.Open;
end;

procedure TFrmSites.dsContactsStateChange(Sender: TObject);
begin
  UpdateSiteContactsView;
end;

procedure TFrmSites.GroupBox4Exit(Sender: TObject);
begin
  CheckContactState;
end;

procedure TFrmSites.btnCancelContactClick(Sender: TObject);
begin
  dsContacts.DataSet.Cancel;
end;

procedure TFrmSites.btnCloseContactClick(Sender: TObject);
begin
  SplitView4.Close;
end;

procedure TFrmSites.btnSaveContactClick(Sender: TObject);
begin
  dsContacts.DataSet.Post;
end;

procedure TFrmSites.SpeedButton4Click(Sender: TObject);
begin
  SplitView4.Open;
  dsContacts.DataSet.Insert;
end;

procedure TFrmSites.SpeedButton5Click(Sender: TObject);
begin
  SplitView4.Opened := not SplitView4.Opened;
end;

procedure TFrmSites.SplitView4Closing(Sender: TObject);
begin
 // CheckContactState;
end;

procedure TFrmSites.SplitView4Exit(Sender: TObject);
begin
 // CheckContactState;
end;

procedure TFrmSites.ToolButton10Click(Sender: TObject);
begin
  SplitView4.Opened := not SplitView4.Opened;
end;

procedure TFrmSites.ToolButton12Click(Sender: TObject);
begin
  dsContacts.DataSet.Insert;
end;

procedure TFrmSites.ToolButton4Click(Sender: TObject);
begin
  SplitView2.Opened := False;
end;

procedure TFrmSites.ToolButton5Click(Sender: TObject);
begin
  SplitView2.Opened := True;
end;

procedure TFrmSites.ToolButton6Click(Sender: TObject);
begin
  SplitView4.Opened := False;
end;

procedure TFrmSites.ToolButton7Click(Sender: TObject);
begin
  SplitView1.Opened := ToolButton7.Down;

end;

procedure TFrmSites.UpdateSiteContactsView;
begin
  case dsContacts.State of
    dsBrowse:
      begin
        Panel1.Caption := '  Viewing contact:';
        btnSaveContact.Enabled := False;
        btnCancelContact.Enabled := False;
        btnCloseContact.Enabled := True;
      end;

    dsEdit:
      begin
        Panel1.Caption := '  Editing contact:';
        btnSaveContact.Enabled := True;
        btnCancelContact.Enabled := True;
        btnCloseContact.Enabled := False;
      end;

    dsInsert:
      begin
        Panel1.Caption := '  Creating contact:';
        btnSaveContact.Enabled := True;
        btnCancelContact.Enabled := True;
        btnCloseContact.Enabled := False;
      end;

  end;

end;

end.
