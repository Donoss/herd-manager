unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, vcl.Styles, dxCore, dxBarBuiltInMenu,
  cxGraphics, dxUIAClasses, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxPC, cxClasses, dxSkinsForm;

type
  TForm1 = class(TForm)
    dxSkinController1: TdxSkinController;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
