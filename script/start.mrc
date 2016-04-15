;########################################### Dialog First #########################
;###################  NeOn mIRC Script ##########################################
;#########################################################################

alias first {
  if $dialog(first) = $null { dialog -ma first first }
  else halt
}

dialog first {
  title "����� ����������!"
  size -1 -1 115 278
  option dbu
  icon mirc.ico, 0
  text " � �����: Lythium (������ �������)", 3, 3 40 115 7
  text " � ��. ����: http://neon-ms.info/", 5, 3 58 100 7
  text " � �����", 9, 3 67 22 7
  text " � ��������� ������������� NeOn mIRC !", 10, 3 76 115 7
  button "�������� ����", 7, 6 85 50 12, ok cancel
  button "�������� �����", 11, 58 85 50 12, ok cancel
  icon 2, 0 -21 115 70,  icons\first.gif, 0, noborder
  box "����������:", 4, 1 32 113 70
  box "��������� ���:", 675, 1 103 113 22
  edit "", 676, 5 111 104 10
  box "E-mail �����:", 677, 1 127 113 22
  edit "", 678, 5 135 104 10
  box "���� ���:", 679, 1 151 113 22
  edit "", 680, 5 159 104 10
  box "���� �������������� ���:", 681, 1 175 113 22
  edit "", 682, 5 183 104 10
  button " �� ", 100, 6 264 102 12, ok
  text " � ���������: Lythium, ArseniusGravius", 1, 3 49 100 7
  box "������:", 6, 1 199 113 22
  edit "", 8, 5 207 104 10
  radio "�������", 12, 18 230 37 10, group
  box "��� � �������", 13, 1 223 112 19
  radio "�������", 14, 64 230 40 10
  check "��������� ������� ����������", 15, 10 243 97 10
  check "�������� ����������� ����", 16, 10 252 97 10
  text %script.version, 17, 24 67 13 7
  text "������: 05.12.2009", 18, 33 67 65 7
}

on *:dialog:first:sclick:100: {
  if ($did(676) != $bull) { /fullname $did(676) }
  if ($did(678) != $bull) { /emailaddr $did(678) }
  if ($did(680) != $bull) { /nick $did(680) }
  if ($did(682) != $bull) { /anick $did(682) }
  if ($did(8) != $bull) { /server $did(8) }
  if $did(12).state = 1 { /set %slap.sex male | echo %skin.sys ��� ��� ������ � �������  - ������� ! }
  if $did(14).state = 1 { /set %slap.sex female | echo %skin.sys ��� ��� ������ � �������  - ������� ! }
  if $did(15).state = 1 { /set %update on }
  if $did(15).state = 0 { /set %update off }
  if $did(16).state = 1 { /set %arise_state 1 }
  if $did(16).state = 1 { /set %arise_state 0 }
}
on *:DIALOG:first:sclick:7: { /run http://neon-ms.info/ }
on *:DIALOG:first:sclick:11: { /run http://neon-ms.info/forum/ }

on *:dialog:first:init:*: {
  if %slap.sex = male { did -c first 12 } 
  if %slap.sex = female { did -c first 14 } 
  if %arise_state = 1 { did -c first 16 } 
  if %update = on { did -c first 15 }

}
