unit uFrmMaintSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.CheckLst, uAppTypes,
  Aurelius.Engine.ObjectManager,
  Aurelius.Validation.Interfaces,

  Aurelius.Engine.Exceptions,
  Aurelius.Bind.Dataset,
  System.SysUtils, System.Notification, Vcl.Grids, Vcl.DBGrids, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, TaskDialog;

type
  TFrmMaintSite = class(TForm)
    PageControl1: TPageControl;
    TabSheetSite: TTabSheet;
    Label12: TLabel;
    Panel5: TPanel;
    btnSiteCancel: TButton;
    btnSiteNext: TButton;
    btnSiteSave: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    Panel6: TPanel;
    btnKeeperPrevious: TButton;
    btnKeeperSave: TButton;
    btnKeeperNext: TButton;
    btnKeeperCancel: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Panel7: TPanel;
    Panel1: TPanel;
    DataSource1: TDataSource;
    TabSheetMarks: TTabSheet;
    Label13: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel3: TPanel;
    btnEdit: TButton;
    btnAdd: TButton;

    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSiteNextClick(Sender: TObject);
    procedure btnSiteSaveClick(Sender: TObject);
    procedure btnSiteCancelClick(Sender: TObject);
    procedure TabSheetSiteShow(Sender: TObject);
    procedure btnKeeperNextClick(Sender: TObject);
    procedure btnKeeperPreviousClick(Sender: TObject);
    procedure btnKeeperSaveClick(Sender: TObject);
    procedure btnKeeperCancelClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure OpenMarkDialog(AEditMode: TEditMode);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
    FEditMode: TEditMode;
    procedure SaveAndClose;
    procedure NextPage;
    procedure PreviousPage;
    procedure CancelAndClose;
  public
    { Public declarations }
    procedure SetEditMode(AEditMode: TEditMode);
  end;

var
  FrmMaintSite: TFrmMaintSite;

implementation

{$R *.dfm}

uses uDataManager, uSiteModel, uSiteData, uDataUtils, uFrmMarkDialog;

procedure TFrmMaintSite.btnAddClick(Sender: TObject);
begin
  OpenMarkDialog(emAdd);
end;

procedure TFrmMaintSite.btnEditClick(Sender: TObject);
begin
  OpenMarkDialog(emEdit);
end;

procedure TFrmMaintSite.btnKeeperCancelClick(Sender: TObject);
begin
  CancelAndClose;
end;

procedure TFrmMaintSite.btnKeeperNextClick(Sender: TObject);
begin
  NextPage;
end;

procedure TFrmMaintSite.btnKeeperPreviousClick(Sender: TObject);
begin
  PreviousPage;
end;

procedure TFrmMaintSite.btnKeeperSaveClick(Sender: TObject);
begin
  SaveAndClose;
end;

procedure TFrmMaintSite.btnSiteCancelClick(Sender: TObject);
begin
  CancelAndClose;
end;

procedure TFrmMaintSite.btnSiteNextClick(Sender: TObject);
begin
  NextPage;
end;

procedure TFrmMaintSite.btnSiteSaveClick(Sender: TObject);
begin
  SaveAndClose;
end;

procedure TFrmMaintSite.CancelAndClose;
begin
  if SiteData.AureliusDatasetSite.State in [dsEdit, dsInsert] then
    SiteData.AureliusDatasetSite.Cancel;

  ModalResult := mrCancel; // Sets the result for modal forms
end;

procedure TFrmMaintSite.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Panel1.Caption := ' '
    + SiteData.dsSite.Dataset.FieldByName('Name').AsString
    + ' ('
    + SiteData.dsSite.Dataset.FieldByName('Identifier').AsString
    + ')';
end;

procedure TFrmMaintSite.DBEdit3Exit(Sender: TObject);
var
  ValidationMessage: string;
  Valid: Boolean;
begin
  if Trim(DBEdit3.Text) = '' then
    Exit;

  Valid := TDataUtils.ValidateAttributeFormat('postcode', DBEdit3.Text,
    ValidationMessage);

  if Valid then
    Exit
  else
  begin
    ShowMessage(ValidationMessage);
    DBEdit3.SetFocus;
    Abort;
  end;
end;

procedure TFrmMaintSite.DBEdit5Exit(Sender: TObject);
var
  ValidationMessage: string;
  Valid: Boolean;
begin

  Valid := TDataUtils.ValidateAttributeFormat('holdingNumber', DBEdit5.Text,
    ValidationMessage);

  if Valid then
    Exit
  else
  begin
    ShowMessage(ValidationMessage);
    DBEdit5.SetFocus;
    Abort;
  end;

end;

procedure TFrmMaintSite.DBEdit6Exit(Sender: TObject);
begin
  if Trim(DBEdit6.Text) = '' then
  begin
    ShowMessage('Name must be provided.');
    DBEdit6.SetFocus;
    Abort;
  end;
end;

procedure TFrmMaintSite.DBEdit7Exit(Sender: TObject);
begin
  if Trim(DBEdit7.Text) = '' then
  begin
    ShowMessage('Address must be provided.');
    DBEdit7.SetFocus;
    Abort;
  end;
end;

procedure TFrmMaintSite.DBEdit8Exit(Sender: TObject);
var
  ValidationMessage: string;
  Valid: Boolean;
begin

  Valid := TDataUtils.ValidateAttributeFormat('postcode', DBEdit8.Text,
    ValidationMessage);

  if Valid then
    Exit
  else
  begin
    ShowMessage(ValidationMessage);
    DBEdit8.SetFocus;
    Abort;
  end;

end;

procedure TFrmMaintSite.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheetSite;
end;

procedure TFrmMaintSite.NextPage;
begin
  if PageControl1.ActivePageIndex < PageControl1.PageCount - 1 then
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
end;

procedure TFrmMaintSite.PreviousPage;
begin
  if PageControl1.ActivePageIndex > 0 then
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
end;

procedure TFrmMaintSite.SaveAndClose;
var
  SiteEntity: TSite;
  ValidationResult: IManagerValidationResult;
  Error: IValidationError;
  ValidationMessages: string;
begin
  SiteEntity := SiteData.AureliusDatasetSite.Current<TSite>;

  try
    SiteData.AureliusDatasetSite.Post;
    // Save or update the entity
    DataManager.AureliusManager.SaveOrUpdate(SiteEntity);

    // Flush changes to the database
    DataManager.AureliusManager.Flush;

  except
    on E: EEntityValidationException do
    begin
      // Set the general validation failure message
      ValidationMessages :=
        'The Site could not be saved for the following reasons:';

      // Loop through the validation results and append each error message
      for ValidationResult in E.Results do
        for Error in ValidationResult.Errors do
        begin
          // Remove the word "Field" from the error message
          ValidationMessages := ValidationMessages + sLineBreak + '  - ' +
            StringReplace(Error.ErrorMessage, 'Field ', '', []);
        end;

      // Display the combined message
      ShowMessage(ValidationMessages);
      Exit

    end;
  end;

  ModalResult := mrClose; // Sets the result for modal forms

end;

procedure TFrmMaintSite.SetEditMode(AEditMode: TEditMode);
begin
  FEditMode := AEditMode;
  case FEditMode of
    emAdd:
      begin
        Caption := 'Add New Site';
        try
          SiteData.dsSite.Dataset.Insert;
        except
          on E: Exception do
            ShowMessage('Error: ' + E.Message);
        end;
        SiteData.dsSite.Dataset.FieldByName('SiteType').AsString := 'Farm';
        SiteData.dsSite.Dataset.FieldByName('OperatorFlag').AsBoolean := True;
      end;
    emEdit:
      begin
        Caption := 'Edit Site';
        SiteData.dsSite.Dataset.Edit;
      end;
  end;
end;

procedure TFrmMaintSite.TabSheetSiteShow(Sender: TObject);
begin
{  btnSiteNext.Left := 4;

  // Position the second button 4 pixels away from the first button
  // Button2.Left := Button1.Left + Button1.Width + ButtonSpacing;

  // Position the fourth button 4 pixels from the right of the TabSheet
  btnSiteCancel.Left := TabSheetSite.Width - btnSiteCancel.Width - 4;

  // Position the third button 4 pixels away from the fourth button
  btnSiteSave.Left := btnSiteCancel.Left - btnSiteSave.Width - 4;    }
end;

procedure TFrmMaintSite.OpenMarkDialog(AEditMode: TEditMode);
begin
  // Check if FrmMaintSite is nil or create a new instance
  if not Assigned(FrmMaintSite) then
    FrmMarkDialog := TFrmMarkDialog.Create(nil);

  try
    FrmMarkDialog.SetEditMode(AEditMode);  // Pass Add or Edit mode
    FrmMarkDialog.ShowModal;  // Open the form modally (or Show if non-modal)
  finally
    SiteData.dsSiteMark.DataSet.Refresh;
  end;
end;

end.
