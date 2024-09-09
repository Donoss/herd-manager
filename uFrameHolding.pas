unit uFrameHolding;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrame1 = class(TFrame)
    BitBtn2: TBitBtn;
    btnCancel: TButton;
    btnSave: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
