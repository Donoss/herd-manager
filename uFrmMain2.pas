unit uFrmMain2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxCore, dxBarBuiltInMenu, cxGraphics,
  dxUIAClasses, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC,
  cxClasses, dxSkinsForm, dxNavBar, dxNavBarOfficeNavigationBar, dxNavBarBase,
  dxNavBarCollns, System.ImageList, Vcl.ImgList, cxImageList, dxNavBarGroupItems;

type
  TForm2 = class(TForm)
    dxSkinController1: TdxSkinController;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    il32: TcxImageList;
    il24: TcxImageList;
    dxNavBar1: TdxNavBar;
    nbgMovements: TdxNavBarGroup;
    nbgScheduler: TdxNavBarGroup;
    nbgMail: TdxNavBarGroup;
    nbgSettings: TdxNavBarGroup;
    nbgMovementDetails: TdxNavBarGroup;
    nbgDevExpressAccount: TdxNavBarGroup;
    nbgMicrosoftAccount: TdxNavBarGroup;
    nbgAccount: TdxNavBarGroup;
    nbgFilterMailList: TdxNavBarGroup;
    nbInplaceManageAccounts: TdxNavBarItem;
    nbInplacePersonalization: TdxNavBarItem;
    nbInplaceAutomaticReplies: TdxNavBarItem;
    nbInplaceFocusedInbox: TdxNavBarItem;
    nbInplaceMessageList: TdxNavBarItem;
    nbInplaceReadingPane: TdxNavBarItem;
    nbInplaceSingature: TdxNavBarItem;
    nbInplaceNotifications: TdxNavBarItem;
    nbInplaceAbout: TdxNavBarItem;
    nbiNewMovement: TdxNavBarItem;
    nbiFilterContactsAll: TdxNavBarItem;
    nbiFilterContactsSales: TdxNavBarItem;
    nbiFilterContactsSupport: TdxNavBarItem;
    nbiFilterContactsShipping: TdxNavBarItem;
    nbiFilterContactsEngineering: TdxNavBarItem;
    nbiFilterContactsHumanResources: TdxNavBarItem;
    nbiFilterContactsManagement: TdxNavBarItem;
    nbiFilterContactsIT: TdxNavBarItem;
    nbiSchedulerNewEvent: TdxNavBarItem;
    nbiSchedulerCalendar: TdxNavBarItem;
    nbiSchedulerBithDate: TdxNavBarItem;
    nbiSchedulerMSCalendar: TdxNavBarItem;
    nbiMailNew: TdxNavBarItem;
    nbiMailAccount1: TdxNavBarItem;
    nbiMailAccount2: TdxNavBarItem;
    nbiMailAccount3: TdxNavBarItem;
    nbiFileterMailAll: TdxNavBarItem;
    nbiFileterMailRead: TdxNavBarItem;
    nbiFileterMailToday: TdxNavBarItem;
    nbiFileterMailYesterday: TdxNavBarItem;
    nbiFileterMailImportance: TdxNavBarItem;
    dxNavBarItem1: TdxNavBarItem;
    dxNavBarItem2: TdxNavBarItem;
    dxNavBarItem3: TdxNavBarItem;
    dxNavBarItem4: TdxNavBarItem;
    nbiOutbound: TdxNavBarItem;
    nbiInbound: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses uImages;

end.
