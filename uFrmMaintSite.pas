unit uFrmMaintSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.CheckLst, uAppTypes,
  Aurelius.Engine.ObjectManager, // For TObjectManager (SaveOrUpdate, Flush)
  Aurelius.Validation.Interfaces,
  // For IManagerValidationResult, IValidationError
  Aurelius.Engine.Exceptions, // For EEntityValidationException
  Aurelius.Bind.Dataset, // For AureliusDatasetSite
  System.SysUtils // For basic utilities (Format, WriteLn)
    ;

type
  TFrmMaintSite = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Button8: TButton;
    TabSheet3: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
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
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel4: TPanel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button9: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

uses uDataManager, uSiteModel;

procedure TFrmMaintSite.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  // Hide tabs for all TabSheets in PageControl1
  for i := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[i].TabVisible := False;
  end;

  // Set the first TabSheet as active
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmMaintSite.Button10Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TFrmMaintSite.Button1Click(Sender: TObject);
begin
  CancelAndClose;
end;

procedure TFrmMaintSite.Button3Click(Sender: TObject);
begin
  NextPage;
end;

procedure TFrmMaintSite.Button5Click(Sender: TObject);
begin
  SaveAndClose;
end;

procedure TFrmMaintSite.Button6Click(Sender: TObject);
begin
  NextPage;

end;

procedure TFrmMaintSite.Button7Click(Sender: TObject);
begin
 CancelAndClose;
end;

procedure TFrmMaintSite.Button8Click(Sender: TObject);
begin
  PreviousPage;
end;

procedure TFrmMaintSite.Button9Click(Sender: TObject);
begin
  SaveAndClose;
end;

procedure TFrmMaintSite.CancelAndClose;
begin
  if DataManager.AureliusDatasetSite.State in [dsEdit, dsInsert] then
    DataManager.AureliusDatasetSite.Cancel;

  ModalResult := mrCancel;  // Sets the result for modal forms
end;

procedure TFrmMaintSite.FormShow(Sender: TObject);
begin
  // PageControl1.TabVisible := False;
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
  SiteEntity := DataManager.AureliusDatasetSite.Current<TSite>;
  DataManager.AureliusDatasetSite.Post;

  try
    // Save or update the entity
    DataManager.AureliusManager.SaveOrUpdate(SiteEntity);

    // Flush changes to the database
    DataManager.AureliusManager.Flush;
    ModalResult := mrClose;  // Sets the result for modal forms

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
    end;
  end;
end;

procedure TFrmMaintSite.SetEditMode(AEditMode: TEditMode);
begin
  FEditMode := AEditMode;
  case FEditMode of
    emAdd:
      begin
        Caption := 'Add New Site';
        DataManager.dsSite.Dataset.Insert;
        DataManager.dsSite.Dataset.FieldByName('SiteType').AsString := 'Farm';
        DataManager.dsSite.Dataset.FieldByName('OperatorFlag')
          .AsBoolean := True;
      end;
    emEdit:
      begin
        Caption := 'Edit Site';
        DataManager.dsSite.Dataset.Edit;
      end;
  end;
end;

end.
