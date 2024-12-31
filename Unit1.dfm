object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Herd Manager'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  CustomTitleBar.BackgroundColor = clWhite
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleElements = [seFont, seClient]
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 112
    Top = 72
    Width = 289
    Height = 193
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 189
    ClientRectLeft = 4
    ClientRectRight = 285
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
    end
  end
  object dxSkinController1: TdxSkinController
    SkinName = 'Basic'
    UseSkins = False
    UseSkinsInPopupMenus = False
    Left = 1184
    Top = 40
  end
end
