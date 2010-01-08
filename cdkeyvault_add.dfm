object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 177
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 321
    Height = 47
    Alignment = taCenter
    AutoSize = False
    Caption = 'Key hinzufuegen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -45
    Font.Name = 'LCD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edName: TLabeledEdit
    Left = 8
    Top = 80
    Width = 321
    Height = 21
    EditLabel.Width = 106
    EditLabel.Height = 13
    EditLabel.Caption = 'Name der Anwendung'
    TabOrder = 0
  end
  object edkey: TLabeledEdit
    Left = 8
    Top = 120
    Width = 321
    Height = 21
    EditLabel.Width = 18
    EditLabel.Height = 13
    EditLabel.Caption = 'Key'
    TabOrder = 1
  end
  object bttok: TButton
    Left = 238
    Top = 147
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = bttokClick
  end
  object bttabbrechen: TButton
    Left = 64
    Top = 147
    Width = 75
    Height = 25
    Caption = 'Abbrechen'
    TabOrder = 3
    OnClick = bttabbrechenClick
  end
end
