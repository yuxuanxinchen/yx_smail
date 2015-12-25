prompt PL/SQL Developer import file
prompt Created on 2014��5��17�� by Thinkpad
set feedback off
set define off
prompt Disabling triggers for BSS_SYS_AREA...
alter table BSS_SYS_AREA disable all triggers;
prompt Disabling triggers for BSS_SYS_DEPLOYNODE...
alter table BSS_SYS_DEPLOYNODE disable all triggers;
prompt Disabling triggers for BSS_SYS_LOG...
alter table BSS_SYS_LOG disable all triggers;
prompt Disabling triggers for BSS_SYS_MODULE...
alter table BSS_SYS_MODULE disable all triggers;
prompt Disabling triggers for BSS_SYS_OPERATE...
alter table BSS_SYS_OPERATE disable all triggers;
prompt Disabling triggers for BSS_SYS_ROLE...
alter table BSS_SYS_ROLE disable all triggers;
prompt Disabling triggers for BSS_SYS_ROLEMODULE...
alter table BSS_SYS_ROLEMODULE disable all triggers;
prompt Disabling triggers for BSS_SYS_ROLENODE...
alter table BSS_SYS_ROLENODE disable all triggers;
prompt Disabling triggers for BSS_SYS_ROLEOPERATE...
alter table BSS_SYS_ROLEOPERATE disable all triggers;
prompt Disabling triggers for BSS_SYS_ROLESYS...
alter table BSS_SYS_ROLESYS disable all triggers;
prompt Disabling triggers for BSS_SYS_SYSTEM...
alter table BSS_SYS_SYSTEM disable all triggers;
prompt Loading BSS_SYS_AREA...
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.27.', 'ԥ�����˹��´�', 3, null, '1.2.', null, null, null, null, 'ylzxgsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.28.', 'ԥ����ʯ���ڴ�', 3, null, '1.2.', null, null, null, null, 'ylzszgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.29.', 'ԥ�����ׯ��', 3, null, '1.2.', null, null, null, null, 'ylzczhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.30.', 'ԥ����ص����', 3, null, '1.2.', null, null, null, null, 'ylzgdmc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.31.', 'ԥ����ëկ��', 3, null, '1.2.', null, null, null, null, 'ylzmzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.32.', 'ԥ����կ���', 3, null, '1.2.', null, null, null, null, 'ylzzyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.33.', 'ԥ����������', 3, null, '1.2.', null, null, null, null, 'ylzyqc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.34.', 'ԥ����կ��', 3, null, '1.2.', null, null, null, null, 'ylzjzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.35.', 'ԥ��������', 3, null, '1.2.', null, null, null, null, 'ylzlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.36.', 'ԥ������Ŵ�', 3, null, '1.2.', null, null, null, null, 'ylzhzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.37.', 'ԥ���������', 3, null, '1.2.', null, null, null, null, 'ylzldc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.8.', 'ԥ������԰��', 3, null, '1.2.', null, null, null, null, 'ylzsyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.9.', 'ԥ��������', 3, null, '1.2.', null, null, null, null, 'ylzhxc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.3.', '����', 2, null, '1.', null, null, null, null, 'sh', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.3.1.', '��������¥��', 3, null, '1.3.', null, null, null, null, 'shywlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.3.2.', '���ӻ����ݴ�', 3, null, '1.3.', null, null, null, null, 'shhswc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.3.3.', '���ӳǹش�', 3, null, '1.3.', null, null, null, null, 'shcgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.3.4.', '���ӻݳ���', 3, null, '1.3.', null, null, null, null, 'shhcc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.3.5.', '���ӳ�¥��', 3, null, '1.3.', null, null, null, null, 'shclc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.', '����', 2, null, '1.', null, null, null, null, 'jc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.1.', '���Ǳ�����', 3, null, '1.4.', null, null, null, null, 'jcbwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.2.', '���ǿ��δ�', 3, null, '1.4.', null, null, null, null, 'jckzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.3.', '����ʯ�δ�', 3, null, '1.4.', null, null, null, null, 'jcszc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.4.', '���Ǽ����δ�', 3, null, '1.4.', null, null, null, null, 'jcjjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.5.', '���ǲ����', 3, null, '1.4.', null, null, null, null, 'jcclc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.6.', '����ƽׯ��', 3, null, '1.4.', null, null, null, null, 'jcpzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.7.', '���Ƿ��δ�', 3, null, '1.4.', null, null, null, null, 'jcfzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.4.8.', '������������', 3, null, '1.4.', null, null, null, null, 'jclwlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.', '��¥��', 2, null, '1.', null, null, null, null, 'qlz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.1.', '��¥�򶫹���', 3, null, '1.5.', null, null, null, null, 'qlzdgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.10.', '��¥�����', 3, null, '1.5.', null, null, null, null, 'qlzlgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.11.', '��¥�򸶺Ӵ�', 3, null, '1.5.', null, null, null, null, 'qlzfhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.12.', '��¥��ʨ��', 3, null, '1.5.', null, null, null, null, 'qlzsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.13.', '��¥����¥��', 3, null, '1.5.', null, null, null, null, 'qlznlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.14.', '��¥��ڣ�Ӹڴ�', 3, null, '1.5.', null, null, null, null, 'qlzzzgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.15.', '��¥������ׯ��', 3, null, '1.5.', null, null, null, null, 'qlzzwzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.16.', '��¥���կ��', 3, null, '1.5.', null, null, null, null, 'qlzczc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.17.', '��¥�򺫴�', 3, null, '1.5.', null, null, null, null, 'qlzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.18.', '��¥����ô�', 3, null, '1.5.', null, null, null, null, 'qlzctc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.2.', '��¥�����δ�', 3, null, '1.5.', null, null, null, null, 'qlzszc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.3.', '��¥�����ݴ�', 3, null, '1.5.', null, null, null, null, 'qlzswc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.4.', '��¥�������', 3, null, '1.5.', null, null, null, null, 'qlzqlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.5.', '��¥���կ��', 3, null, '1.5.', null, null, null, null, 'qlzczhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.6.', '��¥����ׯ��', 3, null, '1.5.', null, null, null, null, 'qlzrzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.7.', '��¥��¹���', 3, null, '1.5.', null, null, null, null, 'qlzcgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.8.', '��¥�����ڴ�', 3, null, '1.5.', null, null, null, null, 'qlzxgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.5.9.', '��¥���Ŵ���', 3, null, '1.5.', null, null, null, null, 'qlzzcm', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.', '������', 2, null, '1.', null, null, null, null, 'gwz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.1.', '��������ƴ�', 3, null, '1.6.', null, null, null, null, 'gwzcyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.10.', '����������Ǵ�', 3, null, '1.6.', null, null, null, null, 'gwzbwcc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.11.', '���������Ǵ�', 3, null, '1.6.', null, null, null, null, 'gwzhwcc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.12.', '�������կ��', 3, null, '1.6.', null, null, null, null, 'gwzbzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.13.', '���������', 3, null, '1.6.', null, null, null, null, 'gwzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.14.', '���������ٴ�', 3, null, '1.6.', null, null, null, null, 'gwzsgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.15.', '�����򷮺Ӵ�', 3, null, '1.6.', null, null, null, null, 'gwzfhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.16.', '��������ׯ��', 3, null, '1.6.', null, null, null, null, 'gwzzzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.17.', '��������կ��', 3, null, '1.6.', null, null, null, null, 'gwzszc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.18.', '������¹���', 3, null, '1.6.', null, null, null, null, 'gwzcgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.19.', '�������ݴ�', 3, null, '1.6.', null, null, null, null, 'gwzdwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.2.', '�������һ�����', 3, null, '1.6.', null, null, null, null, 'gwzthyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.20.', '�������ׯ��', 3, null, '1.6.', null, null, null, null, 'gwzfzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.21.', '����������', 3, null, '1.6.', null, null, null, null, 'gwzhlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.22.', '�������ʦ�ô�', 3, null, '1.6.', null, null, null, null, 'gwzdsgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.23.', '������������', 3, null, '1.6.', null, null, null, null, 'gwzwgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.24.', '������¥��', 3, null, '1.6.', null, null, null, null, 'gwzdlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.25.', '��������կ��', 3, null, '1.6.', null, null, null, null, 'gwzszhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.26.', '�������ƴ�', 3, null, '1.6.', null, null, null, null, 'gwzyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.27.', '��������԰��', 3, null, '1.6.', null, null, null, null, 'gwztyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.28.', '�������κӴ�', 3, null, '1.6.', null, null, null, null, 'gwzrhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.29.', '���������δ�', 3, null, '1.6.', null, null, null, null, 'gwzzrc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.3.', '�����������', 3, null, '1.6.', null, null, null, null, 'gwztdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.30.', '�������δ�', 3, null, '1.6.', null, null, null, null, 'gwzbrc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.31.', '��������Ŵ�', 3, null, '1.6.', null, null, null, null, 'gwzjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.32.', '������կ����', 3, null, '1.6.', null, null, null, null, 'gwzzyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.33.', '�����򳵴󹵴�', 3, null, '1.6.', null, null, null, null, 'gwzcdgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.34.', '������ׯ��', 3, null, '1.6.', null, null, null, null, 'gwzdzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.35.', '�����������', 3, null, '1.6.', null, null, null, null, 'gwzhwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.36.', '�������źӴ�', 3, null, '1.6.', null, null, null, null, 'gwzzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.37.', '����������', 3, null, '1.6.', null, null, null, null, 'gwzcdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.38.', '������������', 3, null, '1.6.', null, null, null, null, 'gwzwdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.39.', '�����������', 3, null, '1.6.', null, null, null, null, 'gwzzdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.4.', '���������մ�', 3, null, '1.6.', null, null, null, null, 'gwzxsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.40.', '����������', 3, null, '1.6.', null, null, null, null, 'gwzgwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.41.', '������κӪ��', 3, null, '1.6.', null, null, null, null, 'gwzdwyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.42.', '��������κӪ��', 3, null, '1.6.', null, null, null, null, 'gwzxwyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.43.', '����������', 3, null, '1.6.', null, null, null, null, 'gwzdyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.5.', '�������մ�', 3, null, '1.6.', null, null, null, null, 'gwzdsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.6.', '�������϶���', 3, null, '1.6.', null, null, null, null, 'gwzndc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.7.', '������ׯ��', 3, null, '1.6.', null, null, null, null, 'gwzczc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.8.', '�������ߵ��', 3, null, '1.6.', null, null, null, null, 'gwznidc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.6.9.', '������ˮȪ��', 3, null, '1.6.', null, null, null, null, 'gwzsqc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.', '�ߴ���', 2, null, '1.', null, null, null, null, 'gcx', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.1.', '�ߴ����ׯ��', 3, null, '1.7.', null, null, null, null, 'gcxgzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.10.', '�ߴ����ų���', 3, null, '1.7.', null, null, null, null, 'gcxzcc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.11.', '�ߴ���ߴ��´�', 3, null, '1.7.', null, null, null, null, 'gcxgcsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.12.', '�ߴ����Ŵ�', 3, null, '1.7.', null, null, null, null, 'gcxzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.13.', '�ߴ�����կ��', 3, null, '1.7.', null, null, null, null, 'gcxmzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.14.', '�ߴ����ͷ���', 3, null, '1.7.', null, null, null, null, 'gcxyfc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.15.', '�ߴ��羣կ��', 3, null, '1.7.', null, null, null, null, 'gcxjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.16.', '�ߴ���ų���', 3, null, '1.7.', null, null, null, null, 'gcxdcc', null, null, null, null, null);
commit;
prompt 100 records committed...
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.17.', '�ߴ�����կ��', 3, null, '1.7.', null, null, null, null, 'gcxmzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.18.', '�ߴ�������ͷ��', 3, null, '1.7.', null, null, null, null, 'gcxlptc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.19.', '�ߴ����δ�', 3, null, '1.7.', null, null, null, null, 'gcxsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.2.', '�ߴ������', 3, null, '1.7.', null, null, null, null, 'gcxwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.20.', '�ߴ������ͷ��', 3, null, '1.7.', null, null, null, null, 'gcxcptc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.21.', '�ߴ���ţ������', 3, null, '1.7.', null, null, null, null, 'gcxnkyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.22.', '�ߴ�����ɽ��', 3, null, '1.7.', null, null, null, null, 'gcxmsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.23.', '�ߴ�����������', 3, null, '1.7.', null, null, null, null, 'gcxzsgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.24.', '�ߴ�������ͷ��', 3, null, '1.7.', null, null, null, null, 'gcxqptc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.25.', '�ߴ��簲��կ��', 3, null, '1.7.', null, null, null, null, 'gcxarzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.26.', '�ߴ�����կ��', 3, null, '1.7.', null, null, null, null, 'gcxzzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.27.', '�ߴ���ߴ�', 3, null, '1.7.', null, null, null, null, 'gcxgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.28.', '�ߴ��������', 3, null, '1.7.', null, null, null, null, 'gcxgyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.29.', '�ߴ���������', 3, null, '1.7.', null, null, null, null, 'gcxlgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.3.', '�ߴ���ǰ���Ӵ�', 3, null, '1.7.', null, null, null, null, 'gcxqjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.30.', '�ߴ�����ɽ��', 3, null, '1.7.', null, null, null, null, 'gcxlsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.4.', '�ߴ������Ӵ�', 3, null, '1.7.', null, null, null, null, 'gcxhjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.5.', '�ߴ���˾���', 3, null, '1.7.', null, null, null, null, 'gcxsmc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.6.', '�ߴ������', 3, null, '1.7.', null, null, null, null, 'gcxzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.7.', '�ߴ�������', 3, null, '1.7.', null, null, null, null, 'gcxmgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.8.', '�ߴ��纫����', 3, null, '1.7.', null, null, null, null, 'gcxhcc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.7.9.', '�ߴ���ʷ����', 3, null, '1.7.', null, null, null, null, 'gcxsfc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.8.', '��կ��', 2, null, '1.', null, null, null, null, 'jzx', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.8.1.', '��կ���կ��', 3, null, '1.8.', null, null, null, null, 'jzxjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.8.2.', '��կ���¥��', 3, null, '1.8.', null, null, null, null, 'jzxclc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.', '������', 2, null, '1.', null, null, null, null, 'wcz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.1.', '����������', 3, null, '1.9.', null, null, null, null, 'wczwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.10.', '������ǰ��ׯ��', 3, null, '1.9.', null, null, null, null, 'wczqxzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.11.', '�����򶡴�', 3, null, '1.9.', null, null, null, null, 'wczdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.12.', '������η���', 3, null, '1.9.', null, null, null, null, 'wczdfc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.13.', '�����������', 3, null, '1.9.', null, null, null, null, 'wczrlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.14.', '������ǰ�����', 3, null, '1.9.', null, null, null, null, 'wczqbyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.15.', '���������Ӵ�', 3, null, '1.9.', null, null, null, null, 'wczwzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.16.', '��������ׯ��', 3, null, '1.9.', null, null, null, null, 'wczlzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.17.', '��������ׯ��', 3, null, '1.9.', null, null, null, null, 'wczxzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.18.', '�����򺫴�', 3, null, '1.9.', null, null, null, null, 'wczhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.19.', '����������', 3, null, '1.9.', null, null, null, null, 'wczcmc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.2.', '�������޴�', 3, null, '1.9.', null, null, null, null, 'wczflc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.20.', '������Ѧ��', 3, null, '1.9.', null, null, null, null, 'wczxc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.21.', '������˾��', 3, null, '1.9.', null, null, null, null, 'wczsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.22.', '�����������', 3, null, '1.9.', null, null, null, null, 'wczhbyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.23.', '�����������', 3, null, '1.9.', null, null, null, null, 'wczxidc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.24.', '���������', 3, null, '1.9.', null, null, null, null, 'wczhdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.25.', '��������԰��', 3, null, '1.9.', null, null, null, null, 'wczzyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.3.', '������ľ¥��', 3, null, '1.9.', null, null, null, null, 'wczmlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.4.', '������ض��', 3, null, '1.9.', null, null, null, null, 'wczbdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.5.', '������С��', 3, null, '1.9.', null, null, null, null, 'wczxiaoc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.6.', '���������ׯ��', 3, null, '1.9.', null, null, null, null, 'wczhxzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.7.', '������ͷ��', 3, null, '1.9.', null, null, null, null, 'wczjtc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.8.', '�������µ��', 3, null, '1.9.', null, null, null, null, 'wczxdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.9.9.', '����������', 3, null, '1.9.', null, null, null, null, 'wczlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('0', '�����Ŀ¼', 0, null, '-1', null, null, null, null, null, null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.', '������', 1, null, '0', null, null, '20140423184716', null, '1.', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.', '������', 2, null, '1.', null, null, null, null, 'cmz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.16.', '����������', 3, null, '1.1.', null, null, null, null, 'cmzcmc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.17.', '��������Ҥ��', 3, null, '1.1.', null, null, '20140423105817', null, '1.1.17.', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.18.', '���������', 3, null, '1.1.', null, null, null, null, 'cmzxgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.19.', '���������´�', 3, null, '1.1.', null, null, null, null, 'cmzspc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.20.', '��������԰��', 3, null, '1.1.', null, null, null, null, 'cmzzyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.21.', '������Թ���', 3, null, '1.1.', null, null, null, null, 'cmzzgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.22.', '��������ׯ��', 3, null, '1.1.', null, null, null, null, 'cmzlzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.23.', '������ʯ����', 3, null, '1.1.', null, null, null, null, 'cmzsjc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.24.', '�����򳵳���', 3, null, '1.1.', null, null, null, null, 'cmzccc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.25.', '������ʯ�´�', 3, null, '1.1.', null, null, null, null, 'cmzshpc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.26.', '���������ڵ��', 3, null, '1.1.', null, null, null, null, 'cmzwzdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.27.', '��������Դ�', 3, null, '1.1.', null, null, null, null, 'cmzbzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.28.', '��������������', 3, null, '1.1.', null, null, null, null, 'cmzlsgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.29.', '��������կ��', 3, null, '1.1.', null, null, null, null, 'cmzmzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.30.', '�����򶡹���', 3, null, '1.1.', null, null, null, null, 'cmzdgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.31.', '��������կ��', 3, null, '1.1.', null, null, null, null, 'cmzszc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.32.', '�������¹���', 3, null, '1.1.', null, null, null, null, 'cmzsgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.33.', '������繵��', 3, null, '1.1.', null, null, null, null, 'cmzjgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.34.', '������֣�ڴ�', 3, null, '1.1.', null, null, null, null, 'cmzzhgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.35.', '��������Ȫ��', 3, null, '1.1.', null, null, null, null, 'cmzwqc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.36.', '������¬ׯ��', 3, null, '1.1.', null, null, null, null, 'cmzlzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.1.37.', '������֣ׯ��', 3, null, '1.1.', null, null, null, null, 'cmzzzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.', '��ˮ��', 2, null, '1.', null, null, null, null, 'ssz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.1.', '��ˮ��������', 3, null, '1.10.', null, null, null, null, 'sszlyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.10.', '��ˮ���徲����', 3, null, '1.10.', null, null, null, null, 'sszqjgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.11.', '��ˮ����ˮ��', 3, null, '1.10.', null, null, null, null, 'sszssc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.12.', '��ˮ��������', 3, null, '1.10.', null, null, null, null, 'sszhtc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.13.', '��ˮ�����ʹ�', 3, null, '1.10.', null, null, null, null, 'sszntc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.14.', '��ˮ���Դ�', 3, null, '1.10.', null, null, null, null, 'sszzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.2.', '��ˮ��ʮ���', 3, null, '1.10.', null, null, null, null, 'sszslc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.3.', '��ˮ���ιش�', 3, null, '1.10.', null, null, null, null, 'sszhlgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.4.', '��ˮ�򶫺��ϴ�', 3, null, '1.10.', null, null, null, null, 'sszdhnc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.5.', '��ˮ���Ͼ��ô�', 3, null, '1.10.', null, null, null, null, 'sszljtc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.6.', '��ˮ����Ӵ�', 3, null, '1.10.', null, null, null, null, 'sszkzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.7.', '��ˮ���¹���', 3, null, '1.10.', null, null, null, null, 'sszxgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.8.', '��ˮ���ܹ���', 3, null, '1.10.', null, null, null, null, 'sszzgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.10.9.', '��ˮ�����ϴ�', 3, null, '1.10.', null, null, null, null, 'sszxxc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.', '��ɽ��', 2, null, '1.', null, null, null, null, 'gsz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.1.', '��ɽ�����', 3, null, '1.11.', null, null, null, null, 'gszxc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.10.', '��ɽ���ǹ���', 3, null, '1.11.', null, null, null, null, 'gszqgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.11.', '��ɽ�����Ŵ�', 3, null, '1.11.', null, null, null, null, 'gszyqc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.12.', '��ɽ���ඥ��', 3, null, '1.11.', null, null, null, null, 'gszydc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.13.', '��ɽ����Ҫ��', 3, null, '1.11.', null, null, null, null, 'gsztyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.14.', '��ɽ���ɸڴ�', 3, null, '1.11.', null, null, null, null, 'gszcgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.15.', '��ɽ��ڣ�ڴ�', 3, null, '1.11.', null, null, null, null, 'gszzgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.16.', '��ɽ���綥��', 3, null, '1.11.', null, null, null, null, 'gszmdc', null, null, null, null, null);
commit;
prompt 200 records committed...
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.17.', '��ɽ��ʯ����', 3, null, '1.11.', null, null, null, null, 'gszsdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.18.', '��ɽ���ɽ��', 3, null, '1.11.', null, null, null, null, 'gszgsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.19.', '��ɽ���񴨴�', 3, null, '1.11.', null, null, null, null, 'gszzcc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.2.', '��ɽ����Ҥ��', 3, null, '1.11.', null, null, null, null, 'gszpyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.3.', '��ɽ���¹���', 3, null, '1.11.', null, null, null, null, 'gszmugc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.4.', '��ɽ���ˮ��', 3, null, '1.11.', null, null, null, null, 'gszbsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.5.', '��ɽ��빵��', 3, null, '1.11.', null, null, null, null, 'gszfgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.6.', '��ɽ���⹵��', 3, null, '1.11.', null, null, null, null, 'gszwgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.7.', '��ɽ������', 3, null, '1.11.', null, null, null, null, 'gszmgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.8.', '��ɽ��ֽ����', 3, null, '1.11.', null, null, null, null, 'gszzfc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.11.9.', '��ɽ����԰��', 3, null, '1.11.', null, null, null, null, 'gszzyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.', '�ǹ���', 2, null, '1.', null, null, null, null, 'cgx', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.1.', '�ǹ���ʯ�幵��', 3, null, '1.12.', null, null, null, null, 'cgxsbgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.10.', '�ǹ���������', 3, null, '1.12.', null, null, null, null, 'cgxwgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.11.', '�ǹ��籱�ܴ�', 3, null, '1.12.', null, null, null, null, 'cgxbzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.12.', '�ǹ�����¥��', 3, null, '1.12.', null, null, null, null, 'cgxzlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.13.', '�ǹ�������կ��', 3, null, '1.12.', null, null, null, null, 'cgxyzzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.14.', '�ǹ������ܴ�', 3, null, '1.12.', null, null, null, null, 'cgxnzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.15.', '�ǹ�����԰��', 3, null, '1.12.', null, null, null, null, 'cgxsyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.16.', '�ǹ��������', 3, null, '1.12.', null, null, null, null, 'cgxtlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.17.', '�ǹ�����Ҷ�Ӵ�', 3, null, '1.12.', null, null, null, null, 'cgxzyhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.18.', '�ǹ�����ʷ��', 3, null, '1.12.', null, null, null, null, 'cgxxsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.19.', '�ǹ���С����', 3, null, '1.12.', null, null, null, null, 'cgxxwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.2.', '�ǹ�������', 3, null, '1.12.', null, null, null, null, 'cgxdmc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.20.', '�ǹ�����δ�', 3, null, '1.12.', null, null, null, null, 'cgxgzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.21.', '�ǹ�����ʮ���̴�', 3, null, '1.12.', null, null, null, null, 'cgxsslpc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.22.', '�ǹ����Ԭկ��', 3, null, '1.12.', null, null, null, null, 'cgxgyzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.23.', '�ǹ��繬կ��', 3, null, '1.12.', null, null, null, null, 'cgxgzhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.24.', '�ǹ��縶�Ӵ�', 3, null, '1.12.', null, null, null, null, 'cgxfhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.25.', '�ǹ�����ׯ��', 3, null, '1.12.', null, null, null, null, 'cgxwzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.26.', '�ǹ�����Ȫ�´�', 3, null, '1.12.', null, null, null, null, 'cgxlqsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.27.', '�ǹ��簲ׯ��', 3, null, '1.12.', null, null, null, null, 'cgxazc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.28.', '�ǹ�����Ҥ�´�', 3, null, '1.12.', null, null, null, null, 'cgxwypc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.29.', '�ǹ����ϼ���', 3, null, '1.12.', null, null, null, null, 'cgxsjc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.3.', '�ǹ��������', 3, null, '1.12.', null, null, null, null, 'cgxldc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.4.', '�ǹ��������', 3, null, '1.12.', null, null, null, null, 'cgxydc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.5.', '�ǹ������', 3, null, '1.12.', null, null, null, null, 'cgxhjc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.6.', '�ǹ�������կ��', 3, null, '1.12.', null, null, null, null, 'cgxwlzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.7.', '�ǹ��綫ʷ��', 3, null, '1.12.', null, null, null, null, 'cgxdsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.8.', '�ǹ��������', 3, null, '1.12.', null, null, null, null, 'cgxdwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.12.9.', '�ǹ������կ��', 3, null, '1.12.', null, null, null, null, 'cgxlkzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.', '������', 2, null, '1.', null, null, null, null, 'lhz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.1.', '���������Ӵ�', 3, null, '1.13.', null, null, null, null, 'lhzlhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.10.', '������¼Ҹڴ�', 3, null, '1.13.', null, null, null, null, 'lhzcjgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.11.', '�������ˮ���', 3, null, '1.13.', null, null, null, null, 'lhzfslc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.12.', '������ʯׯ��', 3, null, '1.13.', null, null, null, null, 'lhzszc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.13.', '��������ׯ��', 3, null, '1.13.', null, null, null, null, 'lhzszhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.14.', '���������ݴ�', 3, null, '1.13.', null, null, null, null, 'lhzrwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.15.', '���������Ӵ�', 3, null, '1.13.', null, null, null, null, 'lhzwhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.2.', '�����򻨺Ӵ�', 3, null, '1.13.', null, null, null, null, 'lhzhhc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.3.', '���������Ŵ�', 3, null, '1.13.', null, null, null, null, 'lhzwzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.4.', '��������ӹ���', 3, null, '1.13.', null, null, null, null, 'lhzjzgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.5.', '������ٶ���', 3, null, '1.13.', null, null, null, null, 'lhzgdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.6.', '������Сկ��', 3, null, '1.13.', null, null, null, null, 'lhzxzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.7.', '���������ϴ�', 3, null, '1.13.', null, null, null, null, 'lhzasc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.8.', '�������´�', 3, null, '1.13.', null, null, null, null, 'lhzfpc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.13.9.', '�������칵��', 3, null, '1.13.', null, null, null, null, 'lhzxgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.14.', '������', 2, null, '1.', null, null, null, null, 'hcy', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.14.1.', '������˾ׯ��', 3, null, '1.14.', null, null, null, null, 'hcyszc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.14.2.', '��������', 3, null, '1.14.', null, null, null, null, 'hcyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.14.3.', '��������ׯ��', 3, null, '1.14.', null, null, null, null, 'hcyczc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.14.4.', '������������', 3, null, '1.14.', null, null, null, null, 'hcydgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.14.5.', '�������������', 3, null, '1.14.', null, null, null, null, 'hcyelmc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.', '������', 2, null, '1.', null, null, null, null, 'jyz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.1.', '�����������', 3, null, '1.15.', null, null, null, null, 'jyzjyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.10.', '�����������', 3, null, '1.15.', null, null, null, null, 'jyzzdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.11.', '�������ϴ�', 3, null, '1.15.', null, null, null, null, 'jyzxc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.12.', '������������', 3, null, '1.15.', null, null, null, null, 'jyznwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.13.', '������ʯ������', 3, null, '1.15.', null, null, null, null, 'jyzsbgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.14.', '��������ߴ�', 3, null, '1.15.', null, null, null, null, 'jyzdyc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.15.', '������������', 3, null, '1.15.', null, null, null, null, 'jyzlgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.16.', '�������춥��', 3, null, '1.15.', null, null, null, null, 'jyzzhdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.17.', '���������', 3, null, '1.15.', null, null, null, null, 'jyzcc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.18.', '������¥���', 3, null, '1.15.', null, null, null, null, 'jyzllc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.19.', '������ߺӴ�', 3, null, '1.15.', null, null, null, null, 'jyzghc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.2.', '�����������', 3, null, '1.15.', null, null, null, null, 'jyzswc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.20.', '���������´�', 3, null, '1.15.', null, null, null, null, 'jyzdlsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.21.', '������¹��', 3, null, '1.15.', null, null, null, null, 'jyzlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.22.', '��������ڴ�', 3, null, '1.15.', null, null, null, null, 'jyzggc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.23.', '�����򱱹���', 3, null, '1.15.', null, null, null, null, 'jyzbgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.24.', '�������ɽ��', 3, null, '1.15.', null, null, null, null, 'jyzhsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.25.', '��������ɽ��', 3, null, '1.15.', null, null, null, null, 'jyztsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.26.', '�������ִ�', 3, null, '1.15.', null, null, null, null, 'jyzhlc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.3.', '���������ϴ�', 3, null, '1.15.', null, null, null, null, 'jyzlxc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.4.', '���������̨��', 3, null, '1.15.', null, null, null, null, 'jyzljtc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.5.', '������ʯ���', 3, null, '1.15.', null, null, null, null, 'jyzspc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.6.', '�����������ݴ�', 3, null, '1.15.', null, null, null, null, 'jyzlwwc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.7.', '������˫¥����', 3, null, '1.15.', null, null, null, null, 'jyzslgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.8.', '����������', 3, null, '1.15.', null, null, null, null, 'jyzmgc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.15.9.', '��������ʼ��', 3, null, '1.15.', null, null, null, null, 'jyzzsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.', 'ԥ����', 2, null, '1.', null, null, null, null, 'ylz', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.10.', 'ԥ����إ�̴�', 3, null, '1.2.', null, null, null, null, 'ylzepc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.11.', 'ԥ��������կ��', 3, null, '1.2.', null, null, null, null, 'ylzxzzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.13.', 'ԥ������δ�', 3, null, '1.2.', null, null, null, null, 'ylzzzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.14.', 'ԥ���������', 3, null, '1.2.', null, null, null, null, 'ylznxc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.16.', 'ԥ������կ��', 3, null, '1.2.', null, null, null, null, 'ylzwzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.17.', 'ԥ�����Լ����', 3, null, '1.2.', null, null, null, null, 'ylzzjdc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.18.', 'ԥ�����������', 3, null, '1.2.', null, null, null, null, 'ylzwwsc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.19.', 'ԥ����կ��', 3, null, '1.2.', null, null, null, null, 'ylzjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.20.', 'ԥ������Ǵ�', 3, null, '1.2.', null, null, null, null, 'ylzjxcc', null, null, null, null, null);
commit;
prompt 300 records committed...
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.21.', 'ԥ�����Լ�ׯ��', 3, null, '1.2.', null, null, null, null, 'ylzzjzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.22.', 'ԥ������կ��', 3, null, '1.2.', null, null, null, null, 'ylzrzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.23.', 'ԥ����կ��', 3, null, '1.2.', null, null, null, null, 'ylzfzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.24.', 'ԥ�����կ��', 3, null, '1.2.', null, null, null, null, 'ylzczc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.25.', 'ԥ��������կ��', 3, null, '1.2.', null, null, null, null, 'ylznzzc', null, null, null, null, null);
insert into BSS_SYS_AREA (areaid, areaname, arealevel, areafullname, parentid, shortname, isunit, lastupdate, yzcode, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1.2.26.', 'ԥ�����կ��', 3, null, '1.2.', null, null, null, null, 'ylzhzc', null, null, null, null, null);
commit;
prompt 306 records loaded
prompt Loading BSS_SYS_DEPLOYNODE...
insert into BSS_SYS_DEPLOYNODE (nodeid, name, sysid, url, icon, showorder, vchar1, vchar6, vchar2, vchar3, vchar4, vchar5)
values ('1', '������ҩƷ���вɹ�ϵͳ', '2', 'http://', 'image/icons/server.png', 1, null, null, null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading BSS_SYS_LOG...
prompt Table is empty
prompt Loading BSS_SYS_MODULE...
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1EDA6EC82D604C96BCB794FC8A2EDCC6', '2', 'ͳ�Ʒ���', '0', null, null, 5, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('CE05693B089C4E7B9BEE4805F0DB126B', '2', '�û�����', '0', null, null, 6, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('68A8C6C5DCDE4C4C9C1F33326DC33533', '2', '�ල��λά��', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/userjdquery.action', null, 1, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('21119058662343958E4D2DFD797A2C0D', '2', 'ҽԺά��', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/useryyquery.action', null, 2, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A960E8CEF2794F3094FCC3D7E251EC79', '2', '��Ӧ��ά��', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/usergysquery.action', null, 3, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('3072B118C1C54B02876B1A8252260765', '2', '����', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/sysuserquery.action', null, 4, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('4BCD34C8A6A3437A865469C985D63627', '2', '����Ŀ¼����', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/gysypmlcontrolquery.action', null, 5, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('D9D57D7AF2D842089C03C987503F89A3', '2', '�ɹ���ά��', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdmanager.action', null, 2, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1555C29C58D543A0A1B5FB98396F0B99', '2', '�ɹ������', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdreview.action', null, 3, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('99B1C9FADE34488281443EE94FF64719', '2', 'ģ���������', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/modulelist.action', null, 2, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('C8EF4E9BF6B245A68C9B87BAA2CEFD74', '2', '��ɫ����', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/rolelist.action', null, 3, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('ABA86FC23E1E4874994093E2C28D9105', '2', '�����ֵ�����', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/dictmanager.action', null, 4, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A3337CF0A3524E18A2154BD36A42C981', '2', 'ϵͳ��������', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/basicinfo.action', null, 5, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('ADF33CF8559E4F80A6403B270D49A52C', '2', 'ҩƷĿ¼��ѯ', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/ypxxquery.action', null, 2, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('23680783880C44B5BCEC75B6C042D57C', '2', '�ɹ�����ѯ', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdlist.action', null, 4, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('FD13C9EDAD50481F9F4C3D6C3CC9E28D', '2', '�ɹ�������', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgddispose.action', null, 5, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('5DEF0BD1E6414A899EE7FC0212637EAE', '2', '�ɹ����', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdrkquery.action', null, 6, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('827309AD0F6B483C899B962BD25E6D42', '2', '�˻���ά��', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythdmanager.action', null, 2, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('8A3AD90CAC0041A9BCD99CBF0CD221E4', '2', '�˻�����ѯ', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythdlist.action', null, 4, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('5067F9E2580B43EA9A4F7CA16A0F3F1D', '2', '�˻�������', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythddispose.action', null, 5, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('E6F1EED4BCA44B618C38838862B7BF98', '2', '�˻�������', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythdadd.action', null, 1, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('47CBF626B3124EA08ABE86B49B89166A', '2', '������ҩƷĿ¼ά��', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/gysypmlquery.action', null, 3, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('F17E3A1C73BE4F8EA92A9D812555B05F', '2', 'ϵͳ����', '0', null, null, 7, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('2035CD3FA7D34FD58F69CD16CA86BCB1', '2', '�������', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/arealist.action', null, 1, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A515189189D7416CBD82FBF6A345F6B2', '2', '�ɹ�������', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdadd.action', null, 1, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('83F276069EEE46D88A9828F894D1338E', '2', 'ҽԺҩƷĿ¼ά��', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/yyypmlquery.action', null, 4, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('8BC194996994404A8A0143FA66C97740', '2', '���㵥����', '0', null, null, 4, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('289EC81D4EB943FBA46989DF42E674F3', '2', 'ҩƷĿ¼', '0', null, null, 1, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('3C3080C4A6DA410FB2E050FD9EA135EF', '2', '�ɹ�������', '0', null, null, 2, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('8D7A81697FCD4680A2B200C1FB355D5F', '2', 'ҩƷĿ¼ά��', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/ypxxmanager.action', null, 1, '1', null, null, null, null, null, null);
insert into BSS_SYS_MODULE (moduleid, sysid, name, parentid, url, icon, showorder, isused, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('DD50B9E62C374A6D9095ACF907D9967D', '2', '�˻�������', '0', null, null, 3, '1', null, null, null, null, null, null);
commit;
prompt 31 records loaded
prompt Loading BSS_SYS_OPERATE...
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('CB864D89562D47BC980F39472869B469', '�ල��λ��ѯ��ʾ', null, 'user/userjdquery.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('740A9F73F173414B8393AC1FB042DEBF', '�ල��λ��ѯ���', null, 'user/userjdquery_result.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('3525DE239ABD4838B9BBFF414007575F', '�ල��λ��Ϣ�༭', null, 'user/userjdedit.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('22E400771F624B418B2007B47B18E22B', '�ල��λ��Ϣ����', null, 'user/userjdsave.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('33DF45BC52124A97B9EDEAB3E0F22FDC', '�ල��λ��Ϣɾ��', null, 'user/userjddel.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('0CBA138A6F254129B3875637CF3BEFA6', 'ҽԺ��Ϣ��ѯ��ʾ', null, 'user/useryyquery.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('6EF1567D7E6A47BB97B5808581BD2BB5', 'ҽԺ��Ϣ��ѯ���', null, 'user/useryyquery_result.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('29E8145A6A0E4729B916D2B06D7D88FC', 'ҽԺ��Ϣ�༭', null, 'user/useryyedit.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('017A3CCB9F5C4B2AA716EEF99786972A', 'ҽԺ��Ϣ����', null, 'user/useryysave.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A7AD7A3A1AD449958902D53C98701060', 'ҽԺ��Ϣɾ��', null, 'user/useryydel.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('BC10F83B3D734691BAA18F9248410815', '��Ӧ�̲�ѯ��ʾ', null, 'user/usergysquery.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('2051E5FBB6634FEBBBFAAFB055C959F0', '��Ӧ�̲�ѯ���', null, 'user/usergysquery_result.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A5AE3357D17B4BEAB89C4242BB65BFCC', '��Ӧ����Ϣ�༭', null, 'user/usergysedit.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('5C4CDE42A515401DB73417DB01C3339D', '��Ӧ����Ϣ����', null, 'user/usergyssave.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('DA5DCF7B3B0D477E9F614F60635BC9EE', '��Ӧ����Ϣɾ��', null, 'user/usergysdel.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('9CC6579157DA4DD5AE60C5F0AFA2C83A', 'ϵͳ�û���ѯ��ʾ', null, 'user/sysuserquery.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('982FB20F0A6744C7A681CBE9E8B39951', 'ϵͳ�û���ѯ���', null, 'user/sysuserquery_result.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('F575C2308D4D4DAAA2C599D6D62D8F9B', 'ϵͳ�û���Ϣ�༭', null, 'user/sysuseredit.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('186597EAF3C4425AB5763ABED69B5CB9', 'ϵͳ�û���Ϣ����', null, 'user/sysusersave.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('73089A68B14A471A8336FAEE5593B1EC', 'ϵͳ�û���Ϣɾ��', null, 'user/sysuserdel.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('739E8A3131FA42DC932B46AEA27BFA41', 'ҩƷ��Ϣ����', null, 'ypml/ypxximport.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('2B7A6A42A7BB41DEB0217E45C07FD7A0', 'ҩƷ��Ϣ�����ύ', null, 'ypml/ypxximportsubmit.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('8ECD01A8501048449A0B6E466560B472', 'ҩƷ��Ϣ����', null, 'ypml/ypxxexport.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('65949AF5409040569DBB25FCB6A31304', 'ҩƷ��Ϣɾ��', null, 'ypml/ypxxdel.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 6, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('E8ECCF61BF9441CD84C5AF6012D91D38', 'ҩƷ��Ϣ�޸�', null, 'ypml/ypxxedit.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 7, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('02DDC4B1AF7D4E318C8BBDB722990CB0', 'ҩƷ��Ϣ����', null, 'ypml/ypxxsave.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 8, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('C2C71210BB4D4D45A7F1952369C42925', '����Ŀ¼Ŀ¼��ѯ', null, 'ypml/gysypmlcontrolquery.action', '4BCD34C8A6A3437A865469C985D63627', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('71BFC77E64F340B38B33DF5CFAE034EE', '����Ŀ¼��ѯ�����', null, 'ypml/gysypmlquery_result.action', '4BCD34C8A6A3437A865469C985D63627', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('0B98189F25FA48078F924CC273A38466', '����Ŀ¼�����ύ', null, 'ypml/gysypmlcontrolsubmit.action', '4BCD34C8A6A3437A865469C985D63627', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('5001872103EA479494FF3F55ABA15FD1', '�ɹ����ύ', null, 'cgd/yycgdsubmit.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 11, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('B197355F286B4C61A850E372D7A67101', '�ɹ�ҩƷ��Ϣ����', null, 'cgd/yycgdmxsave.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 12, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('DF62946CB2384244AF031090D0C4BD2B', '�ɹ������ҳ��', null, 'cgd/yycgdreview.action', '1555C29C58D543A0A1B5FB98396F0B99', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('8F6865A50A0C4F638E8064F9DD07E69E', '�ɹ�������б����ݼ�', null, 'cgd/yycgdreview_result.action', '1555C29C58D543A0A1B5FB98396F0B99', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('D8B029F8323D43D5BB73822216E70075', '�ɹ�������ύ', null, 'cgd/yycgdreviewsubmit.action', '1555C29C58D543A0A1B5FB98396F0B99', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('3A117DC8B8AA4D1A901EB5FF5DC42329', 'ϵͳ��������', null, 'sysconfig/basicinfo.action', 'A3337CF0A3524E18A2154BD36A42C981', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('8AF71BD2BAB34961B7E1115F7A6E6B42', '�����ֵ�����', null, 'sysconfig/dictmanager.action', 'ABA86FC23E1E4874994093E2C28D9105', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('5E0F6CBBF0C0420C8FB2158EDB2D0B30', '��ɫ����', null, 'sysconfig/rolelist.action', 'C8EF4E9BF6B245A68C9B87BAA2CEFD74', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('55F8F56A208749DF90A5974EBEC79D08', 'ģ���������', null, 'sysconfig/modulelist.action', '99B1C9FADE34488281443EE94FF64719', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('CE202E1F99C342FD838E4D05BCDAFFBE', 'ҩƷĿ¼��ѯ', null, 'ypml/ypxxquery.action', 'ADF33CF8559E4F80A6403B270D49A52C', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('9CC9B54E697A4F23A5FB75474134F2FD', 'ҩƷ��Ϣ��ѯ���', null, 'ypml/ypxxquery_result.action', 'ADF33CF8559E4F80A6403B270D49A52C', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('16201FA4BCB14180B4D453A9D2923254', 'ҩƷĿ¼����', null, 'ypml/ypxxexport.action', 'ADF33CF8559E4F80A6403B270D49A52C', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('950F747B8DFB46588494CAE581EA29D1', '�ɹ�����ѯҳ��', null, 'cgd/yycgdlist.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('B632E122738E4BAC9871699D2ECD9944', '�ɹ�����ѯ�����', null, 'cgd/yycgdlist_result.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('13C4C7C68B314AECA4B18D03757C9D83', '�ɹ�����ϸ��Ϣ', null, 'cgd/yycgdinfo.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('57E7F16B5F2641DCABFC74D9CA839339', '�ɹ�����Ϣ�ɹ�ҩƷ��Ϣ', null, 'cgd/yycgdlist_cgdmxresult.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('697D544A6C974EA8882C13ED4755DEFF', '�ɹ�������ҳ��', null, 'cgd/yycgddispose.action', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('50CCDA1F84C94A539A76C7846A990E08', '�ɹ��������ѯ�����', null, 'cgd/yycgddispose_result.action', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('6AAD7C364A874C0D9C4CFBE53058ACD5', '�ɹ��������ύ', null, 'cgd/yycgddispose_submit.action', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('E6CACE75A0534A8EBC9C8CD8D6A95B69', '�ɹ�������ѯҳ��', null, 'cgd/yycgdrkquery.action', '5DEF0BD1E6414A899EE7FC0212637EAE', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('90383C65C56341E591F4542DB6297946', '�ɹ�������ѯ�����', null, 'cgd/yycgdrkquery_result.action', '5DEF0BD1E6414A899EE7FC0212637EAE', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('9104D1033B08492CBDDC686E405743AB', '�ɹ�������ύ', null, 'cgd/yycgdrk_submit.action', '5DEF0BD1E6414A899EE7FC0212637EAE', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('4F5312E270DA43AE9E16C6A0A5EFA5CD', '�˻����ύ', null, 'thd/yythdsubmit.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 11, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('31EBAA2FFF0D4510B7CC1DC7E5A039B3', '�˻�ҩƷ��Ϣ����', null, 'thd/yythdmxsave.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 12, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('4D961A7C6983498CBC28E750561ABC1F', '�˻����޸�ҳ��', null, 'thd/yythdedit.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('81EA639E5AA6489291851396F93C0BED', '�˻���Ϣ����', null, 'thd/yythdsave.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('02803DEC12EA47A1A53F6D6D69D6962B', '�˻�ҩƷ��ϸ��ѯ', null, 'thd/yythdedit_thdmxresult.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('F44970965F2A48E1A741526B961C4667', '�˻�ҩƷ���ҳ��', null, 'thd/yythdmxadd.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('095BB5715AFD490797FBF9AA84DD6B44', '�˻�ҩƷ��Ӳ�ѯ�б�', null, 'thd/yythdmxadd_result.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('E76435BFCC594E9FAC38C34513A4AB5B', '�˻�ҩƷ����ύ', null, 'thd/yythdmxaddsubmit.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 6, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('21A77A7E78E1407FAC5D007BDFBD0CBC', '�˻�ҩƷɾ��', null, 'thd/yythdmxdelete.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 7, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('0BF1067911534A40B20701034B43F133', '�˻����ύ', null, 'thd/yythdsubmit.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 11, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A3CCEB5FD0B4496CB51229284CEAC1F6', '�˻�ҩƷ��Ϣ����', null, 'thd/yythdmxsave.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 12, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('89576E891326448E968069B85E98F2A9', '�˻�������ҳ��', null, 'thd/yythdedit.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('59F5ECA5BE204C9E918609D921579DB7', '�˻�����Ϣ����', null, 'thd/yythdsave.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('735F5FEC17D54DE3A6E92E714599CE0C', '�˻�ҩƷ��ϸ��ѯ', null, 'thd/yythdedit_thdmxresult.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('0ED046E492AE4AAA873395C1952EE73D', '�˻�ҩƷ���ҳ��', null, 'thd/yythdmxadd.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A3E051A78F1342A98B9BC711EC991F75', '�˻�ҩƷ��Ӳ�ѯ�б�', null, 'thd/yythdmxadd_result.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('CF76021FC84E40CA8D5AFD359C6DF4EC', '�˻�ҩƷ����ύ', null, 'thd/yythdmxaddsubmit.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 6, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('9B14D30AA25E4446AD0D70A324C8A024', '�˻�ҩƷɾ��', null, 'thd/yythdmxdelete.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 7, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('B04DB8E121F54BCD96332B89A2671F98', '�˻���ά���б�����', null, 'thd/yythdmanager_result.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 9, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('1C571D68DFDF42CDAB1E98F3AD3AB8D7', '�˻���ɾ��', null, 'thd/yythddelete.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 10, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('2E77D3CA9F644ADCB0EE1E649C90309C', '�˻���ά���б�ҳ��', null, 'thd/yythdmanager.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', 8, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('F2120F82FE15496C8FBD5680BBFFB83B', '�ɹ������ҳ��', null, 'cgd/yycgdadd.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 10, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('B5C9537B85B64CCCBA86FBC450EFFDBD', '�˻������ҳ��', null, 'thd/yythdadd.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', 10, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('401C9D20AF51446FB7CA12599FD2B721', '������ҩƷĿ¼��ѯҳ��', null, 'ypml/gysypmlquery.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('41E0B99157B345A8AAB48BC8A311F5D6', '������ҩƷĿ¼��ѯ�����', null, 'ypml/gysypmlquery_result.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('AC484F0BB6874B3E80459E389AD6101E', '������ҩƷĿ¼��Ӳ�ѯ', null, 'ypml/gysypmladdquery.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('4400226A6AEB473E84F93746A7AA3B13', '������ҩƷĿ¼��Ӳ�ѯ�����', null, 'ypml/gysypmladdquery_result.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A257547E0C674074A8A1272C8CE88BD3', '������ҩƷĿ¼����ύ', null, 'ypml/gysypmladd.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('F52A863928F14BAAAD7ACA0E6FBB5C24', '������ҩƷĿ¼ɾ��ҩƷ', null, 'ypml/gysypmldelete.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', 6, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('7EF85F0492CF4F6182E8BE1D9BE9EB63', '�ɹ����ύ', null, 'cgd/yycgdsubmit.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 11, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('4F62BA5DF09F41E7BC23D6CEFFC7449E', '�ɹ�ҩƷ��Ϣ����', null, 'cgd/yycgdmxsave.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 12, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('4A2F773CF7C547429662B45F36CB1041', '�ɹ�������ҳ��', null, 'cgd/yycgdedit.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('BCBF81C932534519B7873F0BDF57627D', '�ɹ�����Ϣ����', null, 'cgd/yycgdsave.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('61ECC8D2C03B45418112F6F9B001B9FC', '�ɹ�ҩƷ��ϸ��ѯ', null, 'cgd/yycgdedit_cgdmxresult.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('9CD7A694A6C247C296458C9AE3D2EAF0', '�ɹ�ҩƷ���ҳ��', null, 'cgd/yycgdmxadd.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('D557E2D6B7CE493BA92458324C30E81D', '�ɹ�ҩƷ��Ӳ�ѯ�б�', null, 'cgd/yycgdmxadd_result.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('2B6082CAB6654CC99F7CBD4C00A5E423', '�ɹ�ҩƷ����ύ', null, 'cgd/yycgdmxaddsubmit.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 6, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('FBE19E1B14E0401D8041205562FA94CC', '�ɹ�ҩƷɾ��', null, 'cgd/yycgdmxdelete.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 7, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('9F6371C8E8F04578B5773454C1145A8E', '�ɹ���ά���б�����', null, 'cgd/yycgdmanager_result.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 9, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('FC826CDE8D61447CB93A275F08346C55', '�ɹ���ɾ��', null, 'cgd/yycgddelete.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 10, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('03BBBFC85A184B44A76E801665AB1E4F', '�ɹ���ά���б�ҳ��', null, 'cgd/yycgdmanager.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', 8, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('7037AE4FE3DF463D90EDCFA14011E14D', '�����б�', null, 'sysconfig/arealist.action', '2035CD3FA7D34FD58F69CD16CA86BCB1', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('B8C30D5CF5DC457795DD882D023C7B86', 'ҽԺҩƷά����ѯҳ��', null, 'ypml/yyypmlquery.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('48F9622CFF79451C80EFD1108E7FCC57', 'ҽԺҩƷĿ¼��Ӳ�ѯ', null, 'ypml/yyypmladdquery.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('59408C7AB0EB497C9D2F9E010433EA92', 'ҽԺҩƷĿ¼ά����ѯ�����', null, 'ypml/yyypmlquery_result.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('D29D6E7F3AFA465B9454C7E8D029A438', 'ҽԺҩƷĿ¼��Ӳ�ѯ�����', null, 'ypml/yyypmladdquery_result.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('7D4707F40C8148778E2EB21540A02609', 'ҽԺҩƷĿ¼���ҩƷ', null, 'ypml/yyypmladd.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('97F15BD695C04E869AFBA20D40E974FB', 'ҽԺҩƷĿ¼ɾ��ҩƷ', null, 'ypml/yyypmldelete.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', 6, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('BD8D902F09E74E00881922C5AE03CEEF', '�ɹ����޸�ҳ��', null, 'cgd/yycgdedit.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 1, null, null, null, null, null, null);
commit;
prompt 100 records committed...
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A0A14FCC357B4343997600A713B26800', '�ɹ�����Ϣ����', null, 'cgd/yycgdsave.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 2, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A3D376C5164C49928C4A14435B7C477F', '�ɹ�ҩƷ��ϸ��ѯ', null, 'cgd/yycgdedit_cgdmxresult.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 3, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('2608A43FF97E4C68AA9E2B22B812F0C1', '�ɹ�ҩƷ���ҳ��', null, 'cgd/yycgdmxadd.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 4, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('465B9A59556C4AA4AD6AF82359A6723D', '�ɹ�ҩƷ��Ӳ�ѯ�б�', null, 'cgd/yycgdmxadd_result.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 5, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('3165EF94AB3640FF9CF56491DF6556AC', '�ɹ�ҩƷ����ύ', null, 'cgd/yycgdmxaddsubmit.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 6, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('8E8C68F6DFBF4AD2ADC7721931EA836F', '�ɹ�ҩƷɾ��', null, 'cgd/yycgdmxdelete.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', 7, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('40B7B26B791B48238333A6A19541F82B', 'ҩƷ��Ϣ��ѯ��ʾ', null, 'ypml/ypxxmanager.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 1, null, null, null, null, null, null);
insert into BSS_SYS_OPERATE (operateid, operatename, operatecode, method, moduleid, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('C0EBF32065474AE98C7F7CAC46F247D3', 'ҩƷ��Ϣ��ѯ���', null, 'ypml/ypxxquery_result.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', 2, null, null, null, null, null, null);
commit;
prompt 108 records loaded
prompt Loading BSS_SYS_ROLE...
insert into BSS_SYS_ROLE (roleid, rolename, roledes, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('511A6F41419949C38122A94310DADD14', '������', null, null, null, null, null, null, null);
insert into BSS_SYS_ROLE (roleid, rolename, roledes, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('58A90BFF6BFF461790E2FF034252C91D', '����Ժ', null, null, null, null, null, null, null);
insert into BSS_SYS_ROLE (roleid, rolename, roledes, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('DD5E37F61B4D4D79BE84C3B8FCEDDAF0', '��Ӧ��', null, null, null, null, null, null, null);
insert into BSS_SYS_ROLE (roleid, rolename, roledes, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('D20A980F6BF54E8093B71DF096341236', 'ϵͳ����Ա', null, null, null, null, null, null, null);
insert into BSS_SYS_ROLE (roleid, rolename, roledes, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('A1657D9C6C7D47B59A99132A5ACE1A2E', '������', null, null, null, null, null, null, null);
commit;
prompt 5 records loaded
prompt Loading BSS_SYS_ROLEMODULE...
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('C24923A99C2D41E7BAC90B93DB8AABE9', 'EC8097C300874B938CE540F8535A908D', 'F17E3A1C73BE4F8EA92A9D812555B05F', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('8CFE8501E6894E8FA23F06DB7DDBD326', 'EC8097C300874B938CE540F8535A908D', '2035CD3FA7D34FD58F69CD16CA86BCB1', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('2AFA6A94726C4455AE7846BFCF89A0A8', 'EC8097C300874B938CE540F8535A908D', '99B1C9FADE34488281443EE94FF64719', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('348DBD4DF74D4D78A3DA1C7F15A51303', 'EC8097C300874B938CE540F8535A908D', 'C8EF4E9BF6B245A68C9B87BAA2CEFD74', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('BA3DC9B797564D16B2E23D606EA60553', 'EC8097C300874B938CE540F8535A908D', 'ABA86FC23E1E4874994093E2C28D9105', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('62D8CB9DB06545C3B830F91EB6D4860D', 'EC8097C300874B938CE540F8535A908D', 'A3337CF0A3524E18A2154BD36A42C981', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('91A53FAB52374942BB0A4A15420013CD', '972BE9D1415A4A09A522417FA6A8F26A', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('C8BB32E48F054B24B302938AFD4ADBF0', '972BE9D1415A4A09A522417FA6A8F26A', '8D7A81697FCD4680A2B200C1FB355D5F', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('8BE21E2EEBAD4E078339BB159CA30460', '972BE9D1415A4A09A522417FA6A8F26A', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('F7601D1439214858907FE1791F57DC22', '972BE9D1415A4A09A522417FA6A8F26A', '4BCD34C8A6A3437A865469C985D63627', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('FB82596DE5734399A164805456C34513', '00EC021A8D4B4E7F8D240DACB09D9F88', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('F61ED32108CA4F09B02437DD3467E062', '00EC021A8D4B4E7F8D240DACB09D9F88', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('9B3430FD2EFA4898BDB2396F797D43EF', '00EC021A8D4B4E7F8D240DACB09D9F88', '47CBF626B3124EA08ABE86B49B89166A', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('65C574DF885C4ED0828930E6D6885105', '00EC021A8D4B4E7F8D240DACB09D9F88', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('F55616D36E1C4508A49769D08BB25956', '00EC021A8D4B4E7F8D240DACB09D9F88', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('6D8C32D26455457996B04EDEEAD46EE4', 'F7BF0971EC1440B5A93418EEEC86EA27', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('D756517F7AC041A080E1AC2A0C1B7496', 'F7BF0971EC1440B5A93418EEEC86EA27', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('B98EFD0FE1214CFEBD73C7C9BB4F666F', 'F7BF0971EC1440B5A93418EEEC86EA27', '83F276069EEE46D88A9828F894D1338E', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('B86303144ACF4379AA8A1C91F4EF98C1', 'F7BF0971EC1440B5A93418EEEC86EA27', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('9D0A82164FD0470CB582EFD686F6A673', 'F7BF0971EC1440B5A93418EEEC86EA27', 'A515189189D7416CBD82FBF6A345F6B2', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('63C00AA55724477DBEF8DE36BD74A9F1', 'F7BF0971EC1440B5A93418EEEC86EA27', 'D9D57D7AF2D842089C03C987503F89A3', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('18BB5C984C714EDD95DA6D3205BCB72E', 'F7BF0971EC1440B5A93418EEEC86EA27', '23680783880C44B5BCEC75B6C042D57C', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('5831B1525B154C7EA4D3434D097DE4FF', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('17B84C67DBCA4235810D87E63F9C1536', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('59F315D6EC8046C08A1960CDD86029F0', '972BE9D1415A4A09A522417FA6A8F26A', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('6726CD178B1F4261BDF061DE6DE5347C', '972BE9D1415A4A09A522417FA6A8F26A', '23680783880C44B5BCEC75B6C042D57C', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('66F822BC4A824A0D92938D31E5B692EF', '972BE9D1415A4A09A522417FA6A8F26A', 'CE05693B089C4E7B9BEE4805F0DB126B', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('3030CE7CE5B641798A9D8C9627179A63', '972BE9D1415A4A09A522417FA6A8F26A', '68A8C6C5DCDE4C4C9C1F33326DC33533', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('342B1A0DCA6B4F76A67A1338F518AF28', '972BE9D1415A4A09A522417FA6A8F26A', '21119058662343958E4D2DFD797A2C0D', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('679E8DDAC68A48D39B28C50F02DF846D', '972BE9D1415A4A09A522417FA6A8F26A', 'A960E8CEF2794F3094FCC3D7E251EC79', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('BFAE3CD5FF084F54BF5ED455C1242428', '972BE9D1415A4A09A522417FA6A8F26A', '3072B118C1C54B02876B1A8252260765', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('889B0AF13B194C11AA3336358220659D', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('17D6F85E666648A5A2359CC6AE969EC6', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '1555C29C58D543A0A1B5FB98396F0B99', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('F84C600EBD564072BB12DD4B1AF7DA67', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '23680783880C44B5BCEC75B6C042D57C', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('B14249F72CAB4B29BD8101C551F5741E', 'F7BF0971EC1440B5A93418EEEC86EA27', '5DEF0BD1E6414A899EE7FC0212637EAE', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('5A3175834DE2495E8FE88E92EFA0A930', 'F7BF0971EC1440B5A93418EEEC86EA27', 'DD50B9E62C374A6D9095ACF907D9967D', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('0A965B0B7FF94B6FA4A622C723793712', 'F7BF0971EC1440B5A93418EEEC86EA27', 'E6F1EED4BCA44B618C38838862B7BF98', null, null, null, null);
insert into BSS_SYS_ROLEMODULE (rmid, rnid, moduleid, vchar1, vchar2, vchar3, vchar4)
values ('573A3DDB601C431DAF350EA59F7F3562', 'F7BF0971EC1440B5A93418EEEC86EA27', '827309AD0F6B483C899B962BD25E6D42', null, null, null, null);
commit;
prompt 38 records loaded
prompt Loading BSS_SYS_ROLENODE...
insert into BSS_SYS_ROLENODE (rnid, rsid, nodeid, vchar1, vchar2, vchar3, vchar4)
values ('EC8097C300874B938CE540F8535A908D', '255D228323B04008821B21B80E4C27A2', '1', null, null, null, null);
insert into BSS_SYS_ROLENODE (rnid, rsid, nodeid, vchar1, vchar2, vchar3, vchar4)
values ('00EC021A8D4B4E7F8D240DACB09D9F88', '1BDB977EC6A24AD0ADFCA89805ACE343', '1', null, null, null, null);
insert into BSS_SYS_ROLENODE (rnid, rsid, nodeid, vchar1, vchar2, vchar3, vchar4)
values ('04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '0FD907D8021D4EC8992F2E4FA3FFF670', '1', null, null, null, null);
insert into BSS_SYS_ROLENODE (rnid, rsid, nodeid, vchar1, vchar2, vchar3, vchar4)
values ('F7BF0971EC1440B5A93418EEEC86EA27', 'FEF4A9CC211B47BEAE79E81BEB39F6F9', '1', null, null, null, null);
insert into BSS_SYS_ROLENODE (rnid, rsid, nodeid, vchar1, vchar2, vchar3, vchar4)
values ('972BE9D1415A4A09A522417FA6A8F26A', 'BCB6282AB9B9402EA43B5943310B9454', '1', null, null, null, null);
commit;
prompt 5 records loaded
prompt Loading BSS_SYS_ROLEOPERATE...
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('8984CCDC85E54ECAA4023AA1BC47F1EC', '8CFE8501E6894E8FA23F06DB7DDBD326', '7037AE4FE3DF463D90EDCFA14011E14D', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('FC0C67FFA76E4E86B49A35B6EE8D8306', '2AFA6A94726C4455AE7846BFCF89A0A8', '55F8F56A208749DF90A5974EBEC79D08', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('AA7D4E00F93C4CD2BAEF4E70EDC11B6E', '348DBD4DF74D4D78A3DA1C7F15A51303', '5E0F6CBBF0C0420C8FB2158EDB2D0B30', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('095450856ED7444D956DDC7A99710BD4', 'BA3DC9B797564D16B2E23D606EA60553', '8AF71BD2BAB34961B7E1115F7A6E6B42', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('7C0CC3AD511C4B958824A90DA3D59F12', '62D8CB9DB06545C3B830F91EB6D4860D', '3A117DC8B8AA4D1A901EB5FF5DC42329', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('DCB237AE7E7646128ED4536A6CD93AA5', 'C8BB32E48F054B24B302938AFD4ADBF0', '40B7B26B791B48238333A6A19541F82B', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('3C66B66DF66C46CE97BAAA621D618F17', 'F61ED32108CA4F09B02437DD3467E062', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('83586AE2A7354D4E8C7C54A645DFBDE7', 'D756517F7AC041A080E1AC2A0C1B7496', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('91E7AEBC87D64F77BC624C2118DF7C38', 'D756517F7AC041A080E1AC2A0C1B7496', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('EF5193D521694B8B8787C50446ECAC7E', 'D756517F7AC041A080E1AC2A0C1B7496', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('98D42C1784BF4F9FB8797D56D7AA5E1A', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', 'B8C30D5CF5DC457795DD882D023C7B86', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('4E31822ED994459A947EA559697F2CAD', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '59408C7AB0EB497C9D2F9E010433EA92', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('CE7D4AC49B7F4348A35A7C3777E63FBA', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '48F9622CFF79451C80EFD1108E7FCC57', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D9475055A44F478EA1FF6C801A70E9AA', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', 'D29D6E7F3AFA465B9454C7E8D029A438', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('A22BBBEFCD8246E0AE6DE3D2EA0ADFEA', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '7D4707F40C8148778E2EB21540A02609', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('10B008461E9949609BE82F83B0C9D6BD', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '97F15BD695C04E869AFBA20D40E974FB', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('512D3EC379E04E5AA15255D4692A6ADD', '9D0A82164FD0470CB582EFD686F6A673', 'BD8D902F09E74E00881922C5AE03CEEF', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('C25AD77FC40A4438A625A0FF556C163B', '9D0A82164FD0470CB582EFD686F6A673', 'A0A14FCC357B4343997600A713B26800', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('42E6BD98347F4E00831BA8E6C6E3FC71', '9D0A82164FD0470CB582EFD686F6A673', 'A3D376C5164C49928C4A14435B7C477F', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('9FA7DFAE12CE4957B38393200B255C1B', '9D0A82164FD0470CB582EFD686F6A673', '2608A43FF97E4C68AA9E2B22B812F0C1', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('88A29DF2E4594C998A47FEB585599E29', '9D0A82164FD0470CB582EFD686F6A673', '465B9A59556C4AA4AD6AF82359A6723D', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('817A15D3E014499F85E8266BEB91F3B5', '9D0A82164FD0470CB582EFD686F6A673', '3165EF94AB3640FF9CF56491DF6556AC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('68114792B55E473DADC5CB3C8BAEA5F1', '9D0A82164FD0470CB582EFD686F6A673', '8E8C68F6DFBF4AD2ADC7721931EA836F', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D45EFD28E9A347D48835725F56831524', '9D0A82164FD0470CB582EFD686F6A673', 'F2120F82FE15496C8FBD5680BBFFB83B', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D18B093F33A04C8BA52F946B562B7576', '9D0A82164FD0470CB582EFD686F6A673', '5001872103EA479494FF3F55ABA15FD1', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('972ACF7FB7C045BBACD2E3DF46FE0EE7', '9D0A82164FD0470CB582EFD686F6A673', 'B197355F286B4C61A850E372D7A67101', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('57A4627FEC2941B3BAFD14C32ECD472A', '63C00AA55724477DBEF8DE36BD74A9F1', '4A2F773CF7C547429662B45F36CB1041', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('1A80E2A7933D4292B071935534D4BD47', '63C00AA55724477DBEF8DE36BD74A9F1', 'BCBF81C932534519B7873F0BDF57627D', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('68FE2352170E49A485DDCF079AEA8965', '63C00AA55724477DBEF8DE36BD74A9F1', '61ECC8D2C03B45418112F6F9B001B9FC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('B1A99BB592D54090B72191EB413DD6BA', '63C00AA55724477DBEF8DE36BD74A9F1', '9CD7A694A6C247C296458C9AE3D2EAF0', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('DE3825B0A5944F8AB22DA6F87ED00A87', '63C00AA55724477DBEF8DE36BD74A9F1', 'D557E2D6B7CE493BA92458324C30E81D', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('9C1786D5778B483C86929218EBB2B337', '63C00AA55724477DBEF8DE36BD74A9F1', '2B6082CAB6654CC99F7CBD4C00A5E423', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('1574C79FC83B4C9CB6C835EDEF0FA4E7', '63C00AA55724477DBEF8DE36BD74A9F1', 'FBE19E1B14E0401D8041205562FA94CC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('BAFAD9410010469FA1B80AB6DC74B973', '63C00AA55724477DBEF8DE36BD74A9F1', '03BBBFC85A184B44A76E801665AB1E4F', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('B74688BE872E49878E1CA99748C45606', '63C00AA55724477DBEF8DE36BD74A9F1', '9F6371C8E8F04578B5773454C1145A8E', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('350B4BB3B72446299F0466E5153B9DC4', '63C00AA55724477DBEF8DE36BD74A9F1', 'FC826CDE8D61447CB93A275F08346C55', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('F65BF7C3C05F4498AE2F43A6F482E1BA', '63C00AA55724477DBEF8DE36BD74A9F1', '7EF85F0492CF4F6182E8BE1D9BE9EB63', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('B6D9CB676FCD469283881BA5A62C1BF7', '63C00AA55724477DBEF8DE36BD74A9F1', '4F62BA5DF09F41E7BC23D6CEFFC7449E', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('7CAABA1B7952480D9567890F59B8D3C1', 'C8BB32E48F054B24B302938AFD4ADBF0', 'C0EBF32065474AE98C7F7CAC46F247D3', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D844E5FA67F84E3581354F631A571C15', 'C8BB32E48F054B24B302938AFD4ADBF0', '739E8A3131FA42DC932B46AEA27BFA41', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('023043D8C57A46B8A847D699E323AB75', 'C8BB32E48F054B24B302938AFD4ADBF0', '2B7A6A42A7BB41DEB0217E45C07FD7A0', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('C12B6D5F4D854BE083AF9A7AB5EDD64F', 'C8BB32E48F054B24B302938AFD4ADBF0', '8ECD01A8501048449A0B6E466560B472', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D4F27B0B928A45F2B9511CD0BC3C1E99', 'C8BB32E48F054B24B302938AFD4ADBF0', '65949AF5409040569DBB25FCB6A31304', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('CC42E1A0123D468782D24F044F0A3619', 'C8BB32E48F054B24B302938AFD4ADBF0', 'E8ECCF61BF9441CD84C5AF6012D91D38', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('45E3E81560D74DA0803B400A71BDDA2E', 'C8BB32E48F054B24B302938AFD4ADBF0', '02DDC4B1AF7D4E318C8BBDB722990CB0', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('C8F2138C858C44828BF6753A0D72B4E7', '8BE21E2EEBAD4E078339BB159CA30460', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('65B023E8202A4B88B34F45E7F17254AB', '8BE21E2EEBAD4E078339BB159CA30460', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('E284C2041A114158A6040976D073C4DC', '8BE21E2EEBAD4E078339BB159CA30460', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('60836E6CCDAF407F9D75718FDFD3E99B', 'F7601D1439214858907FE1791F57DC22', 'C2C71210BB4D4D45A7F1952369C42925', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('5B679FD5692246CC80A718052864E315', 'F7601D1439214858907FE1791F57DC22', '71BFC77E64F340B38B33DF5CFAE034EE', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('4FCD85EEE69242C1A36C61A38DE5D804', 'F7601D1439214858907FE1791F57DC22', '0B98189F25FA48078F924CC273A38466', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('4C055FD2C4B342228E1DF66FCC6F87D8', '6726CD178B1F4261BDF061DE6DE5347C', '950F747B8DFB46588494CAE581EA29D1', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('492501DE8DAE4AB58BF0B5E9EB96A0AB', '6726CD178B1F4261BDF061DE6DE5347C', 'B632E122738E4BAC9871699D2ECD9944', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('860779D17AC945F0A402DCA2204805B7', '6726CD178B1F4261BDF061DE6DE5347C', '13C4C7C68B314AECA4B18D03757C9D83', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('1A458CE366684FF297BC9E2F339FCBDB', '6726CD178B1F4261BDF061DE6DE5347C', '57E7F16B5F2641DCABFC74D9CA839339', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('FBBEB1D6A34647F4BFD10013597D15AF', '3030CE7CE5B641798A9D8C9627179A63', 'CB864D89562D47BC980F39472869B469', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('A9B2A268C6194E7A856A1891BC2AFFDA', '3030CE7CE5B641798A9D8C9627179A63', '740A9F73F173414B8393AC1FB042DEBF', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('DF9935333CE1413A82B03D18B3192D9B', '3030CE7CE5B641798A9D8C9627179A63', '3525DE239ABD4838B9BBFF414007575F', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('1FF47ACD25EE44E38762109CBF76F88A', '3030CE7CE5B641798A9D8C9627179A63', '22E400771F624B418B2007B47B18E22B', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('3E72AB0CB49147A3AB19EEA592F6FB4A', '3030CE7CE5B641798A9D8C9627179A63', '33DF45BC52124A97B9EDEAB3E0F22FDC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('AE7D55825A2D4B288E37A46545C5D23E', '342B1A0DCA6B4F76A67A1338F518AF28', '0CBA138A6F254129B3875637CF3BEFA6', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('8B864CE2D2D5460BA7CDB01CBE0B9B20', '342B1A0DCA6B4F76A67A1338F518AF28', '6EF1567D7E6A47BB97B5808581BD2BB5', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D2D048E17EA34515871DE890F39350A3', '342B1A0DCA6B4F76A67A1338F518AF28', '29E8145A6A0E4729B916D2B06D7D88FC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('03E73405940E4D1C952567306E0B62D3', '342B1A0DCA6B4F76A67A1338F518AF28', '017A3CCB9F5C4B2AA716EEF99786972A', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('7431FD048E7A4F069A4534F1E2BDE599', '342B1A0DCA6B4F76A67A1338F518AF28', 'A7AD7A3A1AD449958902D53C98701060', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('E97809BD41CA4A17A5B79474AA0571A2', '679E8DDAC68A48D39B28C50F02DF846D', 'BC10F83B3D734691BAA18F9248410815', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('89DA81BD1F1E4397B37C7E3E0A14D76D', '679E8DDAC68A48D39B28C50F02DF846D', '2051E5FBB6634FEBBBFAAFB055C959F0', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('98CFF767795D49B6B094B4224A4C3F59', '679E8DDAC68A48D39B28C50F02DF846D', 'A5AE3357D17B4BEAB89C4242BB65BFCC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('765B6561D3D045F3B1AC93ADFAD94786', '679E8DDAC68A48D39B28C50F02DF846D', '5C4CDE42A515401DB73417DB01C3339D', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('7C0682255858404F96F18E12EE9D9405', '17B84C67DBCA4235810D87E63F9C1536', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('8C5B5B87320C4F0C91487E5F5F4A31D4', 'F61ED32108CA4F09B02437DD3467E062', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('4E9ED7952FCC49F789788B4AC459CB14', 'F61ED32108CA4F09B02437DD3467E062', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('695FE5C4EE1A4A97B534CE794672ACCE', '9B3430FD2EFA4898BDB2396F797D43EF', '401C9D20AF51446FB7CA12599FD2B721', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('A6F90045E7B44E7CADF6FB4816859DA0', '9B3430FD2EFA4898BDB2396F797D43EF', '41E0B99157B345A8AAB48BC8A311F5D6', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('BC096225408B47E7836A8FEA6C1287C3', '17B84C67DBCA4235810D87E63F9C1536', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('8D7868EDBE0B41D7A2B4230B0428141C', '9B3430FD2EFA4898BDB2396F797D43EF', 'AC484F0BB6874B3E80459E389AD6101E', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('EFAC84A2A77B4910B399619F9F13F442', '9B3430FD2EFA4898BDB2396F797D43EF', '4400226A6AEB473E84F93746A7AA3B13', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('0A425FD156824AD99C9C0A213C006B0D', '9B3430FD2EFA4898BDB2396F797D43EF', 'A257547E0C674074A8A1272C8CE88BD3', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('DE2A3BF4583A4752801FF392CDBAB313', '9B3430FD2EFA4898BDB2396F797D43EF', 'F52A863928F14BAAAD7ACA0E6FBB5C24', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('27323204F12C4E5D964A14AF9DF85227', 'F55616D36E1C4508A49769D08BB25956', '697D544A6C974EA8882C13ED4755DEFF', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('1C26570E1C844ABAA1E07458F40F93A1', 'F55616D36E1C4508A49769D08BB25956', '50CCDA1F84C94A539A76C7846A990E08', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('0B529FA02ECC42D49B51B3B54A0BA9BD', 'F55616D36E1C4508A49769D08BB25956', '6AAD7C364A874C0D9C4CFBE53058ACD5', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D434F28D5B644A6398730B4CCC0E982B', '17B84C67DBCA4235810D87E63F9C1536', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('04635C626494465386B35E3DDB1F6BCF', '17D6F85E666648A5A2359CC6AE969EC6', 'DF62946CB2384244AF031090D0C4BD2B', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('53785A7163154B5FA6724916E4ACE36E', '17D6F85E666648A5A2359CC6AE969EC6', '8F6865A50A0C4F638E8064F9DD07E69E', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('115F196606B64368833A8A658D2C7F00', '17D6F85E666648A5A2359CC6AE969EC6', 'D8B029F8323D43D5BB73822216E70075', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('04B2045211B04EF48788048762B350C1', 'F84C600EBD564072BB12DD4B1AF7DA67', '950F747B8DFB46588494CAE581EA29D1', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('B1102F150B354DC28859E7EB73913187', 'F84C600EBD564072BB12DD4B1AF7DA67', 'B632E122738E4BAC9871699D2ECD9944', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('2C10FA7689FF48D09EDE2A700D9E3EDF', 'F84C600EBD564072BB12DD4B1AF7DA67', '13C4C7C68B314AECA4B18D03757C9D83', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('57FDF3E06266480E93537CFEEA10EDCD', 'F84C600EBD564072BB12DD4B1AF7DA67', '57E7F16B5F2641DCABFC74D9CA839339', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('7B7799842FEC448FAC95F9ADE7B0C9D6', '679E8DDAC68A48D39B28C50F02DF846D', 'DA5DCF7B3B0D477E9F614F60635BC9EE', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('B7E9DF19081F43DE90B7299D246AED57', 'BFAE3CD5FF084F54BF5ED455C1242428', '9CC6579157DA4DD5AE60C5F0AFA2C83A', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('BD088571F3B649B6B5093C6F111812F4', 'BFAE3CD5FF084F54BF5ED455C1242428', '982FB20F0A6744C7A681CBE9E8B39951', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('88DC181785AC468D982FA8F85699FA7F', 'BFAE3CD5FF084F54BF5ED455C1242428', 'F575C2308D4D4DAAA2C599D6D62D8F9B', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('E1F68CF6BC864934A1566AB9ACF0E869', 'BFAE3CD5FF084F54BF5ED455C1242428', '186597EAF3C4425AB5763ABED69B5CB9', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('685527B382E94966955FFEB3B8815166', 'BFAE3CD5FF084F54BF5ED455C1242428', '73089A68B14A471A8336FAEE5593B1EC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('00871A2AF1054F5FB2C666E7FC29B8FB', '18BB5C984C714EDD95DA6D3205BCB72E', '950F747B8DFB46588494CAE581EA29D1', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('02595B229ECB4E8AB81677BE329E2793', '18BB5C984C714EDD95DA6D3205BCB72E', 'B632E122738E4BAC9871699D2ECD9944', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('DFE1399653A94468BED083DF1121A459', '18BB5C984C714EDD95DA6D3205BCB72E', '13C4C7C68B314AECA4B18D03757C9D83', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('661D030A5BD8433D9FB84C904915895C', '18BB5C984C714EDD95DA6D3205BCB72E', '57E7F16B5F2641DCABFC74D9CA839339', null, null, null, null);
commit;
prompt 100 records committed...
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('2E01BAD8C2494DD4AC1D2C839ECE8433', 'B14249F72CAB4B29BD8101C551F5741E', 'E6CACE75A0534A8EBC9C8CD8D6A95B69', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('F8C102BD8D4E43D5B7030A249E13D289', 'B14249F72CAB4B29BD8101C551F5741E', '90383C65C56341E591F4542DB6297946', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('92D4408F60814CE6AB024973E53EB49B', 'B14249F72CAB4B29BD8101C551F5741E', '9104D1033B08492CBDDC686E405743AB', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('7FA0819B8EEB46EE876BB6073EB36E74', '0A965B0B7FF94B6FA4A622C723793712', '4D961A7C6983498CBC28E750561ABC1F', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('F54453C884194A29B938A1FEBBFA0608', '0A965B0B7FF94B6FA4A622C723793712', '81EA639E5AA6489291851396F93C0BED', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('CF220944BE714D78B751EB79CBE7C85D', '0A965B0B7FF94B6FA4A622C723793712', '02803DEC12EA47A1A53F6D6D69D6962B', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('C24504068C394C74820EB9D33446B2EB', '0A965B0B7FF94B6FA4A622C723793712', 'F44970965F2A48E1A741526B961C4667', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('B8C747C82AFE48A8B0906291D725BE11', '0A965B0B7FF94B6FA4A622C723793712', '095BB5715AFD490797FBF9AA84DD6B44', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('0A5C322F66D240B993E4CCE177748B0B', '0A965B0B7FF94B6FA4A622C723793712', 'E76435BFCC594E9FAC38C34513A4AB5B', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('64222F1C78A646C69C451C4A1F5B89D2', '0A965B0B7FF94B6FA4A622C723793712', '21A77A7E78E1407FAC5D007BDFBD0CBC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('D146741C9C574D6D9817C94D0E60954E', '0A965B0B7FF94B6FA4A622C723793712', 'B5C9537B85B64CCCBA86FBC450EFFDBD', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('99CBBBB1671C40E5B99FDA9F9370ADC5', '0A965B0B7FF94B6FA4A622C723793712', '4F5312E270DA43AE9E16C6A0A5EFA5CD', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('583D5B147B6C4DBBB626CE8B8038DACC', '0A965B0B7FF94B6FA4A622C723793712', '31EBAA2FFF0D4510B7CC1DC7E5A039B3', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('38948847EAA24C88AE42F763792FCF06', '573A3DDB601C431DAF350EA59F7F3562', '89576E891326448E968069B85E98F2A9', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('5226E260A48D43C587BC0236A332E322', '573A3DDB601C431DAF350EA59F7F3562', '59F5ECA5BE204C9E918609D921579DB7', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('151E9BEB989A441BB72F9D828339E2C9', '573A3DDB601C431DAF350EA59F7F3562', '735F5FEC17D54DE3A6E92E714599CE0C', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('7536FADEEFA44D3C8B2BF4825F1E6DF8', '573A3DDB601C431DAF350EA59F7F3562', '0ED046E492AE4AAA873395C1952EE73D', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('8ABABAB6955C448DAF12D027F45CEE1F', '573A3DDB601C431DAF350EA59F7F3562', 'A3E051A78F1342A98B9BC711EC991F75', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('05F2E9439E114A4B9E82F62A10FA3049', '573A3DDB601C431DAF350EA59F7F3562', 'CF76021FC84E40CA8D5AFD359C6DF4EC', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('BA1D266586C34AAD8BD9BBA58688D0E1', '573A3DDB601C431DAF350EA59F7F3562', '9B14D30AA25E4446AD0D70A324C8A024', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('97204EFC1D7C41DD9BF8D3A87FBBF0A3', '573A3DDB601C431DAF350EA59F7F3562', '2E77D3CA9F644ADCB0EE1E649C90309C', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('0C94BA19A64C46CD9D2F8420ECAAED95', '573A3DDB601C431DAF350EA59F7F3562', 'B04DB8E121F54BCD96332B89A2671F98', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('84EA35B65DCC4F6E9B9C17D27241B33D', '573A3DDB601C431DAF350EA59F7F3562', '1C571D68DFDF42CDAB1E98F3AD3AB8D7', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('25DDCBA1BCBF4A08AB1BAA7603BC1A86', '573A3DDB601C431DAF350EA59F7F3562', '0BF1067911534A40B20701034B43F133', null, null, null, null);
insert into BSS_SYS_ROLEOPERATE (roid, rmid, operateid, vchar1, vchar2, vchar3, vchar4)
values ('48457E8061CC4306AB31FB56A1BF0A99', '573A3DDB601C431DAF350EA59F7F3562', 'A3CCEB5FD0B4496CB51229284CEAC1F6', null, null, null, null);
commit;
prompt 125 records loaded
prompt Loading BSS_SYS_ROLESYS...
insert into BSS_SYS_ROLESYS (rsid, roleid, sysid, vchar1, vchar2, vchar3, vchar4)
values ('255D228323B04008821B21B80E4C27A2', 'D20A980F6BF54E8093B71DF096341236', '2', null, null, null, null);
insert into BSS_SYS_ROLESYS (rsid, roleid, sysid, vchar1, vchar2, vchar3, vchar4)
values ('1BDB977EC6A24AD0ADFCA89805ACE343', 'DD5E37F61B4D4D79BE84C3B8FCEDDAF0', '2', null, null, null, null);
insert into BSS_SYS_ROLESYS (rsid, roleid, sysid, vchar1, vchar2, vchar3, vchar4)
values ('0FD907D8021D4EC8992F2E4FA3FFF670', '58A90BFF6BFF461790E2FF034252C91D', '2', null, null, null, null);
insert into BSS_SYS_ROLESYS (rsid, roleid, sysid, vchar1, vchar2, vchar3, vchar4)
values ('FEF4A9CC211B47BEAE79E81BEB39F6F9', '511A6F41419949C38122A94310DADD14', '2', null, null, null, null);
insert into BSS_SYS_ROLESYS (rsid, roleid, sysid, vchar1, vchar2, vchar3, vchar4)
values ('BCB6282AB9B9402EA43B5943310B9454', 'A1657D9C6C7D47B59A99132A5ACE1A2E', '2', null, null, null, null);
commit;
prompt 5 records loaded
prompt Loading BSS_SYS_SYSTEM...
insert into BSS_SYS_SYSTEM (sysid, sysname, url, icon, showorder, vchar1, vchar2, vchar3, vchar4, vchar5, vchar6)
values ('2', 'ҩƷ���вɹ�ƽ̨', null, '1', 1, null, null, null, null, null, null);
commit;

insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2a4377b7d5c445ecb631cdc9dd09754b', '109128', '���պ���ҽҩ�ɷ����޹�˾', 'ŵ��', 3.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '����ù��', 'Ƭ��', '50mg', '12', 'klms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2a791556623a49009c6007577d2f5017', '49297', '����������ҩ�������ι�˾', '������Τ', 7.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������Τ', 'ע��Һ', '5ml:0.25g', '1', 'gxlw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2ab1bb4f45414bda8f7b25567ad481ab', '108427', '������֮��ҩҵ�ɷ����޹�˾', '�����涡', 1.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����涡', 'Ƭ��', '0.4g', '20', 'xmtd,xmtz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2b450e8cfbf64827854d02fcfb368b67', '56123', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '������', 2.01, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����', '��ɢƬ', '0.25g', '18', 'amxl,emxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2bd18719b0414fb9b4876f60115f760c', '79895', '���Ϻ�ɭ��ҩ�ɷ����޹�˾', '��ĥ���ڷ�Һ', 20.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ĥ���ڷ�Һ', '�ڷ�Һ', '10ml', '10', 'smskfy,smtkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2d3f324e78c94600b169577089021f0b', '48371', 'ɽ���յ�ҩҵ�ɷ����޹�˾', '������', 14.21, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�Ŷ������þ', '����', '2.0g(�Ŷ������1g,�Ŷ�����þ1g)', '1', 'mdasjm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2e6fed61710d499cba435a4052fd412e', '51963', '�㽭������ҩ�ɷ����޹�˾', '��ù�س��ܽ���', 19.96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ù��', '���ܽ���', '0.25g', '10', 'hms,gms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2f02a7e6ef794db5bc9f4fcecc6e25e1', '61588', '�ɶ�������ҩ���޹�˾', '�����ۻ��ڷ���Һ', 29.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����ۻ��ڷ���Һ', '�ڷ�Һ', '10ml', '12', 'yxmhkfry', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2f7dd370f1cc4c729d12f1be97b9b48c', '65669', '����ҩ��������ҩ���޹�˾', '�ڼ��׷���', 4.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ڼ��׷���', 'ˮ����', '6g', '10', 'wjbfw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2f8c128759e54901946571dbae9a80e9', '85973', '�Ĵ��°�ҩҵ���޹�˾', '?', 26.31, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', 'Ƭ��', '0.1g', '24', 'hpsyt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2fb4df2e8c0f4795bc03970e1485781d', '51048', '���Ǻ�˹��ҩ���޹�˾', '��˹����', 1.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����«��', '����', '0.3g', '1', 'qklz,qkld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2fc8d7c2125c4d749bbd9d5d84e66148', '107668', 'ɽ��������ҩ�������ι�˾', '����ɢ', 4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ɢ', 'ɢ��', '3g', '10', 'bps', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('306c515a9727452cb2063d96580a734b', '50393', '���Ϻ�����ҩ�ɷ����޹�˾', 'ע���õ�յ����', 11.97, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��յ����', '����', '10mg', '1', 'dzhs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('30be911509954fcbb3c863c3bca7474a', '78468', '�㶫�Ϲ�ҩҵ���޹�˾', '������������Ƭ', 8.64, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '25mg', '1000', 'zxmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('311276aefc7a406ebc158d9d8679acda', '******', '�������ҩҵ���Źɷ����޹�˾������ҩ��', '��Ч������', 25.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ч������', '����', '40mg', '150', 'sxjxw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('31fde24225da47bdb21008ff728350da', '109874', '������һ������ҩ�������ι�˾', '���̽ⶾ����', 13, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���̽ⶾ����', '������', '5g�������ͣ�', '20', 'yqxdkl,yqjdkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('334ea3ebcc8f4372a7b95cb58fa9be00', '109376', '��ҩ���Ź�ҵ���޹�˾', '��������', 1.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����Ƭ', '20mg', '14', 'amlz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3365db167fee44a4b115d9e201891570', '109643', 'ɽ����Ԫʢ����ҩ���޹�˾', '��Ŀ�ػ���', 2.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ŀ�ػ���', 'ˮ����', '36g', '1', 'mmdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3440c68ab3264e5c9c13557a86ecf4a9', '89652', '����ͬԴ��ҩ���޹�˾', 'ά����B6', .06, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����B6', 'ע��Һ', '1ml:50mg', '1', 'wssb6', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('354c5cd20e9a437898823bd04b817cb6', '49064', '�Ϻ�����ҩҵ���޹�˾', '�����', 3.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ī����/����ά���', '����', '1.2g(5:1)', '1', 'emxl/klwsj,amxl/klwsj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('35a458a2148247a993d7ca880598ae59', '109698', 'ҩ����ҩ���Źɷ����޹�˾', '����ů����', 3.64, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ů����', 'С����', '54g(9g/45��)', '1', 'yfngw,afngw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3630c3269ebe48d89a8ef15ba107cf30', '98214', '�������ҩҵ���޹�˾', '��������', 23.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ʲ�����', '����', '50mg', '48', 'gcsea', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('364ce09e41044380aae60fd591fe993a', '78023', '�Ǳ�ҩҵ��ͬ��ҩ���޹�˾', '����˳����', 4.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����˳����', 'ˮ��', '9g', '10', 'kxsqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('36e2aaf5b9074dc99c6bc991a0dd2654', '89202', '���ݰ���ɽ����ҩҵ���޹�˾', '��٢������', 36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��٢������', 'Ũ����', '8g', '12', 'htzzw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('37307c92f7fc417284ce8eb6df19d826', '47888', '�ӱ�����ҩҵ���޹�˾', '����ע��Һ', 4.88, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ע��Һ', 'ע��Һ', '10ml', '1', 'smzyy,cmzsy,cmzyy,smzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3755766c9e6344ccae64d8fe50a5ac43', '72666', '������ʷ����ҩ(����)���޹�˾', '������', 19.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ɳ������', '�����', '100ug/��*200', '1', 'sdac,szac', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('38b221c483534248b8cd24fd3d56ead8', '88722', '���ϰ�ҩ���Źɷ����޹�˾', '��ɰ��θƬ', 18.84, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ɰ��θƬ', 'Ƭ��', '0.6g', '48', 'xsywp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('39092830a8fd458b8f80ea848dc62182', '91974', '�������ŵ����ҩ���޹�˾', '��������Ƭ', 21.67, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������Ƭ', 'Ƭ��', '0.5g', '24', 'twbxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3951fdebc9bc4a779ae48c6e25bdd1ae', '59184', '����������ҩ�����޹�˾', '��', 3.13, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ҶƬ', 'Ƭ��', '�ܻ�ͪ����19.2mg:��������4.8mg', '24', 'yxyp,yxxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('39986696637e4af3a03c43739148978c', '88695', '����������ҩҵ���޹�˾', '���ɲ��ע��Һ', 4.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ɲ��ע��Һ', 'ע��Һ', '1.5ml��0.375g', '10', 'nksmzyy,nkcmzyy,nkcmzsy,nksmzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('39b8a6c407ca435b92126f3d0e3f76ce', '46805', '�㶫�β���ҩ���޹�˾', '������ע��Һ', 15.79, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', 'ע��Һ', '10ml:0.1g', '1', 'bpf,bbf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('39cce3f440f5411aa1fb4086d0f0c484', '104287', 'ɽ��������ҩ���޹�˾', 'ͷ�����', 4.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ�����', '����', '2.0g', '10', 'tbtd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('39f99968ea90499694b415695e54d603', '95955', '��ʯ������ҩ���޹�˾', '�������ڷ�Һ', 3.69, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������ڷ�Һ', '�ڷ�Һ', '10ml', '10', 'kbdkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3a2b79ab0d8248aab2ecc22f5fddb82c', '106680', 'ɽ���ֻ�ҽҩ�Ƽ��ɷ����޹�˾', '����ͨʥ��', 2.71, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ͨʥ��', 'ˮ��', '6g', '10', 'fftsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3a338f1c9107406ba11ae7d00ea3e10f', '71073', '��ʿ����ҩ���Źɷ����޹�˾', '�������ε���', 25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������ε���', '����', '��Ĥ����27mg', '180', 'ffdcdw,ffdsdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3a43452e6ece49c5a810078bb279b981', '82242', '�Ĵ�����ҩҵ�ɷ����޹�˾', '������ע��Һ', 2.61, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '������ע��Һ', '����Һ', '250ml:12.5g(��ƿ)', '1', 'pttzyy,pttzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3a4df240c5e442a1b0ad6124e2cbabe7', '83830', '��������ͯ��ҩ�����޹�˾', '?', 20.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'С��к��ͣ����', '����', '3g', '12', 'xexstkl,xrxstkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3ac517d3567645fdb61cf7179d5d897b', '56174', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��ù����', .21, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù����', '����', '80WU', '1', 'qmsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3af39529587f40edb6fcd18741a0deaa', '74591', '�����������ҽҩ�ɷ����޹�˾', '������п�ȵ���(30%)', 24.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������п�ȵ���(30%)', 'ע��Һ', '10ml:400IU', '1', 'jdbxyds(30%)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3c5195a7c72c41698eab1cb08ce912ad', '48047', '����̫��ҩҵ�ɷ����޹�˾', '10%������', .73, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '10%������', '����Һ', '100ml', '1', '10%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3c80158a806240b3906ba9013b50e104', '108287', '�ɶ���һ��ҩ���޹�˾', '��ĸ��Ƭ', 8, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '��ĸ��Ƭ', 'Ƭ��', '����ˮ�ռ�15mg', '48', 'ymcp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3cfe38d6289442d8af1f852854a9740d', '106240', '�人����ҽҩ�Ƽ��������ι�˾', '����������', 1.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����', '0.1g', '10', 'ebdz,abdz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3d3be6567abb43528c260414b6f1d5d9', '89547', '����ҩҵ�������޹�˾', 'ͷ������', .81, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ������', '����', '0.5g', '1', 'tbqs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3d7aba3db5a0466f8af4bbcca85e3624', '79413', '�Ͼ��׺���ҩ���޹�˾', '˫�ȷ�����', 10.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '˫�ȷ�����', '���ͽ���', '50mg', '24', 'slfsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3da5c436a3ae40b88e83ff57882f8cc4', '57836', '�Ĵ�����ҩҵ�ɷ����޹�˾', '����ע��Һ', .72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ע��Һ', 'ע��Һ', '10ml', '1', 'dszyy,dszsy,dczyy,dczsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3da9d295ec9e4bed8f34fd9a72429db2', '105909', '������������ҩ���޹�˾', '����þע��Һ', .15, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '����þ', 'ע��Һ', '10ml:1.0g', '1', 'lsm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3ddf40fc4ec74a78b393053778559d66', '68183', '����ҩҵ�ɷ����޹�˾', '�����', 7.37, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����', '����Ƭ', '0.3g', '20', 'blf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3eb9a718d5d64648856bf5e88fb34dee', '91570', 'ɽ��������ҩ���޹�˾', '��', 5.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���߰�����', 'ˮ��', '6g', '10', 'clbsw,slbzw,slbsw,clbzw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3eba64e22c4c45368c20f6f571d1c735', '46879', 'ɽ������ҩҵ�ɷ����޹�˾', '������ɳ��', .81, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɳ��', 'Ƭ��', '0.2g', '6', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3eca844c938f46c3a6d964b0313bc0e0', '68669', '������ҩ���Źɷ����޹�˾', '��յ����Ƭ', 2.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��յ����Ƭ', 'Ƭ��', '20mg', '24', 'dzhsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3efa55d8d02749ac9b1a11bcec873075', '49114', '����������ҩ�������ι�˾', '������ɳ��', .82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������ɳ��', 'ע��Һ', '2ml:0.2g', '1', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3f83f745436344d6aeeeccf63eaaafb5', '64649', '³�Ϻ�����ҩ���޹�˾', 'С������ֹ�ȿڷ�Һ', 13.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'С������ֹ�ȿڷ�Һ', '�ڷ�Һ', '10ml', '6', 'xexjzkkfy,xrxjzhkfy,xrxjzkkfy,xexjzhkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3fc18b2cf9814612b156f0d4a752591f', '100629', '����ʡ������ҩ���޹�˾', 'ͷ������', 4.83, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', 'ͷ������', 'Ƭ��', '0.5g', '12', 'tbld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('400f4a7b425d44caa6a23a00cc16acd8', '48530', '���ݶ�����ҩ���޹�˾', '������', 7.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ȵ�ƽ', 'Ƭ��', '2.5mg', '14', 'aldp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('401ecbb3c34a4b98924ddb9b59633900', '91644', '��Ӧ��ҩҵ���Źɷ����޹�˾', '��������˨', 1.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '˨��', '50mg', '10', 'ydmx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('401fba424c2142a48a4dfaccbaf504e0', '107547', '������ҩ�ӱ�����ҩҵ�������ι�˾', 'ͷ�߰���', 3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߰���', '����', '0.125g', '50', 'tbab', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('40c192ba97bd4aa39e206db91f5983b4', '54052', '���Ͽ���ҩҵ���޹�˾', '0.9%�Ȼ���', 1.43, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '0.9%�Ȼ���', '����Һ', '500ml(��ƿ)', '1', '0.9%lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('411fc7dbf44347278234f904f8d7d106', '108016', '����������ҩ����ҩ���޹�˾', 'ţ�ƽⶾ��', 2.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ţ�ƽⶾ��', '������', '3g', '10', 'nhjdw,nhxdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('412a9d0dd4314ad6b4f04fb9eaca115f', '57191', '�Ĵ���Ҷ����ҩҵ�ɷ����޹�˾', '��ϣ', 43.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����', '50mg', '30', 'eqpt,ekpt,akbt,aqpt,aqbt,akpt,eqbt,ekbt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4167c66a12da4e17a86357bf3c69184d', '56819', '���ҩҵ������֣�ɷ����޹�˾', '��', .11, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���˽�', 'ע��Һ', '2ml:0.5g', '1', 'anj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('41fd72d98ae44db88204d167c845a727', '76263', '����ҫ���������޹�˾', '��', .68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ѫƽ', 'ע��Һ', '1ml:1mg', '1', 'lxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('42a044c781044853835132e422e40194', '55370', '��Ӧ��ҩҵ���Źɷ����޹�˾', '��Ӧ�������̴���', 7.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ӧ�������̴���', '����', '10g', '1', 'mylsxzcg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('432c55d4eb9f4e62ae434f0f4af70e33', '90494', '�Ϻ��̷���ҩ���޹�˾', 'ά������', .74, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά������', 'ע��Һ', '2ml:5mg', '1', 'wlpm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('434d9c3770a4487bbadc22bdc7897eae', '85464', '����������ҩ���޹�˾', '���ͽ���', 7.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '���', '���ͽ���', '0.1g', '24', 'cj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('434f3f2847a94071b523456c112fd9f2', '45797', '������ҩ���޹�˾', '����', 1.91, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���', '����Ƭ', '0.1g', '15', 'cj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4389e4c2dced49b693fac4b167dee705', '107488', '�㶫��Ӧ��ҩ�ɷ����޹�˾', '׳��������', 4.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '׳��������', 'ˮ����', '52g', '1', 'zyjsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4397034547364824be180365f80d25ec', '56177', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��ù����', .35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù����', '����', '160WU', '1', 'qmsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('43cd9ed91c0a42598e44339363231376', '54971', '���绪��ҩҵ���޹�˾', '��', .49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù��', '����', '10g:0.1g(1%)', '1', 'kmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('43e94694392e49c08fe279a9e08d03df', '108911', 'ɽ������ҩҵ�ɷ����޹�˾', '����ù��', 1.42, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ù��', '����', '0.3g', '1', 'klms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('43e9eb51cca64525ab6a79c02c16cfd5', '93330', '����ͬ���ÿƼ���չ�ɷ����޹�˾��ҩ��', '����������', 9.84, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', '����', '0.5g', '24', 'mrrcrjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('442f97869f014291968b6d7679ad71d3', '86450', '���ջ�٢��ҩ��', '������', 5.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '������', 'С����', '3g/15', '150', 'ddw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('445304889ec440ad85d314dcfcb328ea', '105792', '�麣������ҩ�ɷ����޹�˾', '��˼��USLIN50R', 42.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������������ȵ��ػ��(50/50)', 'ע��Һ', '3ml:300IU(��о)', '1', 'jdbzzrydshg(50/50),jdbczrydshg(50/50),jdbczrydshh(50/50),jdbzzrydshh(50/50)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('447dddd0ae7e4fc3944d9870b59eec60', '66740', '����ҩҵ�ɷ����޹�˾', '��������', .87, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'Ƭ��', '0.2g', '10', 'ebdz,abdz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('44b737323b54483988c30f8c34173c8c', '51843', '�����Ļ���ҩ���޹�˾', '���ְ�', 12.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ͪ', '����', '2mg', '1', 'nlt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('44e4018dc2464a9f83829f3b6225ef08', '89557', '����ҩҵ�������޹�˾', '����ά��', 1.07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����ά��', 'Ƭ��', '25mg', '100', 'ptwl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('455d7b92bb2b4b2a8f50f290bcf9f437', '108909', '�㽭����ҩҵ�ɷ����޹�˾', '��������', 6.35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'Ƭ��', '80mg', '60', 'gljt,glqt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4593738f01e140f189203f4422845ef7', '85487', '���̫ƽ����ҩ���޹�˾', '������', 1.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', '����', '10g:2.5mg', '1', 'fqs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('45eb3e66ead34217bfc6100eb7e2f577', '88842', '��³��ҩ���޹�˾', 'ע��������������', .77, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '1.0g', '1', 'plxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('462b9884a37e4c0980dbda4b48bfd15f', '48546', '��³��ҩ���޹�˾', '��������Ƭ', 15.45, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '��������', 'Ƭ��', '2.5mg', '80', 'hfln', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('462fadc149b64f848da8b7db93897d5f', '47584', '�������䱦��ҩҵ�ɷ����޹�˾', 'Ѫ��ͨע��Һ', 3.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'Ѫ��ͨע��Һ', 'ע��Һ', '10ml:0.25g', '1', 'xstzyy,xstzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('46bc312d96cf4d44a0b8a8c4786cd1d8', '71205', '����ʡ������ҩ�ɷ����޹�˾', 'С�������', 9.96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'С�������', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'xchtw,xchsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('46bd8e20ae0b4112be54b383bfedf510', '68320', '������ҩ�ɷ����޹�˾', '��Ī���ֽ���', 1.87, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����', '����', '0.5g', '10', 'amxl,emxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('47445a4aefb34820a04b75e3f2002727', '46872', 'ɽ������ҩҵ�ɷ����޹�˾', '������ɳ��', .44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɳ��', 'Ƭ��', '0.1g', '6', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('48e841ef7cff4168a0e88946efd7495d', '57812', '���ҩҵ������֣�ɷ����޹�˾', '��', 1.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'Ƭ��', '50mg', '3', 'fkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('002fe86ad6d44d209a34b802bca46d34', '46873', 'ɽ������ҩҵ�ɷ����޹�˾', '������ɳ��', .72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɳ��', 'Ƭ��', '0.1g', '10', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0035e28a704c414ea0d957739a1c998d', '48388', '����������ҩ���޹�˾', '?', 6.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ˮ����ά����', '����', '/', '1', 'srxwss', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('005aacc7a5a24b1087da0d76ff7146e5', '70993', '����ʡ������ҩ�ɷ����޹�˾', '����������', 13.18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������', 'ˮ��', '0.2g', '120', 'ffdsw,ffdcw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0072e55c308c41d2b4a39960ac98d45b', '98211', '�������ҩҵ���޹�˾', '��������', 17.74, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ʲ�����', '����', '50mg', '36', 'gcsea', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('007698f6ac20453fba40266261718a96', '108413', '����ҩ��������ҩ���޹�˾', '��ζ�ػ���', 3.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ζ�ػ���', 'ˮ����', '6g', '10', 'lwdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0091756e0a4b4029ab0031a4e7a58a3c', '78395', '����ʥ������ҩ���޹�˾', '�������˫�ҳ���Ƭ', 6.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����˫��', '����Ƭ', '0.5g', '30', 'ejsg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('01628775298146cb848e5f1fc69c66a8', '105736', '�㽭��������ҩ�ɷ����޹�˾', '���ᰱ����ע��Һ', 3.03, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', 'ע��Һ', '2ml:15mg', '1', 'axs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0227319a4140473e844219275ce806b7', '85558', '����������ҩ�ɷ����޹�˾', '����ù�ط�ɢƬ', 1.86, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', '��ɢƬ', '0.125g', '6', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0230f23805f348ef81a6deb6a7880fcb', '47578', '�������䱦��ҩҵ�ɷ����޹�˾', 'Ѫ��ͨ', 23.46, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'Ѫ��ͨ', '����', '0.2g', '1', 'xst', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('02a84b6e2c4e40c484ff76d1bc186570', '46223', '�������ҽҩ�ɷ����޹�˾', '���ܰ�����', 11, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ܰ�', '����', '0.5mg', '24', 'jga', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0314d7c46595495ab38b736286fb9423', '86120', '�����б���ҩ�ɷ����޹�˾', '������������', 1.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������������', '����', '0.3g', '20', 'dyxajf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('032aaa036c3542798eb0049a96309def', '91319', '���������ҩҵ���޹�˾', '��', 4.72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����պ�����', '����', '0.31g', '20', 'gxsgrjn,gxshrjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('034db1a65659488d89fd3ddebaa2e435', '55463', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '�ʲ�����ע��Һ', .67, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�ʲ�����', 'ע��Һ', '10ml:50mg', '1', 'gcsea', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('03c5eac24a9f4fb7839ffca7c038f7e6', '57828', '���ҩҵ������֣�ɷ����޹�˾', '��', 8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'Ƭ��', '0.1g', '6', 'fkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('03c7afd143414bf78617d48721a6dff8', '72829', '�˲��˸�ҩҵ�������ι�˾', '��������ù��Ƭ', .56, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������ù��', 'Ƭ��', '0.1g', '12', 'yxlxms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('03d23f9392354be3b2b102529281ab5c', '108635', '������������ҩ�������޹�˾', '����Ƭ', 1.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ƭ', 'Ƭ��', '0.25g', '24', 'yhp', null);
commit;
prompt 100 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('045befb855604a49a85fd35651558473', '109074', '����������ҩ�ɷ����޹�˾', '�������', 5.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������', 'Ƭ��', '50mg', '100', 'abdd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0498f9597ae3489bbef15ecd502611d5', '98209', '�������ҩҵ���޹�˾', '��������', 12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ʲ�����', '����', '50mg', '24', 'gcsea', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('04cb0d607cd440c286fa3f8fc3816340', '106562', '�人����ҩҵ���Źɷ����޹�˾', '���������', 5.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', 'ˮ����', '60g', '1', 'elzcw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('190c9d851bd6447386ea3750b21e8468', '109512', '������ҩҵ���޹�˾', '��', 28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'ˮ��', '10(3.125g/1000)', '12', 'lsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1a51b21691b048e397cd8c93e0a96e8d', '78172', '����������ҩ�ɷ����޹�˾', '����ҶƬ', 1.28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ҶƬ', 'Ƭ��', '�ܻ�ͪ����9.6mg:��������2.4mg', '24', 'yxyp,yxxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1a60fc7daf91429f9e9057beb5bfd6bb', '93014', 'ɽ��ʡƽԭ��ҩ��', '�������Ƭ', 2.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������', 'Ƭ��', '0.5mg', '100', 'xsgy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1aaa915e053f40a4bb357cccfcef0865', '91893', '�㽭��������ҩ���޹�˾', '������ͪƬ', 2.77, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ͪ', 'Ƭ��', '10mg', '30', 'dplt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1b16482b4ee2434887ec529c13faa46f', '74812', '���ϰ�ҩ���Źɷ����޹�˾', '���ϰ�ҩ��', 7.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���ϰ�ҩ��', '����', '30ml', '1', 'ynbyd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1b7152e2c2964dfeb53ef3ddd6b1dd92', '47686', '�ÿ�ҩҵ�������޹�˾', '������Τ', 1.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������Τ', '����', '0.25g', '1', 'gxlw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1bd5f3b689834a9ba8f8c5f6ffbba35f', '67376', '�㽭����ҩҵ�ɷ����޹�˾', '������������������', 10.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������������������', '����', '10mg', '10', 'mlsynpljn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1bf07719447e44ee9db74115fc8bb3a0', '60590', '������ҩ��ҩ�ɷ����޹�˾', '�����պ���', 5.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����պ���', '������', '1.12g', '30', 'gxshw,gxsgw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1c0b56e3bd4140878dc95836dd312d54', '109993', 'ʯ��ׯ��ҩ���޹�˾', '���͹���', 7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���͹���', '����Һ', '250ml:25g:12.5g:2.25g', '1', 'gygt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1c235969061842d699bd96717e8860de', '93063', '����ҩҵ�ɷ����޹�˾', '��������������ע��Һ', .12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������������', 'ע��Һ', '1ml:5mg', '1', 'dsmslsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1c7a3942860547dca572acabea052dd9', '89901', '���ҩҵ������֣�ɷ����޹�˾', '��', .29, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����¶', '��Һ��', '20ml', '1', 'ksl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1ce3333f192544369d3f452ace6741ad', '94304', 'ҩ����ҩ���Źɷ����޹�˾', '����ů����', 3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ů����', '������', '9g', '10', 'yfngw,afngw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1d0178b9b21e4819bc573b514bd1adf2', '77026', '�ؿ���ҩ�������޹�˾', '�工��͡', 4.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�工��͡', '����', '20mg', '12', 'lftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1e94554188204afe88dcc9ce5422971c', '84305', '������ʥ̩ҩҵ���޹�˾', '?', 17.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'С�����������', 'ע��Һ', '2g', '8', 'xrrsqkl,xersqkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1f10ac2dc1ba4b3ea481854e883d5ede', '54188', '���Ͽ���ҩҵ���޹�˾', '�������Ȼ���', 1.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������Ȼ���', '����Һ', '500ml(��ƿ)', '1', 'pttlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1f3806865be74f95b47ccf610b0fb43b', '48064', '��������ͨҩҵ�������ι�˾', '��Ī��ƽ', 1.69, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ī��ƽ', 'ע��Һ', '10ml:2mg', '1', 'nmdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1f52761d33b242ad948de7018fb6b707', '77154', '����Ǳ����ҩ�ɷ����޹�˾', '������Τ', .85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������Τ', '����', '0.25g', '1', 'axlw,exlw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1f5fcf911f534472a87b8be7135ee72b', '61250', 'ɽ���ֻ�ҽҩ�Ƽ��ɷ����޹�˾', '����������', 3.49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', '������', '9g', '10', 'bzyqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1fa5eef6df3d45db839902870e5a3ea3', '108956', '��ҩ����������ҩ�ɷ����޹�˾', '���׿���', .27, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���׿���', 'ע��Һ', '2ml:0.2g', '1', 'amqx,amkx,emkx,emqx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1fb005a44a5c429592218b5367dc10ae', '53938', '������ҩ���޹�˾', '��', .69, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù����', '����', '400WU', '1', 'qmsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('20ba154eb76d407cb1055b0b759b4a39', '53695', '����¤���ַ���ҩ���޹�˾', 'Ԫ��ֹʹ����', 22.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'Ԫ��ֹʹ����', '����', '0.5g/10', '180', 'yhztdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('20bc317dca9547e39126031f09ba1971', '107401', '�Ϻ��𲻻�������ҩ���޹�˾', '��������', 2.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '25mg', '100', 'ydmx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('20d61eab0e6e4cb09edc1f0560f2c6c5', '54042', '���Ͽ���ҩҵ���޹�˾', '0.9%�Ȼ���', 1.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '0.9%�Ȼ���', '����Һ', '250ml(��ƿ)', '1', '0.9%lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('213cd1891f1f43a8997ad0d5049583e5', '108912', 'ɽ������ҩҵ�ɷ����޹�˾', '����ù��', 2.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ù��', '����', '0.6g', '1', 'klms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2187a10f74994a4e8d9acf8e1f5b48f3', '62863', '��������ҩҵ���޹�˾', '��������ע��Һ', 9.52, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', 'ע��Һ', '5ml:20mg', '1', 'hlxg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('21c25a089a1b4c7fa440fe81f3dfa252', '109307', 'ɽ���ٲ�ҩҵ���޹�˾', '������ɢ', 6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɢ', 'ɢ��', '9g', '10', 'ryjhs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('21d2e95dea7e440180809b3e0bcd5ebe', '54270', '���Ϻ��黯ѧ��ҩ���޹�˾', '������͡', 2.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������͡', 'Ƭ��', '20mg', '7', 'xftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2256d6e3c1ef41b6bd0e964f7be667a5', '107972', '�ɶ��ذ¼����츮ҩҵ�ɷ����޹�˾', '��ܺ���Ƭ', 12.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ܺ���Ƭ', 'Ƭ��', '0.48g', '48', 'cxcdp,cxctp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('228223b576ce4becb3b5f85781b9567e', '*****', '���ϸ��ʻ�����', '��ʹ��', .15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '���', '2ml', '1', 'ajbl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2290cb2228fa4f119fcc3535a37ec3a3', '70918', '����ʡ�ڳ���ҩ��', '���߰�������', 23.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���߰�������', '������', '6g', '10', 'clbzkl,slbzkl,slbskl,clbskl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('22d0394edbcc4d0abc46f70d5daa9dfe', '2013004', '֣��׿����ҩ', '��������������', .1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������������', 'ע��Һ', '1ml:2mg', '1', 'dsmslsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('22e6340b8d8b42e6b433c9a2faf34b46', '89708', 'ʯҩ����ŷ��ҩҵ���޹�˾', '����Ӣ��Ƭ', 1.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '����Ӣ��', 'Ƭ��', '50mg', '100', 'btyn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('23167d3511c64a718fb1b382709d3121', '88823', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��������', .45, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '0.5g', '1', 'bzxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2340c610758241e18a147d11ade8d24e', '79801', '����ҩҵ�ɷ����޹�˾', '����������Ƭ', 1.37, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����Ƭ', '10mg', '14', 'amlz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2346896172e840f8b830d25f42b86087', '87511', '������ʱҩҵ�ɷ����޹�˾', 'ͨ����ο���', 9.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͨ����ο���', '������', '9g', '12', 'txlfkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('23547ad5440f4d18948a56b304894184', '57146', '��������ҩҵ�ɷ����޹�˾', '����Ƭ', 22.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ƭ', 'Ƭ��', '�൱��ԭҩ��3.5g', '72', 'sjp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('23a594bd15b645f292e0bd502bed9e02', '48191', '����̫��ҩҵ�ɷ����޹�˾', '0.9%�Ȼ���', 1.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '0.9%�Ȼ���', '����Һ', '500ml', '1', '0.9%lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('23af66af483b4a4295fbbd5b4f9da50e', '65246', '�ϲ�����ҩҵ���޹�˾', '�����', 13.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '��ɢƬ', '50mg', '6', 'fkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('23e9fd96c92e4dc7a557df97dc1631b0', '107271', '��������ҩҵ���޹�˾', '¯��ʯϴ��', 1.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '¯��ʯϴ��', 'ϴ��', '100ml', '1', 'lgsxj,lgdxj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('242c4245c83642a098b2314223e1348c', '99085', '��������ҩ�����޹�˾', '������', 4.46, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߿���', 'Ƭ��', '0.25g', '6', 'tbkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2445acbc9616437981803909826fd263', '83889', '��������ͯ��ҩ�����޹�˾', '˫��������', 18.73, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '˫��������', '������', '5g', '15', 'shlkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('24cc4d5c97c84484a45cadf61ddfff67', '93867', '����ŷ��ҩҵ���޹�˾', 'ŷ����', 2.88, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����涡', 'Ƭ��', '0.15g', '20', 'lntd,lntz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('25be889b26eb4811bd4261b0ba590ec0', '92452', '����������ҩ�ɷ����޹�˾', '��������', 2.96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '0.3g', '100', 'lsyt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('25c3c91e9aa24757906b11f058720ec5', '46490', '�ɶ�������ҩ���޹�˾', '��˳', 12.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�ز�����', 'ע��Һ', '1ml:0.25mg', '1', 'tbtl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('25e38198d5ea4c5bb4f6dc240365d9c0', '88789', '�麣����ҩ�ɷ����޹�˾', '��������', 5.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����', '2.5mg', '28', 'ydpa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('25eb571c4a184001bc7693600eabd483', '83713', 'ʯҩ����ŷ��ҩҵ���޹�˾', '�ڿ�Ϣ', 2.85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'Ƭ��', '10mg', '10', 'ynpl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('26a6ab67b9b8453d94adc60f6c57354d', '93900', '������ҩ(����)���޹�˾', 'ά������', 2.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ά������', 'Ƭ��', '40mg', '24', 'wlpm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('26fa02fec8984567847dc9718a3c87f4', '89798', '������¹����ҩ�ɷ����޹�˾', '��򻶨����', 5.83, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��򻶨����', '������', '9g', '10', 'gjdcw,hjdcw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('271680f98c7740689f06efbe68a1f792', '89432', '������ҩ(����)���޹�˾', '����Ӣ��Ƭ', 1.58, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����Ӣ��Ƭ', 'Ƭ��', '0.1g', '100', 'btynp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('27a1973f121e4420b7afa6dd7c663adb', '70563', '����´ɽ��Ȼֲ����ҩ���޹�˾', '��', 28.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ҷ����', '����', '�ܻ�ͪ����40mg:��������10mg', '20', 'yxxjn,yxyjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('27dcec481305474c87eb8fd42329ea12', '45727', '������ҩ���޹�˾', '�Ŀ�', 1.47, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���׵���', '����', '0.25g', '1', 'bldj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('28e8f64d979040179512fe460354ea50', '91488', '������ҩ(����)���޹�˾', '25%������', .24, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '25%������', 'ע��Һ', '20ml', '1', '25%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2904282525e84cfdacad80553e307bba', '93754', '�Ϻ�����ҩ�����޹�˾ί���Ϻ�����ƺ���ҩ���޹�˾', '�������Ƭ', 11.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������Ƭ', 'Ƭ��', '0.25g', '100', 'bqxap,pqxap', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('29269e57e88c4f6495534c68cc30d517', '68543', '�ӱ�����ҩҵ���޹�˾', '������ɽ����', 7.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '������ɽ����', 'ע��Һ', '10ml:10mg', '1', 'xsyslz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('29a5a29829d547889cd35b0df2f7603a', '46931', '����������ҩ���޹�˾', '������͡��ɢƬ', 15.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������͡', '��ɢƬ', '10mg', '7', 'xftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2a3f86ef52ab458482d655bdccaa2616', '76070', '�ɶ�����ҩҵ�������ι�˾', '����ƽ����', 10.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����ƽ', '����', '0.15g', '100', 'lfp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('491207c17cf24bccb11d19610eec773e', '98218', '��֥��ҩҵ(����)���޹�˾', '��Ƣ��', 3.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ƣ��', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'jpw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4927cab078914b9db1e9da7b002f4fb9', '108321', 'ɽ��³��ҽҩ�ɷ����޹�˾', '��ù��', 19.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ù��', 'Ƭ��', '50WIU', '100', 'zms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4958152ba04444af9f27ebae2c5f02d7', '107460', '�����ʷ�ҩҵ���޹�˾', '��ζ�ػ���', 3.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ζ�ػ���', 'С����', '60g', '1', 'lwdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('49637b1cf48e416fac619713cef1d688', '109246', '��������ҩҵ���޹�˾', 'ë��ܿ���', 5.03, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ë��ܿ���', '����Һ', '5ml:25mg', '1', 'mgyxj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('498d8cf828454f8380f0f881a524d81e', '2013005', '������ˮ��ҩ', '��������������', .1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������������', 'ע��Һ', '1ml:2mg', '1', 'dsmslsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4a2872d5775c446e9bd08c3669cbf8e2', '109884', '��������ҽҩ�ɷ����޹�˾', '������', 18.26, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'ˮ��', '6g', '15', 'ztw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4a5762b07f4a4bdfb31e1e593454f5ff', '54910', '����������ҩ�ɷ����޹�˾', '�������Ƭ', 1.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', 'Ƭ��', '5mg', '24', 'glbq,glpq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4a90b2ea4db44729a643a162403abcaf', '88501', '�����Ļ��Ʊ���ҩ���޹�˾', '�����ɢƬ', 40.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����ɢƬ', '��ɢƬ', 'ÿƬ��0.3g(������ͪ��40mg)', '12', 'xlfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4ac1370ca4d147e197b971695ea95c1c', '94203', '�ÿ�ҩҵ�������޹�˾', '��������', 1.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '���ܽ���', '10mg', '14', 'amlz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4ad8117ab5d74cafba485ae678594269', '108404', '�Ĵ�������ҩ���޹�˾', '޽����������', 4.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '޽����������', '������', '10g', '10', 'hxzqkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4adb310111744036a352d731049b0765', '61367', 'ɽ���ֻ�ҽҩ�Ƽ��ɷ����޹�˾', 'ͨ�������', 2.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͨ�������', '������', '6g', '10', 'txlfw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4ae1dcabee9d4e4483a51017253dc5c8', '109487', '����ҩ��������ҩ���޹�˾', 'ͨ�����Ƭ', 3.84, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', 'ͨ�����Ƭ', 'Ƭ��', '0.3g', '48', 'txlfp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4b9d2aef759c4ee9bee52ce02ea43216', '93622', '��������ҩҵ���޹�˾', '��', 4.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ɽݹ�м�', 'Ƭ��', '10mg', '100', 'sldj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4bf5fa098bd34416b8bf5fb3e495f121', '55644', '��������ҩҵ���޹�˾', '��������Ƭ', 17.76, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������Ƭ', 'Ƭ��', '0.35g', '60', 'bzyxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4c14171fd470404fa5c6be11a652f4bc', '79864', '���ϵ�ŵ��ҩ���޹�˾', '�������', .78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', '����', '5mg', '20', 'fglq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4c46a203d7c54104a4f455f4cd14bc7c', '47617', '�������䱦��ҩҵ�ɷ����޹�˾', '����ע��Һ', .76, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ע��Һ', 'ע��Һ', '10ml', '1', 'hqzyy,hqzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4c68f28571974ff7b55ca356fe839f9a', '61093', '�Ϻ��ִ���ҩ�ɷ����޹�˾', '����', 7.28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ������', '��ɢƬ', '0.25g', '24', 'tbld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4c7c18fa633748568c1f5aecb3d98e1b', '108574', '����ʡ��Ȫ��ҩ���޹�˾', '��ν�θ��', 22.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ν�θ��', 'ˮ��', '12g', '40', 'sgjww', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4cc4e8160f7641f88a25ef3cd29a2caf', '94685', '�����н���ҩҵ���޹�˾', '֪�صػ���', 3.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '֪�صػ���', 'ˮ����', '60g', '1', 'zbdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4dc12e14a6944559b6b592d0efbe0f8b', '74699', '�Ĵ�־Զ�α�ҩҵ�������ι�˾', '��Ŀ����Ƭ', 9.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ŀ����Ƭ', 'Ƭ��', '0.64g', '60', 'mmsqp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4dd7e4b6faa84d9da58c787346048437', '46676', '�������ҩҵ�ɷ����޹�˾', '���Ծ�ע��Һ', 30.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���Ծ�ע��Һ', 'ע��Һ', '10ml', '1', 'xnjzyy,xnjzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4eb16cf5d09f42f78a6899bf270b04cd', '82586', '�㶫�����ҩ���޹�˾', '��ʯͨƬ', 4.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ʯͨƬ', 'Ƭ��', '�ɽ���0.25g', '100', 'jdtp,jstp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4f00404998f844fd91f72cf4fedd520c', '46724', '��������������ҩ���޹�˾', '����ƽ', 45.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������Ƭ', 'Ƭ��', '50mg', '30', 'eqbtp,ekbtp,akbtp,aqptp,akptp,ekptp,aqbtp,eqptp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4fd91a66a78b4a7f9dd20d3f566bf5a6', '103179', 'ɽ������ҩҵ�ɷ����޹�˾', '׳��������', 4.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '׳��������', '������', '5.6g', '10', 'zyjsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4fe5a49a5a30468c9a42415caf1f5bb1', '71788', '�㶫ǿ��ҩҵ���޹�˾', '������', 29.79, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', '���ܽ���', '0.25g', '24', 'ldhpd,ldhbd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4fe9076d6fbd4651b1b9185da2339e03', '89236', '���������ҩ�ɷ����޹�˾', '��', .07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������հ�', 'ע��Һ', '1ml:10mg', '1', 'jylpa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4ff078a50c5e4b498e90243a4e71d4fd', '61893', '�Ϻ���ɽҩҵ���޹�˾', '��ŵ����', 4.93, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ŵ����', 'Ƭ��', '0.1g', '100', 'fnbt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('50b7d506a40a41fe8c2bb3e2cd1ae1fc', '108348', '�Ĵ�������ҩ���޹�˾', '����������Ƭ', 2.11, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������Ƭ', 'Ƭ��', '30mg', '100', 'ffhlsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5155f8d1753a49d58fea8e9d208f7d23', '91865', '���ϻ�����ҩ���޹�˾', '��������', 8.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'ˮ����', '3.2g��1.6g/10��', '12', 'mrrcw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('51a68eb4f40d46a8b661d0ab9ec18a51', '55409', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '���Ǳ����ע��Һ', .11, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���Ǳ����', 'ע��Һ', '2ml:0.25g', '1', 'eqbcj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('528bbec5eae34b25a228e606995fcc9b', '61580', '�ɶ�������ҩ���޹�˾', '�����ۻ��ڷ���Һ', 25.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����ۻ��ڷ���Һ', '�ڷ�Һ', '10ml', '10', 'yxmhkfry', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('538ba7f2cff04dd0811ccabf9db9d8f3', '46067', '��������ҩҵ���޹�˾', '���Ƚⶾ�ڷ�Һ', 9.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���Ƚⶾ�ڷ�Һ', '�ڷ�Һ', '10ml(������)', '10', 'qrxdkfy,qrjdkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('53f7e251f3f5480ba88b505a8ea1f31c', '56459', '�Ϻ��񶫺���ҩҵ���޹�˾', '��', 1.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '�Ȱ����', 'ע��Һ', '20ml:6.3g', '1', 'yasj,gasj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5405995fbba44f14a7e052b8bba32a58', '108204', '�˲��˸�ҩҵ�������ι�˾', '������͡����', 12.87, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������͡', '����', '10mg', '24', 'xftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5410a6c1fb0e4caf9e0fac8e79b737cc', '99773', '��ʿ����ҩ���Źɷ����޹�˾', '�������', 12.96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', '����', '0.551g', '10', 'chdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('545cc7658f394f968f165a38a1667d37', '89168', '�人����ҩҵ���Źɷ����޹�˾', '�ڼ��׷���', 4.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ڼ��׷���', '������', '9g', '10', 'wjbfw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5478c41194f04e75bb4c671d0f6e1bf3', '80559', '���Ͽ�����ҩ���޹�˾', 'ͷ������', 1.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ������', '����', '1.0g', '1', 'tbld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('55340070b44f49f7b1c789ec048d3cf2', '47009', '�Ϻ�����ҩҵ���޹�˾', '���᲼�ȿ���ע��Һ', .74, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���ȿ���', 'ע��Һ', '5ml:37.5mg', '1', 'bbqy,bbky', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('55890b034e234712b159dfacc34b40cc', '93971', '�ӱ����ҩҵ�ɷ����޹�˾', '�Ȼ���ע��Һ', .14, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '0.9%�Ȼ���', 'ע��Һ', '10ml', '1', '0.9%lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('55c08af7724746e6896330d3999afacb', '93081', '����ҩҵ�ɷ����޹�˾', '���������������Һ', 1.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������', '����Һ', '5ml:25mg', '1', 'smle', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('563723fdae09473ea241337f80e14192', '78777', '���պ���ҽҩ�ɷ����޹�˾', '����', 7.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����', '����Һ', '100ml:2.0g', '1', 'blf', null);
commit;
prompt 200 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('57d15cbc5ee048288ef0782875b89612', '68027', '����������ҩ���޹�˾', '��ĸ�ݽ���', 21.24, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ĸ�ݽ���', '����', '0.35g', '36', 'ymcjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5883b0de354c4873bdb601cb5d8a1eea', '109503', '���Ͽ���ҩҵ�ɷ����޹�˾', '޽������Ƭ', 4.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '޽������Ƭ', 'Ƭ��', '0.3g', '36', 'hxzqp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('86b883c9b69545bd8b6c79bd90515896', '91476', '�㽭�����ҩ�ɷ����޹�˾', '����������Ƭ', 3.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������Ƭ', 'Ƭ��', '5mg', '100', 'cspnsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('86b962408f8840f6a05a58aac720b8b2', '77813', '�Ϻ�ҽ����е(����)���޹�˾�������ϳ�', '�ؽ�ֹʹ��', .6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ؽ�ֹʹ��', '�𽺸��', '7cm*10cm', '2', 'gjztg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('86f8f0650fcd4eaf9ca8ed931e5013be', '68280', '�ߺ��ź㴺ҩҵ���޹�˾', '��ɰ��θ��', 2.95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ɰ��θ��', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'xsyww', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8716ba5a0c4e447c9859cdaa220ef49f', '57056', 'ʯ��ׯ����ҩҵ�ɷ����޹�˾', '������������', 11.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������������', '����', '0.35g', '24', 'lhqwjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('04f12f0e8de34d0ab6fe104a28eea0e9', '93964', '�ӱ����ҩҵ�ɷ����޹�˾', '̼������ע��Һ', .14, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '̼������', 'ע��Һ', '10ml:0.5g', '1', 'tsqn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('052bd08468054a508945edc0663ef907', '58691', '���������ҩ�ɷ����޹�˾', 'ά����B4', 3.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ά����B4', 'Ƭ��', '10mg', '100', 'wssb4', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('05c4a8928cfa4cd3b27f250a563f7159', '110248', '�㽭̩��ɭҩҵ���޹�˾', '����ͬ', 26.17, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ƽ', '����Ƭ', '20mg', '60', 'xbdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('067bd0c00aa34e8e860a2842f46865a3', '108606', '�ÿ�ҩҵ���ű���������ҩ���޹�˾', '������Τ', .65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������Τ', '����', '10g:0.3g', '1', 'axlw,exlw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('070d3f60e1964ef98cefadf3f9519525', '91863', '��������ҩҵ���޹�˾', '��', 36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ڷ���Һ�΢�', 'ɢ��', '5.125g', '6', 'kfbyy��', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('07269f7292594b419ff703da7df3bb4c', '105977', '�����û�ʿҩҵ(����)�������ι�˾', '����Ƭ', 35.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ƭ', 'Ƭ��', '0.5g', '48', 'wbp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0740a64ebb9a4c88b9fc8e00d0536a1c', '77044', '��������ҩҵ���޹�˾', '������˨', 2.46, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '˨��', '0.5g', '10', 'jxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('086ea1e0ca6e4b22a8d49b1118fcf33b', '107267', '����ҩҵ�ɷ����޹�˾', '��Ī���ַ�ɢƬ', 1.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����', '��ɢƬ', '0.125g', '12', 'amxl,emxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0893333f6d6d471a96f18979267cc8fa', '69282', '����ʡ������ʢҩҵ�ɷ����޹�˾', '���Կ�����', 4.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���Կ�����', '����', '0.25g', '36', 'xnkjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('08fbc75ee63f40718770b4ca671ad75a', '75231', '��������ҩҵ���޹�˾', '����', 9.03, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ͪ', '��ɢƬ', '10mg', '30', 'dplt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0947a91fc1c04c6fbd70c20a1c9b6b3f', '2013013', '������ҩ', '�ʲ�Ƭ', 8.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�ʲ�Ƭ', 'Ƭ��', '����', '100', 'gcp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('09ef367a3eb14edeadbecfbd13d2f718', '97483', '���ֻ�����ҩ���޹�˾', '��ɳ̹��ɢƬ', 24.32, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ɳ̹', '��ɢƬ', '80mg', '14', 'xst', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('09faeb5d29ee4b10adf42a6b6a433272', '85316', '���պ�ҵҩҵ���޹�˾', '�ɽ�ĸ', .37, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�ɽ�ĸ', 'Ƭ��', '0.2g', '100', 'gjm,gxm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0abf9139cd7942e09655a707b83a8237', '54172', '���Ͽ���ҩҵ���޹�˾', '5%������', 1.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '5%������', '����Һ', '500ml(��ƿ)', '1', '5%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0bc5fbcc037e4ed08d803f060a10a62d', '58045', '�Ǳ�ҩҵ���Źɷ����޹�˾', '�Ǳ���ά', 6.49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ܰ�', 'Ƭ��', '0.5mg', '20', 'jga', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0bf087a5ab8a49c6b5cbbffe953bd1ff', '83015', '����ҩҵ�ɷ����޹�˾', 'ɢ��ͨ', 5.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������������(II)', 'Ƭ��', '������������0.25g:��ˮ������50mg:����������0.15g', '10', 'ffdyxajf(ii)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0c437a8b2ef94d77b8e332516be8bf8b', '51550', '���ݰ���ɽ������ҩ�ɷ����޹�˾', 'ʩ����', 5.81, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ī����/����ά���', '����', '0.3g(5:1)', '1', 'emxl/klwsj,amxl/klwsj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0cc65179571d4bf79288241a9c8b5c09', '56760', '�人�徰ҩҵ���޹�˾', '����ƽ', .62, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ƽ', '����Һ', '10ml:5mg', '1', 'lfp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0ce5764adb6942089d8656c038d5fd55', '62419', '�����ǰ��ɭҩҵ���޹�˾', '����������ɳ�ǵ���Һ', 4.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������ɳ��', '����Һ', '5ml:15mg', '1', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0d66d3b2c5c44a6b86c41005cc69e0d6', '85783', '��ҩ��������ʩ��ҩҵ���޹�˾', '̩��ƽ', 25.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ͪ', '����', '15mg', '20', 'pglt,bglt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0d96f45f6023450daef5bacb8c2b8be4', '89895', '���ҩҵ������֣�ɷ����޹�˾', '��', 1.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', 'ע��Һ', '1ml:1mg', '1', 'ssxs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0da3e9def2ad4002bb1ffce8324cd9eb', '104043', '������ҩҵ���޹�˾', '������', 10.45, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'ˮ��', '10(3.125g/1000)', '6', 'lsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0dc9b8d94643428488fbc7bcf6826a84', '50048', '�人�˸�ҩҵ�������ι�˾', '�϶�ŵ', 2.51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����', '����Һ', '25ml:0.5g', '1', 'blf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0df54ee3f0aa4b339b7b81569938e792', '109926', 'ɽ������ҩҵ���޹�˾', '�俵��', 1.05, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�俵��', '����', '10g:0.2g', '1', 'mkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0e64c6a4e76f45ea9cead3cb44a6319a', '105755', '����ǧ���潭ҩҵ�ɷ����޹�˾', '��ɳ̹', 7.96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ɳ̹', '����', '80mg', '7', 'xst', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0f28ec9fcd8c4f90af5bea7253edb026', '52374', 'ͨ������ҩҵ�ɷ����޹�˾', '������30R', 46.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '30/70����������ȵ���', 'ע��Һ', '10ml:400IU', '1', '30/70hhczryds,30/70hgzzryds,30/70hgczryds,30/70hhzzryds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0f2b57c01238482ea8eb816081782baf', '106370', '�㶫�������ҩ���޹�˾', '��', 3.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'ˮ����', '60g', '1', 'hjw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0f4cd71400ff400c9ae752518a529199', '89528', '����ҩҵ�������޹�˾', '˫�״�Ī', 1.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '˫�״�Ī', 'Ƭ��', '25mg', '100', 'smdm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0f71ca345cee465e8d7898f7fd5589b2', '92978', '��ɽ��ԭ��ҩ���޹�˾', '������', .16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', 'ע��Һ', '1ml:10U', '1', 'sgs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0f81075ffd8149a5be9953850820a6f2', '58331', '�Ǳ�ҩҵ���Źɷ����޹�˾', '�����', 1.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '�����', 'ע��Һ', '5ml:0.2g', '1', 'ggs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0fa4efc77f6941acbf690c5e6c793d92', '107055', '���ݵ�����ҩ���������ι�˾', '��Ī��ƽ����', 3.54, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī��ƽ', '����', '20mg', '50', 'nmdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('10eaea9fbd434bf39096cf6268057445', '64282', '��������̩ҩҵ�ɷ����޹�˾', '��ϣ͡', 26.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ������', '����', '1.0g', '1', 'tbxd,tbxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1115dd8d105940d99a93c52a849b1735', '92522', '���ϰ��꿵��ҩҵ���޹�˾', '����������', 3.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', 'ˮ��', '6g', '10', 'hlsqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1136d643e1ce4e5dac51bf0f471ee73c', '47310', 'ɽ������ҩҵ�ɷ����޹�˾', '��������', 1.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', '������', '0.1g', '4', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('113ed8a58b904d399f2b8953f3c511d6', '68279', '�ߺ��ź㴺ҩҵ���޹�˾', '��ɰ������', 3.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ɰ������', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'xsljw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1163be770fac40ffbd89ec681d13ac07', '48063', '����̫��ҩҵ�ɷ����޹�˾', '10%������', 1.24, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '10%������', '����Һ', '500ml', '1', '10%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('11af73a58269462b958d5e6ab7e78b17', '77453', '��������ҩҵ���޹�˾', '����ҽ���', 1.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����', '����', '0.2g', '20', 'blf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1203a215994e4948a5c718c180ba6d6f', '93618', '��������ҩҵ���޹�˾', '��', 2.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ɽݹ�м�', 'Ƭ��', '5mg', '100', 'sldj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('120d5e41f9634390b3112a1f43fd5b9e', '88828', '�㶫������ҩ���޹�˾', '/', 14.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����', '/', '30', 'smjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('135c294b1178417aa22a99873a2fe647', '53999', '����ҫ���ź�����ҩҩҵ�ɷ����޹�˾', '����Τ��', .2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����Τ��', 'ע��Һ', '2ml:0.25g', '1', 'lbwl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1369c8e22f4d46e7aac6c875bc546d0a', '2013008', 'ɽ������ˮ', '���̽ⶾ��', 3.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���̽ⶾ��', '������', '9g', '10', 'yqjdw,yqxdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1374ac5a82d547c48ec9def9d6488511', '76210', 'ɽ����³��ҩ���޹�˾', '��ŵ���ؽ���', 2.02, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ŵ����', '����', '0.1g', '20', 'fnbt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('147104c23dcc4de78a464f40248c9283', '90473', '�Ϻ��̷���ҩ���޹�˾', '�屴��', .82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�屴��', 'ע��Һ', '1ml:3mg', '1', 'lbl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('14cd5dea3eff4f11919fa13667045a43', '91489', '������ҩ(����)���޹�˾', '50%������', .26, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '50%������', 'ע��Һ', '20ml', '1', '50%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('16118b75471343d5b2a7a5e72ee22612', '91919', '�㽭����ҩҵ���޹�˾', '���ỷ��ɳ�ǽ���', 1.02, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ɳ��', '����', '0.25g', '10', 'hbsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('16162f8aaebc49d0a00ffc3d8d60a7c9', '106757', '����ŵ��ʤ��ҩ���޹�˾', '����������', 3.85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������', 'ˮ����', '60g', '1', 'twbxw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('175f0c9d3f2e4d8a8e6cb8eedceebda6', '46814', '�����췽ҩҵ�ɷ����޹�˾', '����«��', 4.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����«��', 'Ƭ��', '60mg', '100', 'qklz,qkld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1777a34e931a4d4b9b0e3e80752252da', '47896', '�ӱ�����ҩҵ���޹�˾', '�忪��ע��Һ', 1.21, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�忪��ע��Һ', 'ע��Һ', '10ml', '1', 'qklzsy,qklzyy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('17c2b806bb0b46ebaaf482d40457cb34', '54374', '���ƣ���ɽ��ҩҵ���޹�˾', '�˲ν�ƢƬ', 16.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�˲ν�ƢƬ', 'Ƭ��', '0.25g', '24', 'rcjpp,rsjpp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('18162392eecc40dead7ec721644096a5', '108174', '�Ǳ�ҩҵ��ͬ��ҩ���޹�˾', 'ţ��������', 2.75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ţ��������', '������', '6g', '10', 'nhsqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1817b2127f5549fc8ad7d5579778208b', '71348', '�ɶ�������ҩ���޹�˾', '����Ѫ��������', 49.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ѫ��������', '����', '0.5g', '60', 'slxmkjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('18b869252b814daca4b06dc363d11f5a', '108377', '�Ĵ�������ҩ���޹�˾', 'Ԫ��ֹʹƬ', 4.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'Ԫ��ֹʹƬ', 'Ƭ��', '/', '100', 'yhztp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('18e228817fb745fa8cfd1e0c025aa6e9', '62951', '�Ϻ��ִ���ҩ�ɷ����޹�˾', '��������', 3.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'Ƭ��', '5mg', '16', 'ynpl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6979e47cb0674b1aa00664b666fa1412', '70396', '������ҩ�ɷ����޹�˾', 'ע����ͷ�������', .96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ�����', '����', '1.0g', '1', 'tbsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6a516d400b4846fda944c50241518ff9', '63046', '������ʥ̩������ҩ���޹�˾', 'Ѫ˨ͨ', 2.63, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'Ѫ˨ͨ', 'ע��Һ', '2ml:70mg', '1', 'xst', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6a941e35409542438460ac93788eaaed', '52169', '�㽭����ҩҵ���޹�˾', '�Ŷ������þƬ', 7.64, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '�Ŷ������þ', 'Ƭ��', '��ˮ�Ŷ������79mg:��ˮ�Ŷ�����þ70mg', '100', 'mdasjm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6b44848eaee14786b6165f3adbd8e06b', '54113', '���Ͽ���ҩҵ���޹�˾', '10%������', 1.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '10%������', '����Һ', '500ml(��ƿ)', '1', '10%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6bdaf0e4a68e49a0a4ed2986e2443a74', '65631', '��������ҩҵ���޹�˾', '������', 6.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'Ƭ��', '20mg', '100', 'lnz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6d308572837645bcb7a0c5f37d09fd55', '47443', 'ɽ������ҩҵ���Źɷ����޹�˾', 'άA�����', 7.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'άA��', '����', '15g:15mg', '1', 'was', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6d77a12479a74f778d7916297c24ce1a', '107076', 'ɽ����Ԫʢ����ҩ���޹�˾', '���������', 4.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', '������', '9g', '10', 'yyqfw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6db80c96679f4546a5da693ddb534b64', '87465', '����������ҩ���޹�˾', '������ҩƬ', 4.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ҩƬ', 'Ƭ��', '0.3g', '36', 'sqsyp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6e0ff7c60c6e4abeac9373a36e8899fd', '109472', '�����ºͳ�����ҩҵ���޹�˾', '��������', .82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '10g:5mg', '1', 'dsms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6e90f5d6b51f4f28903c5e13a58cbcdc', '88829', '�㶫������ҩ���޹�˾', '/', 23.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', '������', '5g', '15', 'ypfkl,ybfkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6ed9ed461c1a4b74912391c2457eae21', '109126', '������ҩ(����)���޹�˾', '��������', 1.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '25mg', '100', 'ktpl,qtpl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6fe789f257994e1bae3199b484596aa0', '56509', '�Ϻ��񶫺���ҩҵ���޹�˾', '��ɽ�', 13.53, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '����Һ', '5ml:1.0g', '12', 'ltl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6ff4a2a459a34b1f88a4cc77777a9648', '56133', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��ŵ��', 11.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '�ض���׿', '����', '10mg', '1', 'delz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7087e11ce08548aa8197a7f0a83330ea', '66502', '�㶫����ҩҵ���޹�˾', '���������', 17.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', '˨��', '0.5g', '6', 'ldhpd,ldhbd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('716b6cf33408448ca41a20a8e50aa30d', '91480', '������ҩ(����)���޹�˾', '����������ά��Ƭ', 2.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������ά��Ƭ', 'Ƭ��', '25mg', '100', 'jysptwlp,gysptwlp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('719ea6ea93e94eaea17835fa429f032b', '110250', '�㽭һ����ҩ�ɷ����޹�˾', '������', 19.94, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����', '5mg', '36', 'ynpl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('71d543e7dd524aae8f5b576505fa57b8', '52442', '�Ĵ�����ҩҵ�ɷ����޹�˾', '������ΤƬ', 2.22, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ΤƬ', 'Ƭ��', '0.1g', '24', 'axlwp,exlwp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('72171a6bb3a04fd8a7c5076322fd4262', '47777', '��������ͨҩҵ�������ι�˾', '����ɳ��', 2.77, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ɳ��', '����', '0.4g', '1', 'yfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('72972e11db6c41ad945ad3d45b5d0a59', '48455', '����ͬ������ҩ���޹�˾', '������ὺ��', 28.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ὺ��', '����', '0.5g', '40', 'xlgbjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('72a266d54e5e4f5ebe47837ea6b030ac', '83834', '�人����������ҩҩҵ���޹�˾', 'ͪ������', 5.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͪ����', '����', '0.2g', '12', 'tkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('72e7844eae97404ab5fff33a99e8eb14', '55417', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '����«��ע��Һ', .1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����«��', 'ע��Һ', '2ml:60mg', '1', 'qklz,qkld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('731eae09c63d40d78eda5620eef75cd8', '98561', '���ϰٲ���ҩ���޹�˾', 'ͷ������Ƭ', 5.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ������', 'Ƭ��', '0.25g', '24', 'tbld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7369bed2e64242d49c17bb8eebc90627', '57798', '�Ĵ�����ҩҵ�ɷ����޹�˾', '����ע��Һ', 1.79, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ע��Һ', 'ע��Һ', '2ml', '1', 'smzyy,cmzsy,cmzyy,smzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('73b1dc51f66143c99bb85d42339de4f5', '56720', '�Ϻ���������ҩҵ���޹�˾', '��������', 1.73, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '10mg', '1', 'ftlm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('73ea12afacd84cf098c054558b5122d6', '54024', '���Ͽ���ҩҵ���޹�˾', '0.9%�Ȼ���', .93, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '0.9%�Ȼ���', '����Һ', '100ml(��ƿ)', '1', '0.9%lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('73f7360a9d404946af74451701456de1', '73112', '�人��������ҩҵ���޹�˾', '������', 1.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', '����Һ', '250ml:1.25g', '1', 'jxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7403a26afc0d43cd835edbdf32c4ca25', '70951', '�Ϻ����ķ���ҩ���޹�˾', '���ط�', 31.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ŵ����', '���ͽ���', '0.25g', '10', 'fnbt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7447ffa30c4d4408b35265d5606e4c5d', '71018', '����ʡ������ҩ�ɷ����޹�˾', '޽��������', 6.99, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '޽��������', 'ˮ��', '6g', '10', 'hxzqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7472990959574422a0e6073fe593ce77', '109646', '�����췽ҩҵ�ɷ����޹�˾', '�������', 7.74, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����˫��', '����Ƭ', '0.5g', '32', 'ejsg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('74b02231f3e64abaa36cc0a31fc95d8a', '103452', '����ҩҵ�ɷ����޹�˾', '��/����֬����(C8-24)ע��Һ', 81.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��/����֬����(C8-24)', '����Һ', '250ml(20%)', '1', 'z/clzfr(c8-24),z/zlzfr(c8-24)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('756b8b3211784943a1384ef8c24c0ea6', '58297', '�㽭��Ԫ��ҩ���޹�˾', '̩��', 1.09, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�޺�ù��', 'Ƭ��', '0.15g', '6', 'lgms,lhms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7578ce34534046f8b2da7ab29d13b1e4', '109719', '����ҩҵ�ɷ����޹�˾', '�����', 3.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����', '����Ƭ', '0.3g', '10', 'blf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('757ba73b9a5b40409fd5648b70a31c88', '67602', '����������ҩ���޹�˾', '����ͨ����', 33.66, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ͨ����', '����', '0.4g', '48', 'nxtjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7634afa372764b959aea15e1e1c7b431', '79184', '����ҩ��������ҩ���޹�˾', '轾յػ���', 2.52, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '轾յػ���', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'qjdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('76785f61dc3348de906fd6e72f223303', '56180', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��������', .32, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '0.5g', '1', 'abxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('769cae6d859d4aef980cc76eb759a694', '82240', '�Ĵ�����ҩҵ�ɷ����޹�˾', '������ע��Һ', 2.02, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '������ע��Һ', '����Һ', '100ml��5g(��ƿ)', '1', 'pttzyy,pttzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('76d15eb3b7fa4bd8a033dc7476ae14cd', '106272', '�Ϻ��ƺ���ҩ�������ι�˾', '�Ȼ���', 4.52, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�Ȼ���', '����Ƭ', '0.5g', '24', 'lhj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7733abc9a10c402cb433e4d2c502ff1c', '86666', '���ݰ���ɽ������ҩ���޹�˾', '�忪�����', 15.36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�忪�����', '������', '3g', '12', 'qklkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('776f4381510a416f87567e4d0aaa2a4c', '69370', '������ҩ�ɷ����޹�˾', 'ע����ͷ�������', .66, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ�����', '����', '0.5g', '1', 'tbsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('777a66de1d854a288f500a5e2540a4af', '60436', '�������������ҩ���޹�˾', '����������ע��Һ18AA', 13.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������(18AA)', '����Һ', '250ml:30g', '1', 'ffajs(18aa)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('77ced6cdf88e4e1aac57cd948b91b92c', '109155', '���Ͽ���ҩҵ�ɷ����޹�˾', '����к����', 2.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����к����', 'ˮ��', '6g', '10', 'ldxgw', null);
commit;
prompt 300 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('781f949b0cf74aa58b072a0551dc11f2', '47445', 'ɽ������ҩҵ���Źɷ����޹�˾', 'άA�����', 5.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'άA��', '����', '15g:3.75mg', '1', 'was', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('785bfdec61c347adaed1f9c470dfdfff', '56110', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��ŵ����', 1.05, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ��߻��', '����', '0.75g', '1', 'tbfx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('78b962622aa24e7c83e8584faefa481f', '74361', '����ҫ���ź�����ҩҩҵ�ɷ����޹�˾', '���������ն���', .11, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���������ն���', 'ע��Һ', '2ml:20mg', '1', 'slsxgen', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('78e321aca48344c49993b22679d53aca', '46043', '������ҩ����������һ��ҩ���޹�˾', '��', 1.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù����', '����', '1.0g', '1', 'lmsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('79c107fc0ac64c91ac4dd1c426548fc9', '109369', '�Ϻ��տ�ҩҵ���޹�˾', '��ȥ������', 6.13, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ȥ������', 'Ƭ��', '50mg', '30', 'xqyds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7a679107a4b645938014f4a9c7b5713c', '89451', '�㽭��̫ҩҵ�ɷ����޹�˾', '������ͪ', 2.87, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������ͪ', 'Ƭ��', '50mg', '100', 'plpt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7b65916811354281b4a3adad9f49a596', '80134', '���ݰ���ɽ������ҩ���޹�˾', '��ݹ�м�', .75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ݹ�м�', 'ע��Һ', '1ml:0.3mg', '1', 'dldj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7c0717abaea842838c18e50ac4a1cb5d', '60873', 'ʯҩ������ҩ���޹�˾', '��Ѫ��ע��Һ', 6.28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ѫ��ע��Һ', 'ע��Һ', '5ml', '1', 'sxnzyy,sxnzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7c0f6d5dbcad4121aff8a2187e9af4cf', '89224', '���������ҩ�ɷ����޹�˾', '��', .89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������', 'ע��Һ', '1ml:5mg', '1', 'xsgy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7c177a1e82854d69868316e41478e6a8', '61111', '�Ϻ��ִ���ҩ�ɷ����޹�˾', '��Ȼ', 15.23, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ƽ����Ƭ', '����Ƭ', '30mg', '6', 'xbdpksp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7d205d31529a4eca8e2919f18804c4e3', '64521', '����ҩҵ�������޹�˾', '���������', 9.73, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', '����', '0.3g(0.11g)', '40', 'jysbj,gysbj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7d4096abe3db4af9a8c1f03bfec13105', '56504', '�Ϻ��񶫺���ҩҵ���޹�˾', '��', 4.75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����ε�', 'ע��Һ', '5ml:50mg', '1', 'qand', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7deae9b879cb49079cc8018e02b0896c', '105971', '�㽭����ҩҵ���޹�˾', '�Ȼ���', .48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�Ȼ���', 'ע��Һ', '10ml:1.5g', '1', 'lhj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7dedadad3512487d937e9e383f543c50', '101312', 'ʯ��ׯ��ҩ���޹�˾', '��', 5.97, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ض���׿', 'Ƭ��', '30mg', '60', 'delz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7e52483bc4304e6ea37e8ece76d77eb4', '71862', '�Ĵ�������ҩ���޹�˾', '��ø', 2.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ø', 'Ƭ��', '��ø0.3g:θ����ø13mg', '100', 'dm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7e6d914cf1ee441dac78054e60c2f9f8', '100785', 'ɽ������ҩҵ���޹�˾', '�������', 9.72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������', 'Ƭ��', '5mg', '40', 'fglq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7e6f21748f5d4688960553dc6d42fe0a', '70863', '��������ҽҩ�ɷ����޹�˾', '��Ƣ�泦��', 11.13, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ƣ�泦��', 'ˮ����', '90g', '1', 'bpycw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7efd9e96bd6b424ab180f930a683fb34', '95439', '���������ҩ�ɷ����޹�˾', '��', .22, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�Ŷ������þ', 'ע��Һ', '10ml:0.85g:0.114g:42mg', '1', 'mdasjm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7f216de2f4af450d9a39b67907c5aec6', '90992', '���������ҩ�����ţ����޹�˾', '����Τ��', 2.07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Τ��', 'Ƭ��', '0.1g', '20', 'lbwl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7fd4aed67c3243529ce270a2a363583b', '109882', '��������ҽҩ�ɷ����޹�˾', '����θ̩����', 14.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����θ̩����', '������', '2.5g�������ͣ�', '10', 'sjwtkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7fdd90eab1ac4055b95380e678b65c30', '107262', '����ҩ���ʺ���ҩ���޹�˾', '轾յػ���', 3.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '轾յػ���', 'ˮ����', '6g', '10', 'qjdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7ffa850b596b4334ad0d413002226c67', '57071', '�����������ҽҩ�ɷ����޹�˾', '������п�ȵ���', 12.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������п�ȵ���', 'ע��Һ', '10ml:400IU', '1', 'jdbxyds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('80160429d3a34e36805a2592b31e8883', '66292', '�Ϻ�������ҩ���޹�˾', '�������', 15.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������', 'Ƭ��', '0.25g', '100', 'zxdb', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('811874538aab425a8bf65e209888a71f', '105987', '���ո���ҩҵ�������ι�˾', '��ĸ�ݸ�', 6.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ĸ�ݸ�', '����', '250g', '1', 'ymcg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('81286286ef2a42ab9d557deecca0366b', '76722', '��������ҩҵ�ɷ����޹�˾', '����ͪ', 9.02, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ͪ', 'Ƭ��', '0.2g', '24', 'adt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('815082459c1a43b5a6f00dd9d4222b0b', '48183', '����̫��ҩҵ�ɷ����޹�˾', '�������Ȼ���', 1.26, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '�������Ȼ���', '����Һ', '500ml', '1', 'pttlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8184e03103ac4ed2a9f6850db5cde399', '76674', '����ҩҵ�������޹�˾ԭ(����ҩҵ���޹�˾)', 'Ԫ̹', 19.27, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ື�ɢƬ', '��ɢƬ', '5mg', '40', 'glbqfsp,glpqfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('82678db3ce444b9a9d2812a65bd5d929', '91104', '���ݰ���ɽ������ҩ���޹�˾', '������ͪ', 1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������ͪ', 'ע��Һ', '10ml:35mg', '1', 'plpt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('826fcc8916f840c5a1d35e85832d5612', '107398', '�ɶ�����ҩҵ�������ι�˾', '��Ī���ֽ���', 2.53, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����', '����', '0.125g', '50', 'amxl,emxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8275157efe7b47a7b635f3f573c75075', '93066', '����ҩҵ�ɷ����޹�˾', '��ù�����', .54, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù��', '����', '10g:0.1g(1%)', '1', 'hms,gms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8291628c992f46be881786de8cf342ee', '90130', '�Ϻ�ͨ��ҩҵ�ɷ����޹�˾', '����غͪע��Һ', .55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����غͪ', 'ע��Һ', '1ml:25mg', '1', 'bsgt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('83ca759a00e0479c8b303f0b83dcd936', '53071', '����ҩҵ�ɷ����޹�˾', '��ù��', .62, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù��', '����', '10g:0.3g(3%)', '1', 'kmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8401e81d57e744adb455003d1c4a0293', '104327', '�����л���ҩҵ�������ι�˾', '�����Ƭ', 6.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����Ƭ', 'Ƭ��', '0.25g', '100', 'dlcp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('853f86f2e9e548cb99c564d12cfd93ed', '106758', '��������ҩҵ�ɷ����޹�˾', '�Ŵ���������Ƭ', 17.49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����Ƭ', '1.5mg', '30', 'ydpa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8540fbc178594e95906e38780da970a4', '85950', '���ҩҵ������֣�ɷ����޹�˾', '��', .07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���ע����ˮ', 'ע��Һ', '5ml', '1', 'mjzyys,mjzsys', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('855a471edd20484c996f821595d1c064', '79170', '����ҩ��������ҩ���޹�˾', '��Ƣ��', 3.21, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ƣ��', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'gpw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8579112e67534c49bc3881d984844b14', '100354', '�ɶ�������ҩ���޹�˾', '����', 12.47, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', '��ɢƬ', '0.125g', '12', 'klms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('85832d2699734e398118c86c90fc9e41', '87355', '������ҩҵ�ɷ����޹�˾', '�����', 28.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�ͷ��Ӹ��ظ�', 'ע��Һ', '0.6ml:6000AXaIU', '1', 'dfzgsg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8588889818184c5b84c7ae2dccc288f3', '93879', '�������ҩҵ���Źɷ����޹�˾��������ҩ��', '�ڼ��׷�Ƭ', 26.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ڼ��׷�Ƭ', 'Ƭ��', '0.5g', '24', 'wjbfp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('85aa0dec365b4f248abfb631761486e0', '56058', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '����', 1.95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ�����', '����', '2.0g', '1', 'tbsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ea4d687bdc35455dbb2cb891893397d1', '108076', '�Ǳ�ҩҵ���Źɷ����޹�˾', 'Īɳ����', 17.49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'Īɳ����', 'Ƭ��', '5mg', '24', 'msbl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ea64ed5a06354f2a8884e93a65d79cde', '391725', '����������ҩ���Źɷ����޹�˾', 'ע����Ѫ˨ͨ', 33, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ע����Ѫ˨ͨ', '���ɷ����', '0.15g', '1', 'zsyxst,zyyxst', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ea9d86cd77e44763b20a0c8f39cb3f7e', '79378', '������������ҩ���޹�˾', '����ɳ���Ȼ���', .84, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����ɳ���Ȼ���', '����Һ', '100ml:0.2g', '1', 'hbsxlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('eab3812405074c899ef53f207c955683', '106955', '�㽭���念ԣ��Ȼҩ�����޹�˾', '����������', 4.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', '������', '3g', '20', 'blgkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('eb498b7eb0254a109ca8cfe3a8477d6b', '55593', '�˲�����ҩҵ���޹�˾', '����ù��', 2.24, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', '��ɢƬ', '0.25g', '6', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('eb9128117118467d88446139bde1542a', '61160', '�㽭��������ҩ�ɷ����޹�˾', 'ǰ�п�', 13, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���ְ�����', '����', '0.375g', '120', 'plajn,pyajn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('eba67f8a507b4ea992371e874bb7a463', '109534', '���������ҩ�����ţ����޹�˾', '����ù��', 3.77, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', 'Ƭ��', '0.125g', '12', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ec18ce5788264824b8896c14fa3b8bc2', '56410', '�Ϻ��񶫺���ҩҵ���޹�˾', '��', 6.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��øQ10', '����', '10mg', '60', 'fmq10', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ec19b738a1b64f7ba253c4b0c89ddef0', '58495', '���������ҩ�ɷ����޹�˾', '��غͪ', 5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��غͪ', 'Ƭ��', '5mg', '100', 'jgt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ed4f138d412a4283b802e387513b324a', '109096', '�Ĵ�����ҩҵ�ɷ����޹�˾', '���ƿ���', 2.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ƿ���', '������', '4g', '10', 'yhkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('edcb314a41d24d608514eec9ae3c0ae4', '107755', '�ӱ����ҩҵ�ɷ����޹�˾', '��˾ƥ�ֳ���Ƭ', .63, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '��˾ƥ��', '����Ƭ', '25mg', '100', 'aspl,espl,asyl,esyl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('edfe3f293efe4c6b87cf831770583c86', '109651', '�����ϲ�������ҩ��', '����������', 5.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', '������', '10g', '24', 'blgkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ee2e80202d3741a5af1839a5492f0cc4', '109612', '�Ĵ�������ҩ���޹�˾', '����', 8.96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī�涡', '��ɢƬ', '20mg', '36', 'fmtz,fmtd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ee70cafa59e14d17bbf402f58f166bf3', '45625', '������ҩ���޹�˾', '����ƽ', 1.27, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������Τ', 'Ƭ��', '0.1g', '30', 'axlw,exlw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('eeb5ff3f7b33444694363fbedeebb75d', '92958', '����Ͽ��ŵά��ҩ���޹�˾', '��ø��', .9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ø��', 'Ƭ��', '0.15g', '100', 'rms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('eee95a025e1146aaa8c9de27b04344fc', '106338', '����������ҩ�ɷ����޹�˾', '������', 2.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '�ڷ�Һ', '30ml', '8', 'xzl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f08d50951abe4a4bbce949bc0eb636c6', '78106', '��ɽ��ԭ��ҩ���޹�˾', '��øA', 1.26, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��øA', '����', '200U', '1', 'fma', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f09bd5ff8814402194c86c3067138c1d', '67885', '����̫����ҩ���޹�˾', '���������', 19.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', 'Ũ����', '1.85g/10', '96', 'nxllw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f0c6dfbf5a4648b78f562cc401203290', '89739', '��ҩ����������ҩ���޹�˾', '�ȱ�����', 3.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�ȱ�����', 'Ƭ��', '4mg', '1000', 'lbnm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f2072d1d12e84c959b95c3902629845b', '47869', '�ÿ�ҩҵ�������޹�˾', '��������', .86, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '40mg', '1', 'amlz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f2ad0c9e44794f3fa4b2b8a670062c75', '108670', '������������ҩ�������޹�˾', '�����Ƭ', 1.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '�����Ƭ', 'Ƭ��', '0.2g', '100', 'cwjp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f30ccd5c66cb4c01a4eb2ff5fb510b1d', '54854', '���ϸ��ʻ�������ҩ���޹�˾', '��ܺ�', .09, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ܺ�', 'ע��Һ', '2ml:40mg', '1', 'cxq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f3393e3870b043cd9b411f88ee1623aa', '78991', '����ҩ��������ҩ���޹�˾', '����������', 2.53, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '����������', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'bzyqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f34f5fc6b69c44ac820f04d9346b5a82', '82424', 'ɽ������ҩҵ���޹�˾', '����ɳ���Ȼ���', .86, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����ɳ���Ȼ���', '����Һ', '100ml:0.2g:0.9g', '1', 'yfsxlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f37a59b45c5746d7b117f96a6bbb659d', '53494', '����ͬԴ��ҩ���޹�˾', '�㵤ע��Һ', .57, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�㵤ע��Һ', 'ע��Һ', '10ml', '1', 'xdzyy,xdzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f39303d518194aa69dc8b384c0658ba9', '79160', '����ҩ��������ҩ���޹�˾', '��ζ�ػ���', 3.51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ζ�ػ���', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'lwdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f3a91ba502584eb1bc06c1c5f590545a', '2013003', '�ӱ���ɭҩҵ', '��˾ƥ��', .6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��˾ƥ��', '����Ƭ', '25mg', '100', 'aspl,espl,asyl,esyl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f3c806965f8642be9d4e78c84249848b', '109212', '�麣������ҩ�ɷ����޹�˾��ɽ�ֹ�˾', 'ͷ��߻����Ƭ', 9.29, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ��߻����Ƭ', 'Ƭ��', '0.125g', '12', 'tbfxzp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f3cd8e3b5bbc44d1bb3080411d4655b9', '74821', '���ϰ�ҩ���Źɷ����޹�˾', '���ϰ�ҩ�����', 29.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���ϰ�ҩ�����', '�����', '50g:60g', '1', 'ynbyqwj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f450af0387604205b7ce23c283eacfb9', '54460', '�麣�����������ﻯѧ��ҩ��', '����ƽ', 17.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ᰱ������ɢƬ', '��ɢƬ', '30mg', '50', 'ysaxsfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f49d0bd14b784e70a64bf402fdca051b', '93760', '����������ҩ����ҩ���޹�˾', '��Ŀ�ػ���', 3.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ŀ�ػ���', '������', '9g', '10', 'mmdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f4f30ddd6e0644ad8c0a12e83014505f', '68382', '�ߺ��ź㴺ҩҵ���޹�˾', '����������', 3.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'fzlzw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f56f78235e7941ec902a41dcb3ff5164', '65927', '���ϻ���ɭҽҩ���＼�����޹�˾', 'ϣŵ', 9.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߿���', '��ɢƬ', '0.125g', '12', 'tbkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f58e5e4887c34b4b9069f0aed1c872c0', '93959', '����ҩҵ�������޹�˾', '����', 1.85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����', 'Ƭ��', '25mg', '100', 'ybq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f5f1be7323584e57980f72a7a0198fc3', '109831', '�Ĵ�����ҩҵ�ɷ����޹�˾', '�������Ȼ���', .85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������Ȼ���', '����Һ', '100ml:0.4g:0.9g', '1', 'txzlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f7445f59bf6b481d9d52cc1b0e74fcb9', '47713', 'ɽ���붼ҩҵ���޹�˾', '20%��¶��', 1.83, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '20%��¶��', '����Һ', '250ml', '1', '20%glc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f744915a53014f20b3bfbf7ca9bc9dd1', '46868', 'ɽ������ҩҵ�ɷ����޹�˾', '������', 1.73, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'Ƭ��', '30mg', '20', 'axs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f7be5ba0a7fe4d6d8244da42ef4365dc', '93197', '�����ǰ��ɭҩҵ���޹�˾', '߻����Ƭ', 2.52, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '߻����Ƭ', 'Ƭ��', '20mg', '100', 'fsmp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f8249a85dd73480198e73e180ac1fd9b', '54328', 'ɽ������ҩҵ���Źɷ����޹�˾', '��������Ƭ', 8.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '0.2g', '100', 'bwsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f83499b85b804910a7396ce0b52b681a', '109588', '�Ϻ���ҩҵ���޹�˾', '��', 36.22, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '������', '1.5g', '36', 'rxw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f87653e12ca547e492ae2779f45e25a4', '59305', 'ɽ��������ҩ���Źɷ����޹�˾', '�����', .48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����', 'ע��Һ', '2ml:0.1g', '1', 'ggs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f91593131ed640269eb4a6d7b4b7b5e4', '109006', '��̨����ҩҵ���޹�˾', '����ͨʥ����', 23.76, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ͨʥ����', '������', '3g', '18', 'fftskl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f961fbe96c414819a86a41140c4eae19', '60236', '��������߿���Ȼҩ�����޹�˾', '���ٻƿڷ�Һ', 18.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ٻƿڷ�Һ', '�ڷ�Һ', '10ml', '6', 'yzhkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3ca9d45b437442b8a9f1b8ef6f83f3ad', '89318', '�����췽ҩҵ�ɷ����޹�˾', 'ά����B6', .07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����B6', 'ע��Һ', '2ml:0.1g', '1', 'wssb6', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0db63f8dc6ee4bee844b12d2a54402c4', '93820', '�Ϻ�����ҩ�����޹�˾', '��', 15.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�⻯�ɵ���', 'Ƭ��', '20mg', '100', 'qhkds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1dc13a2ab4204d629a0431dc117d7c62', '85290', '������ԣҩҵ�������޹�˾', 'Ԫ��ֹʹ����', 3.62, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'Ԫ��ֹʹ����', '����', '0.25g', '24', 'yhztjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2a22e69f9f5e4806be9ef860a2346254', '89717', '�����������ҽҩ�ɷ����޹�˾', '������', 7.86, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', 'ע��Һ', '2ml:1.25WIU', '1', 'gsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('579624a400cd442ba930572492053557', '57677', '���ݹ���ҩҵ���޹�˾', '����', 7.07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������ɳ��', '����Һ', '8ml:24mg', '1', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9051c1b4d16e44cdabb287ed7332b6b1', '94302', '���϶�ͥҩҵ�ɷ����޹�˾', '��', 2.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ऴ�', 'ע��Һ', '1ml:5mg', '1', 'fpdc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a8464dd6e3e34009a07d549a65d86474', '56062', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��ŵ���', 1.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ�����', '����', '0.5g', '1', 'tbtd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b775c07e5c074d3ba724f2e2f5f6aef0', '2013002', '���ݹ�۹ڷ�ҩҵ', '�����Ƭ', 1.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����Ƭ', 'Ƭ��', '0.2g', '100', 'cwjp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9bb97df8bbbd4efea86079f880110b58', '108562', '����ʡ��Ȫ��ҩ���޹�˾', '����ѪƬ', 1.61, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ѪƬ', 'Ƭ��', '/', '100', 'sjhxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('675bfa44762f41dfac50673d00015ddc', '47101', 'ɽ��³��ҽҩ�ɷ����޹�˾', '��', .6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ������', '����', '0.5g', '1', 'tbzl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f8939741e16749a8be469f2691bb24bf', '55087', '�ӱ����ҩҵ�ɷ����޹�˾', '���������ע��Һ', .19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���������', 'ע��Һ', '10ml:1.0g', '1', 'pttsg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c83fa745f67c40ecb1412cd0ebbc8806', '106584', '��կ����Ȼҩҵ�����������ι�˾', '���̽ⶾ����', 2.95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���̽ⶾ����', '������', '15g', '10', 'yqxdkl,yqjdkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e9cbc95f4eb344c1a2deee8380d822c2', '83919', '��̨����ҩҵ���޹�˾', '������', 13.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', '�׽�Ƭ', '0.4g', '24', 'rsjs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2deacc28ec5042f6a93b4a7f8e1c967c', '106688', '���ϰ���ҩҵ���Źɷ����޹�˾', '��ð���ȿ���', 2.61, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ð���ȿ���', '������', '12g', '9', 'gmqrkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3341ca189cbe4e55b791a9e735411404', '106858', '���϶�ͥҩҵ�ɷ����޹�˾', '��', 16.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ױ���', 'Ƭ��', '0.25g', '100', 'ajbs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3664cde69bec4bb798f8bc2446b11931', '83043', '�������ҩҵ���޹�˾', '��Ƣ�ϼ�', 20.01, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ƣ�ϼ�', '�ڷ�Һ', '10ml', '18', 'gpgj,gphj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('395cd731ec904ad3aca204227d4aaf89', '109835', '���Ͽ�����ҩ���޹�˾', '�������Ȼ���', .85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������Ȼ���', '����Һ', '100ml:0.5g:0.9g', '1', 'jxzlhn', null);
commit;
prompt 400 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3a665a407b6c445f9edb8f9134e8593b', '109678', '���վŷ���ҩ���޹�˾', '���Ϳ���', 11.88, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���Ϳ���', '������', '4.5g', '20', 'bhkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3d6b1bab47c444028257c2c33f96a96e', '107782', 'ɽ��³��ҩҵ���޹�˾', '��״��Ƭ', 2.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��״��', 'Ƭ��', '40mg', '100', 'jzx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('3f94129556714597a7a681026535371c', '54066', '���Ͽ���ҩҵ���޹�˾', '10%������', .98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '10%������', '����Һ', '100ml(��ƿ)', '1', '10%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('41dc60b4380e4b37924ce939bca5be84', '2013010', 'ҩ����ҩ����', '������', 6.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'ˮ��', '6g', '10', 'ssw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('43bb185316e447928e64b86ae700f613', '46001', '�����¾���ҩ���޹�˾', '������', 19.72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ�����', '����', '0.5g', '1', 'tbzw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('44f068dbb53d4bed9af82d469cc8f88e', '73949', '������ҩ�ɷ����޹�˾', 'ע���ð���������', .58, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '1.0g', '1', 'abxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('48a167a4f621474bbfe0f12b80cc8939', '106913', '�Ϻ��ִ���ҩ�ɷ����޹�˾', '������', 18.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '˨��', '1.0g', '6', 'txz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('021a69980e874d5781460c3bd7e3b994', '80666', 'Զ��ҽҩ���й������޹�˾', '��ʯ���������Ƭ', 6.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', 'Ƭ��', '50mg', '20', 'mtle', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('04605292170b4a8d89e92cef56a3a88f', '73507', '�Ĵ��괺��ҩ���޹�˾', '��������Ƭ', 3.76, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '��������Ƭ', 'Ƭ��', '/', '60', 'ffdsp,ffdcp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('07e12db4a973415b844e31ac60059bdd', '85811', '�Ϻ��񶫺���ҩҵ���޹�˾', '��', 2.35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', 'ע��Һ', '1ml:5mg', '1', 'jltm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0b9dca622532445383ede91dd4ecf509', '79915', 'ʯ��ׯ��ҩ���޹�˾', '��������40�Ȼ���', 3.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������40�Ȼ���', '����Һ', '500ml:30g:4.5g', '1', 'yxtg40lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('0d958164677e4d64a23b25e145b4c3fd', '107463', '��ֻ̨��ҩҵ���޹�˾', '�������ù��Ƭ', 8.05, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���ù��', 'Ƭ��', '40mg', '100', 'qdms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('10ab120cecb540cb894280efbd99c4be', '108971', '��ҩ����������ҩ�ɷ����޹�˾', '�����', .22, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����', 'ע��Һ', '10ml:0.25g', '1', 'acj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('123ffec8da544c15948be6fa3cd5924c', '46678', '�������ҩҵ�ɷ����޹�˾', '���Ծ�ע��Һ', 8.72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���Ծ�ע��Һ', 'ע��Һ', '2ml', '1', 'xnjzyy,xnjzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('17c80d1031244812b1134e64bf91e4a2', '46012', '��կ����Ȼҩҵ�����������ι�˾', '׳������ֹʹ��', 2.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '׳������ֹʹ��', '�𽺸��', '7cm*10cm', '10', 'zgsxztg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1aa03c627911414db92c25d54a208b01', '109972', 'Զ��ҽҩ���й������޹�˾', '������˾ƥ��', 2.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������˾ƥ��', 'Ƭ��', '����ˮ����0.22g:��������0.15g:������35mg', '100', 'ffesyl,ffespl,ffasyl,ffaspl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1d194c40b8fd48729ec8ecd555f8ae2e', '97021', '�����¾���ҩ���޹�˾', '������', 20.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����α�����', '�ڷ�Һ', '60ml(ÿ10ml��Һ������ɴ���20mg:����ľ�Ӹ�����200mg:����α��Ƽ�60mg)', '1', 'yfwmdy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('1fae266bd1324b8881c70bd3154a283b', '64147', '����������ҩ����ҩ���޹�˾', '�˲ν�Ƣ��', 3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�˲ν�Ƣ��', '������', '6g', '10', 'rsjpw,rcjpw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('227bd6d535b94832b1a36e9b36ec0901', '104502', '��������ҩҵ�ɷ����޹�˾', '��', 10, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����Ƭ', '30mg', '30', 'gljt,glqt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('239e326dd9c04034a440e25beaff5d83', '60557', '�Ĵ�ʡ�˱�����Һ�����˱���ҩ�������ι�˾', '����ע��Һ', 19.83, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ע��Һ', 'ע��Һ', '20ml', '3', 'smzyy,smzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('26f5981f2f8345fe84bde3f6daaacc5b', '109817', '����ҩҵ�������޹�˾', '���Ƚⶾ�ڷ�Һ', 6.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���Ƚⶾ�ڷ�Һ', '�ڷ�Һ', '10ml', '10', 'qrxdkfy,qrjdkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('2a2a20857cdf420789aad79d7df3c3c3', '88641', '��������ҩ�����޹�˾', '��ά��', 1.21, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����C', '����', '0.5g', '1', 'wssc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4a049b0a4aaa48e8b50ddeb2e5cc7d0a', '59577', '����������ҩ���޹�˾', '����ͨ����', 25.51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ͨ����', '����', '0.4g', '36', 'nxtjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4b3fe0c59c63461bbb4f5a001265a35d', '66285', '�Ϻ��������ҩҵ���޹�˾', '��', 2.35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', 'ע��Һ', '20ml:5.0g', '1', 'jas', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('4e42f8ea371a4d2abd7096eaac29728f', '63469', '�Ϻ���ҩҵ���޹�˾', '��', 28.84, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ι���', '����', '0.3g', '30', 'cgjn,sgjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('512a8f89b25841e794e1b29b563497c5', '46875', 'ɽ������ҩҵ�ɷ����޹�˾', '��ɳ', .86, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɳ��', 'Ƭ��', '0.1g', '12', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('541cd9a3cd8b4896ab3cd22607f4d11e', '55470', '�˲�����ҩҵ���޹�˾', '������', 1.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '����', '50mg', '6', 'fkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('567c91aa949b4c14904cf603aae316d7', '107846', '������ŵ������ҩ�������ι�˾', '���̼������Ƭ', 1.54, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���̼������', 'Ƭ��', '���0.15g��̼������0.15g��������0.001ml', '100', 'dhtsqn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8714835dd68a470f92d88b5deeb6c5bd', '108918', '���պ�ҵҩҵ���޹�˾', '������', 1.75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'Ƭ��', '0.25g', '100', 'ltl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('887cb5f86b174b40b22962698f086163', '81992', '���տ�ʤҩҵ���޹�˾', '��øQ10����', 2.74, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '��øQ10', '����', '5mg', '30', 'fmq10', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8aee814ecd394c04b291213ef76a72bc', '106459', '����ҩҵ�����գ����޹�˾', '���갲Ƭ', 8.85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���갲Ƭ', 'Ƭ��', '0.3g', '100', 'gnap', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8d9f30a063ec49f09d5cde51043f10ec', '83850', 'ʯҩ����ŷ��ҩҵ���޹�˾', '�����ܰ�Ƭ', 2.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����ܰ�', 'Ƭ��', '0.25mg', '100', 'xgga', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8f8944a533194d5f9315abda29555255', '53980', '���׼���(�Ĵ�����)', '֬����ע��Һ(C14-24)', 27.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '֬����ע��Һ(C14-24)', '����Һ', '20% 250ml:50g:3g', '1', 'zfrzyy(c14-24),zfrzsy(c14-24)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9cfd5f4c59044020bca5522fb9b9773e', '96279', '����������ҩ�������ι�˾', '��ù��', 15.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ù��', '����Ƭ', '0.5g', '3', 'kmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9fc0ebec8e3d44b787f68e0d6bf9e4aa', '2013012', '�㶫һ������', '��������Ƭ', 6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������Ƭ', 'Ƭ��', '/', '60', 'ffdsp,ffdcp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a274f15a7b6f4659918cf5383e9e47e4', '109971', '����ҩҵ�ɷ����޹�˾', '����', 6.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����', 'Ƭ��', '12.5mg', '1000', 'ybq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a4c824d9423f46a1a1d2e9e441b4ae0f', '93149', '��������ҽҩ�ɷ����޹�˾', '����θ̩����', 12.99, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����θ̩����', '������', '20g', '10', 'sjwtkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a7a559fb7dc748909d9ef133f4249d8d', '47898', '�ÿ�ҩҵ�������޹�˾', '�ÿ���', 1.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����������', '����', '80mg', '1', 'azgln', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('aabda4b52ed84e93a3b34690d10b9785', '48172', '����̫��ҩҵ�ɷ����޹�˾', '5%������', .91, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '5%������', '����Һ', '250ml', '1', '5%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ac069dc3a62e49d797e1deb702b1255e', '46878', 'ɽ������ҩҵ�ɷ����޹�˾', '������ɳ��', 1.58, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɳ��', 'Ƭ��', '0.2g', '12', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b04915d9fb134e0ba88c408393d58dc1', '50170', '����ҩҵ�ɷ����޹�˾', '���׵�����ע��Һ', .63, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���׵���', 'ע��Һ', '2ml:0.25g', '1', 'bldj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b32861e5658a43ecb5d0129a54762eed', '79182', '����ҩ��������ҩ���޹�˾', '֪�صػ���', 2.42, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '֪�صػ���', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'zbdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b4a94ecaf1fc4dbda0a1ca7b7377a717', '56996', '���ҩҵ������֣�ɷ����޹�˾', '��Ī�涡ע��Һ', 3.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī�涡ע��Һ', 'ע���', '2ml:20mg', '10', 'fmtzzyy,fmtdzyy,fmtzzsy,fmtdzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('915b1a077b184c1a806c86b51595c567', '107124', '�ɶ���ԣ�Ƽ���ҩ���޹�˾', '���ᰱ����ע��Һ', 7.36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', 'ע��Һ', '4ml:30mg', '1', 'axs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('93cc9d26c2ac4d69bc2e627e7c86dba5', '93676', '����ҫ���������޹�˾', '�������հ�', .16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������հ�', 'ע��Һ', '2ml:10mg', '1', 'jylpa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('95b455abf7d04c3ca1629459389a30d8', '46870', 'ɽ������ҩҵ�ɷ����޹�˾', '��ɳ', 1.06, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������ɳ��', '����', '0.2g', '1', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('98737f88856b4792af9aab61141fb75d', '93233', '��ʯ����ҩҵ���޹�˾', '������ĸ��', 4.61, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ĸ��', 'ˮ����', '60g', '1', 'bzymw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9a38111f32f942a2893e72115d485c4f', '70656', '����ʡ������ҩ��', '���ʹ����', 26.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ʹ����', '������', '6g', '12', 'jgtxw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('599ae0549d9d4052b88710a0209e246a', '108692', '����̫ƽ����ҩ���޹�˾', '�����', 2.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����', '���ͽ���', '0.3g', '10', 'blf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f99c542b87ca482e8b321e3ba52b4cbe', '56460', '�Ϻ��񶫺���ҩҵ���޹�˾', '��', 1.62, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�Ȱ�����', 'ע��Һ', '20ml:5.75g', '1', 'yasn,gasn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fa2438c3f61b4edcba6db03c0e881e2a', '46769', '�Ͼ�������ҩ���޹�˾', '����ɳ�ǵ���Һ', 1.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ɳ��', '����Һ', '8ml:24mg', '1', 'yfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fa6ee2d5cb304b41bd5d44a37ffdf7f5', '108224', '�˲��˸�ҩҵ�������ι�˾', 'ά����Cע��Һ', .19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����C', 'ע��Һ', '5ml:1.0g', '1', 'wssc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fb71d409055f419fa66913e60f39f361', '61118', '�Ϻ��ִ���ҩ�ɷ����޹�˾', '��Ȼ', 29.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ƽ����Ƭ', '����Ƭ', '30mg', '12', 'xbdpksp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fba13efe35b7412ea82f665c55ed28de', '49704', '������Զҩҵ���޹�˾', '��', 2.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����˾͡', 'Ƭ��', '4mg', '100', 'btst', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fba872f2c845467f8fa683909cd37337', '83792', '����ʡ������ʢҩҵ�ɷ����޹�˾', '����ע��Һ', 2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ע��Һ', 'ע��Һ', '10ml', '1', 'smzyy,smzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fc036e664cfb4641a61b0515f762a8c1', '54091', '���Ͽ���ҩҵ���޹�˾', '10%������', 1.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '10%������', '����Һ', '250ml(��ƿ)', '1', '10%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fc4535139c7c47d8b9351fe7f57bf36a', '90914', 'ɽ������ҩҵ���޹�˾', '������', 8.75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'Ƭ��', '0.1g', '100', 'mxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fc98d27ef5e24d48a557915bf1e8c96a', '47229', 'ɽ������ҩҵ�ɷ����޹�˾', 'Ҷ��', 8.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', 'Ҷ��', '����', '15mg', '1', 'xs,ys', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fc9ce3913e774d018b3aa074f19dc13a', '79186', '����ҩ��������ҩ���޹�˾', '��ң����', 5.56, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '��ң����', '������', '15g', '10', 'xykl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fd58d9907c6a4540a644c38f9fabef42', '52721', '����������ҩ�ɷ����޹�˾', '����������ɳ�ǽ���', 2.02, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɳ��', '����', '0.2g', '12', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fddf8bc0c65c4617be6db136462160b5', '66070', '���ݰ���ɽ��Ⱥ(ҩҵ)�ɷ����޹�˾', '������Һ', 9.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������Һ', '�ڷ�Һ', '10ml', '10', 'asbny', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fdf9147d54e0414caddea72dcbb858b9', '92053', '�Ĵ�ʡ�˱�����Һ�����˱���ҩ�������ι�˾', '��ĸ�ݿ���', 4.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ĸ�ݿ���', '������', '15g', '20', 'ymckl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fe53a71997ab4eabbacd1b39b2e84cf0', '88868', '�˲��˸�ҩҵ�������ι�˾', '������ƽƬ', 2.87, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������ƽ', 'Ƭ��', '0.1g', '100', 'qmxp,kmxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('fe77af3aa95e40d48575f8b77a70d0eb', '89215', '������ʩ��߮����ҩ���޹�˾', 'ţ�����彺��', 22.91, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ţ�����彺��', '����', '0.3g', '36', 'nhsqjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ff1a0b01ffbc4e54abc869cdda08e7db', '73946', '����ҩҵ�ɷ����޹�˾', '��ȩ����', .88, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ȩ����', 'Ƭ��', '50mg', '100', 'pqnz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ff3042c999bd43c6b122d3381ca089b7', '78870', '����ͬԴ��ҩ���޹�˾', '������(����)', 3.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������(����)', '�ڷ�Һ', '10ml', '10', 'smy(dc),smy(ds)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8743a95fb3d34107bfab4870741932ea', '105855', '��������ҽҩ�������޹�˾������ҩ��', '��������ͪע��Һ', 7.29, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '����ͪ', 'ע��Һ', '2ml:2mg', '1', 'nlt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('87644063ad9c40259117ee26e896d846', '90898', 'ɽ������ҩҵ���޹�˾', '��Ī��ƽ', 3.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ī��ƽ', 'Ƭ��', '30mg', '100', 'nmdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('87b2bb249f974044a664536234f05ee1', '67623', '��������ҩҵ���޹�˾', '����������', 3.87, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '����������', '����', '0.25g', '1', 'yxgxa,yxyxa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('87d11329049d4209b6b318db774dba41', '93374', '�㽭���п���ҩ���Źɷ����޹�˾', '����ù��Ƭ', 64.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '��������', 'Ƭ��', '50mg', '100', 'lzpl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('87d24184ba0a467da5756189f82adfd2', '57821', '����ŵ��ҩҵ���޹�˾', 'ע����Ѫ��ø', 39.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'Ѫ��ø', '����', '1IU', '1', 'xnm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('87dbcc2fe29c4cc48e7c0c50326358fd', '92264', '�����ҩҩҵ�ɷ����޹�˾', '��', 1.35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '0.75mg', '100', 'dsms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8845cb2b448143838cb9e11e554561b2', '67412', '�����ϲ�������ҩ��', '?', 18.91, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ʯ����', '������', '5g(������)', '10', 'pskl,pdkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('88b4815bd5b7462b91146183462a03dd', '94182', '���ϻ���ҩҵ�������ι�˾', '������', 2.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '������', '9g', '10', 'hjw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('88ebadddad5045b2a82198242957e691', '56257', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '������', 6.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '�ڷ�Һ', '10ml:30mg', '10', 'axs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8902fe3737544717985f72cafc587907', '65897', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', 'ͷ��������', .95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ��������', '����', '1.0g', '1', 'tbqsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('895501c3fac5404283cf744d076e340d', '92424', '���Ͽ�����ҩ���޹�˾', '��ù��', 1.03, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù��', '����', '0.25g', '1', 'hms,gms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8976adc2d0f64991a21917f9d49857ee', '48497', '�������䱦��ҩ���޹�˾', '�����ע��Һ', 1.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '�����ע��Һ', 'ע��Һ', '20ml:0.1g', '1', 'cwjzyy,cwjzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8a1aea11cd9a4990a5a2b241d96fceb0', '83053', '�㶫̨����ҩ�ɷ����޹�˾', '��������Ƭ', 24.33, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������Ƭ', 'Ƭ��', '0.27g', '100', 'jksqp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8a6ed42d416d470e8136ac1bf22e35d6', '91785', '���Ͽ���ҩҵ�ɷ����޹�˾', '���̽ⶾƬ', 3.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '���̽ⶾƬ', 'Ƭ��', '/', '48', 'yqjdp,yqxdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8aa3bee08f7f4fd1903dfd5205cef411', '84745', '�����Ļ�������ҩ���޹�˾', '���ܰ�', 26, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ܰ�', '��ɢƬ', '0.5mg����', '20', 'jga', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8b13f47d76ec452e9dae39e202c47144', '80490', '�ӱ�����ҩҵ���޹�˾', '�����彺��', 3.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����彺��', '����', '0.33g', '24', 'nlqjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8b299d0c04674bdabb2e2d71b0316585', '109084', '������һ����ҩ���޹�˾', 'ּ̩', 12.95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������͡', '����', '20mg', '10', 'xftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8b669f75d964462f911799c63a357bc7', '92960', '�人�徰ҩҵ���޹�˾', '����ɳ�ǵζ�Һ', 1.35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ɳ��', '�ζ�Һ', '5ml:15mg', '1', 'yfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8bfc9364b93d4c01a65b5d6b687d4bb2', '49083', '����������ҩ�������ι�˾', '��ù��', 10.45, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ù��', '����Ƭ', '0.5g', '2', 'kmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8c285b91ac07457ab8686668fa740a6d', '70329', '�ӱ����ҩҵ�ɷ����޹�˾', 'ע����ά����C', 1.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����C', '����', '1.0g', '1', 'wssc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8ca78455c9f2452898e2e61e0ccb1c2a', '86328', '������һ������ҩ�������ι�˾', '���ƿ���', 18.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ƿ���', '������', '4g(������)', '16', 'yhkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8cb157bed4cd44b6bed3edca34de2798', '47305', 'ɽ������ҩҵ�ɷ����޹�˾', '����ù��', .81, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ù��', '����', '0.25g', '1', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8cfab39efad64a1da64775568a9fe239', '47478', 'ɽ������ҩҵ�ɷ����޹�˾', '��������', 2.18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '����', '10mg', '6', 'lltd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8da40830742e4657884e6179d0ccd891', '90320', '֣������ҩ���޹�˾', '�����������Ƭ', 6.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', 'Ƭ��', '2mg', '28', 'tlzq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8e1d53a6d63c46b8b78365feee416d33', '94575', '�ݶ�ҽҩ�������޹�˾', '�ݰ�˾ƥ��', 13.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��˾ƥ��', '����Ƭ', '0.1g��������Ӧ֢��', '30', 'aspl,espl,asyl,esyl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8e42d9d098a3433cac8337f3c737ab1a', '108538', '����ʡ��Ȫ��ҩ���޹�˾', '����ڷ�Һ', 5.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ڷ�Һ', '�ڷ�Һ', '10ml', '10', 'chkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8e5d807ff8ca4a829a25f4e14d0308c3', '54887', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '�����涡ע��Һ', .07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����涡', 'ע��Һ', '2ml:0.2g', '1', 'xmtd,xmtz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8ed2f8cc77154b40bd3f76ff0cb359c7', '61537', '�����������ɽ��ҩҵ�ɷ����޹�˾', '����������', 18.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������', 'ˮ��', '0.133g', '108', 'hsxsw,hzxsw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8f33724ecc5c4aeebded9cc3bd321ec5', '71103', '��ҩ����������ҩ���޹�˾', '��øA', .75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��øA', '����', '100U', '1', 'fma', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8f452d16345a4bd78ee6d15e33772c5c', '58467', '���ϸ�������ҩҵ���޹�˾', '˳��ע��Һ', 9.32, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '˳��', 'ע��Һ', '2ml:10mg', '1', 'sb', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8f8c55351de649579286ba2809a4ff33', '86558', '�ӱ�����ҩҵ���޹�˾', '��������', .75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'ˮ��', '1.1g/10', '100', 'nlqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8fadbcc4fcf44aadb277779355906ba1', '52040', 'ʯҩ������ҩ���޹�˾', '�컨ע��Һ', 1.46, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�컨ע��Һ', 'ע��Һ', '5ml', '1', 'hhzsy,ghzsy,hhzyy,ghzyy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8fb022716f4b4cc6945c2eae867f825b', '106852', '���Ϸ�ʢ��ҩ�ɷ����޹�˾', '����ʯɢ', 5.97, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ʯ', 'ɢ��', '3.0g', '10', 'mts,mtd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8fce5c2a18c545369f2dabde73ece92e', '70312', '�Ϻ�����ҩ�����޹�˾', '��', 8.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����', 'Ƭ��', '25mg', '100', 'bmq', null);
commit;
prompt 500 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8fe9ca1f221e4612b8712007a11934fe', '53192', '���Ͽ�����ҩ���޹�˾', '��˹ƽ', 1.33, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', '����', '0.2g', '1', 'chn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('90847ff258b440ffbfe0b75150af619e', '88891', '�㽭���念ԣ��Ȼҩ�����޹�˾', '�׹��ٶ���Ƭ', 9.24, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�׹��ٶ�߰Ƭ', 'Ƭ��', '10mg', '50', 'lgtddp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('90ac734f3b7a4f8eaada414d58e8e0ed', '107742', '������ҩ��ҩ���޹�˾', '�������', 4.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', 'Ƭ��', '25mg', '20', 'mtle', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('90bbfaa46f4f47bc83ec517f84d438cb', '101874', '̫���������츢����ҩ�����޹�˾', '��֧����', 12.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��֧����', '������', '4g', '12', 'jzkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9c9fec88fbc64ab3a6a0ff7ae0ae392c', '108063', '��������ҩ�����޹�˾', '�������ù��ע��Һ', 7.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������ù��ע��Һ', 'ע��Һ', '2ml:0.15g', '10', 'ysklmszyy,ysklmszsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9ca85be39b0644a5ace19ea5e0324d85', '48257', '����ҩҵ�������޹�˾', '���ٻ�ע��Һ', 1.96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���ٻ�ע��Һ', 'ע��Һ', '10ml', '1', 'yzhzsy,yzhzyy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9cd0981bc9614e1c9ad62d36e35a1972', '71078', '���Ϻ�ɭ��ҩ�ɷ����޹�˾', '��Ȫ����', 33.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ȫ����', '����', '0.3g', '60', 'sqjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9ce45cd8150e4c69ba897da6039bf383', '51601', '����̫��ҩҵ�ɷ����޹�˾', '˫�����ϼ�', 5.86, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '˫�����ϼ�', '�ڷ�Һ', '100ml', '1', 'shlgj,shlhj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9cef6b129d2f4cbd8380b2a1414cfc1b', '109611', '���հ���������ҩҵ���޹�˾', '��Ƥ��', 24, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ƥ��', '��ҩ', '15g', '10', 'gpg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9d01fac0f77e44f3b073d99417000a86', '59415', '����������ҩ�����������ι�˾', '��', 10.05, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ҩ����', '����', '0.25g', '24', 'sqsyjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9d048f7b37c04cc7aca2625b1d4ad5ad', '54130', '���Ͽ���ҩҵ���޹�˾', '5%������', 1.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '5%������', '����Һ', '250ml(��ƿ)', '1', '5%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9d628616e28a477b99caacd4d2275b14', '2013006', '������ҩ����', 'Ѫ��ͨע��Һ', 1.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'Ѫ��ͨע��Һ', 'ע��Һ', '2ml:0.1g', '10', 'xstzyy,xstzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9dc2b134053e4feeb3c54d0d51b410e9', '47230', 'ɽ������ҩҵ�ɷ����޹�˾', 'Ҷ��', 13.73, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', 'Ҷ��', '����', '30mg', '1', 'xs,ys', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9e1c7893d13c477c9342783a7ce57e26', '90454', '���ݿ���ҩҵ���޹�˾', '������', 2.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'Ƭ��', '2mg', '100', 'bhs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9e40273bc8044750811bb91dddb9531f', '78210', '��³��ҩ���޹�˾', '�ȵ�ƽƬ', 1.95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�ȵ�ƽ', 'Ƭ��', '25mg', '100', 'ldp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9e51e06f8b9e495997521e54e9918bc4', '89898', '���ҩҵ������֣�ɷ����޹�˾', '��', .12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����涡', 'ע��Һ', '2ml:50mg', '1', 'lntd,lntz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9f7e1b49a6644244b7734cefab44d98e', '59124', '�Ϻ�������ҩ���޹�˾', '�����ʲݿڷ���Һ', 5.37, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����ʲݺϼ�', '�ڷ�Һ', '10ml', '10', 'ffgcgj,ffgchj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9ffd740773534ce48341843651c4b1da', '93761', '����������ҩ����ҩ���޹�˾', '��ɰ��θ��', 3.51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ɰ��θ��', 'ˮ��', '6g', '10', 'xsyww', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a01f09d252b348c48a89dbc1721a12e3', '92258', '���ҩҵ�������޹�˾', '��', .8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ʯ֬', '����', '10g:1g', '1', 'ysz,ydz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a13b4d6d47a544d49291a1a5140cf6be', '47496', 'ɽ������ҩҵ�ɷ����޹�˾', '�工��͡', 2.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�工��͡', 'Ƭ��', '20mg', '10', 'lftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a1893931748a472f8f5f1ffdb2ceff91', '63462', 'ɽ������ҩҵ���Źɷ����޹�˾', '��', 6.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������ɽ����', 'Ƭ��', '20mg', '48', 'cxsyslz,sxsyslz,dxsyslz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a1983f6ce18b463c8fe3b8d41b38720d', '104205', '�Ĵ�������ҩ���޹�˾', 'С�������', 1.64, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'С�������', '������', '10g', '6', 'xchkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a22fd0807ea44f7caf0c24ccc1149d9a', '46842', '�����췽ҩҵ�ɷ����޹�˾', '�������', 5.87, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������˫�һ���Ƭ', '����Ƭ', '0.5g', '24', 'ysejsghsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a23997cfd6e74835a6d0f8859cdcb13c', '55443', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '�Ŷ������þע��Һ', .2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�Ŷ������þ', 'ע��Һ', '10ml:0.452g:0.4g', '1', 'mdasjm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a239a1a29d004b5daeb6ea9b7b7b0385', '107700', '�˲��˸�ҩҵ�������ι�˾', '������Ƭ', 1.56, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'Ƭ��', '0.2g', '100', 'jxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a28cf1908f8540c3bc69ebe52f59bf6e', '109218', '���ݶ�Ҷ��ҩ���޹�˾', '��������', .93, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '��������', '����', '1.0g', '1', 'bzxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a2c2e925e89a4b7dbcfcabce50fb2055', '101114', '��³��ҩ���޹�˾', '�工��͡��ɢƬ', 14.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�工��͡', '��ɢƬ', '20mg', '12', 'lftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a31ca46bcb91441d89ca190cb68358a6', '66733', '����ҩҵ�ɷ����޹�˾', '��������', 1.29, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', 'ע��Һ', '5ml:0.125g', '1', 'pnsl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a37caa4cce7642078c5a7ea8f133c19e', '89649', '����ͬԴ��ҩ���޹�˾', 'ά����C', .07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����C', 'ע��Һ', '2ml:0.1g', '1', 'wssc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a3eb4a2777964821aed55df0036b1b6e', '59350', 'ɽ��������ҩ���Źɷ����޹�˾', '����Ƭ', 3.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ƭ', 'Ƭ��', '0.36g', '100', 'hgp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a3f349a3c5cb4facb267b912eed43ba4', '99456', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '�ǰ������ע��Һ', .33, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '�ǰ����', 'ע��Һ', '2ml:0.4g', '1', 'hamd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a431fbe79f2748db89c2bdef23869bb5', '89363', '��������ҩҵ���޹�˾', '��������˨', 2.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '˨��', '0.1g', '10', 'ydmx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a4ac7040a2d8424b8f6f514836ae3c01', '90135', '�Ϻ�����ʵҵ�����ţ�������ҩҵ���޹�˾', '�������彺��', 18.86, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������彺��', '����', '0.4g', '30', 'hlsqjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a5a7f2272cfe44b8aa677babae3d76b5', '47102', 'ɽ��³��ҽҩ�ɷ����޹�˾', '��', 1.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ������', '����', '1.0g', '1', 'tbzl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a5c443ec83b647fea5a10c65935a31db', '50191', '����ҩҵ�ɷ����޹�˾', '����ɳ�ǵ���Һ', .92, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ɳ��', '����Һ', '5ml:15mg', '1', 'yfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a5c8ef8014bf49ecbced613ee558bd62', '91380', '���绪��ҩҵ���޹�˾', '��', .46, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù��', '����', '8g:80mg(1%)', '1', 'hms,gms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a5dfa2efadab4bf49af227f2319e64fa', '108506', '�Ϻ���������Ƽ���������ҩҵ���޹�˾', 'ά����B1Ƭ', 5.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ά����B1', 'Ƭ��', '5mg', '1000', 'wssb1', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a660cb1fec894aac8b49d76fdc4e3290', '110171', '�Ͼ��׾�����ҩ�������ι�˾', 'ͪ����', 4.88, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͪ����', '����', '15g:0.3g', '1', 'tkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a6dbe8fdf8514d018f5c37d45e79318b', '89761', '������ҩ���޹�˾', '��', 1.93, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�ط����', 'Ƭ��', '25mg', '100', 'dfnd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a723d0e20165445a9a0b94fefd4d7312', '108079', '������ҩ����������һ��ҩ���޹�˾', '��', 7.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������������', 'Ƭ��', '0.5g', '400', 'dyxajf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a74564066e4f40b99aacfd2a37898ad3', '94323', 'ҩ����ҩ���Źɷ����޹�˾', 'Ѫ��������', 4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'Ѫ��������', '������', '9g', '10', 'xfzyw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a83981a230d5446697b393f5a96ca0ea', '59991', '����˫��ҩҵ�ɷ����޹�˾', '������Ѫƽ�������Ƭ', 8.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������Ѫƽ�������', 'Ƭ��', '����', '10', 'fflxpabdd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a83ff4713c2d4de190d47f8a9a850579', '83556', '��³��ҩ���޹�˾', '������ɽ����ע��Һ', 5, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '������ɽ����', 'ע��Һ', '5ml:5mg', '1', 'xsyslz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a85664a1b05d414db83b0aa0ac1b0220', '46045', '������ҩ����������һ��ҩ���޹�˾', '��', 2.28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù����', '����', '2.0g', '1', 'lmsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a89406e8ad02457e96c6163aa3e7780e', '48062', '����̫��ҩҵ�ɷ����޹�˾', '10%������', .91, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '10%������', '����Һ', '250ml', '1', '10%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a8a9222a11ec4cd686069b842d9aae52', '107276', '����ҩ���ʺ���ҩ���޹�˾', '�����俵��˨', 2.53, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '�俵��', '˨��', '0.2g', '7', 'mkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a8d4d457795a460f935845dc85b3da1e', '75020', '����ҩҵ�ɷ����޹�˾', '������ɽ����', 15.59, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɽ����', '����Ƭ', '20mg', '30', 'xsyslz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a95e48c393f2409a982bc4e078f70395', '110134', '���ϻ�����ҩ�ɷ����޹�˾', '�������Ȼ���ע��Һ', 1.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '�������Ȼ���ע��Һ', '����Һ', '500ml:25g:4.5g((��ƿ)', '1', 'pttlhnzyy,pttlhnzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('aa101489823e4043badfe327ff1da563', '109141', '�ٷڱ�����ҩ���޹�˾', '��������', .89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', '����Ƭ', '25mg', '100', 'ydmx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('aa9c36a328144b65b2b1b5013437ba99', '90489', 'Զ��ҽҩ���й������޹�˾', '*', 5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ȥ����������', 'ע��Һ', '1ml:2mg', '1', 'qjssxs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('aaa06e36203d4370bb966023da86b8a5', '91823', '��ɽ��ԭ��ҩ���޹�˾', '�޴�����', 2.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�޴�����', '����', '500IU', '1', 'rcxs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('aacd68e6dda542f7b5b3466ba2b093a9', '57492', '�㽭̩��ɭҩҵ���޹�˾', '����ͬ', 9.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ƽ����Ƭ', '����Ƭ', '20mg', '20', 'xbdphsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('aad4d42b810a407f905add48e8cca52d', '93854', '����������ҩ�������ι�˾', '����Ƭ', 18.18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ƭ', 'Ƭ��', '0.35g', '36', 'ssp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('aaf43b9420784963a6d4a51d3160d8af', '73319', '�㽭�����ҩ�ɷ����޹�˾', '������ͪ', 3.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������ͪ', 'Ƭ��', '2mg', '100', 'jqyt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ab0eea5fec71421c9d3ebb0f05fed044', '48509', '�������䱦��ҩ���޹�˾', 'Ѫ��ͨע��Һ', 1.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'Ѫ��ͨע��Һ', 'ע��Һ', '2ml:0.1g', '1', 'xstzyy,xstzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ab0ffbca75964f1b810e7c395b316dab', '93961', '��������ҩ���޹�˾', '�ٺ����', 4.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ٺ����', '������', '11g(�൱��ԭ��ҩ7g)', '10', 'jhkl,jgkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ab1a654ddd2246b7b51e5d3fc2a92ef0', '102824', 'ɽ������ҩҵ�ɷ����޹�˾', '��ù��', 7.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '��ù��', '��������Ƭ', '0.15g', '10', 'kmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('abfe920562794846b844f1d6c9512392', '94398', '���ϻ���ҩҵ�������ι�˾', '轾յػ���', 3.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '轾յػ���', '������', '9g', '10', 'qjdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ad1dc1afed9c49d484ebc2ab215a8286', '47074', 'ɽ������ҩҵ���Źɷ����޹�˾', '��', .4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����������', 'ע��Һ', '2ml:0.1g', '1', 'yxgxa,yxyxa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ad956ceef6de4427a5d20c6cfcfab3b6', '89364', '��������ҩҵ���޹�˾', '��������������Ƭ', 1.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '��������Ƭ', '0.2g', '14', 'jxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('add8f7a906f9466b862ad98240731a31', '105683', '�����л�������ҩ��ҵ�ɷ����޹�˾', 'ͷ������', 11.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ������', '����', '0.5g', '1', 'tbmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ae093d8e38c649a5a61b2bd85100ad14', '78047', '���绪��ҩҵ���޹�˾', '��', .52, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ŵ��ɳ��', '����Һ', '8ml:24mg', '1', 'nfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ae5b6c7c65b8449aa5e38705435f9e07', '84100', '���ݰ���ɽ������ҩ���޹�˾', '�Ͽ�˾', 20.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�忪�齺��', '����', '0.4g', '24', 'qkljn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('af3b242712044c85abde65bb1b6ecaca', '87116', '���շ�ǿ��ҩ���������ι�˾', '�ذ���', 1.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�ذ���', 'Ƭ��', '10mg', '100', 'dbz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('af6d253622a44c0cb9500d6e39a7dbfa', '91412', '�Ĵ�����ҩҵ�������ι�˾', '�²���', 2.52, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Τ��', '������', '0.15g', '12', 'lbwl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('afa2174b65ec48538cde4a472d3977c8', '81978', '�㽭����ҩҵ���޹�˾', '���ȴ�Ƭ', 6.18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ȴ�Ƭ', 'Ƭ��', '0.3g', '24', 'xkcp,xhcp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('afbdb5ae0fc64fec9a78fbfecd8c5cf1', '47006', '���ϱ̿�ҩҵ���޹�˾', '���', 12.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����������', 'ע��Һ', '2ml:40mg', '1', 'azgln', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b04dc599beea4714b36732e558d8e776', '53058', '�人����������ҩ���޹�˾', '�ƿ�о��', 16.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������ɽ����', '����', '25mg', '1', 'cxsyslz,sxsyslz,dxsyslz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b050f8b15afe48f79fee92be40e93e9d', '70082', 'ɽ���Ͳ��´���ҩ���޹�˾', '�´ﱴ��', 1.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����', '������', '0.125g', '12', 'amxl,emxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b066ca1f23234453abc4b0b85ca0de36', '50457', '���鼯��������ҩ��', '�޴�����', 5.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�޴�����', '����', '2000IU', '1', 'rcxs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b0b39067c5ca49ffa1efb933bd7a10fb', '89319', '�����췽ҩҵ�ɷ����޹�˾', 'ά����Cע��Һ', .8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ά����Cע��Һ', 'ע��Һ', '2ml:0.5g', '10', 'wssczsy,wssczyy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b0b42065abc7470c8b2ecc21dd7eebaa', '2013007', '���ϰ�ҩ����', 'Ѫ��ͨע��Һ', 1.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'Ѫ��ͨע��Һ', 'ע��Һ', '2ml:0.1g', '10', 'xstzyy,xstzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b1aafb82f3594c7da158d501a7bf7265', '107876', '����������ҩ�������ι�˾', 'Ũ�Ȼ���ע��Һ', .8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'Ũ�Ȼ���ע��Һ', 'ע��Һ', '10ml', '5', 'nlhnzyy,nlhnzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b20e96632ed54c02b038216320e30efe', '65944', '��������Ϫ��ҩ���޹�˾', '����θʹ����', 20.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����θʹ����', '������', '2.5g(������)', '12', 'qzwtkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b32d10f7a49a4012a9319b6eefbf82e8', '79019', '����ҩҵ�ɷ����޹�˾', '�����', 4.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����', '����Ƭ', '0.1g', '20', 'acj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b36893914bd744ff9801f670d271afdb', '51084', '����˫��ҩҵ�ɷ����޹�˾', '����', 13.13, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '��ɢƬ', '10mg', '6', 'lltd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b3d9abd4d89446f5abd484b2de52a874', '2013009', '��ɽ����ҩҵA', '���̽ⶾƬ', 3.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���̽ⶾƬ', 'Ƭ��', '0.52g*12s*2�� ��Ĥ��', '1', 'yqjdp,yqxdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b3f0d8f877ee4ae6b4cd3b30355b5de2', '65775', '��������ҩҵ�ɷ����޹�˾', 'ע���ø����', 9.51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����', '����', '0.1g', '1', 'ggs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b41ca64433f048e19c3ea784abdd10c1', '66046', '��³��ҩ���޹�˾', '�����Ƭ', 4.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����', 'Ƭ��', '0.1g', '100', 'sbl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b42ac170d1624e38b6a097ea19b462de', '89535', '����ҩҵ�������޹�˾', '��ù��', 8.99, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ù��', '����Ƭ', '0.125g', '100', 'hms,gms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b464078d5d704b67884d5698130d96d4', '94815', '����������ҩ�ɷ����޹�˾', '������', 1.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '�ڷ�Һ', '10ml', '6', 'xzl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b49bc84560614bc5af94f4b4eec87837', '107779', '����������ҩ���޹�˾', '������ң��', 4.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ң��', 'ˮ��', '6g', '10', 'dzxyw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b54327096b0d4a8588fc0f1a0b3740bd', '108220', '�ӱ����ҩҵ�ɷ����޹�˾', '�������࿨��ע��Һ', .48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���࿨��', 'ע��Һ', '20ml:0.4g', '1', 'ldky,ldqy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b5c8bbaf32724fb098cb8b8dc01993ba', '63424', '�ɶ���̨ɽ��ҩ���޹�˾', 'ע�����������߿���', 26.47, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���߿���', '����', '75mg', '1', 'lpky,lpqy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b61b880916274ea683dff56dbf212e3b', '90964', '�Ϻ�����ҩҵ�������޹�˾', '����ע��Һ', .18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ע��Һ', 'ע��Һ', '2ml', '1', 'dszyy,dszsy,dczyy,dczsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b69db0f329514388bae6d0c143e01135', '96971', '�㽭����ҩҵ���޹�˾', '/', 12.76, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '������', '����', '25mg', '1', 'dky,zky,zqy,dqy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b751154e058e4529886ab955cfc78b07', '71583', '������ҩ�ɷ����޹�˾', 'ע����ͷ������', .63, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ������', '����', '0.5g', '1', 'tbld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('90cfd057c5fc46b2a43a9ac90da47f2b', '48173', '����̫��ҩҵ�ɷ����޹�˾', '5%������', 1.24, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '5%������', '����Һ', '500ml', '1', '5%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('90ff35714f3142b0ad758139cd611c83', '91058', '����̫����ҩ���޹�˾', '���������', 8.64, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '192', 'elzcw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9176a950542346ecab0cfdb58b9e04bc', '109075', '���ϰ�ҩ���Źɷ����޹�˾', '޽����������', 3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '޽����������', '����', '0.3g', '24', 'hxzqjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('918a7ce568aa4d1997294882f46ccfb1', '99979', '�ٲ���ҩ���Ͳ������޹�˾', '�̴�˨', 14.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�̴�˨', '˨��', '2g', '5', 'zcs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('91b72a742be5431886f83ad674cd38a7', '63472', '�Ϻ��̷���ҩ���޹�˾', '��Ͱ�', .48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ͱ�', 'ע��Һ', '2ml:20mg', '1', 'dba', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('928133006e084036870a35e844828c39', '71681', '�ÿ�ҩҵ�������޹�˾', '������', 1.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', '����', '0.2g', '1', 'yhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('92a20865d989406ab927355ee686e2b0', '46580', '��������ҩҵ���޹�˾', '��ʹ������', 20.97, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ʹ������', '����', '0.4g', '27', 'ytdjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('92c334bb3c994f84907681fdc53c2e18', '49508', '�㽭�����ҩ�ɷ����޹�˾', '������', 31.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ͪ', '����', '50mg', '20', 'hbt,htt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('935ca3063bd24a02b091572257e8d137', '107261', '��ɽ��ԭ��ҩ���޹�˾', '��ø', 4.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ø', '����', '1WIU', '1', 'sjm,njm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('935f8bedb4844454aa0f2224a59f34b9', '50330', '�㽭��̫ҩҵ�ɷ����޹�˾', '����ϣ', 1.49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�޺�ù��', '����', '50mg', '10', 'lgms,lhms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9390406eb3be4f3cba22b92c92a7c768', '94542', '�������Ϻ���ҩҵ�ɷ����޹�˾', '��', 19.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����D2', 'ע��Һ', '1ml:5mg(20WIU)', '1', 'wssd2', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('93e9feb76297423984d4ae9a7c81de44', '48673', 'ɽ���յ�ҩҵ�ɷ����޹�˾', '�װ�����', 2.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�װ�����', '����', '5mg', '1', 'jadl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9408033439aa4bd0b3bc05e2d337e1e5', '72207', '���ӽ�ҩҵ���Ž�����ҩ�ɷ����޹�˾', '��', 7.79, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'θ�տ���', '������', '5g(������)', '3', 'wskl', null);
commit;
prompt 600 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('94548226629a405f82ae0d364bf57889', '91344', '��������ҩҵ���޹�˾', '��³����', .56, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��³����', 'ע��Һ', '10ml:0.1g', '1', 'plky,plqy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('945aee1f58ff4efba6d50723d49555f0', '51476', '���ݰ���ɽ������ҩ�ɷ����޹�˾', '˾�嶨', 6.42, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ��߻����', 'Ƭ��', '0.25g', '6', 'tbfxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('945e9eeff215496294985ca6eec229f7', '108408', '�Ĵ�������ҩ���޹�˾', '��ң��', 5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ң��', 'ˮ��', '6g', '20', 'xyw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('94cada274bfd4964a774a97ce00c147f', '69824', '�㽭���ҩҵ�ɷ����޹�˾', '�����ŵ��', 25.58, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ҷ����', '����', '63mg(�൱������Ҷ��ȡ��16mg)', '60', 'yxxdw,yxydw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('94f71020e25f4ef1beab33b0dcad4c55', '80109', '����ҩҵ�ɷ����޹�˾', '�������Ȼ���ע��Һ', .92, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', '����Һ', '250ml:0.5g', '1', 'jxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('95b521d957e646ac80b2d748b48f818f', '109103', '�����췽ҩҵ�ɷ����޹�˾', '����˾͡', .93, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����˾͡', 'ע��Һ', '2ml:10mg', '1', 'btst', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('95c199ba2266491aa0926b59485d40bc', '47442', 'ɽ������ҩҵ�ɷ����޹�˾', '������͡', 1.66, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������͡', 'Ƭ��', '5mg', '20', 'xftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('95e8a59670b94abcaf59fead537dd215', '48177', '�Ϻ�����ҩҵ�������޹�˾', '��������ɽ����', 10.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������ɽ����', '����Ƭ', '40mg', '14', 'cxsyslz,sxsyslz,dxsyslz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('960a7e3b940e409985a7cd910523da92', '72890', '�˲��˸�ҩҵ�������ι�˾', 'ͷ�߰��п���', 1.27, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߰���', '������', '0.125g', '12', 'tbab', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('96c554ac17264ffd97ddd2d4b5f2d4ce', '88583', '�����ϲ�������ҩ��', '������(����)', 5.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������(����)', '�ڷ�Һ', '10ml�������ͣ�', '10', 'smy(dc),smy(ds)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9748817e24f14599b1aa63cb9b0aa2e7', '54071', '��������ά������Ƽ����޹�˾', 'Ѫ֬������', 24, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'Ѫ֬������', '����', '0.3g', '24', 'xzkjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('97bc3913d34e41d2a6c95f6c8fc51ffa', '84776', '���춫��ҩҵ�ɷ����޹�˾', '�����������', 12.99, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����������', '������', '2g', '12', 'hlsqkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9816fef12b144f188d86bf00af2f33af', '87827', 'ɽ���Ͳ��´���ҩ���޹�˾', '����', 1.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', 'Ƭ��', '0.25g', '6', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('988e5274fb6c4989878cd84f11883bb6', '50030', '����ҩҵ�ɷ����޹�˾', '����ù��������ע��Һ', .67, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ù��������', 'ע��Һ', '2ml:0.3g', '1', 'klmslsz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('98e0d02bf7334c138ee88b736445bff1', '73148', '���ϰ��꿵��ҩҵ���޹�˾', 'ľ��˳����', 3.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ľ��˳����', 'ˮ��', '6g(3g/50)', '10', 'mxsqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('997f35834c0a469aab4185872a686d69', '72206', '���ӽ�ҩҵ���Ž�����ҩ�ɷ����޹�˾', '��', 7.41, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'θ�տ���', '������', '15g', '3', 'wskl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('99b59540f851408f97718282a0d151c3', '88771', '������Զҩҵ���޹�˾', '��', 1.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������������', 'Ƭ��', '0.3g', '100', 'dyxajf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('99c612ff7bfa4d138d09c3fef2ce1e56', '50189', '����ҩҵ�ɷ����޹�˾', '�������ָ�ע��Һ', 1.77, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '�������ָ�', '����Һ', '500ml(��ƿ)', '1', 'rsnlg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9a2233dafe984117b8c2de01df0918b0', '54183', '���Ͽ���ҩҵ���޹�˾', '�������Ȼ���', 1.18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������Ȼ���', '����Һ', '250ml(��ƿ)', '1', 'pttlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9a2925e2edc3424fb361acd0e0ddab60', '47494', 'ɽ������ҩҵ�ɷ����޹�˾', '�工��͡', 3.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�工��͡', 'Ƭ��', '10mg', '20', 'lftt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9a2c10956f274dbdbf7ae6769a152aea', '107339', '����ҩҵ�ɷ����޹�˾', '����Ʒ', 3.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����Ʒ', 'Ƭ��', '0.3mg', '1000', 'etp,atp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9a85a5eb17d143e3852f6f2704c15803', '46869', 'ɽ������ҩҵ�ɷ����޹�˾', '��ɳ', .96, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������ɳ��', '����', '0.1g', '1', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9ac4a69acccd4d999a1061a7e14cc3bf', '55997', '������ҩ��ҩ���޹�˾', '��������', 13.45, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '25mg', '100', 'amtl,emtl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9ad11ca401054dce95b8c5735066aabc', '90695', '����ά��ҩҵ�ɷ����޹�˾', '��Ѫֹʹɢ', 9.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ѫֹʹɢ', 'ɢ��', '3g', '6', 'hxzts', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9b3f2038caef49ac913891ace2daaf53', '57518', 'ͨ������ҩҵ�ɷ����޹�˾', '����������', 16.67, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', '����', '0.3g', '60', 'znnjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9b804bc43d5a4b5f8f0431eb1a7b96cd', '48169', '����ҩҵ�ɷ����޹�˾', '����������ע��Һ(18AA)', 3.04, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������(18AA)', '����Һ', '250ml:12.5g', '1', 'ffajs(18aa)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9beb14a3e1d2499fa6e675643b8c122f', '109896', '�ɶ�����ҩҵ�������ι�˾', '�������Ƭ', 5.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������', 'Ƭ��', '0.25g', '100', 'pqxa,bqxa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9c6ceb52455749ddbab6f3d6f0fc1888', '94141', '���ϻ���ҩҵ�������ι�˾', '���̽ⶾ��', 2.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '���̽ⶾ��', '������', '9g', '10', 'yqjdw,yqxdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('9c9a51d073e246268afbb6af53519688', '110047', '������ҩ(����)���޹�˾', '����������', 4.56, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������', '����', '250g', '1', 'fflhrg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('58b7d7f3b11246b49a20edc74c478226', '****', '�����г�����ҩ�������ι�˾', 'ά����B6', 5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ά����B6', 'Ƭ��', '10mg', '1000', 'wssb6', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('599260dda45f4190a4d8e298c3805fb4', '55346', '�Ϻ�������ҩҵ���޹�˾', '޽������', 36.47, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '޽������', '����', '0.05g', '60', 'hddw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5a621014fa8a4b3cacf37f051039b5fa', '82951', '�����¾���ҩ���޹�˾', '������', 6.63, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', '�ڷ�Һ', '100ml:0.3g(������)', '1', 'axs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5a62b1236c0947dc9ffe4efd9cb91b88', '60864', '���ϻ���ɭҽҩ���＼�����޹�˾', '��ɳ', 1.77, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�޺�ù��', '��ɢƬ', '0.15g', '6', 'lgms,lhms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5a9783aa349f4ef988e04163f52a6b93', '93492', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '�⻯�ɵ���ע��Һ', .15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�⻯�ɵ���', 'ע��Һ', '2ml:10mg', '1', 'qhkds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5b0292282f1b46cc9f178fce96cc3459', '56122', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '������', 1.36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����', '��ɢƬ', '0.25g', '12', 'amxl,emxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5b0942fb6f15450884f3382a9e48a907', '61973', '����ʡ��Ȫ��ҩ���޹�˾', '����ڷ�Һ', 6.56, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ڷ�Һ', '�ڷ�Һ', '10ml', '12', 'chkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5b972dfb841e44e9af507ba88c4f614d', '48125', '���绪��ҩҵ���޹�˾', '��', .51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ù��', '��Һ��', '8ml:0.12g(1.5%)', '1', 'kmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5d87628cc5f74315b275375055a63fe6', '61169', '��������ҩ��ҩ���޹�˾', '������', 5.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', '�ڷ�Һ', '100ml:0.3g', '1', 'axs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5e09d3361d0a48b98e31a7faa2d53c3b', '105774', '������˼����ҩ���޹�˾', '��/����֬����(C8-24)', 83.79, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '��/����֬����(C8-24)', '����Һ', '500ml(10%)', '1', 'z/clzfr(c8-24),z/zlzfr(c8-24)', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5e4502488ff4490b900c1288c7863687', '63769', '������ҩ�ɷ����޹�˾', 'ע����ͷ�����', 1.95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ�����', '����', '1.0g', '1', 'tbtd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5e9f3538f9e448c3bc8b23a2d4631235', '50076', '�人�˸�ҩҵ�������ι�˾', '����', 7.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '������', '����', '50mg', '1', 'xpn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5eecaee339d34eaca3d416500e39ebe5', '89495', '������ҩ(����)���޹�˾', '��������', 1.54, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', 'Ƭ��', '12.5mg', '100', 'ktpl,qtpl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5ef880f0a2ad4fabbf2441fa1557af5b', '93887', '����������Ʒ�о���', '���˷翹����', 2.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���˷翹����', 'ע��Һ', '1500IU', '1', 'psfkds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5f1218a457c049fab7a3cf648ca4ca7b', '89254', '���������ҩ�ɷ����޹�˾', '��', .07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����C', 'ע��Һ', '2ml:0.25g', '1', 'wssc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5f63dcf472f64497b1db3f9a59e5e75a', '63663', '��������̩ҩҵ�ɷ����޹�˾', '������', 4.72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ��߻��', '����', '0.5g', '1', 'tbfx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5f8901d60c1b4d6892a0709108c31648', '67863', '�Ϻ�����ҩ�����޹�˾', '���б���Ƭ', 3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���б���Ƭ', 'Ƭ��', '2.5mg', '100', 'glbnp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5fbaca9af0764e00b3b08feba6caaba8', '48190', '����̫��ҩҵ�ɷ����޹�˾', '0.9%�Ȼ���', .86, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '0.9%�Ȼ���', '����Һ', '250ml', '1', '0.9%lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5fd952631ec94be381520e07bac6767b', '69948', '�����췽ҩҵ�ɷ����޹�˾', '�����涡', 2.47, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����涡', 'Ƭ��', '0.2g', '100', 'xmtd,xmtz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5fda3a2daa434a54b015fdbaa68d60f2', '91382', '����̫����ҩ���޹�˾', '��ܺ�����', 6.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ܺ�����', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '192', 'cxcdw,cxctw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('604e8946a90d40808ba20010a482f24d', '391632', '���ݰ���ɽ��һҩҵ���޹�˾', '������', 24.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '���', 'ÿ10����2.5g�������б���2.5mg��', '210', 'xkw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6058d0f33b7c4cccaad9b538e634acad', '49328', '����Ԯ����ҩ�ɷ����޹�˾', '����������ɳ���Ȼ���ע��Һ', 2.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����������ɳ���Ȼ���ע��Һ', '����Һ', '100ml:0.2g', '1', 'rszyfsxlhnzyy,rszyfsxlhnzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('61671ccab3f041b2b0981b5f9eec66f4', '47303', 'ɽ������ҩҵ�ɷ����޹�˾', '����ù��', .8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ù��', '����', '0.125g', '1', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('61c797e1bdf3474fb099d3574c3e596d', '107762', '������ʱҩҵ�ɷ����޹�˾', '����ʮζƬ', 3.74, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ʮζƬ', 'Ƭ��', '0.3g', '100', 'fkswp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('62110d8b2cca4187aeb03cea9e40c28f', '86682', '���춫��ҩҵ�ɷ����޹�˾', '����Ƭ', 14.45, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����Ƭ', 'Ƭ��', '0.35g', '100', 'wlp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('626f37a66b82444d9f7b60b672f65bbc', '93298', 'ɽ����³��ҩ���޹�˾', '���࿨��', .35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���࿨��', 'ע��Һ', '10ml:0.2g', '1', 'ldky,ldqy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('62b2a2281a59473d9c0228d5a09825ea', '50388', '���Ϻ�����ҩ�ɷ����޹�˾', 'ע���õ�յ����', 41.95, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��յ����', '����', '50mg', '1', 'dzhs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('63125a4e20054ff7af70e9a106b8e17c', '92959', '����Ͽ��ŵά��ҩ���޹�˾', '��ø��', 8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ø��', 'Ƭ��', '0.15g', '1000', 'rms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('636ed5ab5ab24f84a183fe2a3ce97679', '92141', '���Ͻ�ɳҩҵ�������ι�˾', '�ӹ�����Ƭ', 40.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ӹ�����Ƭ', 'Ƭ��', '�൱��ԭ��ҩ��0.3g', '75', 'jgqlp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6393e96a1f4d4b3081cf9fb5fd07aa85', '109739', '����ǧ��ҩҵ�ɷ����޹�˾', '����ǧ����', 36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ǧ����', '����', '0.4g', '36', 'fkqjjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('64f2be1fc08c4979915f3f014622dce0', '49912', '���տ�Եҩҵ�ɷ����޹�˾', '��ң��', 2.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ң��', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'xyw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('65640b32e11c4632af3e71fb08cf9c2c', '62871', '�Ϻ��ִ���ҩ�ɷ����޹�˾', '�ֺ�', 1.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�޺�ù��', 'Ƭ��', '50mg', '10', 'lgms,lhms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('659f6917051349288ec4edc5c8e931cf', '93965', '�ӱ����ҩҵ�ɷ����޹�˾', '�Ȼ���ע��Һ', .14, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�Ȼ���', 'ע��Һ', '10ml:1.0g', '1', 'lhj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('662a6d83dd3841b6ad123ba70a08e42a', '106763', '����ҩҵ�ɷ����޹�˾', '�Ļ��ؿɵ����۸�', .65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�Ļ��ؿɵ���', '�۸��', '2.0g', '1', 'shskds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('664e7ef3006c4a0098485e61703b3b6b', '88644', '��������ҩ�����޹�˾', '�ٺ�Ƭ', 7.51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ٺ�Ƭ', 'Ƭ��', '0.3g', '40', 'jgp,jhp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('66575cd57a17483dafc4c6db213eb463', '64513', '����ʥ������ҩ���޹�˾', '�������˫�ҳ���Ƭ', 9.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����˫��', '����Ƭ', '0.5g', '45', 'ejsg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('66a5a6c996324beebf0b4571dbdd2772', '91641', '��Ӧ��ҩҵ���Źɷ����޹�˾', 'ˮ�������', 1.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ˮ����', '����', '10g:0.5g', '1', 'sys', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('66ac6980b6de4a30bd46c97a2c520f9a', '66680', 'ɽ��������ҩ���޹�˾', '���Ŀ���', 24.54, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���Ŀ���', '������', '9g', '9', 'wxkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('67f0d60a5dd148caabfa6dd95ab4ee83', '64214', '�Ϻ��������ҩҵ���޹�˾', '��', .55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', 'ע��Һ', '10ml:2.0g', '1', 'ajjs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('67f5a7a216f3441a9f3bcdef1487e99a', '93113', '����ҩҵ�ɷ����޹�˾', 'ά����K1ע��Һ', .76, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ά����K1', 'ע��Һ', '1ml:10mg', '1', 'wssk1', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('684339be2be44eee8541013b7713a96f', '108603', '�ÿ�ҩҵ���ű���������ҩ���޹�˾', 'ͷ�߰���', 1.85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߰���', 'Ƭ��', '0.125g', '30', 'tbab', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('68d4692e94354413bd341a4d9166db09', '50497', '���¼�������ҩҵ���޹�˾', '��֦������', 35.94, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��֦������', 'ˮ��', '2.2g/10', '120', 'gqflw,gzflw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('690862a7004647a6a73396b775f315d7', '93739', '����������ҩ����ҩ���޹�˾', '������ĸ��', 2.87, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ĸ��', '������', '9g', '10', 'bzymw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('690e110d41bf4277abfad2e1011d3f93', '55965', '������ҩ(����)���޹�˾', '����ɳ��', .75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ɳ��', 'Ƭ��', '0.25g', '10', 'hbsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('69197f9f90e14fe3971c2800c56baba0', '80226', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '����«��ע��Һ', 1.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����«��', 'ע��Һ', '10ml:0.3g', '1', 'qklz,qkld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c42a19775600447ea9c5a5fcc8369ea6', '90270', '������ҩ�ɷ����޹�˾', 'ע����������ù��', .46, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù��', '����', '100WU', '1', 'lms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c5a9c15e69414b14b68a06aa9bad4d6d', '89524', '����ҩҵ�������޹�˾', '��Ⱥ��ƽ', .76, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ⱥ��ƽ', 'Ƭ��', '10mg', '100', 'nqdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c5b20e7d0df24f4091570645d697693a', '55573', '�˲�����ҩҵ���޹�˾', '����ù�ط�ɢƬ', 6.24, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù�ط�ɢƬ', '��ɢƬ', '0.25g', '6', 'klmsfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c5f6ece950bc4e12bf39d454146db4c8', '107084', 'ɽ����Ԫʢ����ҩ���޹�˾', '������', 3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '������', '9g', '10', 'bhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c6020fac8d7348178ded2393e6613d67', '107528', '�������䱦��ҩҵ�ɷ����޹�˾', 'Ѫ��ͨע��Һ', 3.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', 'Ѫ��ͨע��Һ', 'ע��Һ', '5ml:0.25g', '1', 'xstzyy,xstzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c6b892525d8846309145980ebd9858b8', '89239', '���������ҩ�ɷ����޹�˾', '��', .12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����', 'ע��Һ', '2ml:0.25g', '1', 'acj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c6e49851d9d54b39a93eca778dc05f4b', '48084', '����ҩҵ�������޹�˾', '޽����������', 8.49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '޽����������', '����', '0.45g', '24', 'hxzqrjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c6ec2b52dc144d26b6ebd238de8c49d5', '70779', '������������ҩ���޹�˾', '������������', 12.94, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������������', '�ڷ�Һ', '60ml', '1', 'ffafym', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c7c6fde5a9134e2a90bf4a6aa7158635', '102144', 'ҩ����ҩ���Źɷ����޹�˾', 'ʯ��ҹ����', 13.02, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ʯ��ҹ����', '������', '9g', '10', 'shygw,dhygw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c82e23efe33e437aa74900a35ddbe6ed', '52056', 'ɽ���»���ҩ�ɷ����޹�˾', '��������������', .08, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '��������������', 'ע��Һ', '1ml:2mg', '1', 'dsmslsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c84f0d9528654f6d8119dc424a5ed2cf', '64074', '�����оŻ���ҩ�ɷ����޹�˾', '��', 24.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��θ����', '����', '0.2g', '24', 'awyjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c854f23aceed482cad4aacff529c4b5a', '54942', '����������ҩ�ɷ����޹�˾', '�������ù�ؽ���', 1.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', '����', '0.15g', '10', 'klms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c8be6c86565d4cf79d94a2130f7a119c', '54425', '�ɶ�������ҩ���޹�˾', '���ȴ�����', 17.72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ȴ�����', '����', '0.35g', '36', 'xkcjn,xhcjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c907b7b8790e463c95cfa290717dd9ad', '109372', '����������ҩ�ɷ����޹�˾', '��ù��', 22.28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ù��', '����Ƭ', '0.25g', '100', 'hms,gms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c933a417fbb94c09947ce089dbf4449e', '52363', 'ͨ������ҩҵ�ɷ����޹�˾', '������R', 46.43, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������ȵ���', 'ע��Һ', '10ml:400IU', '1', 'czryds,zzryds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c99c01ca0182466f922eb2508fb78b96', '93671', '�Ϻ��������ҩҵ���޹�˾', '��', 3.75, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��˹����', 'ע��Һ', '2ml:1mg', '1', 'xsdm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c99ec832ae704f9f80da453acfea0dfd', '64785', '���ϵ�ŵ��ҩ���޹�˾', '��Ī�涡', 1.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī�涡', 'Ƭ��', '20mg', '24', 'fmtz,fmtd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ca100c434e6844cca04dce4372f73f44', '92890', 'ɽ������ҩҵ�ɷ����޹�˾', '�ٺ���', 3.6, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ٺ���', 'ˮ����', '7.2g(10g/100��', '6', 'jgw,jhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ca65802b4d55429dab1b5f5126d725b9', '52963', '����ҩҵ�ɷ����޹�˾', '�����Ƭ', 1.65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����', 'Ƭ��', '25mg', '100', 'glq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cbd09dd39d55452ea8aba836ec49c784', '73936', '����ҩҵ�ɷ����޹�˾', '��ȩ����Ƭ', 1.55, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��ȩ����', 'Ƭ��', '0.1g', '100', 'pqnz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cbf0c00b6094420f81f098655f19bcee', '76982', '����˹��ҩ�����ţ����޹�˾', '������', 1.76, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'Ƭ��', '10mg', '6', 'lltd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cc04d6df62a245abaf1413383911bf59', '76721', '��������ҩҵ�ɷ����޹�˾', '��������', 28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', 'Ƭ��', '0.1g', '36', 'lzpl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cc451c455a9d4099be0cf6c45a99f754', '82225', '��ʿ����ҩ���Źɷ����޹�˾', '�������', 7.92, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', '����', '0.551g', '6', 'chdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cc518215bd0345a3ae9c19bdd5a0ea58', '65381', '³�ϱ�����ҩ���޹�˾', '����', 52.11, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����ε�', '�����', '100ug/��*200', '1', 'bdnd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cc56541a644b43bba7cd8b5d0f68b2f0', '77963', '���ϵ�ŵ��ҩ���޹�˾', '������', .68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'Ƭ��', '0.5g', '8', 'txz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cc7400bccdea43c2889892101fd79cd5', '54451', '���ճ���ҩҵ���Źɷ����޹�˾', '��������ɳ��', 22.36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������ɳ��', '����', '0.125g:0.15g', '48', 'fflzsz', null);
commit;
prompt 700 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cdae9dfbce424e08904d3d1320ca11e3', '55990', '���ռ�����ҩҵ���޹�˾', '���ɾ�', 33.35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ɾ�', 'Ƭ��', '20mg', '48', 'lkj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cf1c4ab918f44a2ea12228d6ca8c03ff', '92143', '����ǧ���潭ҩҵ�ɷ����޹�˾', '����Τ��', 2.05, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Τ��', '������', '50mg', '18', 'lbwl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cfb14d6917174aedab247179fec490df', '74817', '���ϰ�ҩ��������ҩҵ���޹�˾', '���ϰ�ҩ��', 42.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ϰ�ҩ��', '�𽺸��', '6.5cm*10cm', '10', 'ynbyg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d0d8e1fa42f84d688315a04f4c2d1999', '48181', '����̫��ҩҵ�ɷ����޹�˾', '�������Ȼ���', .94, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '�������Ȼ���', '����Һ', '250ml', '1', 'pttlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d12b5368326341e4804e64feb4273d79', '83472', '��������ҩҵ���޹�˾', '?', 18.59, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����ƽ����', 'Ƭ��', '0.2g', '36', 'gypjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d1dd346156a34ace97afcaea7a30a859', '102119', 'ҩ����ҩ���Źɷ����޹�˾', '������', 4.45, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '������', '3g', '10', 'ddw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d219da987e1d4289af803f363ae4e647', '90312', '����������ҩ���޹�˾', '�����Ұ���������', 15.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�Ұ�����', '����', '0.25g', '100', 'yadc,yazc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d24276345f844fd4a52e507b9e856acb', '2013011', '������ά����ҩ', '��ĸ�ݸ�', 3.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ĸ�ݸ�', '����', '125g', '1', 'ymcg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d2dd8a7bc8fc46e3af57672cae6c2bc9', '70934', '�Ϻ�����ҩ�����޹�˾', '��Ψ��', 24.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'Īɳ����', '����', '5mg', '24', 'msbl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d34f8025c7d74c57b866f71ea8a0f076', '78720', '��������ҩ�����޹�˾', 'ͷ�߿������', 3.05, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߿���', '������', '0.125g', '6', 'tbkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d3516afc4ac2413b9e3ee4794780b2f3', '45907', '�����¾���ҩ���޹�˾', '������', 8.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ��߻����', '����', '0.125g', '12', 'tbfxz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d357409542fb4ddfad677e5c90741bc1', '67672', '����ҩҵ�ɷ����޹�˾', '?', 27.41, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', '����', '5ml:0.5g', '1', 'tms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d3c5082c22f1472287bf7c6beef03e02', '106824', '����ҩҵ�ɷ����޹�˾', '�����ù���۸�', .48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��ù��', '�۸��', '2g:10mg(0.5%)', '1', 'jms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d44112fe297942ca8f618bf54edd7c5e', '108394', 'ɽ��ʡƽԭ��ҩ��', '������ͪ���Ƭ', 2.46, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ͪ���', 'Ƭ��', '1mg', '100', 'ttf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d45118b3a8244b4ea2c28ed78cdb4475', '107822', '�㶫ʡ�޸�ɽ�׺���ҩ��', '������', 5.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'ˮ��', '3.7g', '20', 'bjw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d45b0f45eb8d4004966ec29f58fc248d', '50765', '����������ҩ�ɷ����޹�˾', 'ע���ð�Ī�����ƿ���ά���', 1.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ī����/����ά���', '����', '0.6g(5:1)', '1', 'emxl/klwsj,amxl/klwsj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d68622a325d1473db985c86550cc66d6', '51064', '���Ǻ�˹��ҩ���޹�˾', '����«��', 1.98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����«��', '����', '0.48g', '1', 'qklz,qkld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d6a6dbf624524fed86297ba6a9024d4e', '54121', '���Ͽ���ҩҵ���޹�˾', '5%������', .98, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '5%������', '����Һ', '100ml(��ƿ)', '1', '5%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d6a78044a49e450d9f3fc8d91775fc3e', '48065', '����̫��ҩҵ�ɷ����޹�˾', '5%������', .73, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '5%������', '����Һ', '100ml', '1', '5%ptt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d6a908446e6a4588a60a39bd9b4d1af9', '89228', '���������ҩ�ɷ����޹�˾', '��', 1.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��˹����', 'ע��Һ', '1ml:0.5mg', '1', 'xsdm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d6c8b594c842442b885ae6a4971dee4c', '56209', 'ʯҩ������ŵҩҵ(ʯ��ׯ)���޹�˾', '��Ī����', 3.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����', '����', '0.25g', '50', 'amxl,emxl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d6e00f1b27394a9a9ad51e3d788366dd', '106875', 'ɽ��³��ҩҵ���޹�˾', '�����Ƭ', 2.58, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����', 'Ƭ��', '0.2g', '100', 'blf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d6ed482eec5c49f9b4231730edf6283f', '78406', '�ɶ���һ��ҩ���޹�˾', '��ù��', 2.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ù��', '˨��', '0.15g', '10', 'kmz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d70a9e7d285446a69d6cccec171bc299', '2013001', 'ɽ��������ҩ', '20%��¶��', 2.4, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '20%��¶��', '����Һ', '250ml', '1', '20%glc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d730a4d7c517463f985614f50ae7c22e', '46530', '�Ϻ��ִ���ɭ(����)ҩҵ���޹�˾', '��������ɽ����ע��Һ', 1.27, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '��������ɽ����', 'ע��Һ', '5ml:20mg', '1', 'cxsyslz,sxsyslz,dxsyslz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d748686eaeb64dab90db742bc8707eb4', '93763', '����������ҩ����ҩ���޹�˾', '������', 3.17, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', 'ˮ��', '6g', '10', 'bhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d78ff6b6fb0c427daa97f6a152e571d1', '94353', '�����н�ҩҵ���޹�˾', '�����Ƭ', 1.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�����', 'Ƭ��', '0.1g', '100', 'blf', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d80e1bce4a3641e7a3aee87aca8129b1', '106068', '�Ͼ�������ҩ���޹�˾', '����ɳ�ǵζ�Һ', 1.69, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ɳ��', '�ζ�Һ', '8ml:24mg', '1', 'yfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d8e4dcb0536c4c48b9a39937a535f6a4', '47797', '��³��ҩ���޹�˾', 'ע����˳��', 8.14, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '˳��', '����', '20mg', '1', 'sb', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d8f456b6a75d424abf650613e993d39d', '93892', '������̩��ҩҵ�ɷ����޹�˾', '���������', 21.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���������', '������', '8g(�൱��ԭҩ��6g)', '6', 'rpxkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d9927c1e020f4e14a2e8cafcfe83ea6f', '105791', '�麣������ҩ�ɷ����޹�˾', '�������ȵ���', 42.89, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������ȵ���', 'ע��Һ', '3ml:300IU', '1', 'czryds,zzryds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d9f3c4422ffb49109dfc40f9431dd01d', '92989', '�ɶ���ҩ�����Ĵ�������ҩ���޹�˾', '�ڷ���Һ��ɢ(��)', 7.18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ڷ���Һ�΢�', 'ɢ��', '14.75g', '20', 'kfbyy��', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('da207317cf174dce9875eb6e367d3f5b', '110172', '������ҩ���Źɷ����޹�˾', '���ϱ�����', 28.72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ϱ�����', 'ˮ��', '0.15g(0.15g/60)', '20', 'wsbcw,wzbcw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('da82dfae1923417faaac79dd3f7b2c42', '109303', '��������߿���Ȼҩ�����޹�˾', '���ٻƿڷ�Һ', 29.61, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ٻƿڷ�Һ', '�ڷ�Һ', '10ml', '10', 'yzhkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('da90291a932d4f08bc7aafc2d632dba2', '64494', '����Զ��ҩҵ���޹�˾', '��ù��', 17.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ù��', '˨��', '20WU', '14', 'zms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('db890a8915bd4e4ea99aa6e8920c044d', '96661', 'ͨ��ï����ҩ���޹�˾', '��������', 3.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', 'ע��Һ', '0.2g', '10', 'hlxa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dbdfb66449c941a3b94d4c242424b3a7', '76866', '�Ĵ�������ҩ���޹�˾', '˫�ȷ�����', .7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '˫�ȷ�����', '����Ƭ', '25mg', '100', 'slfsn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dc334b70b1ee436fab37f256f4b7e17b', '58442', '���⿵ŵҩҵ���޹�˾', '��Ī�涡', 1.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ī�涡', '����', '20mg', '1', 'fmtz,fmtd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dca7f43153da44cf9dcd0ffb2f09413c', '71000', '�������ҩҵ���Źɷ����޹�˾������ҩ��', '���ʵ���', 23.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ʵ���', '����', '20mg', '100', 'qydw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dcc4ed4cf6a843b8959274b62f04b3f3', '101856', '��������ҩҵ���޹�˾', '�������Ľ���', 26.01, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������Ľ���', '����', '0.4g', '36', 'csyxjn,ssyxjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dd3e24fc3f124c689b761743160cf390', '52857', '���ϸ�������ҩҵ���޹�˾', '����ע��Һ', 9.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ע��Һ', 'ע��Һ', '20ml', '1', 'smzyy,cmzsy,cmzyy,smzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dda1d882853c440b9009a58def30d7b0', '107257', '��ɽ��ԭ��ҩ���޹�˾', '���������ն���', 1.14, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���������ն���', '����', '20mg', '1', 'slsxgen', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('de55e55530cc42b79193f555fa1df04a', '89837', '���Ϻ�ɭ��ҩ�ɷ����޹�˾', '��Ӱ�ϰ�', 12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��Ӱ�ϰ�', 'ע��Һ', '20ml:12g', '1', 'fypa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dfbc19498e9a4a60af55fce22f5f5dc0', '89813', '������һ����ҩ���޹�˾', '����', 5.26, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', '����', '2mg', '14', 'tlzq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dfc14eabd54744d8a63d23362718f2a8', '50487', '����������ҩ�ɷ����޹�˾', 'ע��������Τ��', .88, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����Τ��', '����', '0.25g', '1', 'lbwl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e0817b62caf0441b8c67c98e089a055e', '105916', '�����н�����ҩ���޹�˾', '��', .7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', '��Һ��', '100ml', '1', 'gyhq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e0a6cdb9a6b9400ab4955e4ea4ee166d', '106887', '���ջԿ�ҩҵ���޹�˾', 'ά����C', .81, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ά����C', 'Ƭ��', '50mg', '100', 'wssc', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e1028caa072942c0aa0220607636bc27', '65646', '���ҩҵ�������޹�˾', '��', 1.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͪ����', '����', '10g:0.2g', '1', 'tkz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e1ebeb5616904091bdae58929b184ad5', '52713', '����������ҩ�ɷ����޹�˾', '����������ɳ�ǽ���', 1.18, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ɳ��', '����', '0.1g', '12', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e2454624ffbb430fb103cbc3f97bed51', '81176', '�人����������ҩҵ���޹�˾', '��θ��ʳƬ', 4.05, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��θ��ʳƬ', 'Ƭ��', '0.8g', '32', 'jwxsp,jwxyp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e2a06dd4750841d2b3cb6309b0b3f890', '77170', '����Ǳ����ҩ�ɷ����޹�˾', '������Ŀ����Һ', .99, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������Ŀ����Һ', '����Һ', '8ml', '1', 'zzmmdyy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e3b9754a7968433fa398247bbec8f9dc', '70035', '�����췽ҩҵ�ɷ����޹�˾', '�������', 3.97, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������˫�һ���Ƭ', '����Ƭ', '0.5g', '16', 'ysejsghsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e3c877a2627f446aa2a52fa5e6df5138', '57087', '�����������ҽҩ�ɷ����޹�˾', '������', 44.83, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������ͪ��ɢƬ', '��ɢƬ', '15mg', '30', 'yspgltfsp,ysbgltfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e3e325fc2b26496586c862f02303408a', '87182', '��կ����Ȼҩҵ�����������ι�˾', '��ζǼ�����', 10.73, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ζǼ�����', '������', '15g', '20', 'jwqhkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e46bcca9f8c340d69cbd79a5a32bae9b', '67292', '����ҫ���������޹�˾', '�������', 1.17, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�������', 'ע��Һ', '10ml:0.25g', '1', 'fsmd,fnmd', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e4da056d0f984f678e7b6389f8968b5c', '90132', '������ҩ����������һ��ҩ���޹�˾', '��', .99, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����鰷', 'Ƭ��', '0.1g', '24', 'jgwa', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e5a30d71da984f998b8b3c18c852fc44', '56993', 'ɽ����³��ҩ���޹�˾', '���ȿ���', .73, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���ȿ���', 'ע��Һ', '5ml:25mg', '1', 'bbqy,bbky', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e5bb2e93211a48429687dd7d596c1306', '79059', '�����û�ʿҩҵ(����)�������ι�˾', '�����Ƭ', 15.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�����Ƭ', 'Ƭ��', '0.34g', '60', 'rpxp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e64903a37b4748acb6cc09f34dfb589d', '93438', '�Ϻ���������ҩҵ���޹�˾', '��Ŀ�ػ���', 3.63, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��Ŀ�ػ���', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'mmdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e683f49dd38540a9aa43d938923fc880', '109071', '�����찲ҩҵ�ɷ����޹�˾', '����������ͪ��ɢƬ', 41.21, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������ͪ��ɢƬ', '��ɢƬ', '30mg', '14', 'yspgltfsp,ysbgltfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e70a326038a8455484db3c8ff847ab42', '88646', '�ɶ��ذ���ҩ�������޹�˾', '�ذ���Ѫ������', 8.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ذ���Ѫ������', '����', '������������100mg(�൱������������Ԫ35mg)', '20', 'daxxkjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e726466bacdb481894ea1f3525e3dc4f', '65363', 'ʯ��ׯ��ҩ���޹�˾', '���һ����40�Ȼ���', 2.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���һ����40�Ȼ���', '����Һ', '500ml:30g:4.5g', '1', 'qyjdf40lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e77d0cf047eb419f84293ebf92c0c30c', '53557', '������һ����ҩ���޹�˾', '������������', 5.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������������', '����', '0.45g', '36', 'xyldjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e7d62445698d4d72be74f8330fe6ce22', '74088', '��������ҩҵ���޹�˾', '��������ڷ�Һ', 23.64, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������ڷ�Һ', '�ڷ�Һ', '10ml', '12', 'qgldkfy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e81c7d4bd28140eebada9e405ed6b260', '85063', '������¤��ҩҵ���޹�˾', '���ְ�Ƭ', 3.61, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ְ�Ƭ', 'Ƭ��', '0.5g', '60', 'plap,pyap', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e8a2459b0c914879a425e80a17cf88c8', '107079', 'ɽ����Ԫʢ����ҩ���޹�˾', '��ζ�ػ���', 3.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ζ�ػ���', '������', '9g', '10', 'lwdhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e8b25eb142194adb9b6d515dff856d53', '93620', '��������ҩҵ���޹�˾', '��', .09, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ɽݹ�м�', 'ע��Һ', '1ml:10mg', '1', 'sldj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e8fb33e4b52b4d5d953ad28964dcff70', '63916', '��������ҽҩ�������޹�˾������ҩ��', '��������ͪע��Һ', 1.46, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '֧', '����ͪ', 'ע��Һ', '1ml:0.4mg', '1', 'nlt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e9d253ee9e254d008e13358d5a549bd6', '68821', '�Ϻ���ɽҩҵ���޹�˾', '�强��', 1.77, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�强��', 'Ƭ��', '8mg', '100', 'xjx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e9ea9776d0174ea59b7ab0ce57a0944c', '66672', 'ɽ��������ҩ���޹�˾', '���Ŀ���(������)', 27.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���Ŀ���', '������', '5g(������)', '9', 'wxkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f33f36860f614464b4db2ef762aafb21', '100843', '��������ҩ���޹�˾', '������Ƭ', 10.35, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������Ƭ', 'Ƭ��', '0.32g', '36', 'kbdp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f3df74760e15482cbbf16c07e9bcd20d', '57070', '�����������ҽҩ�ɷ����޹�˾', '������', 17.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�;�����п�ȵ���', 'ע��Һ', '10ml:400IU', '1', 'djdbxyds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f7bc2fc97daf45caa5a33f4c295830a5', '48374', '��������ҩ���޹�˾', '������', 19.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���Ӵ�Ī', 'ע��Һ', '10ml', '1', 'yxdm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bce6817b1a9c4568a014cd4b3b487df9', '54179', '���Ͽ���ҩҵ���޹�˾', '�������Ȼ���', 1, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, 'ƿ', '�������Ȼ���', '����Һ', '100ml(��ƿ)', '1', 'pttlhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bfdaeabbd76e47c8825b9789f4ec3573', '74930', '����������ҩ���޹�˾', '������Τע��Һ', 7.09, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������Τ', 'ע��Һ', '5ml:0.15g', '1', 'gxlw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c23fdfc4910c413e8545a3b476c36637', '56840', '���ҩҵ������֣�ɷ����޹�˾', '��', 2.39, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '��������', '��Һ��', '500ml', '1', 'gyhq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c5e7ec3e5db44d1db44313d96d002f05', '94801', '��������ҩҵ�ɷ����޹�˾', '����к�ν���', 26.17, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����к�ν���', '����', '0.25g', '48', 'ldxgjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ca0b0646371944d2a0261df2d521d76c', '89282', '�����ϲ�ɣ����ҩ��', '������ĸ����', 22.7, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ĸ����', '����', '0.28g', '36', 'bzymjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('cd1913df11f4491bbebe654a44ca4131', '100495', '���ϻ���ɭҽҩ���＼�����޹�˾', '��ɳ', 2.34, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�޺�ù��', '��ɢƬ', '0.15g', '8', 'lgms,lhms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d3119280d78d44729b74ce4acceaa67b', '52506', '��嵤��ҩҵ���޹�˾', '���̰ܶ���', 3.42, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���̰ܶ���', 'ˮ��', '9g', '6', 'lqbdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d63f204d290946e88d90201965ea36ff', '107891', '����ҽ��ҩҵ�������ι�˾', '������������Ƭ', 1.45, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������������', 'Ƭ��', '��������0.245g/������þ0.105g/����������0.0026ml', '100', 'ffqyhl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d747ac7618d94c06b4ecd47668fa20c5', '107584', '���Ǻ�˹��ҩ���޹�˾', '���׵���', 3.44, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '���׵���', '����', '0.5g', '1', 'bldj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d9b5d1f5cae347d49b13f7799f35874a', '90617', '����ҩҵ�ɷ����޹�˾', '������', 17.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'Ƭ��', '5mg', '1000', 'pns', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('dc8a290c0b9a449f8426f2a969cee35d', '71799', '³�ϱ�����ҩ���޹�˾', '³�ϱ���', 14, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '��������ɳ�ڷ�ɢƬ', '��ɢƬ', '��0.15+0.125��', '12', 'fflzszfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e108cc9b0b8b4ce2a14fc46b0377d88a', '106890', '�麣�����������ﻯѧ��ҩ��', '���ᰱ������ɢƬ', 10.69, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������', '��ɢƬ', '30mg', '30', 'axs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e5e2c073e115443cb7056caf6cc0f478', '91065', '�����н�����ҩ�������ι�˾', '��', 3.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '��ĸ�ݸ�', '����', '125g', '1', 'ymcg', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('e7270059f0f24bddb9f3781fa76eb183', '82707', '��������ͨҩҵ�������ι�˾', '�⻯�ɵ���', 8.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�⻯�ɵ���', '����', '10g:10mg', '1', 'qhkds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ea480b446e9d49e9ab8aa8bcda11aca0', '75816', 'ɽ������ҩҵ���޹�˾', '������', 31.82, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������������ɢƬ', '��ɢƬ', '5mg', '36', 'mlsynplfsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('36128e67f5d24145a5c7f67b434429a1', '89688', '����ǧ��ҩҵ�ɷ����޹�˾', '����ǧ��Ƭ', 23.83, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ǧ��Ƭ', 'Ƭ��', '����', '144', 'fkqjp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('09ba295471b7453e92443155b1ac77b5', '68030', '�Ϻ�����ҩ�����޹�˾', '��', 16.97, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�װ�����', 'Ƭ��', '2.5mg', '100', 'jadl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('8c1d809fa27a4d6e97cfa2a0181e81f4', '108873', 'ɽ����³��ҩ���޹�˾', '���ע����ˮ', 1.79, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '���ע����ˮ', '����Һ', '500ml(��ƿ)', '1', 'mjzyys,mjzsys', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('a502856ca0cf4f14bb871ad3ec9f56b3', '57845', '���ϸ�ɭҩҵ���޹�˾', 'ɭ��', 31.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù�ػ���Ƭ', '����Ƭ', '0.5g', '6', 'klmshsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b4a798240cc7475ea179c9b9ff3fdc0f', '100982', '������¹����ҩ�ɷ����޹�˾', '����к����', 3.15, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����к����', '������', '6g', '10', 'ldxgw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('926265d70b4345daadf3ff2ac7e59ef0', '52378', 'ͨ������ҩҵ�ɷ����޹�˾', '������30R(��о)', 46.22, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '30/70����������ȵ���', 'ע��Һ', '3ml:300IU', '1', '30/70hgczryds,30/70hhzzryds,30/70hgzzryds,30/70hhczryds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6a17ce71523e433799ee8f9f1ad0ba93', '71349', '�ɶ�������ҩ���޹�˾', '����Ѫ��������', 25.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����Ѫ��������', '����', '0.5g', '30', 'slxmkjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('f1136433271645f68dd52ef2a8bd002e', '55646', '�˲�����ҩҵ���޹�˾', '������ຽ���', 2.3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������ຽ���', '����', '5mg', '30', 'glbqjn,glpqjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bc5963c6aebd4644922a7d14dded8056', '110228', '������ʥ̩ҩҵ���޹�˾', '�忪��Ƭ', 23.81, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�忪��Ƭ', 'Ƭ��', '0.5g', '36', 'qklp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('d66e3c9d6bbd4873afd595e6f2aecee8', '47311', 'ɽ������ҩҵ�ɷ����޹�˾', '��������', 1.13, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����ù��', '������', '0.25g', '2', 'ajms,ejms,aqms,eqms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ff7cf4efcfda4813b10516f189c71791', '78280', '�Ĵ���ҽ����ҩ���޹�˾', '�޺�ù��', 3, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�޺�ù��', '��ɢƬ', '50mg', '12', 'lgms,lhms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ffb4e018b4c04b59b32af607eb26b60c', '88708', '���ϰ�ҩ���Źɷ����޹�˾', '��������Ƭ', .8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������Ƭ', 'Ƭ��', '�൱��ԭ��ҩ0.655g', '36', 'hlsqp', null);
commit;
prompt 800 records committed...
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ffdb605748164b59af0e508e1e5ae2bd', '92081', 'ɽ���ֻ�ҽҩ�Ƽ��ɷ����޹�˾', '�ٺ���', 3.31, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ٺ���', '������', '6g', '10', 'jgw,jhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5d7f597675c848fa83bc7d23b051930b', '107909', '����ҽ��ҩҵ�������ι�˾', '����������Ƭ', 1.25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�������', 'Ƭ��', '5mg', '100', 'eybq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('5fb313814f434a73b36bf02582f32bdf', '64478', '̫���������츢����ҩ�����޹�˾', '��֧�ǽ�', 9.78, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��֧�ǽ�', '�ǽ���', '200ml', '1', 'jztj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('616cfd4611404dd0b61fcd572fbf798b', '61692', '�㶫�������ҩ���޹�˾', '��ʯ����', 11.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��ʯ����', '������', '20g', '10', 'pskl,pdkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('637afbcae68147669d9b505c94a5cb12', '107758', '������ʱҩҵ�ɷ����޹�˾', '������', 4.33, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������', 'Ũ����', 'ÿ8���൱��ԭҩ��3g', '200', 'bhw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('67d7b863da7d40348220e68fb8b925bd', '48187', '����̫��ҩҵ�ɷ����޹�˾', '0.9%�Ȼ���', .68, null, null, to_date('01-04-2014', 'dd-mm-yyyy'), '1', null, null, null, null, '00401', null, '1', null, to_date('02-04-2014', 'dd-mm-yyyy'), '2', null, null, null, 'ƿ', '0.9%�Ȼ���', '����Һ', '100ml', '1', '0.9%lhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('69150c43c1f34189b806d71a68610095', '64137', '����������ҩ����ҩ���޹�˾', '��Ƣ��', 3.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ƣ��', '������', '9g', '10', 'gpw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('6bcdec36519a4e21b29d46459032f646', '73353', '������ҩ�ػʵ����޹�˾', 'ͷ����������', 3.07, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ������', '����', '0.25g', '24', 'tbld', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('705686b622674a838190bcf5060367b3', '110249', '�����췽ҩҵ�ɷ����޹�˾', '�������', 15.1, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������˫�һ���Ƭ', '����Ƭ', '0.5g', '64', 'ysejsghsp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('738d6286925d486a96656efaac3a557e', '108495', '�Ϻ���������Ƽ���������ҩҵ���޹�˾', '߻���ͪƬ', 1.69, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '߻���ͪ', 'Ƭ��', '0.1g', '100', 'fnzt', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7581b2b895a9498396d40383c0673baf', '107007', '����������ҩ�������ι�˾', '����Ƭ', 5.5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '����', 'Ƭ��', '10mg', '1000', 'dj,dq', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('785be4fdc07445b2804a6e56facc9083', '93970', '�ӱ����ҩҵ�ɷ����޹�˾', '����þע��Һ', .25, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����þ', 'ע��Һ', '10ml:2.5g', '1', 'lsm', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7c4e13842a9c40dcb54716eb2bb316ca', '72070', '���վ���ҩҵ�ɷ����޹�˾', '�������', 36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', '������', '6g', '9', 'gskl,jskl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('7e73ad419510435a8fe4800f269a1cf6', '55620', '�˲�����ҩҵ���޹�˾', '��Ī�涡����', 1.38, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī�涡����', '����', '20mg', '24', 'fmtzjn,fmtdjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('81393aa920004c7182897250812de77d', '78034', '����ҩҵ�������޹�˾', '������', .88, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '������', '����', '80mg', '1', 'yhn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('838703579dac4138ad036440ad56c228', '91113', '���ݰ���ɽ������ҩ���޹�˾', '�����', .5, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����', 'ע��Һ', '2ml:0.5g', '1', 'acj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('85869e40455945648864c9073e74dabd', '82774', '������ҩҵ�������޹�˾', '����������', 20.67, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', '������', '5g', '10', 'jfkkl,gfkkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('ec06c1a3b07c42aa89b4bb5eba4a1a0d', '69686', '�Ű�����ҩҵ���޹�˾', '�θ�ע��Һ', 21.69, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�θ�ע��Һ', 'ע��Һ', '10ml', '1', 'sfzsy,sfzyy,cfzyy,cfzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('eeebf885ff874480aa01f45cba7f0255', '56138', 'ɽ������ҩҵ�ɷ����޹�˾', 'ͷ�߰���', 2.99, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߰���', '����', '0.25g', '24', 'tbab', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b820283c6c9541bc83826e46718c44eb', '57224', '����˫�׻���ҩҵ���޹�˾', '�Ȼ���ע��Һ', 1.19, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '�Ȼ���ע��Һ', '����Һ', '500ml��4.5g(����ƿ)', '1', 'lhnzyy,lhnzsy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b90fbe788f794c998fbfa9129b29d6c3', '97725', '��������ͨҩҵ�������ι�˾', '�ֿ�ù��', 1.85, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�ֿ�ù��', '����', '0.6g', '1', 'lkms', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('b92af38b86f34a91b3eaf750c8c3b47a', '80392', '�Ĵ�����ҩҵ�ɷ����޹�˾', '������Τ', 2.03, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������Τ', 'Ƭ��', '0.2g', '24', 'axlw,exlw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bbafa0d8e5794e9c8b0450fb2108b5aa', '62748', '���ݺ�������ҩҵ���޹�˾', '����������', 7.03, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', 'ˮ����', '60g', '1', 'jksqw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bc6d4e73aeb24673b89334a3b0186871', '53690', '�Ϻ�����ʵҵ�����ţ�������ҩҵ���޹�˾', 'ţ������Ƭ', 2.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ţ������Ƭ', 'Ƭ��', '0.25g', '48', 'nhsqp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bcbe3e3a16854daca75fcadfd94ee446', '64221', '���Ͽ�����ҩ���޹�˾', '������', 1.11, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����ɳ��', '����', '0.2g', '1', 'yfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bd74e6b65bcb44dbb5634e0f93694f4d', '47897', '�ÿ�ҩҵ�������޹�˾', '�ÿ���', 1.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '����������', '����', '40mg', '1', 'azgln', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bdec8586b60b40618afb08a2df901231', '106194', '�Ͼ���ɽ��ҩ���޹�˾', '��Ѫֹʹ����', 19.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ѫֹʹ����', '����', '0.25g', '60', 'hxztjn', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('be8cd74148b741c5b4b841c9213bd29e', '65650', '����ҩ��������ҩ���޹�˾', '����������', 5.12, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '����������', 'ˮ����', '120g', '1', 'bzyxw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bedae1ea6b804054bf3a25d716e45d80', '********', '����ҩҵ�ɷ����޹�˾', 'ά����B6', .65, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', 'ά����B6', 'Ƭ��', '10mg', '100', 'wssb6', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bf01b2b0920b4308acf6d51c52111a45', '108382', '�Ĵ��̰�������ҩ�ɷ����޹�˾', '޽������ˮ', 2.36, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '޽������ˮ', '����', '10ml', '10', 'hxzqs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bf0a2c69dee14ef99df216b27faeb975', '85943', '�㽭��̩ҩҵ���޹�˾', '��̩', 25.49, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����/����ά���', '����', '0.15625g(4:1)', '18', 'emxl/klwsj,amxl/klwsj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bf735bd3a9a842b1baa1e8ecb836cf2a', '68136', '������������ҩҵ�ɷ����޹�˾', '�����ƽ', 26.08, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�ʲ�����', '���ܽ���', '50mg', '24', 'gcsea', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bf7f44c9c4ba4af8a7cc0e41d5444095', '108479', '��ҩ����������ҩ���޹�˾', '�⻯�ɵ���', 1.2, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�⻯�ɵ���', 'ע��Һ', '20ml:0.1g', '1', 'qhkds', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('bfa73499e98441078a92aa3d630c12a1', '88070', '������¹����ҩ�ɷ����޹�˾', '��򻶨����', 6.28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��򻶨����', 'ˮ����', '6g', '10', 'gjdcw,hjdcw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c0699c0611a84d2e88c69076a30259d6', '86936', '���ݰ���ɽ��ҩ�ɷ����޹�˾���ݰ���ɽ��ҩ�ܳ�', '�Ⱥϰ�', 8.9, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ȵ�ƽ', 'Ƭ��', '5mg', '14', 'aldp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c073cc82860e458e9c5cdb18f9fa9aac', '69954', '������ҩ�ɷ����޹�˾', 'ע���ø����', 16.63, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�����', '����', '0.2g', '1', 'ggs', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c09cf270036d43d99aca9659eae4dfc8', '65230', '³�Ϻ�����ҩ���޹�˾', '���ٻƿ���', 19.81, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '���ٻƿ���', '������', '3g', '10', 'yzhkl', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c0a0d01fa68b4d86ae887fc991c3cc55', '109815', '�Ĵ�����ҩҵ�ɷ����޹�˾', '��������', 1.17, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��������', '���ܽ���', '20mg', '14', 'amlz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c0ac174764d84c4484b15aad0d727d6f', '107546', '������ҩ�ӱ�����ҩҵ�������ι�˾', 'ͷ�߰���', 2.51, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', 'ͷ�߰���', 'Ƭ��', '0.25g', '24', 'tbab', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c16993becae7492b99c187dd8118bab4', '60001', 'ʥ���żҿڣ�ҩҵ���޹�˾', '���ּ�', 23, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '��Ī����/����ά���', '��ɢƬ', '0.1875g(2:1)', '12', 'emxl/klwsj,amxl/klwsj', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c19c1db5ac0c4fe0a832f9daadda76b8', '72738', 'ɽ����³��ҩ���޹�˾', '������ɳ��', 1.68, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������ɳ��', '����Һ', '100ml:0.3g', '1', 'zyfsx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c1e77e369dcf4e5fa90c89f2a38d9e7a', '71109', '��ʿ����ҩ���Źɷ����޹�˾', '޽����������', 8.27, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '޽����������', '����', '2.6g', '9', 'hxzqdw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c20d1ecfbaf84f58b9225061abee134c', '108830', '���ϻ���ҩҵ�������ι�˾', '������', 2.8, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '��', '������', 'ˮ��', '9g', '10', 'ssw', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c2663f7982c04bf38d6744caca1c72c3', '57624', '�Ǳ�ҩҵ���Źɷ����޹�˾', '�컨ע��Һ', 8.48, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '�컨ע��Һ', 'ע��Һ', '20ml', '1', 'hhzsy,ghzsy,hhzyy,ghzyy', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c2c2d7cfe1d34ad28e33ca64b2ad6fb4', '55626', '�˲�����ҩҵ���޹�˾', '������͡Ƭ', .72, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '������͡Ƭ', 'Ƭ��', '10mg', '10', 'xfttp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c2f83a037abd4a75800deb110e5556e3', '93804', '�Ϻ�����ƺ���ҩ���޹�˾�������Ϻ�����ҩ', '������Ƭ', 2.83, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, 'ƿ', '������Ƭ', 'Ƭ��', '100mg', '100', 'yyjp', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c36b2db1be5c464eb2404b385c12ddeb', '62830', '��������ͨҩҵ�������ι�˾', '?', 28.16, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', '��������', '����', '60mg', '1', 'ptlz', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c3bc3f73fcff4b0c89f3767e33cb684a', '45677', '������ҩ���޹�˾', '֪��', 2.29, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '֧', 'ͷ��߻��', '����', '1.5g', '1', 'tbfx', null);
insert into YPXX (id, bm, scqymc, spmc, zbjg, zpdz, pzwh, pzwhyxq, jky, bzcz, bzdw, lsjg, lsjgcc, zlcc, zlccsm, ypjybg, ypjybgbm, ypjybgyxq, jyzt, vchar1, vchar2, vchar3, dw, mc, jx, gg, zhxs, pinyin, lb)
values ('c3bcb00fa4084b6f86eed56b2fca12b2', '90319', '֣������ҩ���޹�˾', '�������', 3.28, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '��', '�������', 'Ƭ��', '2mg', '14', 'tlzq', null);
commit;


insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('41', 'cmzsgc', '�������¹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, '204a1120-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('285', 'gcxqptc', '�ߴ�������ͷ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd340f9b6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('286', 'gcxarzc', '�ߴ��簲��կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd3492a7d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('287', 'gcxzzc', '�ߴ�����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd3518b1e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('288', 'gcxgc', '�ߴ���ߴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd35adfb1-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('289', 'gcxgyc', '�ߴ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd36347f0-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('290', 'gcxlgc', '�ߴ���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd36bf68f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('291', 'gcxqjzc', '�ߴ���ǰ���Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd374ce18-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('292', 'gcxlsc', '�ߴ�����ɽ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd37ec5ae-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('293', 'gcxhjzc', '�ߴ������Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd44fd6ed-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('294', 'gcxsmc', '�ߴ���˾���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd45937d7-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('295', 'gcxzc', '�ߴ������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd46804a2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('296', 'gcxmgc', '�ߴ�������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4727f10-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('297', 'gcxhcc', '�ߴ��纫����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd47af249-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('298', 'gcxsfc', '�ߴ���ʷ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd48386d1-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('299', 'jzx', '��կ������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd48cb84b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('300', 'jzxjzc', '��կ���կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd49646ab-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('301', 'jzxclc', '��կ���¥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd49fcea4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('302', 'wcz', '����������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4aaf7bd-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('303', 'wczwc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4b63a3a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('304', 'wczqxzc', '������ǰ��ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4beb451-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('305', 'wczdc', '�����򶡴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4c96de3-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('306', 'wczdfc', '������η���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4d38c4d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('307', 'wczrlc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4ddc50c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('308', 'wczqbyc', '������ǰ�����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4e9c228-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('309', 'wczwzc', '���������Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4f188d7-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('310', 'wczlzc', '��������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd4fc558a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('311', 'wczxzc', '��������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd5043fd5-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('312', 'wczhc', '�����򺫴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd510c5f8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('313', 'wczcmc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd5198400-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('314', 'wczflc', '�������޴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd523374e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('315', 'wczxc', '������Ѧ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd52b96bf-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('316', 'wczsc', '������˾��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd533ebeb-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('317', 'wczhbyc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd53c4acd-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('318', 'wczxidc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd545087e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('319', 'wczhdc', '���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd54db35a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('320', 'wczzyc', '��������԰��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd555a4cd-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('321', 'wczmlc', '������ľ¥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd55fe357-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('322', 'wczbdc', '������ض��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd56839c2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('323', 'wczxiaoc', '������С��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd6083059-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('324', 'wczhxzc', '���������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd615390d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('325', 'wczjtc', '������ͷ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd61c7628-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('326', 'wczxdc', '�������µ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd6264f49-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('327', 'wczlc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd62dd736-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('328', 'ghshaien', '���Ϻ���ҩҵ���޹�˾', '4', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '0dc94edc-08cf-11e3-8a4f-60a44cea4388');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('329', 'ghsjzt', '���Ͼ���ͨҽҩ���޹�˾', '4', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '5197cdd2-08cf-11e3-8a4f-60a44cea4388');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('330', 'ghsxy', '������ҽҩ��˾', '4', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '701b09b8-08cf-11e3-8a4f-60a44cea4388');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('331', 'cmz', '����������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '15819c06-09a1-11e3-8a4f-60a44cea4388');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('332', 'gwcdg', '���������嶫��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '8bef106a-1371-11e3-8a4f-60a44cea4388');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('333', 'ylzmxwc', 'ԥ������ޣ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ae0a7c2e-1c46-11e3-8a4f-60a44cea4388');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('334', 'gwcnc', '�����������ϳ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'fc078de0-4ff4-11e3-8a4f-60a44cea4388');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('43', 'cmzzhgc', '������֣�ڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '2060dc90-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('46', 'cmzzzc', '������֣ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '207b5723-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('49', 'sszqjgc', '��ˮ���徲����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '20978193-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('52', 'sszntc', '��ˮ�����ʹ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '20b345bf-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('54', 'sszslc', '��ˮ��ʮ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c47671fa-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('57', 'sszljtc', '��ˮ���Ͼ��ô�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4953967-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('59', 'sszxgc', '��ˮ���¹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4a63efc-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('63', 'gszxc', '��ɽ�����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4c9dc8c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('65', 'gszyqc', '��ɽ�����Ŵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4db63c3-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('68', 'gszcgc', '��ɽ���ɸڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c503e120-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('70', 'gszmdc', '��ɽ���綥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c514bbd5-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('73', 'gszzcc', '��ɽ���񴨴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c536eaec-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('76', 'gszbsc', '��ɽ���ˮ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c5519bd2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('78', 'gszwgc', '��ɽ���⹵��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c5666dff-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('81', 'gszzyc', '��ɽ����԰��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c582fc19-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('84', 'cgxwgc', '�ǹ���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c775c53a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('87', 'cgxyzzc', '�ǹ�������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7909ddc-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('89', 'cgxsyc', '�ǹ�����԰��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c79f17e9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('92', 'cgxxsc', '�ǹ�����ʷ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7ba4761-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('94', 'cgxdmc', '�ǹ�������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7ca265a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('97', 'cgxgyzc', '�ǹ����Ԭկ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7ea0af3-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('99', 'cgxfhc', '�ǹ��縶�Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c80086fc-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('102', 'cgxazc', '�ǹ��簲ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c81d9be6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('105', 'cgxldc', '�ǹ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c840296e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('107', 'cgxhjc', '�ǹ������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c856d333-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('110', 'cgxdwc', '�ǹ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c87d48cf-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('129', 'hcyszc', '������˾ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c99baafd-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('132', 'hcydgc', '������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9bac0f8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('135', 'jyzjyc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9ce8ad7-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('138', 'jyznwc', '������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9e2d5a5-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('141', 'jyzlgc', '������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9f919b8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('143', 'jyzcc', '���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'caed56e8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('146', 'jyzswc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb08316d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('148', 'jyzlc', '������¹��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb1b0f12-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('151', 'jyzhsc', '�������ɽ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb349090-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('153', 'jyzhlc', '�������ִ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb45b487-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('156', 'jyzspc', '������ʯ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb6671a5-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('158', 'jyzslgc', '������˫¥����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb92cb6a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('162', 'ylzepc', 'ԥ����إ�̴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cbbf32c2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('164', 'ylzzzc', 'ԥ������δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cbd4f43b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('167', 'ylzzjdc', 'ԥ�����Լ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cbf56688-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('170', 'ylzjxcc', 'ԥ������Ǵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cc1cc816-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('172', 'ylzrzc', 'ԥ������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cc37e52c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('175', 'ylznzzc', 'ԥ��������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cce2fd53-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('177', 'ylzxgsc', 'ԥ�����˹��´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ccf3ff2d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('180', 'ylzgdmc', 'ԥ����ص����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd0da0f8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('183', 'ylzyqc', 'ԥ����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd2aa558-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('185', 'ylzlc', 'ԥ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd3f90a4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('188', 'ylzsyc', 'ԥ������԰��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd58c3f5-067e-11e3-8a3c-0019d2ce5116');
commit;
prompt 100 records committed...
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('191', 'shywlc', '��������¥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd716c95-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('7', 'admin', '��������Ա', '0', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, null);
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('25', 'cmzcmc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1f8b098b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('26', 'cmzpyc', '��������Ҥ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1f95503c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('27', 'cmzxgc', '���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1f9db2d9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('28', 'cmzspc', '���������´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1fa7e0af-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('29', 'cmzzyc', '��������԰��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1fb339a7-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('30', 'cmzzgc', '������Թ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1fc324f5-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('31', 'cmzlzc', '��������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1fd2610f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('32', 'cmzsjc', '������ʯ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1fde4a68-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('33', 'cmzccc', '�����򳵳���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1fe714f4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('34', 'cmzshpc', '������ʯ�´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1ff45dda-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('35', 'cmzwzdc', '���������ڵ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '1ffceb93-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('36', 'cmzbzc', '��������Դ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '2005b95d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('37', 'cmzlsgc', '��������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '200f844e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('38', 'cmzmzc', '��������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '2020977c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('39', 'cmzdgc', '�����򶡹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '202b4a47-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('40', 'cmzszc', '��������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '203d85bf-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('42', 'cmzjgc', '������繵��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '2052e16d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('44', 'cmzwqc', '��������Ȫ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '206a29f9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('45', 'cmzlzhc', '������¬ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '20735f8e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('47', 'ssz', '��ˮ������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '2084aa4a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('48', 'sszlyc', '��ˮ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '208cbe58-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('50', 'sszssc', '��ˮ����ˮ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '20a1103e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('51', 'sszhtc', '��ˮ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '20aa99df-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('53', 'sszzc', '��ˮ���Դ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c46a9db6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('55', 'sszhlgc', '��ˮ���ιش�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4841b92-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('56', 'sszdhnc', '��ˮ�򶫺��ϴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c48dcfdf-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('58', 'sszkzc', '��ˮ����Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c49d8df4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('60', 'sszzgc', '��ˮ���ܹ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4b0c8f4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('61', 'sszxxc', '��ˮ�����ϴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4b9bc43-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('64', 'gszqgc', '��ɽ���ǹ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4d27204-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('66', 'gszydc', '��ɽ���ඥ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4f11b45-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('67', 'gsztyc', '��ɽ����Ҫ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4fabe48-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('69', 'gszzgc', '��ɽ��ڣ�ڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c50ca855-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('71', 'gszsdc', '��ɽ��ʯ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c51e90ae-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('72', 'gszgsc', '��ɽ���ɽ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c52c6f6f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('74', 'gszpyc', '��ɽ����Ҥ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c53f7790-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('75', 'gszmugc', '��ɽ���¹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c548dc35-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('77', 'gszfgc', '��ɽ��빵��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c55b6a04-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('79', 'gszmgc', '��ɽ������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c56f0497-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('80', 'gszzfc', '��ɽ��ֽ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c5777229-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('82', 'cgx', '�ǹ�������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c58c043a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('83', 'cgxsbgc', '�ǹ���ʯ�幵��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c76ab791-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('85', 'cgxbzc', '�ǹ��籱�ܴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c77f117f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('86', 'cgxzlc', '�ǹ�����¥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7878797-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('88', 'cgxnzc', '�ǹ������ܴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c798909f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('90', 'cgxtlc', '�ǹ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7aa7c84-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('91', 'cgxzyhc', '�ǹ�����Ҷ�Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7b24418-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('93', 'cgxxwc', '�ǹ���С����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7c2f1b3-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('95', 'cgxgzc', '�ǹ�����δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7d4ae47-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('96', 'cgxsslpc', '�ǹ�����ʮ���̴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7e15789-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('98', 'cgxgzhc', '�ǹ��繬կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c7f60501-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('100', 'cgxwzc', '�ǹ�����ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c809b3eb-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('101', 'cgxlqsc', '�ǹ�����Ȫ�´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c8132736-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('103', 'cgxwypc', '�ǹ�����Ҥ�´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c8288c0e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('104', 'cgxsjc', '�ǹ����ϼ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c83337d2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('106', 'cgxydc', '�ǹ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c84a248d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('108', 'cgxwlzc', '�ǹ�������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c861f01b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('109', 'cgxdsc', '�ǹ��綫ʷ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c86dd695-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('111', 'cgxlkzc', '�ǹ������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c8882e78-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('112', 'lhz', '����������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c890f6ee-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('113', 'lhzlhc', '���������Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9150eb7-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('114', 'lhzcjgc', '������¼Ҹڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c91f868e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('115', 'lhzfslc', '�������ˮ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c933330d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('116', 'lhzszc', '������ʯׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9396c43-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('117', 'lhzszhc', '��������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9402d99-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('118', 'lhzrwc', '���������ݴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c947245d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('119', 'lhzwhc', '���������Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c94e69c0-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('120', 'lhzhhc', '�����򻨺Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c957eeeb-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('121', 'lhzwzc', '���������Ŵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c95fb297-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('122', 'lhzjzgc', '��������ӹ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c967425f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('123', 'lhzgdc', '������ٶ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c96e34de-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('124', 'lhzxzc', '������Сկ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c974b4d9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('125', 'lhzasc', '���������ϴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c97beb95-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('126', 'lhzfpc', '�������´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9879ebd-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('127', 'lhzxgc', '�������칵��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c98e3eb6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('128', 'hcy', '����������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c994c0bb-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('130', 'hcyc', '��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9aa9610-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('131', 'hcyczc', '��������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9b1f2a2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('133', 'hcyelmc', '�������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9c0f997-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('136', 'jyzzdc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9d609f2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('137', 'jyzxc', '�������ϴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9dc0c1a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('139', 'jyzsbgc', '������ʯ������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9e9dd34-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('140', 'jyzdyc', '��������ߴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9f08a62-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('142', 'jyzzhdc', '�������춥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ca01a35c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('144', 'jyzllc', '������¥���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'caf79508-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('145', 'jyzghc', '������ߺӴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'caffb2fe-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('147', 'jyzdlsc', '���������´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb10c8b2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('149', 'jyzggc', '��������ڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb236ce8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('150', 'jyzbgc', '�����򱱹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb2c2fce-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('152', 'jyztsc', '��������ɽ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb3cecdf-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('154', 'jyzlxc', '���������ϴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb511409-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('155', 'jyzljtc', '���������̨��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb5c63eb-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('157', 'jyzlwwc', '�����������ݴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb7911f6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('159', 'jyzmgc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cb9d1851-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('160', 'jyzzsc', '��������ʼ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cba9599e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('161', 'ylz', 'ԥ��������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cbb4d0be-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('163', 'ylzxzzc', 'ԥ��������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cbc9c0ab-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('165', 'ylznxc', 'ԥ���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cbdf17a4-067e-11e3-8a3c-0019d2ce5116');
commit;
prompt 200 records committed...
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('166', 'ylzwzc', 'ԥ������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cbe9684f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('168', 'ylzwwsc', 'ԥ�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cc017c53-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('169', 'ylzjzc', 'ԥ����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cc0eeb01-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('171', 'ylzzjzc', 'ԥ�����Լ�ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cc2ccdeb-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('173', 'ylzfzc', 'ԥ����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ccd23a52-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('174', 'ylzczc', 'ԥ�����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ccdaa283-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('176', 'ylzhzc', 'ԥ�����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cceb775e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('178', 'ylzszgc', 'ԥ����ʯ���ڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ccfcd220-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('179', 'ylzczhc', 'ԥ�����ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd04e374-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('181', 'ylzmzc', 'ԥ����ëկ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd1639d8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('182', 'ylzzyc', 'ԥ����կ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd225bfe-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('184', 'ylzjzhc', 'ԥ����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd359eed-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('186', 'ylzhzhc', 'ԥ������Ŵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd472487-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('187', 'ylzldc', 'ԥ���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd505c28-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('189', 'ylzhxc', 'ԥ��������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd609293-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('192', 'shhswc', '���ӻ����ݴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd79e573-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('193', 'shcgc', '���ӳǹش�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd82736e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('195', 'shclc', '���ӳ�¥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd91bcde-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('196', 'jc', '��������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd9a55a7-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('198', 'jckzc', '���ǿ��δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cda943f0-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('199', 'jcszc', '����ʯ�δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cdb1dd3f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('200', 'jcjjzc', '���Ǽ����δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cdb89865-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('201', 'jcclc', '���ǲ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cdbf3f8a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('202', 'jcpzc', '����ƽׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cdca4080-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('203', 'jcfzc', '���Ƿ��δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ce8b864c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('204', 'jclwlc', '������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ce93f531-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('205', 'qlz', '��¥������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ce9ddaa9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('206', 'qlzdgc', '��¥�򶫹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cea5d9ed-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('207', 'qlzlgc', '��¥�����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ceace373-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('208', 'qlzfhc', '��¥�򸶺Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ceb50ea4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('209', 'qlzsc', '��¥��ʨ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cebc2f36-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('210', 'qlznlc', '��¥����¥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cec66a21-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('211', 'qlzzzgc', '��¥��ڣ�Ӹڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cece6cf3-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('212', 'qlzzwzc', '��¥������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ced53019-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('213', 'qlzczc', '��¥���կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cedc1a58-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('214', 'qlzhc', '��¥�򺫴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cee3188d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('216', 'qlzszc', '��¥�����δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cef4795b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('217', 'qlzswc', '��¥�����ݴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf0442d4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('219', 'qlzczhc', '��¥���կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf14781c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('221', 'qlzcgc', '��¥��¹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf2a034d-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('222', 'qlzxgc', '��¥�����ڴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf31409e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('225', 'gwzcyc', '��������ƴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf46d8d9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('227', 'gwzhwcc', '���������Ǵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf5642f8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('228', 'gwzbzc', '�������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf5d5369-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('230', 'gwzsgc', '���������ٴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf6cc77b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('232', 'gwzzzc', '��������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf7b753f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('233', 'gwzszc', '��������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd02b06d4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('235', 'gwzdwc', '�������ݴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd0463a04-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('237', 'gwzfzc', '�������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd0565ae9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('238', 'gwzhlc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd05d2040-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('240', 'gwzwgc', '������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd06a8bbb-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('241', 'gwzdlc', '������¥��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd071766b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('243', 'gwzyc', '�������ƴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd0810bd6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('245', 'gwzrhc', '�������κӴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd093e2ac-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('246', 'gwzzrc', '���������δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd09c2766-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('248', 'gwzbrc', '�������δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd0ece86b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('250', 'gwzzyc', '������կ����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd1260ec7-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('251', 'gwzcdgc', '�����򳵴󹵴�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd1346f19-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('253', 'gwzhwc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd1483c14-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('254', 'gwzzhc', '�������źӴ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd1519ff9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('256', 'gwzwdc', '������������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd16d907c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('258', 'gwzxsc', '���������մ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd1833015-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('259', 'gwzgwc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd18c1fc1-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('261', 'gwzxwyc', '��������κӪ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd1a05aa0-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('263', 'gwzdsc', '�������մ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd290a118-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('264', 'gwzndc', '�������϶���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd298ad8b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('266', 'gwznidc', '�������ߵ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2a5ee77-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('268', 'gcx', '�ߴ�������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2b358ef-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('269', 'gcxgzc', '�ߴ����ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2ba1eb9-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('270', 'gcxzcc', '�ߴ����ų���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2c3b338-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('272', 'gcxzhc', '�ߴ����Ŵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2d1fa3b-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('273', 'gcxmzc', '�ߴ�����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2d8c9c4-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('275', 'gcxjzc', '�ߴ��羣կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2e668da-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('277', 'gcxmzhc', '�ߴ�����կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2f4283e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('278', 'gcxlptc', '�ߴ�������ͷ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2fcf5c2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('280', 'gcxwc', '�ߴ������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd30f148a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('282', 'gcxnkyc', '�ߴ���ţ������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd32856f8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('283', 'gcxmsc', '�ߴ�����ɽ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd331539e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('194', 'shhcc', '���ӻݳ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd8ab06e-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('197', 'jcbwc', '���Ǳ�����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cda26331-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('215', 'qlzctc', '��¥����ô�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'ceeb9b67-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('218', 'qlzqlc', '��¥�������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf0ba872-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('220', 'qlzrzc', '��¥����ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf1cde38-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('223', 'qlzzcm', '��¥���Ŵ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf394b41-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('226', 'gwzbwcc', '����������Ǵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf4dbb32-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('229', 'gwzhc', '���������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf6563b6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('231', 'gwzfhc', '�����򷮺Ӵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf74e5ba-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('234', 'gwzcgc', '������¹���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd03ad3e2-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('236', 'gwzthyc', '�������һ�����������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd04eb840-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('239', 'gwzdsgc', '�������ʦ�ô�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd063bfcd-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('242', 'gwzszhc', '��������կ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd0787a4c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('244', 'gwztyc', '��������԰��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd089d131-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('247', 'gwztdc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd0a5cd3a-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('249', 'gwzjzc', '��������Ŵ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd111d837-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('252', 'gwzdzc', '������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd13eb060-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('255', 'gwzcdc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd16396ac-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('257', 'gwzzdc', '�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd177bf39-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('260', 'gwzdwyc', '������κӪ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd196c996-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('262', 'gwzdyc', '����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd1aa8bda-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('265', 'gwzczc', '������ׯ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:17.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd29f18a0-067e-11e3-8a3c-0019d2ce5116');
commit;
prompt 300 records committed...
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('267', 'gwzsqc', '������ˮȪ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2accb69-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('271', 'gcxgcsc', '�ߴ���ߴ��´�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2cb6bb5-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('274', 'gcxyfc', '�ߴ����ͷ���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2dfa98f-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('276', 'gcxdcc', '�ߴ���ų���������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd2ed6234-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('279', 'gcxsc', '�ߴ����δ�������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd3058050-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('281', 'gcxcptc', '�ߴ������ͷ��������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd3181fab-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('284', 'gcxzsgc', '�ߴ�����������������', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'd33879b6-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('62', 'gsz', '��ɽ������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c4c1c750-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('134', 'jyz', '����������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'c9c7c495-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('190', 'sh', '��������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cd69a32c-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('224', 'gwz', '����������Ժ', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, 'cf4025a8-067e-11e3-8a3c-0019d2ce5116');
insert into SYSUSER (id, userid, username, groupid, pwd, contact, addr, email, userstate, remark, createtime, sex, phone, movephone, fax, lastupdate, vchar1, vchar2, vchar3, vchar4, vchar5, sysid)
values ('24', 'xyswsj', '������������', '1', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, to_timestamp('15-04-2014 19:04:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, null, null, null, null, '0d498b73-067e-11e3-8a3c-0019d2ce5116');
commit;
prompt 312 records loaded
prompt Loading USERGYS...
insert into USERGYS (id, mc, lb, xkz, xkzyxq, lxr, dh, jyfw, zcdz, lxdz, yzbm, zzc, cz, frmc, frsfz, zczj, xse, dzyx, wz, dmzh, dmzhyxq, yyzz, yyzzyxq, xyz, xyzbm, xyzyxq, gdzc, bz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '���Ϻ���ҩҵ���޹�˾', null, null, null, '������', '432432', null, null, '���ÿ�����', null, null, null, null, null, null, null, null, 'wwwfdsfafa', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERGYS (id, mc, lb, xkz, xkzyxq, lxr, dh, jyfw, zcdz, lxdz, yzbm, zzc, cz, frmc, frsfz, zczj, xse, dzyx, wz, dmzh, dmzhyxq, yyzz, yyzzyxq, xyz, xyzbm, xyzyxq, gdzc, bz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '���Ͼ���ͨҽҩ���޹�˾', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERGYS (id, mc, lb, xkz, xkzyxq, lxr, dh, jyfw, zcdz, lxdz, yzbm, zzc, cz, frmc, frsfz, zczj, xse, dzyx, wz, dmzh, dmzhyxq, yyzz, yyzzyxq, xyz, xyzbm, xyzyxq, gdzc, bz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '������ҽҩ��˾', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 3 records loaded
prompt Loading USERGYSAREA...
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.1.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.11.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.12.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.13.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.14.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.10.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.5.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.6.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.8.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.9.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.4.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.2.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.3.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.7.', null, null, null);
insert into USERGYSAREA (usergysid, areaid, vchar1, vchar2, vchar3)
values ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.15.', null, null, null);
commit;
prompt 15 records loaded
prompt Loading USERJD...
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('0d498b73-067e-11e3-8a3c-0019d2ce5116', '������������', null, null, null, null, null, null, null, null, null, null, '1.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('15819c06-09a1-11e3-8a4f-60a44cea4388', '����������Ժ', '������ҵ·', '410131', null, '32', '432', 'fdsfds', '432', null, null, null, '1.1.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('2084aa4a-067e-11e3-8a3c-0019d2ce5116', '��ˮ������Ժ', null, null, null, null, null, null, null, null, null, null, '1.10.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c4c1c750-067e-11e3-8a3c-0019d2ce5116', '��ɽ������Ժ', null, null, null, null, null, null, null, null, null, null, '1.11.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c58c043a-067e-11e3-8a3c-0019d2ce5116', '�ǹ�������Ժ', null, null, null, null, null, null, null, null, null, null, '1.12.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c890f6ee-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '����������·����', '450132', null, null, null, null, null, null, null, null, '1.13.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c994c0bb-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '�����л�����', '450132', null, null, null, null, null, null, null, null, '1.14.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c9c7c495-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', null, '450123', null, null, null, null, null, null, null, null, '1.15.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cbb4d0be-067e-11e3-8a3c-0019d2ce5116', 'ԥ��������Ժ', null, null, null, null, null, null, null, null, null, null, '1.2.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cd69a32c-067e-11e3-8a3c-0019d2ce5116', '��������Ժ', null, '450100', null, null, null, null, null, null, null, null, '1.3.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cd9a55a7-067e-11e3-8a3c-0019d2ce5116', '��������Ժ', null, '4501000', null, null, null, null, null, null, null, null, '1.4.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('ce9ddaa9-067e-11e3-8a3c-0019d2ce5116', '��¥������Ժ', null, null, null, null, null, null, null, null, null, null, '1.5.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cf4025a8-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '�����й�������������Ժ', '450100', null, null, null, null, null, null, null, null, '1.6.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('d2b358ef-067e-11e3-8a3c-0019d2ce5116', '�ߴ�������Ժ', null, null, null, null, null, null, null, null, null, null, '1.7.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('d48cb84b-067e-11e3-8a3c-0019d2ce5116', '��կ������Ժ', '�����н�կͬ��·', '450100', null, null, null, null, null, null, null, null, '1.8.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('d4aaf7bd-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '�������̲�г�', '450142', null, null, null, null, null, null, null, null, '1.9.');
commit;

insert into BASICINFO (id, name, value, type, tag, isalive, vchar1, vchar3, vchar2)
values ('00301', '�����ļ�����·��', 'd:\upload\linshi\', '003', null, '1', null, null, '1');
insert into BASICINFO (id, name, value, type, tag, isalive, vchar1, vchar3, vchar2)
values ('00302', '�����ļ�web����·��', '/upload/', '003', null, '1', null, null, '1');
insert into BASICINFO (id, name, value, type, tag, isalive, vchar1, vchar3, vchar2)
values ('00401', 'ҩƷƷĿ�����ֶ�', 'bm#ҩƷƷĿ��,mc#ͨ����,jx#����,gg#���,zhxs#ת��ϵ��,lbmc#���,ztmc#״̬', '004', null, '1', null, null, '1');
insert into BASICINFO (id, name, value, type, tag, isalive, vchar1, vchar3, vchar2)
values ('00101', '����Ŀ¼Ĭ�Ͽ���״̬', '1', '001', null, '1', null, null, '1');
insert into BASICINFO (id, name, value, type, tag, isalive, vchar1, vchar3, vchar2)
values ('00201', '�ɹ��������ڣ��죩', '10', '002', null, '1', null, null, '1');
insert into BASICINFO (id, name, value, type, tag, isalive, vchar1, vchar3, vchar2)
values ('00402', 'ҩƷ��Ϣ�����ֶ�', 'bm#ҩƷ��ˮ��,mc#ͨ����,jx#����,gg#���,zhxs#ת��ϵ��,lbmc#ҩƷ���,scqymc#������ҵ����,spmc#��Ʒ����,dw#��λ,zbjg#�б�۸�,pzwh#��׼�ĺ�,pzwhyxq#��׼�ĺ���Ч��,jky#�Ƿ����ҩ,bzcz#��װ����,bzdw#��װ��λ,lsjg#�������ۼ�,lsjgcc#���ۼ۳��� ,ypjybg#����ҩƷ���鱨��,ypjybgbm#ҩƷ���鱨����,ypjybgyxq#ҩƷ���鱨����Ч��,cpsm#��Ʒ˵��,jyztmc#ҩƷ����״̬', '004', null, '1', null, null, '1');
insert into BASICINFO (id, name, value, type, tag, isalive, vchar1, vchar3, vchar2)
values ('00403', 'ͨ��������ʾ��Ϣ�ֶ�', 'index#���,message#��Ϣ', '004', null, '1', null, null, '1');
commit;
prompt 7 records loaded
prompt Loading DICTINFO...
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00101', null, '001', 'Ӫ������ҩ', null, null, 2, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00102', null, '001', '������ҩ', null, null, 5, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00103', null, '001', '������Ʒ', null, null, 3, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00201', '1', '002', '����', null, null, 1, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00202', '2', '002', 'ȡ��', null, null, 2, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00301', '1', '003', '����', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00302', '2', '003', '��ͣ����', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00401', null, '004', '����һ����ҩ', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00402', null, '004', '���ҿ�ѧ������', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00403', null, '004', 'ר��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00501', null, '005', 'һ��', null, null, 1, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00502', null, '005', '����', null, null, 2, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00601', null, '006', '�м�ҽԺ', null, null, 2, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00602', null, '006', 'ʡ��ҽԺ', null, null, 1, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00701', null, '007', '������ҵ', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00702', null, '007', '��Ӫ��ҵ', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01001', '1', '010', 'δ�ύ', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01002', '2', '010', '�����', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01003', '3', '010', '���ͨ��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01004', '4', '010', '��˲�ͨ��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01101', '1', '011', 'δȷ���ͻ�', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01102', '2', '011', '�ѷ���', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01103', '3', '011', '�����', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01201', '1', '012', 'δ�ύ', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01202', '2', '012', '���ύ��������', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01301', '1', '013', 'δȷ���˻�', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01302', '2', '013', '��ȷ���˻�', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01401', '1', '014', 'δ�ύ', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01402', '2', '014', '���ύ��������', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01501', '1', '015', 'δȷ�Ͻ���', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01502', '2', '015', '��ȷ�Ͻ���', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('03201', '1', '032', 'ҩƷƷĿ��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('03202', '2', '032', 'ҩƷ��Ϣ��ˮ��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('03203', '3', '032', '�ɹ�����ˮ��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('03204', '4', '032', '�˻�����ˮ��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('03205', '5', '032', '���㵥��ˮ��', null, null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('108e0ad24de54bf28d3cf02065de508c', null, '001', '�������߹���ҩ', null, null, 6, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('24e71cf02bb64d9d9e217f725e244afa', null, '001', 'ѭ��ϵͳҩ��', null, null, 7, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('2bfd9aef0f5e4086b21c5da54b0fb001', null, '001', '�ڿ���ҩ', null, null, 8, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('4bd5ee426958442b940472accdb2aad3', null, '001', '����', null, null, 16, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('58c36e2056714d87b19fe5ae8dbe3e77', null, '005', '����', null, null, 3, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('5933d4269a734ed190ee383521b4965a', null, '001', '����ϵͳҩ��', null, null, 12, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('5dc58f16c10f443fa0c06ad40b522920', null, '001', '�����ҩ', null, null, 14, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('8e3f5978272d4694af52d85953a21d7c', null, '001', '����ϵͳҩ��', null, null, 4, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('a455fd65b3ff4433896dc9bac5384524', null, '001', '���˿���ҩ', null, null, 9, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('b01a9327303e402393682fd99fba746a', null, '001', '���Ǻ����ҩ', null, null, 15, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('c139e689963e43efbad4b667f3ede122', null, '001', '��ʹҩ', null, null, 10, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('e020a2b15dd94bcca4c854b1272c3f29', null, '001', '����ˮ������ʼ����ƽ��ҩ��', null, null, 13, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('e899156b4a0a4a09b813ff031459dad5', null, '001', '������ҩ', null, null, 11, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('s0101', '1', 's01', '������', 'A1657D9C6C7D47B59A99132A5ACE1A2E', null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('s0102', '2', 's01', '����Ժ', '58A90BFF6BFF461790E2FF034252C91D', null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('s0103', '3', 's01', '������', '511A6F41419949C38122A94310DADD14', null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('s0104', '4', 's01', '������', 'DD5E37F61B4D4D79BE84C3B8FCEDDAF0', null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('s0100', '0', 's01', 'ϵͳ����Ա', 'D20A980F6BF54E8093B71DF096341236', null, null, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00801', '1', '008', '����', null, null, 1, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('00802', '2', '008', '��ͣ', null, null, 1, '1', null);
insert into DICTINFO (id, dictcode, typecode, info, remark, updatetime, dictsort, isenable, valuetype)
values ('01104', '4', '011', '�޷�����', null, null, null, '1', null);
commit;
prompt 57 records loaded
prompt Loading DICTTYPE...
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('001', 'ҩƷ���', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('002', 'ҩƷ״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('003', 'ҩƷ����״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('004', 'ҩƷ��������', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('005', 'ҽԺ����', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('006', 'ҽԺ����', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('007', '��ҵ���', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('010', '�ɹ���״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('011', '�ɹ�״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('012', '�˻���״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('013', '�˻�״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('014', '���㵥״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('015', '����״̬', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('032', '���ɴ�������', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('s01', '�û�����', null, null, null);
insert into DICTTYPE (typecode, typename, remark, typesort, codelength)
values ('008', '����״̬', null, null, null);
commit;
prompt 16 records loaded
prompt Loading USERJD...
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('0d498b73-067e-11e3-8a3c-0019d2ce5116', '������������', null, null, null, null, null, null, null, null, null, null, '1.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('15819c06-09a1-11e3-8a4f-60a44cea4388', '����������Ժ', '������ҵ·', '410131', null, '32', '432', 'fdsfds', '432', null, null, null, '1.1.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('2084aa4a-067e-11e3-8a3c-0019d2ce5116', '��ˮ������Ժ', null, null, null, null, null, null, null, null, null, null, '1.10.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c4c1c750-067e-11e3-8a3c-0019d2ce5116', '��ɽ������Ժ', null, null, null, null, null, null, null, null, null, null, '1.11.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c58c043a-067e-11e3-8a3c-0019d2ce5116', '�ǹ�������Ժ', null, null, null, null, null, null, null, null, null, null, '1.12.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c890f6ee-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '����������·����', '450132', null, null, null, null, null, null, null, null, '1.13.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c994c0bb-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '�����л�����', '450132', null, null, null, null, null, null, null, null, '1.14.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('c9c7c495-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', null, '450123', null, null, null, null, null, null, null, null, '1.15.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cbb4d0be-067e-11e3-8a3c-0019d2ce5116', 'ԥ��������Ժ', null, null, null, null, null, null, null, null, null, null, '1.2.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cd69a32c-067e-11e3-8a3c-0019d2ce5116', '��������Ժ', null, '450100', null, null, null, null, null, null, null, null, '1.3.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cd9a55a7-067e-11e3-8a3c-0019d2ce5116', '��������Ժ', null, '4501000', null, null, null, null, null, null, null, null, '1.4.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('ce9ddaa9-067e-11e3-8a3c-0019d2ce5116', '��¥������Ժ', null, null, null, null, null, null, null, null, null, null, '1.5.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('cf4025a8-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '�����й�������������Ժ', '450100', null, null, null, null, null, null, null, null, '1.6.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('d2b358ef-067e-11e3-8a3c-0019d2ce5116', '�ߴ�������Ժ', null, null, null, null, null, null, null, null, null, null, '1.7.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('d48cb84b-067e-11e3-8a3c-0019d2ce5116', '��կ������Ժ', '�����н�կͬ��·', '450100', null, null, null, null, null, null, null, null, '1.8.');
insert into USERJD (id, mc, dz, yzbm, xlr, dh, cz, dzyx, wz, vchar1, vchar2, vchar3, dq)
values ('d4aaf7bd-067e-11e3-8a3c-0019d2ce5116', '����������Ժ', '�������̲�г�', '450142', null, null, null, null, null, null, null, null, '1.9.');
commit;
prompt 16 records loaded
prompt Loading USERYY...
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf6cc77b-067e-11e3-8a3c-0019d2ce5116', '���������ٴ�������', '������', '45333', '1.6.14.', null, null, '1', '66777654', '66777654', null, '45', '56', '66777654', null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf74e5ba-067e-11e3-8a3c-0019d2ce5116', '�����򷮺Ӵ�������', null, null, '1.6.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf7b753f-067e-11e3-8a3c-0019d2ce5116', '��������ׯ��������', '�����й�������ׯ��', '450103', '1.6.16.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d02b06d4-067e-11e3-8a3c-0019d2ce5116', '��������կ��������', null, null, '1.6.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d03ad3e2-067e-11e3-8a3c-0019d2ce5116', '������¹���������', '������¹���������', '450100', '1.6.18.', null, null, '1', null, null, null, null, '20000', null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d0463a04-067e-11e3-8a3c-0019d2ce5116', '�������ݴ�������', null, null, '1.6.19.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d04eb840-067e-11e3-8a3c-0019d2ce5116', '�������һ�����������', null, null, '1.6.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d0565ae9-067e-11e3-8a3c-0019d2ce5116', '�������ׯ��������', null, null, '1.6.20.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d05d2040-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.6.21.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d063bfcd-067e-11e3-8a3c-0019d2ce5116', '�������ʦ�ô�������', null, null, '1.6.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d06a8bbb-067e-11e3-8a3c-0019d2ce5116', '������������������', null, null, '1.6.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d071766b-067e-11e3-8a3c-0019d2ce5116', '������¥��������', null, null, '1.6.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d0787a4c-067e-11e3-8a3c-0019d2ce5116', '��������կ��������', null, null, '1.6.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d0810bd6-067e-11e3-8a3c-0019d2ce5116', '�������ƴ�������', null, null, '1.6.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d089d131-067e-11e3-8a3c-0019d2ce5116', '��������԰��������', null, null, '1.6.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d093e2ac-067e-11e3-8a3c-0019d2ce5116', '�������κӴ�������', null, null, '1.6.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d09c2766-067e-11e3-8a3c-0019d2ce5116', '���������δ�������', '���������δ�������', '450103', '1.6.29.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d0a5cd3a-067e-11e3-8a3c-0019d2ce5116', '�����������������', '�����й����������������', '450103', '1.6.3.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d0ece86b-067e-11e3-8a3c-0019d2ce5116', '�������δ�������', null, null, '1.6.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d111d837-067e-11e3-8a3c-0019d2ce5116', '��������Ŵ�������', null, null, '1.6.31.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d1260ec7-067e-11e3-8a3c-0019d2ce5116', '������կ����������', null, null, '1.6.32.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d1346f19-067e-11e3-8a3c-0019d2ce5116', '�����򳵴󹵴�������', '�����򳵴󹵴�,', null, '1.6.33.', null, '2', '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d13eb060-067e-11e3-8a3c-0019d2ce5116', '������ׯ��������', null, null, '1.6.34.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d1483c14-067e-11e3-8a3c-0019d2ce5116', '�����������������', null, null, '1.6.35.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d1519ff9-067e-11e3-8a3c-0019d2ce5116', '�������źӴ�������', null, null, '1.6.36.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d16396ac-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.6.37.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d16d907c-067e-11e3-8a3c-0019d2ce5116', '������������������', null, null, '1.6.38.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d177bf39-067e-11e3-8a3c-0019d2ce5116', '�����������������', null, null, '1.6.39.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d1833015-067e-11e3-8a3c-0019d2ce5116', '���������մ�������', null, null, '1.6.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d18c1fc1-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.6.40.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d196c996-067e-11e3-8a3c-0019d2ce5116', '������κӪ��������', null, null, '1.6.41.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d1a05aa0-067e-11e3-8a3c-0019d2ce5116', '��������κӪ��������', null, null, '1.6.42.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d1aa8bda-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.6.43.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d290a118-067e-11e3-8a3c-0019d2ce5116', '�������մ�������', null, null, '1.6.5.', null, null, '0', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d298ad8b-067e-11e3-8a3c-0019d2ce5116', '�������϶���������', null, null, '1.6.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d29f18a0-067e-11e3-8a3c-0019d2ce5116', '������ׯ��������', null, null, '1.6.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2a5ee77-067e-11e3-8a3c-0019d2ce5116', '�������ߵ��������', null, null, '1.6.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2accb69-067e-11e3-8a3c-0019d2ce5116', '������ˮȪ��������', null, null, '1.6.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2ba1eb9-067e-11e3-8a3c-0019d2ce5116', '�ߴ����ׯ��������', null, null, '1.7.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2c3b338-067e-11e3-8a3c-0019d2ce5116', '�ߴ����ų���������', null, null, '1.7.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2cb6bb5-067e-11e3-8a3c-0019d2ce5116', '�ߴ���ߴ��´�������', null, null, '1.7.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2d1fa3b-067e-11e3-8a3c-0019d2ce5116', '�ߴ����Ŵ�������', null, null, '1.7.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2d8c9c4-067e-11e3-8a3c-0019d2ce5116', '�ߴ�����կ��������', null, null, '1.7.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2dfa98f-067e-11e3-8a3c-0019d2ce5116', '�ߴ����ͷ���������', null, null, '1.7.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2e668da-067e-11e3-8a3c-0019d2ce5116', '�ߴ��羣կ��������', null, null, '1.7.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2ed6234-067e-11e3-8a3c-0019d2ce5116', '�ߴ���ų���������', null, null, '1.7.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2f4283e-067e-11e3-8a3c-0019d2ce5116', '�ߴ�����կ��������', null, null, '1.7.17.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d2fcf5c2-067e-11e3-8a3c-0019d2ce5116', '�ߴ�������ͷ��������', null, null, '1.7.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d3058050-067e-11e3-8a3c-0019d2ce5116', '�ߴ����δ�������', null, null, '1.7.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d30f148a-067e-11e3-8a3c-0019d2ce5116', '�ߴ������������', null, null, '1.7.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d3181fab-067e-11e3-8a3c-0019d2ce5116', '�ߴ������ͷ��������', '�ߴ������ͷ��', '450421', '1.7.20.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d32856f8-067e-11e3-8a3c-0019d2ce5116', '�ߴ���ţ������������', null, null, '1.7.21.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d331539e-067e-11e3-8a3c-0019d2ce5116', '�ߴ�����ɽ��������', '�ߴ�����ɽ��', '450101', '1.7.22.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d33879b6-067e-11e3-8a3c-0019d2ce5116', '�ߴ�����������������', null, null, '1.7.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d340f9b6-067e-11e3-8a3c-0019d2ce5116', '�ߴ�������ͷ��������', null, null, '1.7.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d3492a7d-067e-11e3-8a3c-0019d2ce5116', '�ߴ��簲��կ��������', null, null, '1.7.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d3518b1e-067e-11e3-8a3c-0019d2ce5116', '�ߴ�����կ��������', null, null, '1.7.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d35adfb1-067e-11e3-8a3c-0019d2ce5116', '�ߴ���ߴ�������', null, null, '1.7.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d36347f0-067e-11e3-8a3c-0019d2ce5116', '�ߴ��������������', null, null, '1.7.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d36bf68f-067e-11e3-8a3c-0019d2ce5116', '�ߴ���������������', null, null, '1.7.29.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d374ce18-067e-11e3-8a3c-0019d2ce5116', '�ߴ���ǰ���Ӵ�������', null, null, '1.7.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d37ec5ae-067e-11e3-8a3c-0019d2ce5116', '�ߴ�����ɽ��������', null, null, '1.7.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d44fd6ed-067e-11e3-8a3c-0019d2ce5116', '�ߴ������Ӵ�������', null, null, '1.7.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d45937d7-067e-11e3-8a3c-0019d2ce5116', '�ߴ���˾���������', '�ߴ���˾���', '450101', '1.7.5.', null, '3', '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d46804a2-067e-11e3-8a3c-0019d2ce5116', '�ߴ������������', null, null, '1.7.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4727f10-067e-11e3-8a3c-0019d2ce5116', '�ߴ�������������', null, null, '1.7.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d47af249-067e-11e3-8a3c-0019d2ce5116', '�ߴ��纫����������', null, null, '1.7.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d48386d1-067e-11e3-8a3c-0019d2ce5116', '�ߴ���ʷ����������', null, null, '1.7.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d49646ab-067e-11e3-8a3c-0019d2ce5116', '��կ���կ��������', null, null, '1.8.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d49fcea4-067e-11e3-8a3c-0019d2ce5116', '��կ���¥��������', null, null, '1.8.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4b63a3a-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.9.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4beb451-067e-11e3-8a3c-0019d2ce5116', '������ǰ��ׯ��������', null, null, '1.9.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4c96de3-067e-11e3-8a3c-0019d2ce5116', '�����򶡴�������', null, null, '1.9.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4d38c4d-067e-11e3-8a3c-0019d2ce5116', '������η���������', null, null, '1.9.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4ddc50c-067e-11e3-8a3c-0019d2ce5116', '�����������������', null, null, '1.9.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4e9c228-067e-11e3-8a3c-0019d2ce5116', '������ǰ�����������', null, null, '1.9.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4f188d7-067e-11e3-8a3c-0019d2ce5116', '���������Ӵ�������', null, null, '1.9.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d4fc558a-067e-11e3-8a3c-0019d2ce5116', '��������ׯ��������', '��������������ׯ��', '450142', '1.9.16.', null, '2', '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d5043fd5-067e-11e3-8a3c-0019d2ce5116', '��������ׯ��������', null, null, '1.9.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d510c5f8-067e-11e3-8a3c-0019d2ce5116', '�����򺫴�������', null, null, '1.9.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d5198400-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.9.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d523374e-067e-11e3-8a3c-0019d2ce5116', '�������޴�������', null, null, '1.9.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d52b96bf-067e-11e3-8a3c-0019d2ce5116', '������Ѧ��������', '������С��', '450142', '1.9.20.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', '2��', '5��', null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d533ebeb-067e-11e3-8a3c-0019d2ce5116', '������˾��������', null, null, '1.9.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d53c4acd-067e-11e3-8a3c-0019d2ce5116', '�����������������', null, null, '1.9.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d545087e-067e-11e3-8a3c-0019d2ce5116', '�����������������', '�����������', '450142', '1.9.23.', '00501', null, '1', null, null, '00601', '10��', '2��', null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d54db35a-067e-11e3-8a3c-0019d2ce5116', '���������������', null, '450142', '1.9.24.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d555a4cd-067e-11e3-8a3c-0019d2ce5116', '��������԰��������', '��������԰��,', '450142', '1.9.25.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d55fe357-067e-11e3-8a3c-0019d2ce5116', '������ľ¥��������', null, '450142', '1.9.3.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d56839c2-067e-11e3-8a3c-0019d2ce5116', '������ض��������', '������������ض��', '450142', '1.9.4.', null, null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d6083059-067e-11e3-8a3c-0019d2ce5116', '������С��������', '������С��', '450142', '1.9.5.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', '2��', '5��', null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d615390d-067e-11e3-8a3c-0019d2ce5116', '���������ׯ��������', null, null, '1.9.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d61c7628-067e-11e3-8a3c-0019d2ce5116', '������ͷ��������', null, null, '1.9.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d6264f49-067e-11e3-8a3c-0019d2ce5116', '�������µ��������', null, null, '1.9.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('d62dd736-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.9.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('fc078de0-4ff4-11e3-8a4f-60a44cea4388', '�����������ϳ�������', null, null, '1.6.40.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1f8b098b-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.1.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1f95503c-067e-11e3-8a3c-0019d2ce5116', '��������Ҥ��������', null, null, '1.1.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1f9db2d9-067e-11e3-8a3c-0019d2ce5116', '���������������', null, null, '1.1.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1fa7e0af-067e-11e3-8a3c-0019d2ce5116', '���������´�������', null, null, '1.1.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 100 records committed...
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1fb339a7-067e-11e3-8a3c-0019d2ce5116', '��������԰��������', null, null, '1.1.20.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1fc324f5-067e-11e3-8a3c-0019d2ce5116', '������Թ���������', null, null, '1.1.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1fd2610f-067e-11e3-8a3c-0019d2ce5116', '��������ׯ��������', null, null, '1.1.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1fde4a68-067e-11e3-8a3c-0019d2ce5116', '������ʯ����������', null, null, '1.1.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1fe714f4-067e-11e3-8a3c-0019d2ce5116', '�����򳵳���������', null, null, '1.1.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1ff45dda-067e-11e3-8a3c-0019d2ce5116', '������ʯ�´�������', null, null, '1.1.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('1ffceb93-067e-11e3-8a3c-0019d2ce5116', '���������ڵ��������', null, null, '1.1.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('2005b95d-067e-11e3-8a3c-0019d2ce5116', '��������Դ�������', null, null, '1.1.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('200f844e-067e-11e3-8a3c-0019d2ce5116', '��������������������', null, null, '1.1.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('2020977c-067e-11e3-8a3c-0019d2ce5116', '��������կ��������', null, null, '1.1.29.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('202b4a47-067e-11e3-8a3c-0019d2ce5116', '�����򶡹���������', null, null, '1.1.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('203d85bf-067e-11e3-8a3c-0019d2ce5116', '��������կ��������', null, null, '1.1.31.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('204a1120-067e-11e3-8a3c-0019d2ce5116', '�������¹���������', null, null, '1.1.32.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('2052e16d-067e-11e3-8a3c-0019d2ce5116', '������繵��������', '�����У������򣬽繵��', '450131', '1.1.33.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('2060dc90-067e-11e3-8a3c-0019d2ce5116', '������֣�ڴ�������', null, null, '1.1.34.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('206a29f9-067e-11e3-8a3c-0019d2ce5116', '��������Ȫ��������', null, '450131', '1.1.35.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('20735f8e-067e-11e3-8a3c-0019d2ce5116', '������¬ׯ��������', '�����д�����¬ׯ��', '450131', '1.1.36.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('207b5723-067e-11e3-8a3c-0019d2ce5116', '������֣ׯ��������', null, null, '1.1.37.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('208cbe58-067e-11e3-8a3c-0019d2ce5116', '��ˮ��������������', null, null, '1.10.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('20978193-067e-11e3-8a3c-0019d2ce5116', '��ˮ���徲����������', null, null, '1.10.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('20a1103e-067e-11e3-8a3c-0019d2ce5116', '��ˮ����ˮ��������', null, null, '1.10.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('20aa99df-067e-11e3-8a3c-0019d2ce5116', '��ˮ��������������', null, null, '1.10.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('20b345bf-067e-11e3-8a3c-0019d2ce5116', '��ˮ�����ʹ�������', null, null, '1.10.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('8bef106a-1371-11e3-8a4f-60a44cea4388', '���������嶫��������', null, null, '1.6.40.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ae0a7c2e-1c46-11e3-8a4f-60a44cea4388', 'ԥ������ޣ����������', null, null, '1.2.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c46a9db6-067e-11e3-8a3c-0019d2ce5116', '��ˮ���Դ�������', null, null, '1.10.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c47671fa-067e-11e3-8a3c-0019d2ce5116', '��ˮ��ʮ���������', null, null, '1.10.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4841b92-067e-11e3-8a3c-0019d2ce5116', '��ˮ���ιش�������', null, null, '1.10.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c48dcfdf-067e-11e3-8a3c-0019d2ce5116', '��ˮ�򶫺��ϴ�������', null, null, '1.10.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4953967-067e-11e3-8a3c-0019d2ce5116', '��ˮ���Ͼ��ô�������', null, null, '1.10.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c49d8df4-067e-11e3-8a3c-0019d2ce5116', '��ˮ����Ӵ�������', null, null, '1.10.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4a63efc-067e-11e3-8a3c-0019d2ce5116', '��ˮ���¹���������', null, null, '1.10.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4b0c8f4-067e-11e3-8a3c-0019d2ce5116', '��ˮ���ܹ���������', null, null, '1.10.8.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4b9bc43-067e-11e3-8a3c-0019d2ce5116', '��ˮ�����ϴ�������', null, null, '1.10.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4c9dc8c-067e-11e3-8a3c-0019d2ce5116', '��ɽ�����������', null, null, '1.11.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4d27204-067e-11e3-8a3c-0019d2ce5116', '��ɽ���ǹ���������', null, null, '1.11.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4db63c3-067e-11e3-8a3c-0019d2ce5116', '��ɽ�����Ŵ�������', null, null, '1.11.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4f11b45-067e-11e3-8a3c-0019d2ce5116', '��ɽ���ඥ��������', null, null, '1.11.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c4fabe48-067e-11e3-8a3c-0019d2ce5116', '��ɽ����Ҫ��������', null, null, '1.11.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c503e120-067e-11e3-8a3c-0019d2ce5116', '��ɽ���ɸڴ�������', null, null, '1.11.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c50ca855-067e-11e3-8a3c-0019d2ce5116', '��ɽ��ڣ�ڴ�������', null, '450135', '1.11.15.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c514bbd5-067e-11e3-8a3c-0019d2ce5116', '��ɽ���綥��������', null, '450136', '1.11.16.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c51e90ae-067e-11e3-8a3c-0019d2ce5116', '��ɽ��ʯ����������', null, null, '1.11.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c52c6f6f-067e-11e3-8a3c-0019d2ce5116', '��ɽ���ɽ��������', null, null, '1.11.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c536eaec-067e-11e3-8a3c-0019d2ce5116', '��ɽ���񴨴�������', null, null, '1.11.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c53f7790-067e-11e3-8a3c-0019d2ce5116', '��ɽ����Ҥ��������', '��ɽ����Ҥ��', '450135', '1.11.2.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c548dc35-067e-11e3-8a3c-0019d2ce5116', '��ɽ���¹���������', null, '450135', '1.11.3.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c5519bd2-067e-11e3-8a3c-0019d2ce5116', '��ɽ���ˮ��������', null, null, '1.11.4.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c55b6a04-067e-11e3-8a3c-0019d2ce5116', '��ɽ��빵��������', null, null, '1.11.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c5666dff-067e-11e3-8a3c-0019d2ce5116', '��ɽ���⹵��������', null, null, '1.11.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c56f0497-067e-11e3-8a3c-0019d2ce5116', '��ɽ������������', null, null, '1.11.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c5777229-067e-11e3-8a3c-0019d2ce5116', '��ɽ��ֽ����������', null, null, '1.11.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c582fc19-067e-11e3-8a3c-0019d2ce5116', '��ɽ����԰��������', null, null, '1.11.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c76ab791-067e-11e3-8a3c-0019d2ce5116', '�ǹ���ʯ�幵��������', null, null, '1.12.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c775c53a-067e-11e3-8a3c-0019d2ce5116', '�ǹ���������������', null, null, '1.12.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c77f117f-067e-11e3-8a3c-0019d2ce5116', '�ǹ��籱�ܴ�������', '�����гǹ��籱�ܴ�������', '450100', '1.12.11.', null, '5', '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7878797-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����¥��������', null, null, '1.12.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7909ddc-067e-11e3-8a3c-0019d2ce5116', '�ǹ�������կ��������', null, null, '1.12.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c798909f-067e-11e3-8a3c-0019d2ce5116', '�ǹ������ܴ�������', null, null, '1.12.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c79f17e9-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����԰��������', null, null, '1.12.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7aa7c84-067e-11e3-8a3c-0019d2ce5116', '�ǹ��������������', '�ǹ��������������', '450100', '1.12.16.', '58c36e2056714d87b19fe5ae8dbe3e77', '4', '1', null, null, '00601', '2��', '5��', null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7b24418-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����Ҷ�Ӵ�������', '�ǹ�����Ҷ�Ӵ�', '450100', '1.12.17.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7ba4761-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����ʷ��������', null, null, '1.12.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7c2f1b3-067e-11e3-8a3c-0019d2ce5116', '�ǹ���С����������', '�����гǹ���С������', '450100', '1.12.19.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7ca265a-067e-11e3-8a3c-0019d2ce5116', '�ǹ�������������', '�����гǹ�������', '450100', '1.12.2.', null, '4', null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7d4ae47-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����δ�������', null, null, '1.12.20.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7e15789-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����ʮ���̴�������', null, null, '1.12.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7ea0af3-067e-11e3-8a3c-0019d2ce5116', '�ǹ����Ԭկ��������', null, null, '1.12.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c7f60501-067e-11e3-8a3c-0019d2ce5116', '�ǹ��繬կ��������', null, null, '1.12.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c80086fc-067e-11e3-8a3c-0019d2ce5116', '�ǹ��縶�Ӵ�������', null, null, '1.12.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c809b3eb-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����ׯ��������', null, null, '1.12.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c8132736-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����Ȫ�´�������', null, null, '1.12.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c81d9be6-067e-11e3-8a3c-0019d2ce5116', '�ǹ��簲ׯ��������', null, null, '1.12.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c8288c0e-067e-11e3-8a3c-0019d2ce5116', '�ǹ�����Ҥ�´�������', null, null, '1.12.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c83337d2-067e-11e3-8a3c-0019d2ce5116', '�ǹ����ϼ���������', null, null, '1.12.29.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c840296e-067e-11e3-8a3c-0019d2ce5116', '�ǹ��������������', null, null, '1.12.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c84a248d-067e-11e3-8a3c-0019d2ce5116', '�ǹ��������������', null, null, '1.12.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c856d333-067e-11e3-8a3c-0019d2ce5116', '�ǹ������������', null, null, '1.12.5.', null, '7', '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c861f01b-067e-11e3-8a3c-0019d2ce5116', '�ǹ�������կ��������', null, null, '1.12.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c86dd695-067e-11e3-8a3c-0019d2ce5116', '�ǹ��綫ʷ��������', null, null, '1.12.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c87d48cf-067e-11e3-8a3c-0019d2ce5116', '�ǹ��������������', null, null, '1.12.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c8882e78-067e-11e3-8a3c-0019d2ce5116', '�ǹ������կ��������', null, null, '1.12.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9150eb7-067e-11e3-8a3c-0019d2ce5116', '���������Ӵ�������', null, null, '1.13.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c91f868e-067e-11e3-8a3c-0019d2ce5116', '������¼Ҹڴ�������', null, null, '1.13.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c933330d-067e-11e3-8a3c-0019d2ce5116', '�������ˮ���������', null, null, '1.13.11.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9396c43-067e-11e3-8a3c-0019d2ce5116', '������ʯׯ��������', null, null, '1.13.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9402d99-067e-11e3-8a3c-0019d2ce5116', '��������ׯ��������', null, null, '1.13.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c947245d-067e-11e3-8a3c-0019d2ce5116', '���������ݴ�������', null, null, '1.13.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c94e69c0-067e-11e3-8a3c-0019d2ce5116', '���������Ӵ�������', null, null, '1.13.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c957eeeb-067e-11e3-8a3c-0019d2ce5116', '�����򻨺Ӵ�������', null, null, '1.13.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c95fb297-067e-11e3-8a3c-0019d2ce5116', '���������Ŵ�������', null, null, '1.13.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c967425f-067e-11e3-8a3c-0019d2ce5116', '��������ӹ���������', null, null, '1.13.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c96e34de-067e-11e3-8a3c-0019d2ce5116', '������ٶ���������', null, null, '1.13.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c974b4d9-067e-11e3-8a3c-0019d2ce5116', '������Сկ��������', null, null, '1.13.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c97beb95-067e-11e3-8a3c-0019d2ce5116', '���������ϴ�������', null, null, '1.13.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9879ebd-067e-11e3-8a3c-0019d2ce5116', '�������´�������', null, null, '1.13.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c98e3eb6-067e-11e3-8a3c-0019d2ce5116', '�������칵��������', null, null, '1.13.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c99baafd-067e-11e3-8a3c-0019d2ce5116', '������˾ׯ��������', null, null, '1.14.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9aa9610-067e-11e3-8a3c-0019d2ce5116', '��������������', null, null, '1.14.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9b1f2a2-067e-11e3-8a3c-0019d2ce5116', '��������ׯ��������', null, null, '1.14.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 200 records committed...
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9bac0f8-067e-11e3-8a3c-0019d2ce5116', '������������������', null, null, '1.14.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9c0f997-067e-11e3-8a3c-0019d2ce5116', '�������������������', null, null, '1.14.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9ce8ad7-067e-11e3-8a3c-0019d2ce5116', '�����������������', null, null, '1.15.1.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9d609f2-067e-11e3-8a3c-0019d2ce5116', '�����������������', null, null, '1.15.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9dc0c1a-067e-11e3-8a3c-0019d2ce5116', '�������ϴ�������', null, null, '1.15.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9e2d5a5-067e-11e3-8a3c-0019d2ce5116', '������������������', null, null, '1.15.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9e9dd34-067e-11e3-8a3c-0019d2ce5116', '������ʯ������������', null, null, '1.15.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9f08a62-067e-11e3-8a3c-0019d2ce5116', '��������ߴ�������', null, null, '1.15.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('c9f919b8-067e-11e3-8a3c-0019d2ce5116', '������������������', null, null, '1.15.15.', '58c36e2056714d87b19fe5ae8dbe3e77', null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ca01a35c-067e-11e3-8a3c-0019d2ce5116', '�������춥��������', null, null, '1.15.16.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('caed56e8-067e-11e3-8a3c-0019d2ce5116', '���������������', null, null, '1.15.17.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('caf79508-067e-11e3-8a3c-0019d2ce5116', '������¥���������', null, null, '1.15.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('caffb2fe-067e-11e3-8a3c-0019d2ce5116', '������ߺӴ�������', '�����м�����ߺӴ�', '450123', '1.15.19.', null, '3', '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb08316d-067e-11e3-8a3c-0019d2ce5116', '�����������������', '�����м����������', null, '1.15.2.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb10c8b2-067e-11e3-8a3c-0019d2ce5116', '���������´�������', null, null, '1.15.20.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb1b0f12-067e-11e3-8a3c-0019d2ce5116', '������¹��������', null, null, '1.15.21.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb236ce8-067e-11e3-8a3c-0019d2ce5116', '��������ڴ�������', null, '450123', '1.15.22.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb2c2fce-067e-11e3-8a3c-0019d2ce5116', '�����򱱹���������', null, null, '1.15.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb349090-067e-11e3-8a3c-0019d2ce5116', '�������ɽ��������', null, null, '1.15.24.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb3cecdf-067e-11e3-8a3c-0019d2ce5116', '��������ɽ��������', null, null, '1.15.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb45b487-067e-11e3-8a3c-0019d2ce5116', '�������ִ�������', null, null, '1.15.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb511409-067e-11e3-8a3c-0019d2ce5116', '���������ϴ�������', null, null, '1.15.3.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb5c63eb-067e-11e3-8a3c-0019d2ce5116', '���������̨��������', null, null, '1.15.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb6671a5-067e-11e3-8a3c-0019d2ce5116', '������ʯ���������', null, null, '1.15.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb7911f6-067e-11e3-8a3c-0019d2ce5116', '�����������ݴ�������', null, null, '1.15.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb92cb6a-067e-11e3-8a3c-0019d2ce5116', '������˫¥����������', '������˫¥����������', null, '1.15.7.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cb9d1851-067e-11e3-8a3c-0019d2ce5116', '����������������', null, null, '1.15.8.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cba9599e-067e-11e3-8a3c-0019d2ce5116', '��������ʼ��������', null, null, '1.15.9.', '58c36e2056714d87b19fe5ae8dbe3e77', null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cbbf32c2-067e-11e3-8a3c-0019d2ce5116', 'ԥ����إ�̴�������', null, null, '1.2.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cbc9c0ab-067e-11e3-8a3c-0019d2ce5116', 'ԥ��������կ��������', null, null, '1.2.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cbd4f43b-067e-11e3-8a3c-0019d2ce5116', 'ԥ������δ�������', null, null, '1.2.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cbdf17a4-067e-11e3-8a3c-0019d2ce5116', 'ԥ���������������', null, null, '1.2.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cbe9684f-067e-11e3-8a3c-0019d2ce5116', 'ԥ������կ��������', null, null, '1.2.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cbf56688-067e-11e3-8a3c-0019d2ce5116', 'ԥ�����Լ����������', null, null, '1.2.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cc017c53-067e-11e3-8a3c-0019d2ce5116', 'ԥ�����������������', null, null, '1.2.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cc0eeb01-067e-11e3-8a3c-0019d2ce5116', 'ԥ����կ��������', null, null, '1.2.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('001', '����ҽԺ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('testid', '������һҽԺ', '��ַ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cc1cc816-067e-11e3-8a3c-0019d2ce5116', 'ԥ������Ǵ�������', '������ԥ������Ǵ�', '410121', '1.2.20.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cc2ccdeb-067e-11e3-8a3c-0019d2ce5116', 'ԥ�����Լ�ׯ��������', null, null, '1.2.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cc37e52c-067e-11e3-8a3c-0019d2ce5116', 'ԥ������կ��������', null, null, '1.2.22.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ccd23a52-067e-11e3-8a3c-0019d2ce5116', 'ԥ����կ��������', null, null, '1.2.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ccdaa283-067e-11e3-8a3c-0019d2ce5116', 'ԥ�����կ��������', null, null, '1.2.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cce2fd53-067e-11e3-8a3c-0019d2ce5116', 'ԥ��������կ��������', null, null, '1.2.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cceb775e-067e-11e3-8a3c-0019d2ce5116', 'ԥ�����կ��������', null, null, '1.2.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ccf3ff2d-067e-11e3-8a3c-0019d2ce5116', 'ԥ�����˹��´�������', null, null, '1.2.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ccfcd220-067e-11e3-8a3c-0019d2ce5116', 'ԥ����ʯ���ڴ�������', null, null, '1.2.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd04e374-067e-11e3-8a3c-0019d2ce5116', 'ԥ�����ׯ��������', 'ԥ�����ׯ��', '450121', '1.2.29.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd0da0f8-067e-11e3-8a3c-0019d2ce5116', 'ԥ����ص����������', null, null, '1.2.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd1639d8-067e-11e3-8a3c-0019d2ce5116', 'ԥ����ëկ��������', null, null, '1.2.31.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd225bfe-067e-11e3-8a3c-0019d2ce5116', 'ԥ����կ���������', null, null, '1.2.32.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd2aa558-067e-11e3-8a3c-0019d2ce5116', 'ԥ����������������', null, null, '1.2.33.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd359eed-067e-11e3-8a3c-0019d2ce5116', 'ԥ����կ��������', null, null, '1.2.34.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd3f90a4-067e-11e3-8a3c-0019d2ce5116', 'ԥ��������������', null, null, '1.2.35.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd472487-067e-11e3-8a3c-0019d2ce5116', 'ԥ������Ŵ�������', null, null, '1.2.36.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd505c28-067e-11e3-8a3c-0019d2ce5116', 'ԥ���������������', null, null, '1.2.37.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd58c3f5-067e-11e3-8a3c-0019d2ce5116', 'ԥ������԰��������', null, null, '1.2.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd609293-067e-11e3-8a3c-0019d2ce5116', 'ԥ��������������', null, null, '1.2.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd716c95-067e-11e3-8a3c-0019d2ce5116', '��������¥��������', null, null, '1.3.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd79e573-067e-11e3-8a3c-0019d2ce5116', '���ӻ����ݴ�������', null, null, '1.3.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd82736e-067e-11e3-8a3c-0019d2ce5116', '���ӳǹش�������', null, null, '1.3.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd8ab06e-067e-11e3-8a3c-0019d2ce5116', '���ӻݳ���������', null, null, '1.3.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cd91bcde-067e-11e3-8a3c-0019d2ce5116', '���ӳ�¥��������', null, null, '1.3.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cda26331-067e-11e3-8a3c-0019d2ce5116', '���Ǳ�����������', '������', null, '1.4.1.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cda943f0-067e-11e3-8a3c-0019d2ce5116', '���ǿ��δ�������', '���ǰ��´���կ��������', '450100', '1.4.2.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cdb1dd3f-067e-11e3-8a3c-0019d2ce5116', '����ʯ�δ�������', null, null, '1.4.3.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cdb89865-067e-11e3-8a3c-0019d2ce5116', '���Ǽ����δ�������', null, null, '1.4.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cdbf3f8a-067e-11e3-8a3c-0019d2ce5116', '���ǲ����������', null, null, '1.4.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cdca4080-067e-11e3-8a3c-0019d2ce5116', '����ƽׯ��������', null, null, '1.4.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ce8b864c-067e-11e3-8a3c-0019d2ce5116', '���Ƿ��δ�������', null, null, '1.4.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ce93f531-067e-11e3-8a3c-0019d2ce5116', '������������������', null, null, '1.4.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cea5d9ed-067e-11e3-8a3c-0019d2ce5116', '��¥�򶫹���������', '��������¥�򶫹����ί', '450122', '1.5.1.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ceace373-067e-11e3-8a3c-0019d2ce5116', '��¥�����������', null, null, '1.5.10.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ceb50ea4-067e-11e3-8a3c-0019d2ce5116', '��¥�򸶺Ӵ�������', '��������¥�򸶺Ӵ�', '450122', '1.5.11.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cebc2f36-067e-11e3-8a3c-0019d2ce5116', '��¥��ʨ��������', null, null, '1.5.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cec66a21-067e-11e3-8a3c-0019d2ce5116', '��¥����¥��������', null, null, '1.5.13.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cece6cf3-067e-11e3-8a3c-0019d2ce5116', '��¥��ڣ�Ӹڴ�������', null, null, '1.5.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ced53019-067e-11e3-8a3c-0019d2ce5116', '��¥������ׯ��������', null, null, '1.5.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cedc1a58-067e-11e3-8a3c-0019d2ce5116', '��¥���կ��������', null, null, '1.5.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cee3188d-067e-11e3-8a3c-0019d2ce5116', '��¥�򺫴�������', '��������¥�򺫴�', '450122', '1.5.17.', null, '2', '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('ceeb9b67-067e-11e3-8a3c-0019d2ce5116', '��¥����ô�������', null, null, '1.5.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cef4795b-067e-11e3-8a3c-0019d2ce5116', '��¥�����δ�������', null, null, '1.5.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf0442d4-067e-11e3-8a3c-0019d2ce5116', '��¥�����ݴ�������', null, null, '1.5.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf0ba872-067e-11e3-8a3c-0019d2ce5116', '��¥�������������', '��¥�������', null, '1.5.4.', null, null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf14781c-067e-11e3-8a3c-0019d2ce5116', '��¥���կ��������', null, null, '1.5.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf1cde38-067e-11e3-8a3c-0019d2ce5116', '��¥����ׯ��������', '��������¥����ׯ��������', null, '1.5.6.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf2a034d-067e-11e3-8a3c-0019d2ce5116', '��¥��¹���������', '��������¥��¹���', '450122', '1.5.7.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf31409e-067e-11e3-8a3c-0019d2ce5116', '��¥�����ڴ�������', null, null, '1.5.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf394b41-067e-11e3-8a3c-0019d2ce5116', '��¥���Ŵ���������', '��������¥���Ŵ����������', null, '1.5.9.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf46d8d9-067e-11e3-8a3c-0019d2ce5116', '��������ƴ�������', null, null, '1.6.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf4dbb32-067e-11e3-8a3c-0019d2ce5116', '����������Ǵ�������', null, null, '1.6.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf5642f8-067e-11e3-8a3c-0019d2ce5116', '���������Ǵ�������', null, null, '1.6.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf5d5369-067e-11e3-8a3c-0019d2ce5116', '�������կ��������', '�������կ��', '450103', '1.6.12.', null, null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
insert into USERYY (id, mc, dz, yzbm, dq, jb, cws, fyljg, dh, yjkdh, lb, ypsr, ywsr, cz, vchar1, vchar2, vchar3, vchar4, vchar5)
values ('cf6563b6-067e-11e3-8a3c-0019d2ce5116', '���������������', null, null, '1.6.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 1 records loaded
prompt Enabling triggers for BSS_SYS_AREA...
alter table BSS_SYS_AREA enable all triggers;
prompt Enabling triggers for BSS_SYS_DEPLOYNODE...
alter table BSS_SYS_DEPLOYNODE enable all triggers;
prompt Enabling triggers for BSS_SYS_LOG...
alter table BSS_SYS_LOG enable all triggers;
prompt Enabling triggers for BSS_SYS_MODULE...
alter table BSS_SYS_MODULE enable all triggers;
prompt Enabling triggers for BSS_SYS_OPERATE...
alter table BSS_SYS_OPERATE enable all triggers;
prompt Enabling triggers for BSS_SYS_ROLE...
alter table BSS_SYS_ROLE enable all triggers;
prompt Enabling triggers for BSS_SYS_ROLEMODULE...
alter table BSS_SYS_ROLEMODULE enable all triggers;
prompt Enabling triggers for BSS_SYS_ROLENODE...
alter table BSS_SYS_ROLENODE enable all triggers;
prompt Enabling triggers for BSS_SYS_ROLEOPERATE...
alter table BSS_SYS_ROLEOPERATE enable all triggers;
prompt Enabling triggers for BSS_SYS_ROLESYS...
alter table BSS_SYS_ROLESYS enable all triggers;
prompt Enabling triggers for BSS_SYS_SYSTEM...
alter table BSS_SYS_SYSTEM enable all triggers;
set feedback on
set define on
prompt Done.
