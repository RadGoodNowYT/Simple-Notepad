 //Start of code
unit Unit1;

{$mode objfpc}{$H+}

//what will use
interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  IpHtml;

type

  { TForm1 }

//class
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Here: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


//buttons
procedure TForm1.MenuItem2Click(Sender: TObject);
begin
 if SaveDialog1.execute then
 Here.Lines.SaveToFile(SaveDialog1.filename)
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  ShowMessage('Dont open me anymore!');
  close
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  ShowMessage('No')
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  if OpenDialog1.execute then
 Here.Lines.LoadFromFile(OpenDialog1.filename)
end;

end.

