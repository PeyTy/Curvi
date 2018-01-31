unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, Windows;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
     Cur: TCursor;
Begin
     OpenDialog1.Execute;
     Cur := LoadCursorFromFile(PChar(OpenDialog1.FileName));
     Screen.Cursors[1] := HCursor(Cur);
     Form1.Cursor := 1;
end;

end.

