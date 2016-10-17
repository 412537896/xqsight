/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/3/25 14:50:17                           */
/*==============================================================*/


drop table if exists WX_AUTO_REPLAY;

drop table if exists WX_BASE_INFO;

drop table if exists WX_CUS_TEMP;

drop table if exists WX_IMG_MSG;

drop table if exists WX_IMG_MSG_UNIT;

drop table if exists WX_MENU;

drop table if exists WX_MESSAGE;

drop table if exists WX_PROMISE;

drop table if exists WX_TEXT_MSG;

drop table if exists WX_USER_INFO;

/*==============================================================*/
/* Table: WX_AUTO_REPLAY                                        */
/*==============================================================*/
create table WX_AUTO_REPLAY
(
   WX_ID                bigint not null comment '΢��ID',
   REPLAY_ID            bigint not null auto_increment comment 'ID',
   KEY_WORD             varchar(400) comment '�ؼ���',
   MESSAGE_TYPE         int comment '��Ϣ����
            0:�Զ���
            1:�ı���Ϣ
            2:ͼ����Ϣ
            ',
   MESSAGE_ID           bigint comment '��Ϣid',
   CUSTOM_REPLAY        varchar(2000) comment '�Զ�������',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (REPLAY_ID)
);

alter table WX_AUTO_REPLAY comment '΢���Զ��ָ�����';

/*==============================================================*/
/* Table: WX_BASE_INFO                                          */
/*==============================================================*/
create table WX_BASE_INFO
(
   WX_ID                bigint not null auto_increment comment '����',
   WX_CODE              varchar(200) comment '����΢�ź�',
   WX_ORIGINAL_ID       varchar(200) comment '���ں�ԭʼID',
   WX_TYPE              int comment '���ں�����
            0:���ĺ�
            1:�����
            2:��ҵ��
            ',
   WX_APPID             varchar(400) comment '�����ʺ�APPID',
   WX_APPSECRET         varchar(400) comment '�����ʺ�APPSECRET',
   WX_DESCRIPT          varchar(400) comment '�����ʺ�����',
   EMAIL                varchar(200) comment '��������',
   ROLE_NAME            varchar(120) comment '����΢�ź�����',
   WX_TOKEN             varchar(400) comment '���ں�TOKEN',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (WX_ID)
);

alter table WX_BASE_INFO comment '΢����Ϣ��';

/*==============================================================*/
/* Table: WX_CUS_TEMP                                           */
/*==============================================================*/
create table WX_CUS_TEMP
(
   WX_ID                bigint not null default 0 comment '΢��ID',
   TEMP_ID              bigint not null auto_increment comment 'ID',
   TEMP_TYPE            int comment 'ģ������',
   TEMP_TITLE           varchar(400) comment '����',
   TEMP_CONTENT         varchar(2000) comment '����',
   TEMP_HREF            varchar(400) comment '����·��',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (TEMP_ID)
);

alter table WX_CUS_TEMP comment '΢���Զ���ģ����Ϣ';

/*==============================================================*/
/* Table: WX_IMG_MSG                                            */
/*==============================================================*/
create table WX_IMG_MSG
(
   WX_ID                bigint not null default 0 comment '΢��ID',
   IMG_MSG_ID           bigint not null auto_increment comment '��ϢID',
   IMG_URL              varchar(200) comment 'ͼƬurl',
   IMG_MSG_HREF         varchar(200) comment '��Ϣ����',
   IMG_MSG_TITLE        varchar(200) comment '����',
   IMG_MSG_CONTENT      varchar(2000) comment '����',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (IMG_MSG_ID)
);

alter table WX_IMG_MSG comment '΢��ͼ����
WX_ID=0ʱ,Ϊ������Ϣ';

/*==============================================================*/
/* Table: WX_IMG_MSG_UNIT                                       */
/*==============================================================*/
create table WX_IMG_MSG_UNIT
(
   WX_ID                bigint not null default 0 comment '΢��ID',
   UNIT_ID              bigint not null comment '��ϢID',
   IMG_MSG_ID           bigint not null comment 'ͼ����ϢID',
   UNIT_NAME            varchar(200) comment 'ͼ������',
   IMG_COUNT            int comment '��Ϣ����',
   UNIT_DESCRIPT        varchar(400) comment '˵��',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (WX_ID, UNIT_ID, IMG_MSG_ID)
);

alter table WX_IMG_MSG_UNIT comment '΢��ͼ�ĵ�Ԫ
WX_ID=0ʱ,Ϊ������Ϣ';

/*==============================================================*/
/* Table: WX_MENU                                               */
/*==============================================================*/
create table WX_MENU
(
   WX_ID                bigint not null comment '΢��ID',
   MENU_ID              bigint not null auto_increment comment '�˵�ID',
   MENU_NAME            varchar(120) comment '�˵�����',
   MENU_TYPE            int comment '�˵�����
            0:CLICK 
            1: VIEW
            ',
   MENU_KEY             varchar(120) comment '�˵�keyֵ',
   MENU_URL             varchar(400) comment '�˵�url',
   SORT                 int comment '����',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (MENU_ID)
);

alter table WX_MENU comment ' ΢�Ų˵���';

/*==============================================================*/
/* Table: WX_MESSAGE                                            */
/*==============================================================*/
create table WX_MESSAGE
(
   WX_ID                bigint not null comment '΢��ID',
   MESSAGE_ID           bigint not null auto_increment comment '��ϢID',
   SEND_USER            varchar(120) comment '������',
   MESSAGE_CONTENT      varchar(2000) comment '��������',
   MESSAGE_TYPE         int comment '��Ϣ����',
   REPLY_CONTENT        varchar(2000) comment '�ظ�����',
   IS_REPLY             int comment '�Ƿ�ظ�',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (MESSAGE_ID)
);

alter table WX_MESSAGE comment '΢����Ϣ����';

/*==============================================================*/
/* Table: WX_PROMISE                                            */
/*==============================================================*/
create table WX_PROMISE
(
   PROMISE_ID           bigint not null auto_increment comment 'ԤԼID',
   WX_USER_ID           bigint not null comment '�û�ID',
   PROMISE_TIME         datetime comment 'ԤԼʱ��',
   PROMISE_ADDRESS      varchar(400) comment 'ԤԼ�ص�',
   PROMISE_ADDR_DETAIL  varchar(400) comment '��ַ��ϸ',
   STATUS               varbinary(2) comment '״̬
            0:���ύ
            1:ά����
            2.�����
            ',
   FROM_SOURCE          varchar(40) not null comment '��Դ',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (PROMISE_ID)
);

alter table WX_PROMISE comment ' ԤԼ��Ϣ';

/*==============================================================*/
/* Table: WX_TEXT_MSG                                           */
/*==============================================================*/
create table WX_TEXT_MSG
(
   WX_ID                bigint not null default 0 comment '΢��ID',
   TEXT_MSG_ID          bigint not null auto_increment comment '��ϢID',
   TEXT_MSG_NAME        varchar(200) comment '����',
   TEXT_MSG_CONTENT     varchar(2000) comment '����',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (TEXT_MSG_ID)
);

alter table WX_TEXT_MSG comment '΢���ı���Ϣ';

/*==============================================================*/
/* Table: WX_USER_INFO                                          */
/*==============================================================*/
create table WX_USER_INFO
(
   WX_ID                bigint not null comment '΢��ID',
   WX_USER_ID           bigint not null auto_increment comment '΢���û�ID',
   WX_USER_CODE         varchar(120) comment '΢�ź�',
   WX_NAME              varchar(120) comment '΢���ǳ�
            ',
   USER_NAME            varchar(120) comment '��ʵ����',
   SEX                  int comment '�Ա�
            0:����
            1:��
            2:Ů
            ',
   TEL_PHONE            varchar(120) not null comment '�绰',
   QQ                   varchar(120) comment 'qq',
   EMAIL                varchar(120) comment '����',
   ACTIVE               int not null default 0 comment '�Ƿ���Ч
            0:��Ч
            -1:��Ч
            ',
   CERATE_TIME          datetime comment '����ʱ��',
   CREATE_OPR_ID        varchar(40) comment '������ID',
   UPDATE_TIME          datetime comment '�޸�ʱ��',
   UPD_OPR_ID           varchar(40) comment '�޸���ID',
   REMARK               varchar(200) comment '��ע',
   primary key (WX_USER_ID)
);

alter table WX_USER_INFO comment ' ΢���û���Ϣ';

