version := 1.45
SetWorkingDir %A_ScriptDir%
IfnotExist, %A_ScriptDir%\GosHelper
{
FileCreateDir, %A_ScriptDir%\GosHelper
}
IniRead, v, GosHelper/Settings.ini, USER, v
if v != %version%
{
URLDownloadToFile, https://github.com/lekkrit/rpbinder-ross/blob/main/GosHelper/help1.png?raw=true, %A_ScriptDir%\GosHelper\help1.png
URLDownloadToFile, https://github.com/lekkrit/rpbinder-ross/blob/main/GosHelper/ourfamily.png?raw=true, %A_ScriptDir%\GosHelper\ourfamily.png

IniWrite, %version%, GosHelper/Settings.ini, USER, v
}

IfnotExist, %A_ScriptDir%\update.ahk
	URLDownloadToFile, https://github.com/lekkrit/rpbinder-ross/blob/main/update.ahk?raw=true, %A_ScriptDir%\update.ahk

IfnotExist, %A_ScriptDir%\assets\help.png
	URLDownloadToFile, https://github.com/lekkrit/rpbinder-ross/blob/main/GosHelper/help1.png?raw=true, %A_ScriptDir%\assets\help1.png

IfnotExist, %A_ScriptDir%\assets\help.png
	URLDownloadToFile, https://github.com/lekkrit/rpbinder-ross/blob/main/GosHelper/ourfamily.png?raw=true, %A_ScriptDir%\assets\ourfamily.png

;======================================================================================================================Бейджик

IniRead, name, GosHelper/Settings.ini, USER, name
if name=ERROR
    {
    IniWrite, На груди бейджик FIB с надписью Отдел - статик, GosHelper/Settings.ini, USER, name
Reload
}
;======================================================================================================================Кнопки

IniRead, Key1, GosHelper/Settings.ini, USER, Key1, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey1, off, UseErrorLevel
Hotkey, % PrKey1 := Key1, Key1, on, UseErrorLevel
IniWrite, %Key1%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key1

IniRead, Key2, GosHelper/Settings.ini, USER, Key2, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey2, off, UseErrorLevel
Hotkey, % PrKey2 := Key2, Key2, on, UseErrorLevel
IniWrite, %Key2%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key2

IniRead, Key3, GosHelper/Settings.ini, USER, Key3, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey3, off, UseErrorLevel
Hotkey, % PrKey3 := Key3, Key3, on, UseErrorLevel
IniWrite, %Key3%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key3

IniRead, Key4, GosHelper/Settings.ini, USER, Key4, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey4, off, UseErrorLevel
Hotkey, % PrKey4 := Key4, Key4, on, UseErrorLevel
IniWrite, %Key4%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key4

IniRead, Key5, GosHelper/Settings.ini, USER, Key5, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey5, off, UseErrorLevel
Hotkey, % PrKey5 := Key5, Key5, on, UseErrorLevel
IniWrite, %Key5%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key5

IniRead, Key6, GosHelper/Settings.ini, USER, Key6, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey6, off, UseErrorLevel
Hotkey, % PrKey6 := Key6, Key6, on, UseErrorLevel
IniWrite, %Key6%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key6

IniRead, Key7, GosHelper/Settings.ini, USER, Key7, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey7, off, UseErrorLevel
Hotkey, % PrKey7 := Key7, Key7, on, UseErrorLevel
IniWrite, %Key7%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key7

IniRead, Key8, GosHelper/Settings.ini, USER, Key8, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey8, off, UseErrorLevel
Hotkey, % PrKey8 := Key8, Key8, on, UseErrorLevel
IniWrite, %Key8%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key8

IniRead, Key9, GosHelper/Settings.ini, USER, Key9, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey9, off, UseErrorLevel
Hotkey, % PrKey9 := Key9, Key9, on, UseErrorLevel
IniWrite, %Key9%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key9

IniRead, Key10, GosHelper/Settings.ini, USER, Key10, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey10, off, UseErrorLevel
Hotkey, % PrKey10 := Key10, Key10, on, UseErrorLevel
IniWrite, %Key10%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key10

IniRead, Key11, GosHelper/Settings.ini, USER, Key11, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey11, off, UseErrorLevel
Hotkey, % PrKey11 := Key11, Key11, on, UseErrorLevel
IniWrite, %Key11%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key11

IniRead, Key12, GosHelper/Settings.ini, USER, Key12, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey12, off, UseErrorLevel
Hotkey, % PrKey12 := Key12, Key12, on, UseErrorLevel
IniWrite, %Key12%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key12

IniRead, Key13, GosHelper/Settings.ini, USER, Key13, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey13, off, UseErrorLevel
Hotkey, % PrKey13 := Key13, Key13, on, UseErrorLevel
IniWrite, %Key13%, %A_ScriptDir%\ GosHelper\Settings.ini, Hotkey, Key13


;=================================================================================== гендер
IniRead, Radio1, GosHelper/Settings.ini, User, Gender1
IniRead, Radio2, GosHelper/Settings.ini, User, Gender2
if (Radio1 = "ERROR")
{
    if (Radio2 = "ERROR")
    {
        Radio1 = 1
        gender = 
    }
}
if (Radio1 = "1")
{
Radio2= 0
gender = 
}
if (Radio2 = "1")
{
Radio1 = 0
gender = а
}
;===================================================================================

;======================================================================================================================Основное GUI
Gui, Color, 191919

Gui, Font, S40 CWhite, BankGothic Md BT
Gui, Add, Text, x20 y20 w320 h65 +BackgroundTrans, RP Binder
Gui, Add, Picture, x240 y0 w740 h440 +BackgroundTrans, GosHelper\ourfamily.png
Gui, Font, S10 CWhite, BankGothic Md BT
Gui, Add, Text, x820 y699 w250 h30 +BackgroundTrans, by bleerz | #66340 | San Diego
Gui, Font, S15 CWhite, GOST type B
Gui, Add, Text, x130 y129 w500 h30 +BackgroundTrans, Опозновательные знаки
Gui, Add, Text, x130 y169 w240 h30 +BackgroundTrans, Команды
Gui, Add, Text, x130 y209 w240 h30 +BackgroundTrans, Тен коды
Gui, Add, Text, x130 y249 w330 h30 +BackgroundTrans, Процесс задержания
Gui, Add, Text, x130 y289 w330 h30 +BackgroundTrans, Памятка
Gui, Font, S13 CBlack, GOST type B
Gui, Add, Button, x902 y109 w150 h30 gWIKI, WIKI
Gui, Add, Button, x902 y149 w150 h30 gComand, Команды
Gui, Add, Button, x902 y189 w150 h30 gLawsuit, Генератор исков
Gui, Add, Button, x902 y229 w150 h30 gZhaloba, Подать жалобу
Gui, Add, Button, x902 y269 w150 h30 gSetings, Настройки
Gui, Add, Button, x902 y309 w150 h30 gSave, Сохранить
Gui, Add, Button, x902 y349 w150 h30 gClose, Закрыть
Gui, Add, Hotkey, x22 y129 w95 h30 vKey1, %Key1%
Gui, Add, Hotkey, x22 y169 w95 h30 vKey2, %Key2%
Gui, Add, Hotkey, x22 y209 w95 h30 vKey3, %Key3%
Gui, Add, Hotkey, x22 y249 w95 h30 vKey4, %Key4%
Gui, Add, Hotkey, x22 y289 w95 h30 vKey5, %Key5%



Gui, Show, w1080 h429, FIB Binder

i_name = 
i_what = 
i_gos = 
i_frac = 
i_jeton = 
i_ds = -
i_phone = -
i_pass = -
i_proof = -
prosecutor = 0

Gui, ГенераторИсков: -MaximizeBox
Gui, ГенераторИсков: Font, S10 CWhite, GOST type B
Gui, ГенераторИсков: Color, c4c4c4
Gui, ГенераторИсков: Font, c0x000000
Gui, ГенераторИсков: Add, Text, x2 y10 w140 h18 +0x200 +0x1, Ваше Имя Фамилия:
Gui, ГенераторИсков: Add, Edit, x135 y10 w120 h21 vi_name, %i_name%

Gui, ГенераторИсков: Add, Text, x2 y35 w140 h18 +0x200 +0x1, Описание ситуации:
Gui, ГенераторИсков: Add, Edit, x15 y55 w270 h205 vi_what, %i_what%

Gui, ГенераторИсков: Add, Text, x295 y10 w160 h18 +0x200 +0x1, Имя Фамилия на кого иск:
Gui, ГенераторИсков: Add, Edit, x455 y10 w120 h21 vi_gos, %i_gos%

Gui, ГенераторИсков: Add, Text, x295 y35 w160 h18 +0x200 +0x1, Жетон (если есть):
Gui, ГенераторИсков: Add, Edit, x455 y35 w120 h21 vi_jeton, %i_jeton%

Gui, ГенераторИсков: Add, Text, x295 y65 w160 h18 +0x200 +0x1, Его фракция:
Gui, ГенераторИсков: Add, Edit, x455 y65 w120 h21 vi_frac, %i_frac%

Gui, ГенераторИсков: Add, Text, x295 y95 w160 h18 +0x200 +0x1, Ваш ДС:
Gui, ГенераторИсков: Add, Edit, x455 y95 w120 h21 vi_ds, %i_ds%

Gui, ГенераторИсков: Add, Text, x295 y125 w160 h18 +0x200 +0x1, Ваш Телефон:
Gui, ГенераторИсков: Add, Edit, x455 y125 w120 h21 vi_phone, %i_phone%

Gui, ГенераторИсков: Add, Text, x295 y155 w160 h18 +0x200 +0x1, Паспорт (imgur):
Gui, ГенераторИсков: Add, Edit, x455 y155 w120 h21 vi_pass, %i_pass%

;Gui, ГенераторИсков: Add, Button, x305 y175 w140 h20 gMakeScreenshot, Скриншот экрана

Gui, ГенераторИсков: Add, Text, x295 y200 w160 h18 +0x200 +0x1, Док-ва (imgur/youtube):
Gui, ГенераторИсков: Add, Edit, x455 y200 w120 h21 vi_proof, %i_proof%

Gui, ГенераторИсков: Add, Button, x455 y225 w140 h20 gCopy, Скопировать результат

Gui, ГенераторИсков: Add, Button, x295 y225 w140 h20 gForumSud, Окружной суд
Gui, ГенераторИсков: Add, Button, x295 y250 w140 h20 gForumProc, Прокуратура
Gui, ГенераторИсков: Add, Checkbox, x455 y250 w170 h23 vprosecutor Checked%prosecutor%, Шаблон прокуратура
Gui, ГенераторИсков: submit
return


;======================================================================================================================Кнопки

GuiClose:
ExitApp

Comand:
MsgBox, 0, Команды, ===== Общие =====`n.адвокат - Вызвов адвоката `n.прок - Вызов прокурора `n.дб - Открывает сайт с Data-Base`n.гетто - Запрос поддержики в гетто у SANG`n.взятка - не стоит но ладно добавил`n.рюкзак - досмотреть рюкзак на человеке`n.сумка - досмотреть сумку на человеке`n.ь0 .ь1  .ь7 - mark code 0/1/7`n.опознать - Приглядеться к опознавательному знаку`n.пальчики - Узнать имя человека по отпечаткам пальцев`n`n===== Ст.состав =====`n.spcars - Респкар через 30 сек`n.гос1 - Узнать занята ли гос волна`n.гос2 - Занять гос. волну`n.госфиб - Отправить гос. волну`n`n===== FA =====`n.похитка - Взять похищение`n.требования - Ответ в /dep что запросили похитители`n.неадекват - Ответ в /dep о неадекватные требования на похищении `n.жучок - Положить жучок в сумку с деньгами`n.спасли - Ответ в деп что заложникии спасены`n`n===== DEA =====`n.куст - Срезать куст`n`n===== CID =====`n.дрон - включить и синхронизировать дрон`n.полиграф - Достать и подключить полиграф`n.чистка - При рейде `n.скинуть - Всё всё с рейда в багажник `n`n===== IB =====`n.флешка - Cнятие записей с боди-камеры`n.NDA - Достать и подписать NDA (2 части F12 - продолжить)`n`n=====Альтернативные команды=====`n.аи - /fb   .a - /f   .вуз - /dep   .згдд - /pull .и - /b`n.зфн - /pay   .ьу - /me   .вщ - /do .екн - /try`n.пд  /dep to LSPD:    .сд  /dep to SD:`n.санг /dep to SANG:   .емс  /dep to EMS:`n.гов  /dep to GOV:   
return


WIKI:
Run, https://wiki.majestic-rp.ru/
return

Zhaloba:
Run, https://forum.majestic-rp.ru/forums/zhaloby.539
return

Lawsuit:
Gui, ГенераторИсков: Show, w615 h275, Генератор исков
return

ForumSud:
Run, https://forum.majestic-rp.ru/forums/okruzhnoj-sud.557/
return

ForumProc:
Run, https://forum.majestic-rp.ru/forums/prokuratura.631/
return

Copy:
Gui, submit, NoHide
TimeString := A_NowUTC
TimeString += 3, h
FormatTime, TimeString,, Shortdate
if prosecutor = 0
{
clipboard = ЛИЧНЫЕ ДАННЫЕ`nИстец:`nИмя Фамилия: %i_name%`nid карта, номер и ксерокопия: [URL='%i_pass%']паспорт[/URL]`nНомер телефона: %i_phone%`nСпец. связь: %i_ds%`n`nОтветчик №1:`nИмя фамилия: %i_gos%`nID карта либо служебное удостоверение или опознавательный знак, номер: %i_jeton%`nМесто работы и должность: %i_frac%`n`nИСКОВОЕ ЗАЯВЛЕНИЕ`n`nЯ Гражданин/Гражданка штата Сан-Андреас подаю исковое заявление в Окружной суд, объясняя всю ситуацию`n%i_what%`n`nДОКАЗАТЕЛЬНАЯ БАЗА`n[URL='%i_proof%']доказательства[/URL]`n`nПРАВОВАЯ ПОЗИЦИЯ, ПРОСЬБЫ К СУДУ`n1. Выплатить мне, истцу %i_name%, моральную компенсацию в размере 100.000$.`n2. Привлечь к ответственности %i_gos% c номером жетона %i_jeton% согласно законодательству штата.`n`nДАТА: %TimeString%`nПодпись: %i_name%
}
else
{
clipboard = Заявление в прокуратуру №0000`n`nЯ, гражданин штата San-Andreas %i_name%, подаю заявление в прокуратуру на сотрудника %i_frac% %i_gos% с номером жетона %i_jeton%.`n`nК заявлению в прокуратуру прилагаю:`n`n1. Копия паспорта: [URL='%i_pass%']паспорт[/URL]`n2. Контактные данные: номер телефона: %i_phone%, почта: %i_ds%`n3. Подробное описание правонарушения: %i_what%`n4. Доказательства, подтверждающие правонарушение: [URL='%i_proof%']доказательства[/URL]`n5. Дата и время подачи заявления: %TimeString%`n6.Подпись: %i_name%
}


return

setings:
Gui, 3: -MaximizeBox
Gui, 3: Show, w400 h70, Настройки
Gui, 3: Font, S10 CWhite, GOST type B
Gui, 3: Color, c4c4c4
Gui, 3: Font, c0x000000
Gui, 3: Add, Edit, x5 y20 w390 h21 vname, %name%
Gui, 3: Add, Text, x5 y0 w400 h23 +0x200 +0x1, Введите отыгровку нашивки/бейджика без /do и точки
Gui, 3: Add, Text, x5 y46 w70 h18 +0x200 +0x1, Ваш пол:
Gui, 3: Add, Radio, x70 y43 w80 h23 Group vRadio1 Checked%Radio1%, Мужщина
Gui, 3: Add, Radio, x150 y43 w80 h23 vRadio2 Checked%Radio2%, Женщина
Gui, 3: Add, Button, x323 y47 w70 h20 gSave, Accept	
return

Save:
Gui, submit, NoHide
IniWrite, %name%, GosHelper/Settings.ini, USER, name
IniWrite, %Key1%, GosHelper/Settings.ini, USER, Key1
IniWrite, %Key2%, GosHelper/Settings.ini, USER, Key2
IniWrite, %Key3%, GosHelper/Settings.ini, USER, Key3
IniWrite, %Key4%, GosHelper/Settings.ini, USER, Key4
IniWrite, %Key5%, GosHelper/Settings.ini, USER, Key5
IniWrite, %Key6%, GosHelper/Settings.ini, USER, Key6
IniWrite, %Key7%, GosHelper/Settings.ini, USER, Key7
IniWrite, %Key8%, GosHelper/Settings.ini, USER, Key8
IniWrite, %Key9%, GosHelper/Settings.ini, USER, Key9
IniWrite, %Key10%, GosHelper/Settings.ini, USER, Key10
IniWrite, %Key11%, GosHelper/Settings.ini, USER, Key11
IniWrite, %Key12%, GosHelper/Settings.ini, USER, Key12
IniWrite, %Key13%, GosHelper/Settings.ini, USER, Key13
IniWrite, %Key14%, GosHelper/Settings.ini, USER, Key14
IniWrite, %Key15%, GosHelper/Settings.ini, USER, Key15
IniWrite, %Radio1%, GosHelper/Settings.ini, USER, Gender1
IniWrite, %Radio2%, GosHelper/Settings.ini, USER, Gender2
MsgBox, 0, SAVE, Данные сохранены.
Reload
return

Close:
ExitApp
return

;======================================================================================================================Хоткии

Key1:
SendMessage, 0x50,, 0x4190419,, A
IniRead, name, GosHelper/Settings.ini, USER, name
SendInput, {T}
sleep 200
SendInput, /do LSCSD | Ass.Sheriff {Enter}
return

Key2:
State4:=!State4

If state4
{
CustomColor1 = EEAA99
Gui 5: +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui 5: Color, black
Gui 5: Font, cWhite
Gui 5: Font, s10
Gui 5: Font, w600
Gui 5: Font,, MS sans serif

Gui 5: Add, Text, c8FBC8F,  [БИНДЫ]                       [ОТЫГРОВКИ]
Gui 5: Add, Text,,        [%key1%]           |          Опознов. знак
Gui 5: Add, Text,,        [%key2%]           |          Боди-камера
Gui 5: Add, Text,,        [%key3%]           |          Опознать. гос
Gui 5: Add, Text,,        [%key4%]           |          Команды
Gui 5: Add, Text,,        [%key5%]           |          Тэн-коды
Gui 5: Add, Text,,        [%key6%]           |          Порядок задержания и ареста
Gui 5: Add, Text,,        [%key7%]           |          Памятка
Gui 5: Add, Text,,        .дб - Открывает сайт с Data-Base
Gui 5: Add, Text,,        .адвокат - Вызвов адвоката 
Gui 5: Add, Text,,        .ь0 .ь1  .ь7 - mark code 0/1/7
Gui 5: Add, Text,,        F12 - Пауза    
WinSet, TransColor, %CustomColor1% 250
Gui 5: Show, x1 y1 NoActivate, window.
}
Else
	
Gui 5: Destroy
return

Key3:
State5:=!State5

If state5

{

CustomColor3 = EEAA99

Gui 4: +LastFound +AlwaysOnTop -Caption +ToolWindow 

Gui 4: Color, black

Gui 4: Font, s9

Gui 4: Font, cWhite

Gui 4: Font, w1000


Gui 4: ADD, TEXT, cYellow, ===========================================ТЭН-КОДЫ===========================================                                                                                                                                        
Gui 4: ADD, TEXT,, 10-0    Отмена 
Gui 4: ADD, TEXT,, 10-4    Понял-принял    
Gui 4: ADD, TEXT,, 10-5    Повторите
Gui 4: ADD, TEXT,, 10-6    Не принято (отказ)
Gui 4: ADD, TEXT,, 10-7    Начал патруль
Gui 4: ADD, TEXT,, 10-7R   Закончил патруль
Gui 4: ADD, TEXT,, 10-9    Состояние стабильное (В патруле)
Gui 4: ADD, TEXT,, 10-10    Провожу задержание
Gui 4: ADD, TEXT,, 10-20    Текущее местоположение 
GUI 4: ADD, TEXT,, 10-33    Требуется эвакуация
GUI 4: ADD, TEXT,, 10-70    Требуется поддержка
GUI 4: ADD, TEXT,, 10-99     Ситуация урегулирована                  
GUI 4: ADD, TEXT, cYellow, ========================================Коды для /mark========================================                      
GUI 4: ADD, TEXT,, CODE-0 - Офицер/агент ранен/убит
GUI 4: ADD, TEXT,, CODE-1 - По офицеру/агенту открыт огонь
GUI 4: ADD, TEXT,, CODE-2 - Вызов без сирен.
GUI 4: ADD, TEXT,, CODE-3 - Вызов с проблесковыми маячками и сиреной 
GUI 4: ADD, TEXT,, CODE-4 - Ситуация урегулирована, все спокойно
GUI 4: ADD, TEXT,, CODE-5 - Ложная тревога
GUI 4: ADD, TEXT,, CODE-6 - Массовые беспорядки 
GUI 4: ADD, TEXT,, CODE-7 - Большое скопление вооруженных лиц


                                                                                                                                                                                                                        
WinSet, TransColor, %CustomColor3% 200

Gui 4: Show, x1 y1 NoActivate, window. 

}

Else

Gui 4: Destroy

return

Key4:
State6:=!State6

If state6

{

CustomColor3 = EEAA99

Gui 3: +LastFound +AlwaysOnTop -Caption +ToolWindow 

Gui 3: Color, black

Gui 3: Font, s10

Gui 3: Font, cWhite

Gui 3: Font, w1000


Gui 3: ADD, TEXT, cYellow, ==== Порядок задержания =====
Gui 3: Add, Text,,  2.1.1 Надеть наручники		
Gui 3: Add, Text,,  2.1.2 Представится 		
Gui 3: Add, Text,,  2.1.3 Сообщить причину задержпния		
Gui 3: Add, Text,,  2.1.4  Досмотреть документы		
Gui 3: Add, Text,,  2.1.5  Первичный обыск (изьять холодное  и огнестрельное оружие)		
Gui 3: Add, Text,,  2.1.6  Сверить с фотороботом		
Gui 3: Add, Text,,  2.1.7 Занести в базу данных розыска		
Gui 3: Add, Text,,  2.1.8 Посадить задержанного в авто и пристегнуть ремнём		
Gui 3: Add, Text,,  2.1.9  Зачитать правило Миранды		
Gui 3: Add, Text,,  2.1.10  Доставить в КПЗ		
Gui 3: Add, Text,,  2.1.11 случае, если пункты 2.1.5, 2.1.6 и 2.1.7 - не были выполнены - выполняем на этом этапе
Gui 3: Add, Text,,  2.1.12 Предложить и реализовать права задержанного		
Gui 3: Add, Text,,  2.1.13  По требованию адвоката вызвать прокурора		
Gui 3: Add, Text,,  2.1.14  Допрос ( не обязательно)	
Gui 3: ADD, TEXT, cYellow, ==== Процедура ареста =====
Gui 3: Add, Text,,  3.1.1 Вторичный обыск ( изымаем весь нелегал )
Gui 3: Add, Text,,  3.1.2 Обновить розыск ( если требуется) 
Gui 3: Add, Text,,  3.1.3 Огласить за что задержан с расшифровной      
Gui 3: Add, Text,,  3.1.4 Сфотографировать для DataBase
Gui 3: Add, Text,,  3.1.5 Поместить в КПЗ
Gui 3: Add, Text,,  3.1.6 Заполнить Data-Base
Gui 3: ADD, TEXT, cYellow, ==== Правила миранды ===== Читаем 2 раза. 
Gui 3: Add, Text,, Вы имеете право хранить молчание. Всё, что вы скажете, может и будет использовано против Вас. Вы имеете право на один телефонный звонок. Также Вы имеете право на адвоката.
Gui 3: Add, Text,, Если вы не можете оплатить услуги адвоката, он будет предоставлен вам государством. Ваш адвокат может присутствовать до и во время допроса.. Вы понимаете свои права?
Gui 3: ADD, TEXT, cYellow, ====================================================================================================================

WinSet, TransColor, %CustomColor3% 180

Gui 3: Show, x0 y30 NoActivate, window. 

}

Else

Gui 3: Destroy

return

Key5: 
State7:=!State7

If state7
{


CustomColor2 = 	EEAA99 

Gui 2: +LastFound +AlwaysOnTop -Caption +ToolWindow 

Gui 2: Color, black 

Gui 2: Font, s6

Gui 2: Font, w1000

Gui 2: Font, cFFFFFF

; FFDEAD - желный цвет
; 00FFFF - синий цвет
gui 2: add, picture, h850 w1550, GosHelper/help1.png

                                                                                    

WinSet, TransColor, %CustomColor2% 1000
Gui 2: Show, x1 y1 NoActivate, window.

 

}

Else
	
Gui 2: Destroy
return

;======================================================================================================================Команды

:?:.внедрение::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Бодикамера закреплена на груди.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me снял бодикамеру с груди {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me открыл бардачок {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me положил бодикамеру в бардачок {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Бодикамера лежит в бардачке.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me закрыл бардачок {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Бардачок закрыт.{enter}
return

:?:.Забрать::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me открыл бардачок.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do В бардачке лежит бодикамера.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me взял бодикамеру с бардачка и закрепил её на груди.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Бодикамера закреплена на груди.{enter}
return

:?:.рюкзак::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me растегнул%gender% рюкзак и осмотрел%gender% его содержимое{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Есть ли в рюкзаке нелегалье вещи?{enter}
return

:?:.rockt::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /cb кирилл крекер гей.{enter}
return

:?:.взятка::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Имеется ли у собеседника аудио или видеозаписывающее устройство?{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /b /do Нет.{enter}
return

:?:.гетто::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /dep to SANG: Требуется ваша поддержка в опасном районе.{enter}
return 

:?:.адвокат::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /dep to GOV: Требуется адвокат в КПЗ{space}
Return

:?:.прок::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /dep to GOV: Требуется прокурор в КПЗ{space}
Return


:?:.гос1::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
SendInput, /dep to ALL: Занята ли гос.волна на  {?}{left 2}  
Return


:?:.гос2::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
SendInput, /dep to ALL: Не услышав ответа, занял%gender% гос.волну на  {!}{left 2}  
Return

:?:.госфиб::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /dep to ALL: Занял%gender% гос волну.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /gnews Уважаемые жители штата!{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /gnews На портале штата открыты электронные заявления на стажировку в Federal Investigation Bureau.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /gnews А также открыты заявления на переводы из других силовых структур и восстановления.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /gnews Для вступления вам необходимо иметь военный сертификат и медицинскую справку.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /gnews Заявления вы можете оставить на портале штата в разделе Federal Investigation Bureau.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /dep to ALL: Освободил%gender% гос волну.{enter}
Return

:?:.похитка::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
SendInput, /dep to All: Деревня схватилась за похищение, еду. {enter}
Return

:?:.требования::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
SendInput, /dep to All: Похитители на  машинах запросили .000$ за  заложника и 45 секунд зеленого коридора.{left 68}
Return

:?:.неадекват::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
SendInput, /dep to all: Похитители на  машинах запросили неадекватные требования.{left 42}
Return

:?:.спасли::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
SendInput, /dep to All: Заложники спасены, похитители уехали на машинах в неизвестном направлении , жучок , у них есть 45 секунд зеленого коридора.{left 68}
Return

:?:.пальчики::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me взял руку задержаного и освободил от всех предметов на ней{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do На столе лежит набор стекол для снятия отпечатков, дактилоскопический порошок и скотч.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me взял набор со стола, приставил каждое стеклышко по очереди к каждому пальцу задержанного{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me взял дактилоскопический порошок и присыпал им стекла, сдул излишки{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Отпечатки появились на стеклах.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me взял скотч, снял им отпечатки со стекла и наклеил на специальных бланк{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do На столе лежит сканер.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me с помощью компьютера просканировал бланк с отпечатками{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me проверил отпечатки пальцев на совпадение в базе данных{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Совпадения найдены, личность установлена.{enter}
Return

:?:.жучок::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка лежит на сидении.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Жучки находятся в бардачке.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% бардачок и взял один жучок в руку{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Жучок в руке.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% сумку с деньгами{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Сумка открыта.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me положил%gender% жучок между купюрами{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Жучок находится в деньгах.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me закрыл%gender% сумку{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Сумка закрыта.{enter}
Return

:?:.куст::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Нож в правом кармане штанов.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% нож из кармана и взял%gender% в правую руку{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Нож в правой руке.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me начал%gender% срезать неизвестное растение{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Срезал%gender% растение.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% ZIP-пакет и убрал%gender% неизвестное растение{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me положил%gender% ZIP-пакет в карман штанов{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do ZIP-пакет в кармане.{enter}
Return

:?:.дрон::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Дрон включен.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Дрон синхронизирован с планшетом агента и управляется дистанционно.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me нажал%gender% кнопку на планшете для включения камеры, закрепленной на дроне{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Бодикамера на дроне включена и ведет запись на внутренний накопитель.{enter}
Return

:?:.чистка::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do На стелажах лежит нелегальное содержимое: оружие, патроны, наркотики.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% из-под бронежилета несколько zip-пакетов и открыл их{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me начал%gender% складывать все содержимое с стелажей в zip-пакеты{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Нелегальное содержимое в zip-пакетах.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me убрал%gender% zip-пакеты под бронежилет{enter}
Return

:?:.опознать::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me пригляделся к опознавательному знаку человека напротив{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Что написано на опознавательном знаке человека напротив?{enter}
return

:?:.скинуть::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me открыл%gender% багажник у машины напротив{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% из-под бронежилета zip-пакеты с нелегальным содержимым{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me убрал%gender% zip-пакеты в багажник{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Zip-пакеты в багажнике.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me закрыл%gender% багажник {enter}
Return

:?:.полиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Полиграф в шкафу{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% полиграф из шкафа{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф в руках{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me поставил%gender% полиграф на стол{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф на столе{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me включил%gender% полиграф и разложил%gender% датчики перед собой{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me прикрепил%gender% на подозреваемого датчики грудного и диафрагмального дыхания{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me установил%gender% фотоплетизмограмму на палец подозреваемого{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me установил%gender% датчики двигательной активности, речевых реакций и кожно-гальванической реакции на подозреваемого{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me проверил%gender% правильность подключения датчиков{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф и датчики подключены и работают исправно{enter}
Return

:?:.флешка::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Боди-камера закреплена на груди.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% боди-камеру и вынул%gender% из нее SD-карту{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me вставил%gender% SD-карту в компьютер{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Компьютер выключен.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me включил%gender% компьютер и зашел в базу отдела IB {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me ввел%gender% свой логин и пароль {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Вход успешен. {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me зашел в папку с видеозаписями{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me перенес видеозапись с SD-карты в папку с видеозаписями {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me вытащил%gender% из компьютера SD-карту {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me вставил%gender% SD-карту в боди-камеру {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Пустая флешка лежит в кармане. {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% флешку из кармана {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me вставил%gender% флешку в компьютер {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me нашел нужное видео {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me перенес видео на флешку{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Видео скопировано на флешку. {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me выключил%gender% компьютер и вытащил%gender% флешку из компьютера {enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me убрал%gender% флешку в карман {enter}
Return

:?:.NDA::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me достал%gender% из-под бронежилета файлик с контрактом NDA{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Файл с контрактом в руках.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% контракт NDA из файла, после чего передал%gender% человеку, стоящему  напротив{enter}
sleep 600
SoundPlay, *-1
Pause
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me забрал%gender% контракт из рук человека, стоящего напротив{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Файл и контракт в руках.{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /me засунул%gender% контракт NDA обратно в файл, после чего убрал%gender% файл под бронежилет{enter}
sleep 600
Sendinput, {t}
sleep 200
Sendinput, /do Файл с контрактом под бронежилетом.{enter}
Return

:?:.дб::
Run, https://database-majestic-4.ru/ ; Database
return

:?:.сумка::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка висит на плече.{enter}
sleep 300
Sendinput, {t}
sleep 300
Sendinput, /me снял сумку с плеча и положил её на землю.{enter}
sleep 300
Sendinput, {t}
sleep 300
Sendinput, /do Сумка на земле.{enter}
Return

:?:.передать::
SendMessage, 0x50,, 0x4190419,, A
sleep 300
Return

:?:.с::/c
:?:.си::/cb
:?:.зге::/put
:?:.аи::/fb
:?:.а::/f
:?:.ьфкл::/mark
:?:.згдд::/pull
:?:.кузщке::/report
:?:.и::/b
:?:.зфн::/pay
:?:.ц::/w
:?:.ьу::/me
:?:.вщ::/do
:?:.екн::/try

:?:.вуз::/dep to
:?:.пд::/dep to LSPD:
:?:.сд::/dep to SD:
:?:.санг::/dep to SANG:
:?:.емс::/dep to EMS:
:?:.вн::/dep to WN:
:?:.гов::/dep to GOV:
:?:.фиб::/dep to FIB:


:?:.ь0::/mark code 0{enter}
:?:.ь1::/mark code 1{enter}
:?:.ь7::/mark code 7{enter}

F12:: Pause, Toggle
!R::Reload 
