unit uFrmMarkDialog;

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
  TFrmMarkDialog = class(TForm)
    DataSource1: TDataSource;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    btnSave: TButton;
    btnCancel: TButton;
    DBLookupComboBox1: TDBLookupComboBox;

    procedure DBEdit5Exit(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    FEditMode: TEditMode;
    procedure SaveAndClose;
    procedure CancelAndClose;
  public
    { Public declarations }
    procedure SetEditMode(AEditMode: TEditMode);
  end;

var
  FrmMarkDialog: TFrmMarkDialog;

implementation

{$R *.dfm}

uses uSiteModel, uSiteData, uDataUtils, uAnimalData;


procedure TFrmMarkDialog.btnCancelClick(Sender: TObject);
begin
  CancelAndClose;
end;

procedure TFrmMarkDialog.btnSaveClick(Sender: TObject);
begin
  SaveAndClose;
end;

procedure TFrmMarkDialog.CancelAndClose;
begin
 { if SiteData.AureliusDatasetSiteMark.State in [dsEdit, dsInsert] then
    SiteData.AureliusDatasetSiteMark.Cancel;

  ModalResult := mrCancel; // Sets the result for modal forms     }
end;

procedure TFrmMarkDialog.DBEdit5Exit(Sender: TObject);
var
  ValidationMessage: string;
  Valid: Boolean;
begin

 { Valid := TDataUtils.ValidateAttributeFormat('holdingNumber', DBEdit5.Text,
    ValidationMessage);

  if Valid then
    Exit
  else
  begin
    ShowMessage(ValidationMessage);
    DBEdit5.SetFocus;
    Abort;
  end;       }

end;


procedure TFrmMarkDialog.SaveAndClose;
var
  SiteMarkEntity: TSiteMark;
  ValidationResult: IManagerValidationResult;
  Error: IValidationError;
  ValidationMessages: string;
begin
 { SiteMarkEntity := SiteData.AureliusDatasetSiteMark.Current<TSiteMark>;

  try
    SiteData.AureliusDatasetSiteMark.Post;
    // Save or update the entity
    DataManager.AureliusManager.SaveOrUpdate(SiteMarkEntity);

    // Flush changes to the database
    DataManager.AureliusManager.Flush;

  except
    on E: EEntityValidationException do
    begin
      // Set the general validation failure message
      ValidationMessages :=
        'The Site Mark could not be saved for the following reasons:';

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

  ModalResult := mrClose; // Sets the result for modal forms      }

end;

procedure TFrmMarkDialog.SetEditMode(AEditMode: TEditMode);
begin
  FEditMode := AEditMode;
  {case FEditMode of
    emAdd:
      begin
        Caption := 'Add New Mark';
        try
          SiteData.dsSiteMark.Dataset.Insert;
        except
          on E: Exception do
            ShowMessage('Error: ' + E.Message);
        end;
        SiteData.dsSiteMark.Dataset.FieldByName('SiteId').AsString := SiteData.dsSite.Dataset.FieldByName('Id').AsString;

      end;
    emEdit:
      begin
        Caption := 'Edit Mark';
        SiteData.dsSiteMark.Dataset.Edit;
      end;
  end;                    }
end;



end.
