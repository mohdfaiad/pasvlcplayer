(* This is file is part of PasLibVlcPlayerDemo program
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *
 * Any non-GPL usage of this software or parts of this software is strictly
 * forbidden.
 *
 * The "appropriate copyright message" mentioned in section 2c of the GPLv2
 * must read: "Code from FAAD2 is copyright (c) Nero AG, www.nero.com"
 *
 * Commercial non-GPL licensing of this software is possible.
 * please contact robert@prog.olsztyn.pl
 *
 * http://prog.olsztyn.pl/paslibvlc/
 *
 *)

{$I ..\..\source\compiler.inc}

unit FullScreenFormUnit;

interface

uses
  {$IFDEF UNIX}Unix,{$ENDIF}
  {$IFDEF MSWINDOWS}Windows,{$ENDIF}
  {$IFDEF FPC}
  LCLIntf, LCLType, LMessages,
  {$ELSE}
  Messages,
  {$ENDIF}
  SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs;

type
  TFullScreenForm = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FullScreenForm: TFullScreenForm;

implementation

{$R *.lfm}

procedure TFullScreenForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TFullScreenForm.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
end;

end.
