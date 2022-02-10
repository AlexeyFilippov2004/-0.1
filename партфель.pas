uses graphabc, abcobjects, System.IO, System.Net, abcbuttons, System.Drawing;

var
  a, b, xr, yr, nc, wr, sh, dst: integer;
  p: pictureABC;
  r: RectangleABC;
  web := new WebClient;
  yes, no: buttonabc; 
  dan,tof: string;
  color: Color;

procedure keyup(key: integer);
begin
  if key=vk_m then begin
    System.IO.Directory.Delete('c:/партфели/' + dan + '/' + sh,true);
    a:=2;a:=1;
  end;
  if a=2 then
  if key = vk_n then begin
        var dst: integer;
        Window.Normalize;
        sh:=sh+1;
        xr := xr + 85;
        CreateDir('c:/партфели/' + dan + '/' + sh);
        Window.Height := 800;
        Window.Width := 600;
        Window.Load('c:/партфели/' + dan + '/шаблон/1.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/1.png');
        Window.Height := 800;
        Window.Width := 1200;
        Window.Load('c:/партфели/' + dan + '/шаблон/2.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/2.png');
        Window.Load('c:/партфели/' + dan + '/шаблон/3.png');
        for dst := 3 to 46 do
        begin
          Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
        end;
        Window.Load('c:/партфели/' + dan + '/шаблон/4.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/47.png');
        Window.Load('c:/партфели/' + dan + '/шаблон/5.png');
        Window.Height := 800;
        Window.Width := 600;
        Window.Save('c:/партфели/' + dan + '/' + sh + '/48.png');
        a := 2; dst := 1;
        Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
      end;
if a=1 then     
  if key = vk_n then begin
        var dst: integer;
        Window.Normalize;
        CreateDir('c:/партфели/' + dan + '/' + sh);
        Window.Height := 800;
        Window.Width := 600;
        Window.Load('c:/партфели/' + dan + '/шаблон/1.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/1.png');
        Window.Height := 800;
        Window.Width := 1200;
        Window.Load('c:/партфели/' + dan + '/шаблон/2.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/2.png');
        Window.Load('c:/партфели/' + dan + '/шаблон/3.png');
        for dst := 3 to 46 do
        begin
          Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
        end;
        Window.Load('c:/партфели/' + dan + '/шаблон/4.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/47.png');
        Window.Load('c:/партфели/' + dan + '/шаблон/5.png');
        Window.Height := 800;
        Window.Width := 600;
        Window.Save('c:/партфели/' + dan + '/' + sh + '/48.png');
        a := 2; dst := 1;
        Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
      end;
     
  if a = 1 then
  begin
    if key = vk_up then if nc = 1 then
      begin
        nc := 1;
        dan := 'тетради в клетку';
      end;
    if key = vk_up then if nc = 2 then
      begin
        dan := 'тетради в клетку';
        nc := nc - 1;
        yr := yr - 130;
      end;
    if key = vk_up then if nc = 3 then //от альбома
      begin
        dan := 'тетради в линейку';
        wr := 60;
        nc := nc - 1;
        yr := yr - 150;
      end;
    if key = vk_down then if nc = 2 then //от альбома
      begin
        dan := 'альбомы';
        wr := 140;
        nc := nc + 1;
        yr := yr + 150;
      end;
    if key = vk_down then if nc = 1 then
      begin
        dan := 'тетради в линейку';
        nc := nc + 1;
        yr := yr + 130;
      end;
    if nc <> 3 then 
    begin
      if key = vk_right then 
      begin
        xr := xr + 85;
        sh := sh + 1;
      end;
      if key = vk_left then
      begin
        xr := xr - 85;
        sh := sh - 1;
      end
    end else
    begin
      if key = vk_right then 
      begin
        xr := xr + 170;
        sh := sh + 1;
      end;
      if key = vk_left then
      begin
        sh := sh - 1;
        xr := xr - 170;
      end;
    end;
    if key = VK_Enter then
        if dan='альбомы' then if not FileExists('c:/партфели/' + dan + '/' + sh + '/1.png') then
      begin
      CreateDir('c:/партфели/' + dan + '/' + sh);
      Window.Load('c:/партфели/' + dan + '/шаблон/1.png');
Window.Save('c:/партфели/' + dan + '/' + sh + '/1.png'); 
 a := 2; dst := 1;
end;
    if key = VK_Enter then
      if dan<>'альбомы' then begin
     if not FileExists('c:/партфели/' + dan + '/' + sh + '/1.png') then
      begin
        var dst: integer;
        Window.Normalize;
        CreateDir('c:/партфели/' + dan + '/' + sh);
        Window.Height := 800;
        Window.Width := 600;
        Window.Load('c:/партфели/' + dan + '/шаблон/1.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/1.png');
        Window.Height := 800;
        Window.Width := 1200;
        Window.Load('c:/партфели/' + dan + '/шаблон/2.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/2.png');
        Window.Load('c:/партфели/' + dan + '/шаблон/3.png');
        for dst := 3 to 46 do
        begin
          Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
        end;
        Window.Load('c:/партфели/' + dan + '/шаблон/4.png');
        Window.Save('c:/партфели/' + dan + '/' + sh + '/47.png');
        Window.Load('c:/партфели/' + dan + '/шаблон/5.png');
        Window.Height := 800;
        Window.Width := 600;
        Window.Save('c:/партфели/' + dan + '/' + sh + '/48.png');
        a := 2; dst := 1;
        Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
      end else begin
        a := 2; dst := 1;
        Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png'); end;end;
    end;
    if a = 2 then begin
    if key = vk_z then color := clred;
    if key = vk_x then color := clBlack;
    if key = vk_c then color := clBlue;
  end;
    if key=VK_Escape then begin Window.Clear;
          a:=1;
          end
end;

procedure keydown(key: integer);
begin
  if a = 2 then begin
    if dan = 'альбомы' then begin
      sleep(33);
      if key = VK_Right then Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
      if key = VK_Right then dst := dst + 1;
      if key = VK_Right then if not FileExists('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png') 
        then begin Window.Clear; Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
          window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
        end else
          window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
    if key = VK_Left then Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
      if key = VK_left then dst := dst - 1;
      if key = VK_Left then if not FileExists('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png') 
    then begin dst := dst + 1; window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png'); end else
          window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
        end;
    if dan<>'альбомы' then begin
  if key = VK_Left then Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
  if key = VK_Left then dst := dst - 1;
  if key = VK_Left then if not FileExists('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png') 
    then begin dst := dst + 1; window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png'); end else 
      window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
  if key = vk_up then Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
  if key = vk_up then sh := sh + 1;
  if key = vk_up then if not FileExists('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png') then
    begin sh := sh - 1; Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png'); end else
      Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
  if key = vk_down then Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
  if key = vk_down then sh := sh - 1; 
  if key = vk_down then if not FileExists('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png') then
    begin sh := sh + 1; Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png'); end else
      Window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
  if key = VK_Right then Window.Save('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
  if key = VK_Right then dst := dst + 1;
  if key = VK_Right then if not FileExists('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png') 
    then begin dst := dst - 1; window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png'); end else 
      window.Load('c:/партфели/' + dan + '/' + sh + '/' + dst + '.png');
end;
end;
end;

procedure MouseDown(x, y, mb: integer);
begin
  MoveTo(x, y);
end;

procedure MouseMove(x, y, mb: integer);
begin
  if mb = 1 then LineTo(x, y)
end;

begin
  begin//обнулирование
    dst := 1;
    xr := 15;
    yr := 50;
    nc := 1;
    wr := 60;
    sh := 1;
    dan := 'тетради в клетку';
    color := clblue;
  end;//обнулирование
  if not FileExists('c:/партфели/0.png') then 
  begin
    window.Title := 'Закачка';
    window.CenterOnScreen;
    setFontSize(20);
    write('Вы готовы к скачаванию необходимых файлов?');
    yes := new buttonabc(0, 50, Trunc(Window.Width / 2), Window.Height, 'Да!!!', clgreen);
    no := new ButtonABC(Trunc(Window.Width / 2), 50, Trunc(Window.Width / 2), Window.Height, 'Нет???', clred);
    no.OnClick := Window.Close;
    yes.OnClick := procedure->a := 0;
    if a = 0 then
    begin
      CreateDir('c:/партфели');
      CreateDir('c:/партфели/доп');
      CreateDir('c:/партфели/альбомы');
      CreateDir('c:/партфели/тетради в клетку');
      CreateDir('c:/партфели/тетради в линейку');
      CreateDir('c:/партфели/альбомы/шаблон');
      CreateDir('c:/партфели/тетради в клетку/шаблон');
      CreateDir('c:/партфели/тетради в линейку/шаблон');
      web.Downloadfile('https://sun9-54.userapi.com/impg/qJRarTQfz4vAxhIxiFGoOCcYppSeW2jrHoyUDw/blhbddEvIR8.jpg?size=1200x800&quality=95&sign=3d1b79e2d7fc646934f5604a68706edd&type=album', 'c:/партфели/альбомы/шаблон/1.png');
      web.Downloadfile('https://sun9-82.userapi.com/impg/RaZv5Tgbe-nRoZZRHNa1nySWLixm-ZRVgmDOJg/LHuyyGXLRpc.jpg?size=600x800&quality=95&sign=23443aba8dd88cf4cf6bc606f4b92b70&type=album', 'c:/партфели/тетради в клетку/шаблон/1.png');
      web.Downloadfile('https://sun9-20.userapi.com/impg/pbC7mQ2oYK6BtA4flx1tfS2kkYcCakbd3DfQkA/YjEubEHJ99E.jpg?size=1200x800&quality=95&sign=6fc844dc713cecdbb79c87e7fb4d736d&type=album', 'c:/партфели/тетради в клетку/шаблон/2.png');
      web.Downloadfile('https://sun9-45.userapi.com/impg/oDfisishF85ORSyIZIhbHqX7lcgk0IQbxhxHPw/3pvg2rK4zVk.jpg?size=1200x800&quality=95&sign=ffdafeffbf1fc410cee9880cd038dcf6&type=album', 'c:/партфели/тетради в клетку/шаблон/3.png');
      web.Downloadfile('https://sun9-83.userapi.com/impg/pt2BtzEaGBcbteM3hNTs9ALl-7B8XXe8OUdIIQ/xx3yG6uos6U.jpg?size=1200x800&quality=95&sign=54a0bd8ce6470709b40168de0d9b8c7e&type=album', 'c:/партфели/тетради в клетку/шаблон/4.png');
      web.Downloadfile('https://sun9-18.userapi.com/impg/8xCn9xDjIXatVawDx8HpvvEqpOcrK6I67OGVgA/_X1IVFyARMc.jpg?size=600x800&quality=95&sign=8426354fd0fb0672334a115fa787dcb1&type=album', 'c:/партфели/тетради в клетку/шаблон/5.png');
      web.Downloadfile('https://sun9-82.userapi.com/impg/RaZv5Tgbe-nRoZZRHNa1nySWLixm-ZRVgmDOJg/LHuyyGXLRpc.jpg?size=600x800&quality=95&sign=23443aba8dd88cf4cf6bc606f4b92b70&type=album', 'c:/партфели/тетради в линейку/шаблон/1.png');
      web.Downloadfile('https://sun9-25.userapi.com/impg/tUHEls1UY7IDxOVCMwPyVYHI0zrCHSUpU6FBPg/Us9qbMmZYIE.jpg?size=1200x800&quality=95&sign=de2edd275cb675ad9d2893bc888161c7&type=album', 'c:/партфели/тетради в линейку/шаблон/2.png');
      web.Downloadfile('https://sun9-47.userapi.com/impg/RC1r4HFUnU5Ew4mNJslASaYEL4-X8yD_CtxKRQ/QXQdF-F1vhs.jpg?size=1200x800&quality=95&sign=dff12a3c669e2be3b80d0965f5a1976e&type=album', 'c:/партфели/тетради в линейку/шаблон/3.png');
      web.Downloadfile('https://sun9-59.userapi.com/impg/fHf9rX2-4nskMNcC6_fv4YH7tygX9x3ZmZS_wg/jsd7PQTvRWc.jpg?size=1200x800&quality=95&sign=42d9146abc1cf65eaa86100f4da21380&type=album', 'c:/партфели/тетради в линейку/шаблон/4.png');
      web.Downloadfile('https://sun9-88.userapi.com/impg/h8g09T-aYHNsTgXKGa1IIq9YXIRKcnEqcIKrYA/70--RFiBLX8.jpg?size=600x800&quality=95&sign=622ed36e7d00ff931bc45bd6f7085f1b&type=album', 'c:/партфели/тетради в линейку/шаблон/5.png');
      web.Downloadfile('https://sun9-71.userapi.com/impg/cCBgPL3KrX7P98_YzVsy5G4kYuiNHIqyEE9Dvg/dpIHzxPhmMw.jpg?size=821x58&quality=95&sign=1dfa39aa7811b0bcf39a316ac1b81866&type=album', 'c:/партфели/доп/лин.png');
      web.Downloadfile('https://sun9-7.userapi.com/impg/eUJ0T84CLI6PEc-JzaMdSJnClf_5oZ5TedkSOA/55x7spNPSdI.jpg?size=256x258&quality=95&sign=7ea7a8d1ca9cde9ab7facc6a90552de4&type=album', 'c:/партфели/доп/тран.png');
      web.Downloadfile('https://sun9-78.userapi.com/impg/kRjRUOqiiwCQSot78M01wSmUPNnX6HoygXxGcA/Ws4uqc7qvP0.jpg?size=600x800&quality=95&sign=0b92094c4acf6ef826fed06765b9068c&type=album', 'c:/партфели/доп/плюс.png');
      web.Downloadfile('https://sun9-7.userapi.com/impg/eUJ0T84CLI6PEc-JzaMdSJnClf_5oZ5TedkSOA/55x7spNPSdI.jpg?size=256x258&quality=95&sign=7ea7a8d1ca9cde9ab7facc6a90552de4&type=album', 'c:/партфели/0.png');
      web.Downloadfile('https://sun9-61.userapi.com/impg/obrrx1T9eTDDm473ECR08y8tZWKNtTLt8f0wFQ/qK0omLChoIE.jpg?size=800x200&quality=95&sign=a3efc978bf58a665454ecde7f323183c&type=album','c:/партфели/доп/инст.png');
      a := 1;
      write(a);
    end; 
    a := 1;
    write(a);
    no.Destroy;
    no := new ButtonABC(Trunc(Window.Width / 2), 50, Trunc(Window.Width / 2), Window.Height, 'Нет???', clWhite);
    no.Destroy;
    yes.Destroy;
  end else a := 1;
  write(a); 
  repeat
    if a = 1 then
  if FileExists('c:/партфели/0.png') then
    begin//начальная строница
      Window.Title := 'Партфель';
      Window.Clear;
            RectangleABC.Create(-100,-100,9000,9000,clWhite);
      Window.Maximize;  
      for b := 1 to 22 do
      begin
        if fileexists('c:/партфели/тетради в клетку/' + b + '/1.png') then 
        begin
          p := PictureABC.Create(-70 + b * 85, 50, 'c:/партфели/тетради в клетку/' + b + '/1.png');
          p.Height := 80;
          p.Width := 60;
        end
        else
        begin
          p := PictureABC.Create(-70 + b * 85, 50, 'c:/партфели/доп/плюс.png');
          p.Height := 80;
          p.Width := 60;
        end;
        if fileexists('c:/партфели/тетради в линейку/' + b + '/1.png') then 
        begin
          p := PictureABC.Create(-70 + b * 85, 180, 'c:/партфели/тетради в линейку/' + b + '/1.png');
          p.Height := 80;
          p.Width := 60;
        end
        else
        begin
          p := PictureABC.Create(-70 + b * 85, 180, 'c:/партфели/доп/плюс.png');
          p.Height := 80;
          p.Width := 60;
        end;
      end;  
      for b := 1 to 11 do
      begin
        if fileexists('c:/партфели/альбомы/' + b + '/1.png') then 
        begin
          p := PictureABC.Create(-135 + b * 155, 330, 'c:/партфели/альбомы/' + b + '/1.png');
          p.Height := 80;
          p.Width := 140;
        end
        else
        begin
          p := PictureABC.Create(-155 + b * 170, 330, 'c:/партфели/доп/плюс.png');
          p.Height := 80;
          p.Width := 140;
        end;
      end;
      p:= PictureABC.Create(0,450,'c:/партфели/доп/инст.png');
      p.Width:=Window.Width;
      p.Height:=Window.Height-450;
      SetFontSize(20);
      TextOut(970, 1, 'Тетради в клетку');
      TextOut(970, 145, 'Тетради в линейку');
      TextOut(970, 290, 'Альбомы');
      r := new RectangleABC(xr, yr, 90, 90, clTransparent);
      repeat
        r.Destroy;
        r := new RectangleABC(xr, yr, wr, 80, clTransparent);;
        onkeyup := keyup;
        OnMouseDown := MouseDown;
        OnMouseMove := MouseMove;
        //конец началиной строницы
      until a <>1;
 if a = 2 then
        begin
         repeat
            begin
              SetPenWidth(1);
              SetPenColor(color);
              Window.Title := dan;
              Window.Normalize;
              onkeydown := keydown;
            end;
          until a <> 2;
          end;
     end;
until a=9; 
end.
