------------------------------------------------------
-- Export file for user DUKEPU                      --
-- Created by Administrator on 2019-09-20, 15:46:41 --
------------------------------------------------------

spool 190723.log

prompt
prompt Creating table APPLICATION_AVAILABILITY
prompt =======================================
prompt
create table DUKEPU.APPLICATION_AVAILABILITY
(
  PRODUCT_NAME    NVARCHAR2(30) not null,
  RELEASE_VERSION VARCHAR2(20) not null,
  UPDATE_TIME     DATE default sysdate
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index DUKEPU.IX_SW_NAME on DUKEPU.APPLICATION_AVAILABILITY (PRODUCT_NAME)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AR_1905_0624_BAK
prompt ===============================
prompt
create table DUKEPU.AR_1905_0624_BAK
(
  START_DATE         DATE,
  END_DATE           DATE,
  TABULATION_TIME    DATE,
  FINGERPRINT_DATE   DATE,
  JOB_NUMBER         NVARCHAR2(30),
  NAME               NVARCHAR2(10),
  DEPT               NVARCHAR2(10),
  SHEET_NAME         NVARCHAR2(10),
  FPT_FIRST_TIME     DATE,
  FPT_LAST_TIME      DATE,
  SEQ                INTEGER,
  RECORD_TIME        DATE,
  NOT_FINGER_PRINT   INTEGER,
  DELAY_TIME         NUMBER,
  LEAVE_EARLY_NUM    NUMBER,
  MEAL_SUBSIDY       INTEGER,
  RANDOM_STR         VARCHAR2(50),
  COME_NUM           NUMBER,
  COME_LATE_NUM      NUMBER,
  ASK_FOR_LEAVE_DAYS NUMBER,
  ASK_FOR_LEAVE_TYPE NVARCHAR2(20),
  FILL_UP_REMARK     NVARCHAR2(100),
  FILE_PATH          NVARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AR_1905_BAK
prompt ==========================
prompt
create table DUKEPU.AR_1905_BAK
(
  START_DATE         DATE,
  END_DATE           DATE,
  TABULATION_TIME    DATE,
  FINGERPRINT_DATE   DATE,
  JOB_NUMBER         NVARCHAR2(30),
  NAME               NVARCHAR2(10),
  DEPT               NVARCHAR2(10),
  SHEET_NAME         NVARCHAR2(10),
  FPT_FIRST_TIME     DATE,
  FPT_LAST_TIME      DATE,
  SEQ                INTEGER,
  RECORD_TIME        DATE,
  NOT_FINGER_PRINT   INTEGER,
  DELAY_TIME         NUMBER,
  LEAVE_EARLY_NUM    NUMBER,
  MEAL_SUBSIDY       INTEGER,
  RANDOM_STR         VARCHAR2(50),
  COME_NUM           NUMBER,
  COME_LATE_NUM      NUMBER,
  ASK_FOR_LEAVE_DAYS NUMBER,
  ASK_FOR_LEAVE_TYPE NVARCHAR2(20),
  FILL_UP_REMARK     NVARCHAR2(100),
  FILE_PATH          NVARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AR_DELAY_TIME_EACH_STAFF
prompt =======================================
prompt
create table DUKEPU.AR_DELAY_TIME_EACH_STAFF
(
  DEPT             NVARCHAR2(20),
  NAME             NVARCHAR2(20),
  FPT_FIRST_TIME   DATE,
  FPT_LAST_TIME    DATE,
  IS_ORDINARY_DAY  INTEGER,
  IS_OVERTIME_DAY  INTEGER,
  DELAY_TIME       NUMBER,
  UPDATE_TIME      DATE default sysdate,
  AR_JOB_NUMBER    NVARCHAR2(20),
  FINGERPRINT_DATE DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.AR_DELAY_TIME_EACH_STAFF.IS_ORDINARY_DAY
  is '是否为 平日 ';
comment on column DUKEPU.AR_DELAY_TIME_EACH_STAFF.IS_OVERTIME_DAY
  is '是否 为加班日';
comment on column DUKEPU.AR_DELAY_TIME_EACH_STAFF.DELAY_TIME
  is '延时';
comment on column DUKEPU.AR_DELAY_TIME_EACH_STAFF.UPDATE_TIME
  is '更新时间';
comment on column DUKEPU.AR_DELAY_TIME_EACH_STAFF.AR_JOB_NUMBER
  is '工号';
comment on column DUKEPU.AR_DELAY_TIME_EACH_STAFF.FINGERPRINT_DATE
  is '刷卡日期';

prompt
prompt Creating table AR_DETAIL
prompt ========================
prompt
create table DUKEPU.AR_DETAIL
(
  START_DATE       DATE,
  END_DATE         DATE,
  TABULATION_TIME  DATE,
  FINGERPRINT_DATE DATE,
  JOB_NUMBER       VARCHAR2(30),
  NAME             NVARCHAR2(10),
  DEPT             NVARCHAR2(10),
  FPT_FIRST_TIME   DATE,
  FPT_LAST_TIME    DATE,
  COME_LATE_NUM    VARCHAR2(10),
  LEAVE_EARLY_NUM  VARCHAR2(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AR_SAME_PINYIN
prompt =============================
prompt
create table DUKEPU.AR_SAME_PINYIN
(
  JOB_NUMBER              VARCHAR2(20),
  NAME                    NVARCHAR2(20),
  ATTENDANCE_MACHINE_FLAG INTEGER,
  ROW_INDEX               INTEGER,
  RECORD_TIME             DATE default sysdate
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AR_SUMMARY
prompt =========================
prompt
create table DUKEPU.AR_SUMMARY
(
  DEPT                         NVARCHAR2(20),
  NAME                         NVARCHAR2(20),
  AR_JOB_NUMBER                VARCHAR2(20),
  AR_NAME                      NVARCHAR2(20),
  LATEST_OFF_DUTY              DATE,
  OVERTIME_WORKDAY_ONE_MONTH   NUMBER,
  OVERTIME_RESTDAY_ONE_MONTH   NUMBER,
  REMARK                       NVARCHAR2(50),
  SEQ                          INTEGER not null,
  BELONG_TO_MONTH              DATE,
  DAYS_OF_SHOULD_BE_ATTENDANCE INTEGER,
  DAYS_OF_REAL_ATTENDANCE      INTEGER,
  NOT_FINGER_PRINT             INTEGER,
  COME_LATE_NUM                INTEGER,
  LEAVE_EARLY_NUM              INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.AR_SUMMARY.DEPT
  is '此部门信息，来自产量报表。';
comment on column DUKEPU.AR_SUMMARY.NAME
  is '产量 报表中的姓名。';
comment on column DUKEPU.AR_SUMMARY.OVERTIME_WORKDAY_ONE_MONTH
  is '平日延迟 ';
comment on column DUKEPU.AR_SUMMARY.OVERTIME_RESTDAY_ONE_MONTH
  is '加班日工作时长';
comment on column DUKEPU.AR_SUMMARY.BELONG_TO_MONTH
  is '所属月份';
comment on column DUKEPU.AR_SUMMARY.DAYS_OF_SHOULD_BE_ATTENDANCE
  is '应出勤天数 ';
comment on column DUKEPU.AR_SUMMARY.DAYS_OF_REAL_ATTENDANCE
  is '实出勤天数';
comment on column DUKEPU.AR_SUMMARY.NOT_FINGER_PRINT
  is '未打卡次数';
comment on column DUKEPU.AR_SUMMARY.COME_LATE_NUM
  is '迟到次数';
comment on column DUKEPU.AR_SUMMARY.LEAVE_EARLY_NUM
  is '早退次数';
create unique index DUKEPU.IX_DEPT_NAME_BELONGTOMONTH on DUKEPU.AR_SUMMARY (DEPT, NAME, BELONG_TO_MONTH)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AR_SUMMARY_FINAL
prompt ===============================
prompt
create table DUKEPU.AR_SUMMARY_FINAL
(
  JOB_NUMBER              VARCHAR2(60),
  NAME                    NVARCHAR2(20),
  DAYS_OF_REAL_ATTENDANCE INTEGER,
  NOT_FINGER_PRINT        INTEGER,
  OVERTIME_OF_WORKDAY     NUMBER,
  OVERTIME_OF_RESTDAY     NUMBER,
  COME_LATE_NUM           INTEGER,
  LEAVE_EARLY_NUM         INTEGER,
  MEAL_SUBSIDY            INTEGER,
  BELONG_TO_MONTH         DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AR_SUMMARY_FOR_LN
prompt ================================
prompt
create table DUKEPU.AR_SUMMARY_FOR_LN
(
  AR_JOB_NUMBER                VARCHAR2(20),
  AR_NAME                      NVARCHAR2(20),
  LATEST_OFF_DUTY              DATE,
  OVERTIME_WORKDAY_ONE_MONTH   NUMBER,
  OVERTIME_RESTDAY_ONE_MONTH   NUMBER,
  REMARK                       NVARCHAR2(50),
  DAYS_OF_SHOULD_BE_ATTENDANCE INTEGER,
  DAYS_OF_REAL_ATTENDANCE      INTEGER,
  NOT_FINGER_PRINT             INTEGER,
  COME_LATE_NUM                INTEGER,
  LEAVE_EARLY_NUM              INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.AR_SUMMARY_FOR_LN.DAYS_OF_SHOULD_BE_ATTENDANCE
  is '应出勤天数';
comment on column DUKEPU.AR_SUMMARY_FOR_LN.DAYS_OF_REAL_ATTENDANCE
  is '实际出勤天数 ';
comment on column DUKEPU.AR_SUMMARY_FOR_LN.NOT_FINGER_PRINT
  is '未打卡次数';

prompt
prompt Creating table AR_SUMMARY_NEW
prompt =============================
prompt
create global temporary table DUKEPU.AR_SUMMARY_NEW
(
  NAME                   NVARCHAR2(20),
  ACTUAL_ATTENDANCE_DAYS INTEGER,
  NOT_BRUSH_FINGERPRINT  INTEGER,
  DELAY_TIME             NUMBER,
  COME_LATE_NUM          INTEGER,
  LEAVE_EARLY_NUM        NVARCHAR2(20),
  MEAL_SUBSIDY           INTEGER,
  DEPT                   NVARCHAR2(20),
  JOB_NUMBER             VARCHAR2(20)
)
on commit preserve rows;
comment on column DUKEPU.AR_SUMMARY_NEW.NAME
  is '姓名 ';
comment on column DUKEPU.AR_SUMMARY_NEW.ACTUAL_ATTENDANCE_DAYS
  is '实际出勤 天数';
comment on column DUKEPU.AR_SUMMARY_NEW.NOT_BRUSH_FINGERPRINT
  is '未刷指纹次数';
comment on column DUKEPU.AR_SUMMARY_NEW.DELAY_TIME
  is '延时';
comment on column DUKEPU.AR_SUMMARY_NEW.LEAVE_EARLY_NUM
  is '考勤记录表中的用户名';
comment on column DUKEPU.AR_SUMMARY_NEW.MEAL_SUBSIDY
  is '餐补';
comment on column DUKEPU.AR_SUMMARY_NEW.DEPT
  is '部门';
comment on column DUKEPU.AR_SUMMARY_NEW.JOB_NUMBER
  is '工号 ';

prompt
prompt Creating table AR_TEMP
prompt ======================
prompt
create table DUKEPU.AR_TEMP
(
  JOB_NUMBER              VARCHAR2(20),
  NAME                    NVARCHAR2(20),
  RECORD_TIME             DATE default sysdate,
  ATTENDANCE_MACHINE_FLAG INTEGER,
  ROW_INDEX               INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.AR_TEMP.ATTENDANCE_MACHINE_FLAG
  is '考勤机编号 ';
comment on column DUKEPU.AR_TEMP.ROW_INDEX
  is '行号 ';

prompt
prompt Creating table ASK_FOR_LEAVE
prompt ============================
prompt
create table DUKEPU.ASK_FOR_LEAVE
(
  SEQ              INTEGER,
  JOB_NUMBER       NVARCHAR2(20),
  LEAVE_START_TIME DATE,
  LEAVE_END_TIME   DATE,
  RECORD_TIME      DATE,
  TYPE             NVARCHAR2(20),
  NO               VARCHAR2(20),
  NAME             NVARCHAR2(20),
  YEAR_AND_MONTH   VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.ASK_FOR_LEAVE.LEAVE_START_TIME
  is '请假 起始时间';
comment on column DUKEPU.ASK_FOR_LEAVE.LEAVE_END_TIME
  is '请假 结束时间';
comment on column DUKEPU.ASK_FOR_LEAVE.RECORD_TIME
  is '记录时间';
comment on column DUKEPU.ASK_FOR_LEAVE.TYPE
  is '假期类型';
comment on column DUKEPU.ASK_FOR_LEAVE.NO
  is '请假单编号';
comment on column DUKEPU.ASK_FOR_LEAVE.YEAR_AND_MONTH
  is '年月字符串';
create index DUKEPU.IX_JN_A_F_L on DUKEPU.ASK_FOR_LEAVE (JOB_NUMBER)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ASK_FOR_LEAVE_TEMP
prompt =================================
prompt
create table DUKEPU.ASK_FOR_LEAVE_TEMP
(
  JOB_NUMBER       NVARCHAR2(20),
  LEAVE_START_TIME DATE,
  LEAVE_END_TIME   DATE,
  RECORD_TIME      DATE,
  TYPE             NVARCHAR2(20),
  NO               VARCHAR2(20),
  NAME             NVARCHAR2(20),
  YEAR_AND_MONTH   VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.ASK_FOR_LEAVE_TEMP.NO
  is '请假单编号';
comment on column DUKEPU.ASK_FOR_LEAVE_TEMP.YEAR_AND_MONTH
  is '年月字符串.';

prompt
prompt Creating table ATTENDANCE_RECORD
prompt ================================
prompt
create table DUKEPU.ATTENDANCE_RECORD
(
  START_DATE         DATE,
  END_DATE           DATE,
  TABULATION_TIME    DATE,
  FINGERPRINT_DATE   DATE,
  JOB_NUMBER         NVARCHAR2(30),
  NAME               NVARCHAR2(10),
  DEPT               NVARCHAR2(10),
  SHEET_NAME         NVARCHAR2(10),
  FPT_FIRST_TIME     DATE,
  FPT_LAST_TIME      DATE,
  SEQ                INTEGER,
  RECORD_TIME        DATE default sysdate,
  NOT_FINGER_PRINT   INTEGER,
  DELAY_TIME         NUMBER,
  LEAVE_EARLY_NUM    NUMBER default 0,
  MEAL_SUBSIDY       INTEGER,
  RANDOM_STR         VARCHAR2(50),
  COME_NUM           NUMBER,
  COME_LATE_NUM      NUMBER default 0,
  ASK_FOR_LEAVE_DAYS NUMBER,
  ASK_FOR_LEAVE_TYPE NVARCHAR2(20),
  FILL_UP_REMARK     NVARCHAR2(100),
  FILE_PATH          NVARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.ATTENDANCE_RECORD.RECORD_TIME
  is '记录时间 ';
comment on column DUKEPU.ATTENDANCE_RECORD.NOT_FINGER_PRINT
  is '未打开次数';
comment on column DUKEPU.ATTENDANCE_RECORD.DELAY_TIME
  is '加班延时';
comment on column DUKEPU.ATTENDANCE_RECORD.LEAVE_EARLY_NUM
  is '早退次数';
comment on column DUKEPU.ATTENDANCE_RECORD.MEAL_SUBSIDY
  is '超过4小时但小于8小时,计为0.5;  超过8小时计算为1;';
comment on column DUKEPU.ATTENDANCE_RECORD.RANDOM_STR
  is '随即字符串';
comment on column DUKEPU.ATTENDANCE_RECORD.COME_NUM
  is '来刷卡次数,只要刷卡一次,就计为1';
comment on column DUKEPU.ATTENDANCE_RECORD.COME_LATE_NUM
  is '迟到次数';
comment on column DUKEPU.ATTENDANCE_RECORD.ASK_FOR_LEAVE_DAYS
  is '请假天数';
comment on column DUKEPU.ATTENDANCE_RECORD.ASK_FOR_LEAVE_TYPE
  is '请假类型.';
comment on column DUKEPU.ATTENDANCE_RECORD.FILL_UP_REMARK
  is '补卡描述 ';
comment on column DUKEPU.ATTENDANCE_RECORD.FILE_PATH
  is '文件路径';
create index DUKEPU.IX_FINGERPRINT_DATE on DUKEPU.ATTENDANCE_RECORD (FINGERPRINT_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index DUKEPU.IX_FPT_F_T_AND_FP_DATE on DUKEPU.ATTENDANCE_RECORD (FPT_FIRST_TIME, FINGERPRINT_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index DUKEPU.IX_FPT_L_T_AND_FP_D on DUKEPU.ATTENDANCE_RECORD (FPT_LAST_TIME, FINGERPRINT_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index DUKEPU.IX_JN_AND_FP_D_AND_F_F_T on DUKEPU.ATTENDANCE_RECORD (FINGERPRINT_DATE, FPT_FIRST_TIME)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index DUKEPU.IX_JN_AND_FP_D_AND_F_L_T on DUKEPU.ATTENDANCE_RECORD (FINGERPRINT_DATE, FPT_LAST_TIME)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index DUKEPU.IX_JN_FP_D_AND_F_F_T_AND_F_L_T on DUKEPU.ATTENDANCE_RECORD (JOB_NUMBER, FINGERPRINT_DATE, FPT_FIRST_TIME, FPT_LAST_TIME)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index DUKEPU.IX_JN_NAME_FPD on DUKEPU.ATTENDANCE_RECORD (SUBSTR(JOB_NUMBER,1,9), NAME, FINGERPRINT_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index DUKEPU.IX_NAME_AND_FP_D on DUKEPU.ATTENDANCE_RECORD (NAME, FINGERPRINT_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ATTENDANCE_RECORD_201905_BAK
prompt ===========================================
prompt
create table DUKEPU.ATTENDANCE_RECORD_201905_BAK
(
  START_DATE         DATE,
  END_DATE           DATE,
  TABULATION_TIME    DATE,
  FINGERPRINT_DATE   DATE,
  JOB_NUMBER         NVARCHAR2(30),
  NAME               NVARCHAR2(10),
  DEPT               NVARCHAR2(10),
  SHEET_NAME         NVARCHAR2(10),
  FPT_FIRST_TIME     DATE,
  FPT_LAST_TIME      DATE,
  SEQ                INTEGER,
  RECORD_TIME        DATE,
  NOT_FINGER_PRINT   INTEGER,
  DELAY_TIME         NUMBER,
  LEAVE_EARLY_NUM    NUMBER,
  MEAL_SUBSIDY       INTEGER,
  RANDOM_STR         VARCHAR2(50),
  COME_NUM           NUMBER,
  COME_LATE_NUM      NUMBER,
  ASK_FOR_LEAVE_DAYS NUMBER,
  ASK_FOR_LEAVE_TYPE NVARCHAR2(20),
  FILL_UP_REMARK     NVARCHAR2(100),
  FILE_PATH          NVARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ATTENDANCE_RECORD_PREPARATIVE
prompt ============================================
prompt
create table DUKEPU.ATTENDANCE_RECORD_PREPARATIVE
(
  START_DATE         DATE,
  END_DATE           DATE,
  TABULATION_TIME    DATE,
  FINGERPRINT_DATE   DATE,
  JOB_NUMBER         NVARCHAR2(30),
  NAME               NVARCHAR2(10),
  DEPT               NVARCHAR2(10),
  SHEET_NAME         NVARCHAR2(10),
  FPT_FIRST_TIME     DATE,
  FPT_LAST_TIME      DATE,
  SEQ                INTEGER,
  RECORD_TIME        DATE,
  NOT_FINGER_PRINT   INTEGER,
  DELAY_TIME         NUMBER,
  LEAVE_EARLY_NUM    NUMBER,
  MEAL_SUBSIDY       INTEGER,
  RANDOM_STR         VARCHAR2(50),
  COME_NUM           NUMBER,
  COME_LATE_NUM      NUMBER,
  ASK_FOR_LEAVE_DAYS NUMBER,
  ASK_FOR_LEAVE_TYPE NVARCHAR2(20),
  FILL_UP_REMARK     NVARCHAR2(100),
  FILE_PATH          NVARCHAR2(100),
  ROW_INDEX          INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ATTENDANCE_RECORD_SUMMARY
prompt ========================================
prompt
create table DUKEPU.ATTENDANCE_RECORD_SUMMARY
(
  START_DATE         DATE,
  END_DATE           DATE,
  TABULATION_TIME    DATE,
  FINGERPRINT_DATE   DATE,
  JOB_NUMBER         NVARCHAR2(40),
  NAME               NVARCHAR2(10),
  DEPT               NVARCHAR2(10),
  SHEET_NAME         NVARCHAR2(20),
  FPT_FIRST_TIME     DATE,
  FPT_LAST_TIME      DATE,
  SEQ                INTEGER,
  RECORD_TIME        DATE,
  NOT_FINGER_PRINT   INTEGER,
  DELAY_TIME         NUMBER,
  LEAVE_EARLY_NUM    NUMBER,
  MEAL_SUBSIDY       INTEGER,
  RANDOM_STR         VARCHAR2(50),
  COME_NUM           NUMBER,
  COME_LATE_NUM      NUMBER,
  ASK_FOR_LEAVE_DAYS NUMBER,
  ASK_FOR_LEAVE_TYPE NVARCHAR2(20),
  FILL_UP_REMARK     NVARCHAR2(100),
  FILE_PATH          NVARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BR_DICT
prompt ======================
prompt
create table DUKEPU.BR_DICT
(
  ID      NUMBER not null,
  D_ITEM  VARCHAR2(32),
  D_VALUE VARCHAR2(32),
  D_TYPE  VARCHAR2(32),
  D_SORT  NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DUKEPU.BR_DICT
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHECK_PRODUCTS_COST_DOC
prompt ======================================
prompt
create table DUKEPU.CHECK_PRODUCTS_COST_DOC
(
  SUMMARY_PROCESS  NVARCHAR2(20),
  SPECIFIC_PROCESS NVARCHAR2(80),
  ROW_INDEX        INTEGER,
  SEQ_P_C_RECORD   INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.CHECK_PRODUCTS_COST_DOC.SEQ_P_C_RECORD
  is '序号';
create unique index DUKEPU.IX_SUMMARYP_SPECIFICP on DUKEPU.CHECK_PRODUCTS_COST_DOC (SUMMARY_PROCESS, SPECIFIC_PROCESS)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DAILY_CAPACITY
prompt =============================
prompt
create table DUKEPU.DAILY_CAPACITY
(
  NAME                   NVARCHAR2(20) not null,
  JOB_NUMBER             NVARCHAR2(20),
  SUMMARY_PROCESS        NVARCHAR2(30) not null,
  SPECIFIC_PROCESS       NVARCHAR2(50) not null,
  MANUFACTURE_QUANTITIES NUMBER not null,
  YIELDS_TIME            DATE not null,
  UPDATE_TIME            DATE default SYSDATE,
  PRODUCTS_NAME          NVARCHAR2(30) not null,
  SEQ                    INTEGER,
  SUBMIT_PERSON          NVARCHAR2(20),
  RANDOM_STR             NVARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index DUKEPU.IX_J_N_AND_M_T on DUKEPU.DAILY_CAPACITY (JOB_NUMBER, SPECIFIC_PROCESS, TRUNC(YIELDS_TIME))
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DAILY_CAPACITY_HISTORY
prompt =====================================
prompt
create table DUKEPU.DAILY_CAPACITY_HISTORY
(
  SEQ                    NUMBER,
  JOB_NUMBER             NVARCHAR2(20) not null,
  PRODUCTS_NAME          NVARCHAR2(20) not null,
  SUMMARY_PROCESS        NVARCHAR2(20) not null,
  SPECIFIC_PROCESS       NVARCHAR2(30) not null,
  MANUFACTURE_QUANTITIES NUMBER not null,
  YIELDS_TIME            DATE not null,
  SUBMIT_PERSON          NVARCHAR2(10),
  UPDATE_TIME            DATE,
  SAVED_HISTORY_TIME     DATE default SYSDATE,
  NAME                   NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DAILY_CAPACITY_TEMP
prompt ==================================
prompt
create table DUKEPU.DAILY_CAPACITY_TEMP
(
  NAME                   NVARCHAR2(20) not null,
  JOB_NUMBER             NVARCHAR2(20) not null,
  SUMMARY_PROCESS        NVARCHAR2(30) not null,
  SPECIFIC_PROCESS       NVARCHAR2(50) not null,
  MANUFACTURE_QUANTITIES NUMBER not null,
  YIELDS_TIME            DATE not null,
  UPDATE_TIME            DATE,
  PRODUCTS_NAME          NVARCHAR2(30) not null,
  SEQ                    INTEGER,
  SUBMIT_PERSON          NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EMPLOYEES
prompt ========================
prompt
create table DUKEPU.EMPLOYEES
(
  NAME          NVARCHAR2(30),
  JOB_NUMBER    NVARCHAR2(20),
  DEPARTMENT    NVARCHAR2(20),
  CONTACT_WAY   NVARCHAR2(20),
  POSITION      NVARCHAR2(20),
  ROLE          NVARCHAR2(20),
  UPDATE_TIME   DATE default sysdate,
  IS_ON_THE_JOB INTEGER default 1,
  RANDOM_STR    NVARCHAR2(40),
  SEQ           INTEGER,
  AR_NAME       NVARCHAR2(30),
  AR_JOB_NUMBER VARCHAR2(20),
  REPORT_TIME   DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.EMPLOYEES.AR_NAME
  is '考勤记录表中的姓名.';
comment on column DUKEPU.EMPLOYEES.AR_JOB_NUMBER
  is '考勤记录表中的工号';
comment on column DUKEPU.EMPLOYEES.REPORT_TIME
  is '报表时间';
create unique index DUKEPU.IX_NAME on DUKEPU.EMPLOYEES (NAME, DEPARTMENT)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EMPLOYEES_TEMP
prompt =============================
prompt
create table DUKEPU.EMPLOYEES_TEMP
(
  NAME          NVARCHAR2(30),
  JOB_NUMBER    NVARCHAR2(20),
  DEPARTMENT    NVARCHAR2(20),
  CONTACT_WAY   NVARCHAR2(20),
  POSITION      NVARCHAR2(20),
  ROLE          NVARCHAR2(20),
  UPDATE_TIME   DATE,
  IS_ON_THE_JOB INTEGER,
  RANDOM_STR    NVARCHAR2(40),
  AR_NAME       NVARCHAR2(30),
  AR_JOB_NUMBER INTEGER,
  REPORT_TIME   DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EXCEL_PROGRESS
prompt =============================
prompt
create table DUKEPU.EXCEL_PROGRESS
(
  APP_NAME NVARCHAR2(50),
  MSG      NVARCHAR2(50),
  VALUE    INTEGER,
  MAXIMUM  INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.EXCEL_PROGRESS.APP_NAME
  is '应用程序名';
comment on column DUKEPU.EXCEL_PROGRESS.VALUE
  is '当前值 ';
comment on column DUKEPU.EXCEL_PROGRESS.MAXIMUM
  is '最大值 ';

prompt
prompt Creating table FINISH_MESSAGE
prompt =============================
prompt
create table DUKEPU.FINISH_MESSAGE
(
  PROMPT              NVARCHAR2(193),
  FLAG                INTEGER not null,
  NAME_OF_THE_HANDLER NVARCHAR2(50),
  UPDATE_TIME         DATE default SYSDATE,
  FILE_NAME           NVARCHAR2(40),
  RANDOM_STR          NVARCHAR2(30),
  FINISH_FLAG         INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.FINISH_MESSAGE.FLAG
  is '此字段 由于 对前台 信息 显示 控件  背景颜色。';

prompt
prompt Creating table LEARNING
prompt =======================
prompt
create table DUKEPU.LEARNING
(
  NAME NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DUKEPU.LEARNING
  is '用于8:30以后上班的人员名单。';

prompt
prompt Creating table MSG
prompt ==================
prompt
create table DUKEPU.MSG
(
  PROMPT       NVARCHAR2(50),
  FLAG         INTEGER,
  OPERATE_TIME DATE,
  SUBJECT      NVARCHAR2(50),
  RANDOM_STR   NVARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table NO_TO_SUMMARIZE
prompt ==============================
prompt
create table DUKEPU.NO_TO_SUMMARIZE
(
  COMPANY         NVARCHAR2(20),
  DEPARTMENT      NVARCHAR2(20),
  SEQUENCE_NUMBER VARCHAR2(10),
  NAME            NVARCHAR2(20),
  SEX             NVARCHAR2(10),
  MATCHING_COAT   VARCHAR2(20),
  DELIVERY_DATE   DATE,
  SHIRT_SHAPE     VARCHAR2(20),
  D_L             NUMBER,
  O_L             NUMBER,
  D_C             NUMBER,
  O_C             NUMBER,
  D_SW            NUMBER,
  O_SW            NUMBER,
  D_MW            NUMBER,
  O_MW            NUMBER,
  D_SL            NUMBER,
  O_SL            NUMBER,
  D_LH            NUMBER,
  O_LH            NUMBER,
  SEQUENCE        INTEGER,
  MATCHING_SHIRT  NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_COST
prompt ============================
prompt
create table DUKEPU.PRODUCTS_COST
(
  SEQ                   NUMBER,
  SUMMARY_PROCESS       NVARCHAR2(30),
  SPECIFIC_PROCESS      NVARCHAR2(50),
  MAN_HOURS             NUMBER,
  LABOUR_COST           NUMBER default 0.00244,
  SUPPLIER              NVARCHAR2(30),
  UPDATE_TIME           DATE default sysdate,
  PRODUCT_NAME          NVARCHAR2(30),
  SEQ_P_C_RECORD        INTEGER,
  AMOUNT                INTEGER,
  EACH_COST             NUMBER,
  SPECIFIC_EACH_PROCESS NVARCHAR2(50),
  FINAL_LABOUR_COST     NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.PRODUCTS_COST.SUMMARY_PROCESS
  is '主要工序 ';
comment on column DUKEPU.PRODUCTS_COST.SPECIFIC_PROCESS
  is '具体工序 ';
comment on column DUKEPU.PRODUCTS_COST.MAN_HOURS
  is '工时 ';
comment on column DUKEPU.PRODUCTS_COST.LABOUR_COST
  is '工价 ';
comment on column DUKEPU.PRODUCTS_COST.SUPPLIER
  is '提交者 ';
comment on column DUKEPU.PRODUCTS_COST.UPDATE_TIME
  is '更新时间';
comment on column DUKEPU.PRODUCTS_COST.PRODUCT_NAME
  is '产品名 ';
comment on column DUKEPU.PRODUCTS_COST.SEQ_P_C_RECORD
  is '原始表格中的序号 ';
comment on column DUKEPU.PRODUCTS_COST.AMOUNT
  is '件数';
comment on column DUKEPU.PRODUCTS_COST.EACH_COST
  is '每个单独部位的工价.';
comment on column DUKEPU.PRODUCTS_COST.SPECIFIC_EACH_PROCESS
  is '具体的每部位工序';
create unique index DUKEPU.IX_PC_PN_SUMP_SPECP on DUKEPU.PRODUCTS_COST (PRODUCT_NAME, SUMMARY_PROCESS, SPECIFIC_PROCESS)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_COST_BAK
prompt ================================
prompt
create table DUKEPU.PRODUCTS_COST_BAK
(
  SEQ              NUMBER,
  SUMMARY_PROCESS  NVARCHAR2(30),
  SPECIFIC_PROCESS NVARCHAR2(50),
  MAN_HOURS        NUMBER,
  LABOUR_COST      NUMBER,
  SUPPLIER         NVARCHAR2(30),
  UPDATE_TIME      DATE,
  PRODUCTS_NAME    NVARCHAR2(30),
  SEQ_P_C_RECORD   INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_COST_FINAL
prompt ==================================
prompt
create table DUKEPU.PRODUCTS_COST_FINAL
(
  SEQ              NUMBER,
  SUMMARY_PROCESS  NVARCHAR2(30),
  SPECIFIC_PROCESS NVARCHAR2(30),
  PROCESS_COST     NUMBER,
  SUPPLIER         NVARCHAR2(30),
  UPDATE_TIME      DATE,
  PRODUCTS_NAME    NVARCHAR2(30)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index DUKEPU.IX_PCF_PN_SUMMP_SPECP on DUKEPU.PRODUCTS_COST_FINAL (PRODUCTS_NAME, SUMMARY_PROCESS, SPECIFIC_PROCESS)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_COST_HEADER
prompt ===================================
prompt
create table DUKEPU.PRODUCTS_COST_HEADER
(
  SEQ             INTEGER,
  PRODUCT_NAME    NVARCHAR2(20),
  SUMMARY_PROCESS NVARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_COST_HISTORY
prompt ====================================
prompt
create table DUKEPU.PRODUCTS_COST_HISTORY
(
  SEQ                NUMBER,
  SUMMARY_PROCESS    NVARCHAR2(30),
  SPECIFIC_PROCESS   NVARCHAR2(30),
  MAN_HOURS          NUMBER,
  LABOUR_COST        NUMBER,
  SUPPLIER           NVARCHAR2(30),
  INSERT_TIME        DATE,
  PRODUCTS_NAME      NVARCHAR2(30),
  SEQ_P_C_RECORD     INTEGER,
  CREATE_TIME_OF_P_C DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.PRODUCTS_COST_HISTORY.SEQ_P_C_RECORD
  is '记录 中 的 序号 ';
comment on column DUKEPU.PRODUCTS_COST_HISTORY.CREATE_TIME_OF_P_C
  is 'Products_Cost 中的创建时间';

prompt
prompt Creating table PRODUCTS_COST_TEMP
prompt =================================
prompt
create table DUKEPU.PRODUCTS_COST_TEMP
(
  SEQ              NUMBER,
  SUMMARY_PROCESS  NVARCHAR2(30),
  SPECIFIC_PROCESS NVARCHAR2(30),
  MAN_HOURS        NUMBER,
  LABOUR_COST      NUMBER,
  SUPPLIER         NVARCHAR2(30),
  UPDATE_TIME      DATE,
  PRODUCTS_NAME    NVARCHAR2(30)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index DUKEPU.IX_PCT_PN_SUMP_SPCP on DUKEPU.PRODUCTS_COST_TEMP (PRODUCTS_NAME, SUMMARY_PROCESS, SPECIFIC_PROCESS)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_PICTURE
prompt ===============================
prompt
create table DUKEPU.PRODUCTS_PICTURE
(
  ID           INTEGER,
  PICTURE      BLOB,
  PRODUCT_NAME NVARCHAR2(30),
  RECORD_TIME  DATE default sysdate
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.PRODUCTS_PICTURE.PRODUCT_NAME
  is '成衣名称';
comment on column DUKEPU.PRODUCTS_PICTURE.RECORD_TIME
  is '记录时间';

prompt
prompt Creating table PRODUCTS_RECORD
prompt ==============================
prompt
create table DUKEPU.PRODUCTS_RECORD
(
  SEQ                          INTEGER,
  NAME                         NVARCHAR2(20),
  REPORT_DEPT                  NVARCHAR2(20),
  PRODUCTS_NAME                NVARCHAR2(20),
  SUMMARY_PROCESS              NVARCHAR2(20),
  SPECIFIC_PROCESS             NVARCHAR2(50),
  QUANTITIES                   INTEGER,
  MAN_HOURS                    NUMBER,
  SHEET_NAME                   NVARCHAR2(30),
  FILE_NAME                    NVARCHAR2(50),
  UPDATE_TIME                  DATE default sysdate,
  REPORT_SPECIFIC_MONTH        DATE,
  TOTAL_HOURS_OF_THE_STAFF     NUMBER,
  AR_JOB_NUMBER                VARCHAR2(20),
  AR_NAME                      NVARCHAR2(20),
  DEPT                         NVARCHAR2(20),
  SUBMIT_DATE                  DATE,
  DAYS_OF_SHOULD_BE_ATTENDANCE INTEGER,
  DAYS_OF_REAL_ATTENDANCE      INTEGER,
  NUMBERS_OF_NOT_FINGER_PRINT  INTEGER,
  NUMBERS_OF_COME_LATE         INTEGER,
  NUMBERS_OF_LEAVE_EARLY       INTEGER,
  RANDOM_STR                   VARCHAR2(40),
  SEQ_OF_P_R                   INTEGER,
  UNIT_PRICE                   NUMBER,
  AMOUNT_OF_MONEY              NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.PRODUCTS_RECORD.SEQ
  is '序号';
comment on column DUKEPU.PRODUCTS_RECORD.NAME
  is '姓名';
comment on column DUKEPU.PRODUCTS_RECORD.REPORT_DEPT
  is '报表中的部门';
comment on column DUKEPU.PRODUCTS_RECORD.PRODUCTS_NAME
  is '品名';
comment on column DUKEPU.PRODUCTS_RECORD.SUMMARY_PROCESS
  is '概要工序';
comment on column DUKEPU.PRODUCTS_RECORD.SPECIFIC_PROCESS
  is '制定工序';
comment on column DUKEPU.PRODUCTS_RECORD.QUANTITIES
  is '件数';
comment on column DUKEPU.PRODUCTS_RECORD.MAN_HOURS
  is '工时 ';
comment on column DUKEPU.PRODUCTS_RECORD.SHEET_NAME
  is '表名';
comment on column DUKEPU.PRODUCTS_RECORD.FILE_NAME
  is '文件名';
comment on column DUKEPU.PRODUCTS_RECORD.UPDATE_TIME
  is '更新时间';
comment on column DUKEPU.PRODUCTS_RECORD.REPORT_SPECIFIC_MONTH
  is '报表月份';
comment on column DUKEPU.PRODUCTS_RECORD.TOTAL_HOURS_OF_THE_STAFF
  is '某人的总工时 ';
comment on column DUKEPU.PRODUCTS_RECORD.AR_JOB_NUMBER
  is '考勤表工号';
comment on column DUKEPU.PRODUCTS_RECORD.AR_NAME
  is '考勤表中姓名 ';
comment on column DUKEPU.PRODUCTS_RECORD.DEPT
  is '员工所属部门';
comment on column DUKEPU.PRODUCTS_RECORD.DAYS_OF_SHOULD_BE_ATTENDANCE
  is '应出勤天数';
comment on column DUKEPU.PRODUCTS_RECORD.DAYS_OF_REAL_ATTENDANCE
  is '实际出勤天数';
comment on column DUKEPU.PRODUCTS_RECORD.NUMBERS_OF_NOT_FINGER_PRINT
  is '未打卡次数';
comment on column DUKEPU.PRODUCTS_RECORD.NUMBERS_OF_COME_LATE
  is '迟到次数';
comment on column DUKEPU.PRODUCTS_RECORD.NUMBERS_OF_LEAVE_EARLY
  is '早退次数';
comment on column DUKEPU.PRODUCTS_RECORD.RANDOM_STR
  is '随机字符串 ';
comment on column DUKEPU.PRODUCTS_RECORD.SEQ_OF_P_R
  is '产量表格中的工序序号';
comment on column DUKEPU.PRODUCTS_RECORD.UNIT_PRICE
  is '单价';
comment on column DUKEPU.PRODUCTS_RECORD.AMOUNT_OF_MONEY
  is '该条记录的金额';
create index DUKEPU.IX_RD_AND_SPECIFIC_MONTH on DUKEPU.PRODUCTS_RECORD (REPORT_DEPT, REPORT_SPECIFIC_MONTH)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index DUKEPU.IX_RD_AND_YEAR_AND_MONTH_PR on DUKEPU.PRODUCTS_RECORD (REPORT_DEPT, NAME, PRODUCTS_NAME, SUMMARY_PROCESS, SPECIFIC_PROCESS, REPORT_SPECIFIC_MONTH)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_RECORD_BAK_181112
prompt =========================================
prompt
create table DUKEPU.PRODUCTS_RECORD_BAK_181112
(
  SEQ              INTEGER,
  JOB_NUMBER       NVARCHAR2(20),
  NAME             NVARCHAR2(20),
  REPORTDEPT       NVARCHAR2(20),
  PRODUCTS_NAME    NVARCHAR2(20),
  SUMMARY_PROCESS  NVARCHAR2(20),
  SPECIFIC_PROCESS NVARCHAR2(30),
  QUANTITIES       INTEGER,
  PROCESS_COST     NUMBER,
  SHEET_NAME       NVARCHAR2(30),
  PATH             NVARCHAR2(200),
  UPDATE_TIME      DATE,
  YEAR_AND_MONTH   VARCHAR2(20),
  AMOUNT           NUMBER,
  SUBMIT_DATE      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRODUCTS_RECORD_TEMP
prompt ===================================
prompt
create table DUKEPU.PRODUCTS_RECORD_TEMP
(
  SEQ                   INTEGER,
  JOB_NUMBER            NVARCHAR2(20),
  NAME                  NVARCHAR2(20),
  DEPT                  NVARCHAR2(20),
  PRODUCTS_NAME         NVARCHAR2(20),
  SUMMARY_PROCESS       NVARCHAR2(20),
  SPECIFIC_PROCESS      NVARCHAR2(30),
  QUANTITIES            INTEGER,
  PROCESS_COST          NUMBER,
  SHEET_NAME            NVARCHAR2(30),
  PATH                  NVARCHAR2(200),
  UPDATE_TIME           DATE,
  IP_ADDR               VARCHAR2(16),
  REPORT_SPECIFIC_MONTH VARCHAR2(20),
  RANDOM_STR            VARCHAR2(40),
  AMOUNT                NUMBER,
  REPORT_DEPT           NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.PRODUCTS_RECORD_TEMP.DEPT
  is '人员所属部门';
comment on column DUKEPU.PRODUCTS_RECORD_TEMP.RANDOM_STR
  is '随即字符串.只存在于临时表中,用于对核实工号的追踪.';
comment on column DUKEPU.PRODUCTS_RECORD_TEMP.AMOUNT
  is '此工序,工作所得金额';
comment on column DUKEPU.PRODUCTS_RECORD_TEMP.REPORT_DEPT
  is '报表所属部门';

prompt
prompt Creating table PRODUCT_TYPES
prompt ============================
prompt
create table DUKEPU.PRODUCT_TYPES
(
  PRODUCT_TYPE_ID INTEGER not null,
  NAME            VARCHAR2(10) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DUKEPU.PRODUCT_TYPES
  add constraint PRODUCT_TYPES_PK primary key (PRODUCT_TYPE_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PROD_CAPACITY_TEMP
prompt =================================
prompt
create table DUKEPU.PROD_CAPACITY_TEMP
(
  JOB_NUMBER       NVARCHAR2(30),
  NAME             NVARCHAR2(30),
  QUANTITIES       INTEGER,
  PRODUCTS_NAME    NVARCHAR2(30),
  SUMMARY_PROCESS  NVARCHAR2(30),
  SPECIFIC_PROCESS NVARCHAR2(30),
  YIELDS_TIME      DATE,
  CREATE_TIME      DATE,
  RANDOM_STR       NVARCHAR2(50),
  SUBMIT_PERSON    NVARCHAR2(30),
  SHEET_NAME       NVARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PROGRESS_INFO
prompt ============================
prompt
create table DUKEPU.PROGRESS_INFO
(
  MAX_VALUE           INTEGER,
  CURRENT_VALUE       INTEGER,
  NAME_OF_THE_HANDLER NVARCHAR2(40),
  UPDATE_TIME         DATE default sysdate,
  FINISH_FLAG         INTEGER,
  MSG                 NVARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.PROGRESS_INFO.FINISH_FLAG
  is '结束标志位';

prompt
prompt Creating table P_C_TEMPLATE
prompt ===========================
prompt
create table DUKEPU.P_C_TEMPLATE
(
  SEQ              INTEGER,
  SUMMARY_PROCESS  NVARCHAR2(20),
  SPECIFIC_PROCESS NVARCHAR2(50),
  MAN_HOURS        INTEGER,
  LABOUR_COST      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.P_C_TEMPLATE.SEQ
  is '序号';
comment on column DUKEPU.P_C_TEMPLATE.SUMMARY_PROCESS
  is '部位 ';
comment on column DUKEPU.P_C_TEMPLATE.SPECIFIC_PROCESS
  is '工序名称';
comment on column DUKEPU.P_C_TEMPLATE.MAN_HOURS
  is '工时';
comment on column DUKEPU.P_C_TEMPLATE.LABOUR_COST
  is '单价 ';

prompt
prompt Creating table RADR
prompt ===================
prompt
create table DUKEPU.RADR
(
  SEQ             NUMBER,
  JOB_NUMBER      NVARCHAR2(20),
  NAME            NVARCHAR2(20),
  STYLE           NVARCHAR2(20),
  QUANTITIES      INTEGER,
  MAN_HOUR        INTEGER,
  LABOUR_COST     NUMBER,
  AMOUNT_OF_MONEY NUMBER,
  BILL_NO         NVARCHAR2(40),
  UPDATE_TIME     DATE,
  SHEET_NAME      NVARCHAR2(20),
  YEAR_AND_MONTH  VARCHAR2(20),
  DEPT            NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.RADR.YEAR_AND_MONTH
  is '记录日期';
comment on column DUKEPU.RADR.DEPT
  is '产量报表中部门';

prompt
prompt Creating table RADR_TEMP
prompt ========================
prompt
create table DUKEPU.RADR_TEMP
(
  JOB_NUMBER      NVARCHAR2(20),
  NAME            NVARCHAR2(20),
  STYLE           NVARCHAR2(20),
  QUANTITIES      INTEGER,
  MAN_HOUR        INTEGER,
  LABOUR_COST     NUMBER,
  AMOUNT_OF_MONEY NUMBER,
  UPDATE_TIME     DATE,
  BILL_NO         NVARCHAR2(40),
  SHEET_NAME      NVARCHAR2(20),
  YEAR_AND_MONTH  VARCHAR2(20),
  DEPT            NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.RADR_TEMP.STYLE
  is '款式';
comment on column DUKEPU.RADR_TEMP.QUANTITIES
  is '数量';
comment on column DUKEPU.RADR_TEMP.MAN_HOUR
  is '工时';
comment on column DUKEPU.RADR_TEMP.LABOUR_COST
  is '工价';
comment on column DUKEPU.RADR_TEMP.AMOUNT_OF_MONEY
  is '合计';
comment on column DUKEPU.RADR_TEMP.BILL_NO
  is '单据编号';
comment on column DUKEPU.RADR_TEMP.YEAR_AND_MONTH
  is '记录日期.';
comment on column DUKEPU.RADR_TEMP.DEPT
  is '报表中部门';

prompt
prompt Creating table REALTIME_MESSAGE
prompt ===============================
prompt
create table DUKEPU.REALTIME_MESSAGE
(
  MSG                 NVARCHAR2(30),
  FLAG                INTEGER,
  NAME_OF_THE_HANDLER NVARCHAR2(30)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.REALTIME_MESSAGE.NAME_OF_THE_HANDLER
  is 'TCP SERVER 端的 处理程序 名称';

prompt
prompt Creating table REPORT_DEALWITH_STATUS
prompt =====================================
prompt
create table DUKEPU.REPORT_DEALWITH_STATUS
(
  FILE_PATH           NVARCHAR2(70),
  SHEET_VISUAL_COUNTS INTEGER,
  SHEET_INDEX         INTEGER,
  SHEET_NAME          NVARCHAR2(20),
  CURRENT_ROW_INDEX   INTEGER,
  STATUS_DESCRIPTION  NVARCHAR2(200),
  STATUS_FLAG         INTEGER,
  UPDATE_TIME         DATE,
  MAX_ROW_INDEX       INTEGER,
  FILE_NAME           NVARCHAR2(30),
  MAX_COL_INDEX       INTEGER,
  CURRENT_COL_INDEX   INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.REPORT_DEALWITH_STATUS.FILE_PATH
  is '报表路径 ';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.SHEET_VISUAL_COUNTS
  is '报表 个数 ';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.SHEET_INDEX
  is '索引   报表 索引';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.SHEET_NAME
  is '报表名称';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.CURRENT_ROW_INDEX
  is '正在处理的当前行数';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.STATUS_DESCRIPTION
  is '状态描述 ';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.STATUS_FLAG
  is '状态标志位   false:  未处理完  true:  已处理完';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.UPDATE_TIME
  is '更新时间';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.MAX_ROW_INDEX
  is '最大行数 ';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.FILE_NAME
  is '表格名称 ';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.MAX_COL_INDEX
  is '最大列数';
comment on column DUKEPU.REPORT_DEALWITH_STATUS.CURRENT_COL_INDEX
  is '当前列索引';
create unique index DUKEPU.IX_REPORT_DEALWITH_STATUS on DUKEPU.REPORT_DEALWITH_STATUS (FILE_NAME, SHEET_NAME)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table REST_DAY
prompt =======================
prompt
create table DUKEPU.REST_DAY
(
  REST_DAY    DATE,
  UPDATE_TIME DATE,
  NAME        NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SALARIES_AIRTHMETIC
prompt ==================================
prompt
create table DUKEPU.SALARIES_AIRTHMETIC
(
  PROCESS          NVARCHAR2(30),
  SPECIFIC_PROCESS NVARCHAR2(50),
  LABOUR_COST      NUMBER,
  SUPPLIER_PEOPLE  NVARCHAR2(30)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DUKEPU.SALARIES_AIRTHMETIC
  add constraint IX_SPECIFIC_PROCESS unique (SPECIFIC_PROCESS)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SCATTERED_RECORD
prompt ===============================
prompt
create table DUKEPU.SCATTERED_RECORD
(
  SEQ                   INTEGER,
  NAME                  NVARCHAR2(20),
  PARTICULARS           NVARCHAR2(30),
  TOTAL_HOURS           NUMBER,
  LABOUR_COST           NUMBER,
  AGGREGATE_AMOUNT      NUMBER,
  UPDATE_TIME           DATE,
  SHEET_NAME            NVARCHAR2(20),
  REPORT_DEPT           NVARCHAR2(20),
  QUANTITIES            INTEGER,
  REPORT_SPECIFIC_MONTH DATE,
  AR_JOB_NUMBER         VARCHAR2(20),
  AR_NAME               NVARCHAR2(20),
  DEPT                  NVARCHAR2(20),
  FILE_NAME             NVARCHAR2(30),
  SUBMIT_DATE           DATE,
  RANDOM_STR            VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.SCATTERED_RECORD.TOTAL_HOURS
  is '时间';
comment on column DUKEPU.SCATTERED_RECORD.SHEET_NAME
  is '表格名';
comment on column DUKEPU.SCATTERED_RECORD.REPORT_DEPT
  is '部门';
comment on column DUKEPU.SCATTERED_RECORD.QUANTITIES
  is '件数';
comment on column DUKEPU.SCATTERED_RECORD.REPORT_SPECIFIC_MONTH
  is '用于月报表';
comment on column DUKEPU.SCATTERED_RECORD.AR_JOB_NUMBER
  is '考勤表工号';
comment on column DUKEPU.SCATTERED_RECORD.AR_NAME
  is '考勤表姓名';
comment on column DUKEPU.SCATTERED_RECORD.DEPT
  is '员工所属部门';
comment on column DUKEPU.SCATTERED_RECORD.FILE_NAME
  is '文件名称';
comment on column DUKEPU.SCATTERED_RECORD.RANDOM_STR
  is '随机字符串 ';
create index DUKEPU.IX_RD_AND_SUBMIT_DATE on DUKEPU.SCATTERED_RECORD (REPORT_DEPT, REPORT_SPECIFIC_MONTH)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SCATTERED_RECORD_TEMP
prompt ====================================
prompt
create table DUKEPU.SCATTERED_RECORD_TEMP
(
  JOB_NUMBER            NVARCHAR2(30),
  NAME                  NVARCHAR2(20),
  PARTICULARS           NVARCHAR2(30),
  HOURS                 INTEGER,
  LABOUR_COST           NUMBER,
  AGGREGATE_AMOUNT      NUMBER,
  UPDATE_TIME           DATE,
  SHEET_NAME            NVARCHAR2(20),
  REPORT_SPECIFIC_MONTH VARCHAR2(20),
  REPORT_DEPT           NVARCHAR2(20),
  QUANTITIES            INTEGER,
  RANDOM_STR            VARCHAR2(40),
  REPORT_SPECIFIC_DAY   DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.SCATTERED_RECORD_TEMP.PARTICULARS
  is '事由';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.HOURS
  is '用时';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.LABOUR_COST
  is '工价';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.AGGREGATE_AMOUNT
  is '总金额';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.SHEET_NAME
  is '表格名';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.REPORT_SPECIFIC_MONTH
  is '月报表 ';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.REPORT_DEPT
  is '部门';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.QUANTITIES
  is '件数';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.RANDOM_STR
  is '随即字符串.';
comment on column DUKEPU.SCATTERED_RECORD_TEMP.REPORT_SPECIFIC_DAY
  is '用于日报表';

prompt
prompt Creating table SHIRT_LABEL
prompt ==========================
prompt
create table DUKEPU.SHIRT_LABEL
(
  ROW_INDEX             INTEGER,
  PROPERTY_NAME         NVARCHAR2(20),
  PROPERTY_VALUE        NVARCHAR2(50),
  UPDATE_TIME           DATE default sysdate,
  PROPERTY_CHINESE_NAME NVARCHAR2(20),
  VISIBLE               INTEGER default 1
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.SHIRT_LABEL.PROPERTY_NAME
  is '属性名';
comment on column DUKEPU.SHIRT_LABEL.UPDATE_TIME
  is '属性值';
comment on column DUKEPU.SHIRT_LABEL.PROPERTY_CHINESE_NAME
  is '中文属性名';
comment on column DUKEPU.SHIRT_LABEL.VISIBLE
  is '是否可见';

prompt
prompt Creating table SHOPPING
prompt =======================
prompt
create table DUKEPU.SHOPPING
(
  U_ID  INTEGER,
  GOODS NVARCHAR2(10),
  NUM   INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SOCKET_MESS
prompt ==========================
prompt
create table DUKEPU.SOCKET_MESS
(
  PROCESS_NAME  NVARCHAR2(30),
  RESULT        NVARCHAR2(60),
  STATUS        NVARCHAR2(40),
  CURRENT_VALUE INTEGER,
  TOTAL_VALUE   INTEGER,
  UPDATE_TIME   DATE,
  FLAG          INTEGER,
  TASK_STATUS   NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.SOCKET_MESS.TASK_STATUS
  is '状态:  正在处理：processing   已完成: finished.';

prompt
prompt Creating table SOFTWAREINFO
prompt ===========================
prompt
create table DUKEPU.SOFTWAREINFO
(
  SOFTWARENAME    NVARCHAR2(20),
  SOFTWAREVERSION VARCHAR2(20),
  UPDATETIME      DATE,
  DOWNLOADPATH    NVARCHAR2(100),
  REMARK          NVARCHAR2(20),
  ID              INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.SOFTWAREINFO.SOFTWARENAME
  is '软件名称';
comment on column DUKEPU.SOFTWAREINFO.SOFTWAREVERSION
  is '软件版本';
comment on column DUKEPU.SOFTWAREINFO.UPDATETIME
  is '更新时间';
comment on column DUKEPU.SOFTWAREINFO.DOWNLOADPATH
  is '下载路径';
comment on column DUKEPU.SOFTWAREINFO.REMARK
  is '注释';
alter table DUKEPU.SOFTWAREINFO
  add constraint PK_SOFTWAREINFO primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table STUDENT_SCORE
prompt ============================
prompt
create table DUKEPU.STUDENT_SCORE
(
  NAME    VARCHAR2(20),
  SUBJECT VARCHAR2(20),
  SCORE   NUMBER(4,1)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T
prompt ================
prompt
create table DUKEPU.T
(
  NUM  NUMBER,
  NAME NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T1
prompt =================
prompt
create table DUKEPU.T1
(
  FNAME  VARCHAR2(20),
  FMONEY INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T2
prompt =================
prompt
create table DUKEPU.T2
(
  FNAME  VARCHAR2(20),
  FMONEY INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEMP_FOR_DUTY_NUM
prompt ================================
prompt
create table DUKEPU.TEMP_FOR_DUTY_NUM
(
  NUM       INTEGER,
  TIMEPOINT VARCHAR2(30),
  CATEGORY  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEST
prompt ===================
prompt
create table DUKEPU.TEST
(
  ID    NUMBER(10) not null,
  TYPE  NUMBER(10),
  T_ID  NUMBER(10),
  VALUE VARCHAR2(5)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DUKEPU.TEST
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEST1
prompt ====================
prompt
create table DUKEPU.TEST1
(
  ID INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TMP
prompt ==================
prompt
create table DUKEPU.TMP
(
  RQ      VARCHAR2(10),
  SHENGFU VARCHAR2(5)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_TEST
prompt =====================
prompt
create table DUKEPU.T_TEST
(
  ID     INTEGER,
  MONTH  INTEGER,
  AMOUNT INTEGER,
  TEST   FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table USERS
prompt ====================
prompt
create table DUKEPU.USERS
(
  NAME  VARCHAR2(20),
  VALUE VARCHAR2(20),
  ID    INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table USER_INFO
prompt ========================
prompt
create table DUKEPU.USER_INFO
(
  SEQUENCE     NUMBER(10) not null,
  ACTION       VARCHAR2(50 CHAR),
  DEPARTMENT   VARCHAR2(50 CHAR),
  PASSWORD     VARCHAR2(50 CHAR),
  PRODUCT_NAME VARCHAR2(50 CHAR),
  UPDATE_TIME  VARCHAR2(50 CHAR),
  USER_NAME    VARCHAR2(50 CHAR)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DUKEPU.USER_INFO
  add primary key (SEQUENCE)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WMS_TEST
prompt =======================
prompt
create table DUKEPU.WMS_TEST
(
  STATUS                   NVARCHAR2(20),
  COLLECT_THE_GOODS_TIME   DATE,
  QUANLITY_INSPECTION_PLAN NVARCHAR2(20),
  WAY_BILL_NO              NVARCHAR2(20),
  CUSTOMER_ORDER           NVARCHAR2(20),
  ITEM_NO                  NVARCHAR2(20),
  NAME                     NVARCHAR2(20),
  SUPPLIER_NO              NVARCHAR2(20),
  COBBING                  NVARCHAR2(20),
  MATERIAL_NO              NVARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.WMS_TEST.COLLECT_THE_GOODS_TIME
  is '收货 时间 ';
comment on column DUKEPU.WMS_TEST.QUANLITY_INSPECTION_PLAN
  is '质检计划 ';
comment on column DUKEPU.WMS_TEST.WAY_BILL_NO
  is '运单号 ';
comment on column DUKEPU.WMS_TEST.CUSTOMER_ORDER
  is '客户订单号 ';
comment on column DUKEPU.WMS_TEST.ITEM_NO
  is '货号 ';
comment on column DUKEPU.WMS_TEST.NAME
  is '名称 ';
comment on column DUKEPU.WMS_TEST.SUPPLIER_NO
  is '供方货号 ';
comment on column DUKEPU.WMS_TEST.COBBING
  is '小块料 ';
comment on column DUKEPU.WMS_TEST.MATERIAL_NO
  is '物料编码';

prompt
prompt Creating table WORK_SCHEDULE
prompt ============================
prompt
create table DUKEPU.WORK_SCHEDULE
(
  SEQ                INTEGER,
  DEPT               NVARCHAR2(10),
  ON_DUTY_TIME       DATE,
  RECORD_TIME        DATE,
  WORK_AND_REST_DATE DATE,
  WORK_OR_REST       INTEGER,
  OFF_DUTY_TIME      DATE,
  FP_NUMBER          INTEGER,
  REST_NUMBER        INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.WORK_SCHEDULE.REST_NUMBER
  is '休息人数.';

prompt
prompt Creating table WORK_SUMMARY
prompt ===========================
prompt
create table DUKEPU.WORK_SUMMARY
(
  SEQ                INTEGER,
  DEPT               NVARCHAR2(10),
  ON_DUTY_TIME       DATE,
  RECORD_TIME        DATE,
  WORK_AND_REST_DATE DATE,
  WORK_OR_REST       INTEGER,
  OFF_DUTY_TIME      DATE,
  FP_NUMBER          INTEGER,
  REST_NUMBER        INTEGER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column DUKEPU.WORK_SUMMARY.FP_NUMBER
  is '上下班都按了指纹的人数。';
comment on column DUKEPU.WORK_SUMMARY.REST_NUMBER
  is '休息人数.';

prompt
prompt Creating sequence HIBERNATE_SEQUENCE
prompt ====================================
prompt
create sequence DUKEPU.HIBERNATE_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_AR_SUMMARY
prompt ================================
prompt
create sequence DUKEPU.SEQ_AR_SUMMARY
minvalue 1
maxvalue 99999999999999999999
start with 1421
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ASK_FOR_LEAVE
prompt ===================================
prompt
create sequence DUKEPU.SEQ_ASK_FOR_LEAVE
minvalue 1
maxvalue 9999999999999
start with 3143581
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_DAILY_CAPACITY
prompt ====================================
prompt
create sequence DUKEPU.SEQ_DAILY_CAPACITY
minvalue 1
maxvalue 999999999999999999999999999
start with 580
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_DAILY_CAPACITY_TEMP
prompt =========================================
prompt
create sequence DUKEPU.SEQ_DAILY_CAPACITY_TEMP
minvalue 1
maxvalue 999999999999999999999999999
start with 441
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EMPLOYEES
prompt ===============================
prompt
create sequence DUKEPU.SEQ_EMPLOYEES
minvalue 1
maxvalue 9999999999999
start with 2701
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PRODUCTS_COST
prompt ===================================
prompt
create sequence DUKEPU.SEQ_PRODUCTS_COST
minvalue 1
maxvalue 999999999999999999999999999
start with 25001
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PRODUCTS_COST_HISTORY
prompt ===========================================
prompt
create sequence DUKEPU.SEQ_PRODUCTS_COST_HISTORY
minvalue 1
maxvalue 999999999999999999999999999
start with 5461
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PRODUCTS_RECORD
prompt =====================================
prompt
create sequence DUKEPU.SEQ_PRODUCTS_RECORD
minvalue 1
maxvalue 999999999999999999999999999
start with 67761
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PRODUCTS_RECORD_TEMP
prompt ==========================================
prompt
create sequence DUKEPU.SEQ_PRODUCTS_RECORD_TEMP
minvalue 1
maxvalue 9999999999999
start with 208453
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_P_C_BAK
prompt =============================
prompt
create sequence DUKEPU.SEQ_P_C_BAK
minvalue 1
maxvalue 999999999999999999999999999
start with 12881
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_P_C_F
prompt ===========================
prompt
create sequence DUKEPU.SEQ_P_C_F
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_RADR
prompt ==========================
prompt
create sequence DUKEPU.SEQ_RADR
minvalue 1
maxvalue 999999999999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SCATTERED_RECORD
prompt ======================================
prompt
create sequence DUKEPU.SEQ_SCATTERED_RECORD
minvalue 1
maxvalue 999999999999999
start with 7855
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_SOFTWAREINFO
prompt ==================================
prompt
create sequence DUKEPU.SEQ_SOFTWAREINFO
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_WORK_SCHEDULE
prompt ===================================
prompt
create sequence DUKEPU.SEQ_WORK_SCHEDULE
minvalue 1
maxvalue 9999999999999
start with 23061
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_WORK_SUMMARY
prompt ==================================
prompt
create sequence DUKEPU.SEQ_WORK_SUMMARY
minvalue 1
maxvalue 9999999999999
start with 641
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence S_ATTENDANCERECORD
prompt ====================================
prompt
create sequence DUKEPU.S_ATTENDANCERECORD
minvalue 1
maxvalue 99999999999999
start with 438201
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence S_NO_TO_SUMMARIZE
prompt ===================================
prompt
create sequence DUKEPU.S_NO_TO_SUMMARIZE
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
cycle;

prompt
prompt Creating view V_AR_DETAIL
prompt =========================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_AR_DETAIL AS
SELECT
           start_date ,
    end_date ,
    tabulation_time ,
    fingerprint_date,
    --cast(job_number as int) as job_number ,
    job_number ,
    name,
    dept ,
    fpt_first_time,
    fpt_last_time,
    come_Late_Num,
    leave_early_num
FROM Attendance_Record AR
order by job_number asc,
      Fingerprint_Date ASC
/

prompt
prompt Creating view V_AR_DETAIL_CHINESE
prompt =================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_AR_DETAIL_CHINESE AS
SELECT
           start_date ,
    end_date ,
    tabulation_time ,
    fingerprint_date,
    cast(job_number as int) as job_number ,
    name,
    dept ,
    fpt_first_time,
  fpt_last_time,
    come_Late_Num,
    leave_early_num
FROM Attendance_Record AR
order by job_number asc,
      Fingerprint_Date ASC
/

prompt
prompt Creating view V_AR_RESULT
prompt =========================
prompt
create or replace view dukepu.v_ar_result as
select TRUNC(fingerprint_date,'MM') AS fingerprint_date,
         DEPT AS DEPT,
         cast(JOB_NUMBER as INT) AS JOB_NUMBER,
         NAME AS NAME,
         SUM(COME_NUM) AS COME_NUM,
         SUM(CASE not_finger_print
                  WHEN NULL THEN 0
                  ELSE not_finger_print
             END) AS not_finger_print,
         SUM(CASE DELAY_TIME
                  WHEN NULL THEN 0
                  ELSE DELAY_TIME
             END) AS DELAY_TIME,
         SUM(CASE COME_LATE_NUM
                  WHEN NULL THEN 0
                  ELSE COME_LATE_NUM
             END) AS COME_LATE_NUM,
         SUM(
             CASE LEAVE_EARLY_NUM
                  WHEN NULL THEN 0
                  ELSE LEAVE_EARLY_NUM
             END
         ) AS LEAVE_EARLY_NUM,
         SUM(
             Meal_Subsidy
         ) AS Meal_Subsidy
FROM Attendance_Record AR
GROUP BY TRUNC(fingerprint_date,'MM'),
         DEPT,
         JOB_NUMBER,
         NAME
ORDER BY
         CAST(JOB_NUMBER AS INT) ASC
/

prompt
prompt Creating view V_AR_RESULT_CHINESE
prompt =================================
prompt
create or replace view dukepu.v_ar_result_chinese as
select TRUNC(fingerprint_date,'MM') AS "出勤月",
         DEPT AS "部门",
         cast(JOB_NUMBER as INT) AS "工号",
         NAME AS "姓名",
         SUM(COME_NUM) AS "出勤天数",
         SUM(CASE not_finger_print
                  WHEN NULL THEN 0
                  ELSE not_finger_print
             END) AS "未打卡次数",
         SUM(CASE DELAY_TIME
                  WHEN NULL THEN 0
                  ELSE DELAY_TIME
             END) AS "延时(小时)",
         SUM(CASE COME_LATE_NUM
                  WHEN NULL THEN 0
                  ELSE COME_LATE_NUM
             END) AS "迟到次数",
         SUM(
             CASE LEAVE_EARLY_NUM
                  WHEN NULL THEN 0
                  ELSE LEAVE_EARLY_NUM
             END
         ) AS "早退次数",
         SUM(
             Meal_Subsidy
         ) AS "餐补"
FROM Attendance_Record AR
GROUP BY TRUNC(fingerprint_date,'MM'),
         DEPT,
         JOB_NUMBER,
         NAME
ORDER BY
         CAST(JOB_NUMBER AS INT) ASC
/

prompt
prompt Creating view V_A_R_SUMMARY_DETAIL
prompt ==================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_A_R_SUMMARY_DETAIL AS
SELECT
           start_date ,
    end_date ,
    tabulation_time ,
    fingerprint_date,
    --cast(job_number as int) as job_number ,
    job_number ,
    name,
    dept ,
    fpt_first_time,
    fpt_last_time,
    come_Late_Num,
    leave_early_num
FROM Attendance_Record_Summary AR
order by job_number asc,
      Fingerprint_Date ASC
/

prompt
prompt Creating view V_DAILY_CAPACITY
prompt ==============================
prompt
create or replace view dukepu.v_daily_capacity as
select D_C.name,
          D_C.job_number,
          NVL(D_C.summary_process,'NULL') SUMMARY_PROCESS,
          D_C.specific_process,
          D_C.manufacture_quantities,
          D_C.yields_time,
          D_C.update_time,
          D_C.products_name,
          D_C.seq,
          D_C.submit_person
    from Daily_Capacity D_C INNER JOIN EMPLOYEES EMPS
         ON (D_C.Job_Number = EMPS.Job_NUMBER AND EMPS.Is_On_The_Job = 1)
/

prompt
prompt Creating view V_IMPORT_DC_FROM_PROD_DC
prompt ======================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_IMPORT_DC_FROM_PROD_DC AS
SELECT
              D_C.Seq,
              D_C.JOB_NUMBER,
              D_C.NAME,
              D_C.PRODUCTS_NAME,
              D_C.SUMMARY_PROCESS,
              D_C.Specific_Process,
              D_C.MANUFACTURE_QUANTITIES,
              D_C.YIELDS_TIME,
              D_C.UPDATE_TIME,
              D_C.Submit_Person,
              D_C.Random_Str
       FROM Daily_Capacity D_C,PROD_CAPACITY_TEMP PROD_C_T,EMPLOYEES EMPS
       WHERE D_C.Random_Str = PROD_C_T.Random_Str
             AND D_C.Job_Number = EMPS.Job_Number
             AND D_C.Products_Name = PROD_C_T.Products_Name
             AND D_C.Summary_Process = PROD_C_T.Summary_Process
             AND D_C.Specific_Process = PROD_C_T.Specific_Process
             AND EMPS.Is_On_The_Job = 1
       ORDER BY D_C.JOB_NUMBER DESC,
                D_C.Products_Name DESC,
                D_C.Summary_Process dESC,
                D_C.Specific_Process DESC
/

prompt
prompt Creating view V_IMPORT_DC_JUST_NOW
prompt ==================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_IMPORT_DC_JUST_NOW AS
SELECT
              D_C.Seq,
              D_C.JOB_NUMBER,
              D_C.NAME,
              D_C.PRODUCTS_NAME,
              D_C.SUMMARY_PROCESS,
              D_C.Specific_Process,
              D_C.MANUFACTURE_QUANTITIES,
              D_C.YIELDS_TIME,
              D_C.UPDATE_TIME,
              D_C.Submit_Person
       FROM Daily_Capacity D_C,Daily_Capacity_Temp D_C_T,EMPLOYEES EMPS
       WHERE D_C.Job_Number = D_C_T.Job_Number
             AND TRUNC(D_C.Yields_Time) = TRUNC(D_C_T.Yields_Time)
             AND D_C.Job_Number = EMPS.Job_Number
             AND EMPS.Is_On_The_Job = 1
/

prompt
prompt Creating view V_IMPORT_EMPS_JUST_NOW
prompt ====================================
prompt
create or replace view dukepu.v_import_emps_just_now as
select EMPS.JOB_NUMBER,
        EMPS.NAME,
        EMPS.Department,
        EMPS.Position,
        EMPS.Role,
        EMPS.Contact_Way,
        EMPS.UPDATE_TIME
 from employees EMPS INNER JOIN EMPLOYEES_TEMP EMPS_T
      ON EMPS.Job_Number = EMPS_T.Job_Number
 WHERE EMPS.Is_On_The_Job = 1
 ORDER BY EMPS.UPDATE_TIME DESC
/

prompt
prompt Creating view V_NO_TO_SUMMARIZE
prompt ===============================
prompt
create or replace view dukepu.v_no_to_summarize as
select '西安' as Company,
            '沣河景区' as Department,
            'B0001' as Sequence_number,
            '郭筱萌' as Name,
            '女' as Sex,
            '19W2309' as Matching_coat,
            to_char(sysdate,'yyyy-MM-dd HH24:MI:SS') as Delivery_date,
            '34#' as Shirt_Shape,
            -2.0 as d_l,
            59.0 as o_1,
            1.0 as d_c,
            91.0 as o_c,
            0 as d_sw,
            38.0 as o_sw,
            -6.0 as d_mw,
            76.0 as o_mw,
            -1.0 as d_sl,
            54.0 as o_sl,
            1.0 as d_lh,
            95.0 as o_lh
       from dual
/

prompt
prompt Creating view V_PRODUCTS_COST
prompt =============================
prompt
create or replace view dukepu.v_products_cost as
select seq,
       PRODUCTS_NAME,
       summary_process,
       specific_process,
       man_hours,
       labour_cost,
       ROUND(man_hours * labour_cost,5) AS process_cost,   ---每道工序的造价
       supplier,
       update_time
from products_cost
/

prompt
prompt Creating view V_PRODUCTS_COST_EACH_PORT
prompt =======================================
prompt
create or replace view dukepu.v_products_cost_each_port as
select seq_p_C_Record,
                 product_name,
                 summary_process,
                 specific_Process,
                 specific_each_process,
                 man_hours,
                 amount,
                 each_cost,
                 final_labour_cost
          from Products_Cost
/

prompt
prompt Creating view V_PRODUCTS_COST_SUMMARY
prompt =====================================
prompt
create or replace view dukepu.v_products_cost_summary as
select Product_Name,
         SUM(Man_Hours) AS total_man_hours,
         SUM(Labour_Cost) AS total_labour_cost,
         Supplier,
         Max(update_time) AS latest_update_time
  from Products_Cost
  group by Product_Name,Supplier
  ORDER BY NLSSORT(PRODUCT_NAME,'NLS_SORT= SCHINESE_PINYIN_M') ASC
/

prompt
prompt Creating view V_PRODUCTS_RECORD
prompt ===============================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_PRODUCTS_RECORD AS
SELECT
         REPORT_DEPT,
         DEPT,
         NAME,
         Products_Name,
         SUMMARY_PROCESS,
         SPECIFIC_PROCESS,
         MAN_HOURS,
         QUANTITIES,
         SHEET_NAME,
         TO_CHAR(REPORT_SPECIFIC_MONTH,'yyyy-MM') AS REPORT_SPECIFIC_MONTH,
         UPDATE_TIME,
         FILE_NAME
  FROM PRODUCTS_RECORD
/

prompt
prompt Creating view V_PRODUCTS_RECORD_CHINESE
prompt =======================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_PRODUCTS_RECORD_CHINESE AS
SELECT
         REPORT_DEPT AS "报表部门",
         DEPT AS "部门",
         NAME AS "姓名",
         Products_Name AS "产品名",
         SUMMARY_PROCESS AS "概要工序",
         SPECIFIC_PROCESS AS "指定工序",
         MAN_HOURS AS "工时",
         QUANTITIES AS "数量",
         SHEET_NAME AS "表格名",
         TO_CHAR(REPORT_SPECIFIC_MONTH,'yyyy-MM') AS "报表日期",
         UPDATE_TIME AS "更新日期",
         FILE_NAME AS "文件名"
  FROM PRODUCTS_RECORD
/

prompt
prompt Creating view V_P_C
prompt ===================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_P_C AS
SELECT SEQ,
        NVL(SUMMARY_PROCESS,'NULL') Summary_P,
         SPECIFIC_PROCESS,
         MAN_HOURS,
         LABOUR_COST,
         SUPPLIER,
         UPDATE_TIME,
         PRODUCTS_NAME
  FROM PRODUCTS_COST
/

prompt
prompt Creating view V_P_C_S
prompt =====================
prompt
create or replace view dukepu.v_p_c_s as
SELeCT CASE GROUPING(SUMMARY_PROCESS)
                    WHEN 1 THEN N'ALL SUMMARY PROCESS'
                         ELSE SUMMARY_PROCESS
                    END SUMMARY_PROCESS,
               CASE GROUPING(SPECIFIC_PROCESS)
                    WHEN 1 THEN N'ALL SPECIFIC_PROCESS'
                         ELSE SPECIFIC_PROCESS
                    END SPECIFIC_PROCESS,
               ROUND(SUM(PROCESS_COST),3) AS PROCESS_COST
        FROM V_PRODUCTS_COST
        GROUP BY ROLLUP(PRODUCTS_NAME,SUMMARY_PROCESS,SPECIFIC_PROCESS)
        ORDER BY SPECIFIC_PROCESS DESC,SUMMARY_PROCESS DESC
/

prompt
prompt Creating view V_P_C_SUMMARY
prompt ===========================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_P_C_SUMMARY AS
SELECT SUMMARY_PROCESS,Specific_PROCESS,ROUND(SUM(PROCESS_COST),2) AS PROCESS_COST
       FROM v_Products_Cost
       GROUP BY ROLLUP(SUMMARY_PROCESS,Specific_Process)
       ORDER BY SUMMARY_PROCESS ASC
/

prompt
prompt Creating view V_P_C_SUMMARY_CHINESE
prompt ===================================
prompt
create or replace view dukepu.v_p_c_summary_chinese as
select Product_Name AS "成衣名称",
         SUM(Man_Hours) AS "总工时",
         SUM(Labour_Cost) AS "总工价",
         Supplier AS "提供者",
         Max(update_time) AS "最近更新时间"
  from Products_Cost
  group by Product_Name,Supplier
  ORDER BY NLSSORT(PRODUCT_NAME,'NLS_SORT= SCHINESE_PINYIN_M') ASC
/

prompt
prompt Creating view V_P_C_S_WITH_PNAME
prompt ================================
prompt
create or replace view dukepu.v_p_c_s_with_pname as
SELeCT
        PRODUCTS_NAME,
          CASE GROUPING(SUMMARY_PROCESS)
                 WHEN 1 THEN N'ALL SUMMARY PROCESS'
               ELSE SUMMARY_PROCESS
          END SUMMARY_P,
          CASE GROUPING(SPECIFIC_PROCESS)
                 WHEN 1 THEN N'ALL SPECIFIC PROCESS'
               ELSE SPECIFIC_PROCESS
          END SPECIFIC_P,
          ROUND(SUM(PROCESS_COST),3) AS PROCESS_COST
        FROM V_PRODUCTS_COST
        GROUP BY PRODUCTS_NAME,
              ROLLUP(SUMMARY_PROCESS,SPECIFIC_PROCESS)
        ORDER BY INSTR(Specific_P,'A') ASC,SUMMARY_P DESC
/

prompt
prompt Creating view V_P_C_TEMPLATE
prompt ============================
prompt
create or replace view dukepu.v_p_c_template as
select 1 AS "序号",
       2 AS "部位",
       3 AS "工序",
       4 AS "工时",
       5 AS "单价"
from p_c_template
/

prompt
prompt Creating view V_SALARY_EMPS
prompt ===========================
prompt
create or replace view dukepu.v_salary_emps as
select distinct AR_JOB_NUMBER as "工号",
         name as "姓名",
         report_Dept as "报表部门",
         ar_job_number as "考勤工号",
         ar_name as "考勤姓名",
         dept as "部门",
         REPORT_SPECIFIC_MONTH AS "报表月份"
    from Products_Record
/

prompt
prompt Creating view V_SAL_OF_EMPS
prompt ===========================
prompt
create or replace view dukepu.v_sal_of_emps as
select
         D_C.JOB_NUMBER,
         D_C.NAME,
         D_C.Products_Name,
         D_C.SUMMARY_PROCESS,
         D_C.Specific_Process,
         D_C.MANUFACTURE_QUANTITIES,
         ROUND(p_c.man_hours,1) MAN_HOURS,
         p_c.LABOUR_COST,
         ROUND(D_C.MANUFACTURE_QUANTITIES*ROUND(p_c.LABOUR_COST*p_c.man_hours,5),3) AS Salaries,
         TRUNC(D_C.YIELDS_TIME) AS TRUNC_YIELDS_TIME,
         D_C.Update_Time D_C_UPDATETIME,
         P_C.UPDATE_TIME P_C_UPDATETIME,
         D_C.Submit_Person,
         p_c.supplier
    from Daily_Capacity D_C
                        INNER JOIN EMPLOYEES EMPS
                             ON D_C.Job_Number = EMPS.Job_Number
                        INNER JOIN products_cost p_c
                             ON (
                                   D_C.Specific_Process = p_c.Specific_Process
                                  AND D_C.Products_Name = P_C.Products_Name
                                  AND D_C.Summary_Process = P_C.Summary_Process
                                )
    WHERE EMPS.Is_On_The_Job = 1
    ORDER bY
          D_C.Job_Number DESC,
          TRUNC(YIELDS_TIME) DESC,
          D_C.Products_Name dESC,
          D_C.Summary_Process DESC,
          D_C.Specific_Process DESC
/

prompt
prompt Creating view V_SAME_COMPONENT_OF_GARMENT
prompt =========================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_SAME_COMPONENT_OF_GARMENT AS
SELECT row_number() over(partition by products_name,summary_process,garment_component order by products_name,summary_process) row_ID,
                           products_Name,
                           summary_Process,
                           garment_Component
                    FROM
                    (
                      SELECT Products_Name,
                             Summary_Process,
                             MAX(specific_process_Spliced) AS garment_Component
                      FROM(
                            select products_name,
                                    summary_process,
                                    wm_concat(to_char(specific_process))
                                    over(partition by products_name,summary_process order by NLSSORT(Products_Name,'NLS_SORT= SCHINESE_PINYIN_M') ASC,
                                                   NLSSORT(summary_process,'NLS_SORT= SCHINESE_PINYIN_M') ASC,
                                                   NLSSORT(specific_process,'NLS_SORT= SCHINESE_PINYIN_M') ASC) specific_process_Spliced
                            FROM Products_Cost
                      ) Temp
                      GROUP BY Products_Name,
                               Summary_Process
                     ) T
                      order by NLSSORT(Products_Name,'NLS_SORT= SCHINESE_PINYIN_M') ASC,
                               NLSSORT(summary_process,'NLS_SORT= SCHINESE_PINYIN_M') ASC,
                               NLSSORT(GARMENT_COMPONENT,'NLS_SORT= SCHINESE_PINYIN_M') ASC
/

prompt
prompt Creating view V_SAME_PROCESS
prompt ============================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_SAME_PROCESS AS
SELECT T.Summary_Process AS "部位",
          T.Specific_Process AS "指定工序",
          T.count_num AS "出现次数",
          T.Concatenated_M_H_AND_L_C AS "工时_单价",
          T.belongToPN AS "所属成衣"
   FROM
  (
    SELECT    P_C.Summary_Process,
              P_C.Specific_Process,
              wm_concat(P_C.Man_Hours||'_'||trim(TO_CHAR(P_C.Labour_Cost,'0.999'))) AS Concatenated_M_H_AND_L_C,
              wm_concat(TO_CHAR(P_C.products_Name)) AS belongToPN,
              wm_concat(P_C.seq_P_C_Record) seq_p_c_record_concat,
              CAST(substr(wm_concat(P_C.seq_P_C_Record),1,instr(wm_concat(P_C.seq_P_C_Record),',')-1) AS INT) min_SEQ_of_group,
               count(1) as count_num
    FROM
    (
       select row_number() over(partition by summary_Process,specific_process
                                         order by  NLSSORT(summary_Process,'NLS_SORT= SCHINESE_PINYIN_M') ASC,
                                               NLSSORT(specific_process,'NLS_SORT= SCHINESE_PINYIN_M') ASC) row_ID,
             summary_process,
             specific_process
       from Products_Cost
     ) TEMP INNER JOIN Products_COST P_C
       ON (
             TEMP.SUMMARY_PROCESS = P_C.SUMMARY_PROCESS
            AND TEMP.SPECIFIC_PROCESS = P_C.Specific_Process
            )
     WHERE TEMP.row_ID !=1
     GROUP BY P_C.Summary_Process,
              P_C.Specific_Process
   ) T
   WHERE T.count_num != 1
   ORDER BY  T.min_SEQ_of_group asc,
             NLSSORT(T.Summary_process,'NLS_SORT = SCHINESE_PINYIN_M') ASC,
             NLSSORT(T.SPECIFIC_PROCESS,'NLS_SORT = SCHINESE_PINYIN_M') ASC,
             T.Concatenated_M_H_AND_L_C ASC
/

prompt
prompt Creating view V_SAME_PROCESS_AND_MAN_HOURS
prompt ==========================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_SAME_PROCESS_AND_MAN_HOURS AS
SELECT summary_process AS "部位",
         Specific_Process AS "具体工序",
         Man_Hours AS "工时",
         Labour_Cost AS "单价",
         Count_Num AS "出现次数",
         belongToPN AS "所属成衣"
  FROM
  (
      select P_C.summary_process,
             P_C.specific_process,
             P_C.Man_Hours,
             P_C.Labour_Cost,
             count(1) AS count_num,
             wm_concat(TO_CHAR(P_C.products_Name)) AS belongToPN,
             wm_concat(P_C.seq_P_C_Record) seq_p_c_record_concat,
             CAST(substr(wm_concat(P_C.seq_P_C_Record),1,instr(wm_concat(P_C.seq_P_C_Record),',')-1) AS INT) min_SEQ_of_group
      from  Products_Cost P_C
      group by P_C.summary_process,
               P_C.specific_process,
               P_C.Man_Hours,
               P_C.Labour_Cost
      order by min_SEQ_of_group asc,
            NLSSORT(Summary_process,'NLS_SORT = SCHINESE_PINYIN_M') ASC,
            NLSSORT(SPECIFIC_PROCESS,'NLS_SORT = SCHINESE_PINYIN_M') ASC,
            Man_hours ASC,
            LABOUR_COST ASC
   )
   TEMP
   WHERE Count_NUM !=1
/

prompt
prompt Creating view V_SCATTERED_RECORD
prompt ================================
prompt
create or replace view dukepu.v_scattered_record as
select
       report_dept,
        dept,
        name,
        particulars,
        labour_cost,
        quantities,
        total_hours,
        aggregate_amount,
        sheet_name,
        report_specific_month,
        update_time,
        file_name
from Scattered_record
/

prompt
prompt Creating view V_SCATTERED_RECORD_CHINESE
prompt ========================================
prompt
create or replace view dukepu.v_scattered_record_chinese as
select
       report_dept AS "报表部门",
        dept AS "部门",
        name AS "姓名",
        particulars AS "事由",
        labour_cost AS "单价",
        quantities AS "数量",
        total_hours AS "总工时",
        aggregate_amount AS "金额",
        sheet_name AS "表格名",
        report_specific_month AS "指定月份",
        update_time AS "更新时间",
        file_name AS "文件名"
from Scattered_record
/

prompt
prompt Creating view V_WORK_SCHEDULE
prompt =============================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_WORK_SCHEDULE AS
SELECT  DEPT,
          WORK_AND_REST_DATE,
          SUBSTR(TO_CHAR(ON_Duty_Time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS ON_Duty_Time,
          SUBSTR(TO_CHAR(OFF_Duty_Time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS OFF_Duty_Time,
          (
            CASE
            WHEN WORK_OR_REST =1 THEN N'工作'
            ELSE N'休息'
            END
          ) AS Work_OR_REST,
          FP_NUMBER,
          REST_NUMBER
  FROM Work_Schedule
  ORDER BY WORK_AND_REST_DATE ASC,
  DEPT ASC
/

prompt
prompt Creating view V_WORK_SCHEDULE_CH
prompt ================================
prompt
CREATE OR REPLACE VIEW DUKEPU.V_WORK_SCHEDULE_CH AS
SELECT  DEPT AS "部门",
          WORK_AND_REST_DATE AS "日期",
          SUBSTR(TO_CHAR(ON_Duty_Time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS "上班时间",
          SUBSTR(TO_CHAR(OFF_Duty_Time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS "下班时间",
          (
            CASE
            WHEN WORK_OR_REST =1 THEN N'工作'
            ELSE N'休息'
            END
          ) AS "工作/休息",
          FP_NUMBER AS "按指纹人数",
          REST_NUMBER AS "休息人数"
  FROM Work_Schedule
  ORDER BY "日期" ASC,
  "部门" ASC
/

prompt
prompt Creating view V_YIELDS_WITH_DEPTS
prompt =================================
prompt
create or replace view dukepu.v_yields_with_depts as
select
         D_C.JOB_NUMBER,
         D_C.NAME,
         EMPS.Department,
         D_C.Products_Name,
         D_C.SUMMARY_PROCESS,
         D_C.Specific_Process,
         D_C.MANUFACTURE_QUANTITIES,
         TRUNC(D_C.YIELDS_TIME) YIELDS_DATE,
         D_C.Update_Time D_C_UPDATETIME,
         D_C.Submit_Person
    FROM Daily_Capacity D_C
                        INNER JOIN EMPLOYEES EMPS
                             ON D_C.Job_Number = EMPS.Job_Number
    WHERE EMPS.Is_On_The_Job = 1
    ORDER bY
          EMPS.Department DESC,
          D_C.Job_Number DESC,
          TRUNC(YIELDS_TIME) DESC,
          D_C.Products_Name dESC,
          D_C.Summary_Process DESC,
          D_C.Specific_Process DESC
/

prompt
prompt Creating package BODIES
prompt =======================
prompt
create or replace package dukepu.bodies PKG_Import_AR_To_P_Table is
  function import_AR_To_Preparative_Table(
                           v_start_date_str varchar2,
                           v_end_date_str varchar2,
                           v_tabulation_time_str varchar2,
                           v_fingerprint_date_str varchar2,
                           v_job_number varchar2,
                           v_name       nvarchar2,
                           v_dept       nvarchar2,
                           v_fpt_first_time_str       varchar2,
                           v_fpt_last_time_str        varchar2,
                           v_file_path                nvarchar2,
                           v_random_str               varchar2
                                   ) return int;
                                   
          
end PKG_Import_AR_To_P_Table;
/

prompt
prompt Creating package GETHZPY
prompt ========================
prompt
create or replace package dukepu.GetHZPY is

  -- Author  : ADMINISTRATOR
  -- Created : 2006-10-8 上午 11:51:16
  -- Purpose : 获得汉字拼音编码

  -- Public type declarations
  TYPE THZPY_LIST is VARRAY (526) OF  VARCHAR2(6);
  TYPE TROMA_NUM_LIST is VARRAY (94) OF  VARCHAR2(2);
  TYPE TGREECE_ALPHABET_LIST is VARRAY (24) OF  VARCHAR2(2);
  TYPE TPYIndex_191_list IS VARRAY(191) OF NUMBER;
  TYPE TPYIndex_list IS VARRAY(10) OF TPYIndex_191_list;

  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  --<VariableName> <Datatype>;

  -- Public function and procedure declarations
  function GetHzPY_by_index(p_PY_Index number) RETURN VARCHAR2;
  FUNCTION get_greece_alphabet_py(p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_roma_num_py(p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_01(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_02(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_03(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_04(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_05(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_06(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_07(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_08(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_09(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_10(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_11(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_12(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION get_py_index_13(p_Index1 NUMBER, p_Index NUMBER) RETURN NUMBER;
  FUNCTION GetHzFullPY(p_String varchar2) RETURN VARCHAR2;
  FUNCTION GetHzPYCAP(p_String varchar2) RETURN VARCHAR2;
end ;
/

prompt
prompt Creating package GET_AR_SUMMARY
prompt ===============================
prompt
create or replace package dukepu.get_AR_Summary is

  -- Author  : ADMIN
  -- Created : 2019-2-12 16:12:48
  -- Purpose :

  -- Public type declarations
  type t_cur is ref cursor;

   --获取某月某考勤机的员工数目
  function get_nums_of_staffs(v_attendance_machine_NO int,v_year_month_str varchar2) return int;

  --获取该月的考勤天数
  function get_nums_of_ar_days(v_attendance_machine_NO int,v_year_month_str varchar2) return int;

  function get_machines_no(v_year_month_str varchar2) return t_cur;
  -- Public function and procedure declarations
  --依据 yyyy-MM,卡机编号,例：1 返回  工号，姓名，部门的 游标
  function get_Statff_Info(v_attendance_machine_NO int,v_year_month_str varchar2) return t_cur;

  --依据 卡机编号,yyyy-MM  获取每个人 的 考勤 记录。
  function get_AR_Of_Each_Staff(v_attendance_machine_no int,v_year_month_str varchar2) return t_cur;

  ---依据 卡机编号,yyyy-MM 获取 每个人的   考勤 汇总
  function Get_AR_Summary(v_attendance_machine_no int,v_year_month_str varchar2) return t_cur;



end get_AR_Summary;
/

prompt
prompt Creating package IMPORT_PRODUCTS_COST
prompt =====================================
prompt
create or replace package dukepu.Import_Products_Cost is

  -- Author  : ADMIN
  -- Created : 2018-11-15 14:47:06
  -- Purpose : 导入成衣成本

  -- Public type declarations
--



  -- Public function and procedure declarations
   function ifExists(v_PN nvarchar2) return int ;
   function add(v_summary_process nvarchar2,
                v_specific_process nvarchar2,
                v_man_hours number,
                v_labour_cost number,
                v_supplier nvarchar2,
                v_products_name nvarchar2) return int;
end Import_Products_Cost;
/

prompt
prompt Creating package PKG_ANALYZE_AR
prompt ===============================
prompt
create or replace package dukepu.PKG_Analyze_AR is

  -- Author  : ADMIN
  -- Created : 2019-6-24 15:57:26
  -- Purpose : 分析考勤记录表

  -- Public type declarations
  type t_cur is ref cursor;
  --获取AR_Temp中拼音相同，但汉字不同的员工。
  function get_Same_PY_Of_Staffs return t_cur;

end PKG_Analyze_AR;
/

prompt
prompt Creating package PKG_ANALYZE_PRODUCTS_COST
prompt ==========================================
prompt
create or replace package dukepu.PKG_Analyze_Products_Cost is

  -- Author  : ADMINISTRATOR
  -- Created : 2019-07-23 14:38:53
  -- Purpose : 分析成衣成本数据
  
  --分析成衣成本数据.
  
  type t_cur is ref cursor;
  
 procedure analyze_P_C(v_product_name varchar2);
  


end PKG_Analyze_Products_Cost;
/

prompt
prompt Creating package PKG_AR
prompt =======================
prompt
create or replace package dukepu.pkg_ar is



       type cur_t is ref cursor;

procedure     get_ar_By_RandomStr(v_Random_Str varchar2,v_cur_ar out cur_t);

function     get_ar_By_Random_Str(v_Random_Str varchar2) return cur_t;

end pkg_ar;
/

prompt
prompt Creating package PKG_ARTIME
prompt ===========================
prompt
create or replace package dukepu.PKG_ARTime is

  -- Author  : ADMIN
  -- Created : 2018-8-17 9:17:07
  -- Purpose : 获取每个员工每天的考勤记录

  -- Public type declarations
  type t_cur is ref cursor;

  procedure GET_JN_And_AR_Day(v_job_number varchar2,v_ar_day varchar2,v_cur_result out t_cur);
  function GET_A_R_Time(v_job_number varchar2,v_ar_day varchar2) return t_cur;
end PKG_ARTime;
/

prompt
prompt Creating package PKG_AR_DETAIL
prompt ==============================
prompt
create or replace package dukepu.PKG_AR_DETAIL is

  -- Author  : ADMIN
  -- Created : 2018-8-17 13:47:51
  -- Purpose :

  -- Public type declarations
  type cur_t is ref cursor;

  procedure get_ar_detail(v_date_str varchar2,v_prefix_job_number varchar2,v_cur_result out cur_t);
  procedure get_ar_detail(v_date_str varchar2,v_cur_result out cur_t);
  function GET_OverTime_Of_RestDay(v_ar_jn varchar2,v_year_and_month varchar2) return integer;

function get_ar_detail_by_JN(v_job_number varchar2,v_year_and_month_str varchar2)  return cur_t;
 ---获取 该月考勤中的 所有 工号，姓名，部门
  function get_Staffs_Base_Info(v_year_and_month_str varchar2) return cur_t;

  ---获取 该月考勤中的 所有 工号，姓名，部门
  function get_Staffs_BI_by_AMFlag_YMStr(v_attendance_machine_flag varchar2,v_year_and_month_str varchar2) return cur_t;
end PKG_AR_Detail;
/

prompt
prompt Creating package PKG_AR_SUMMARY
prompt ===============================
prompt
create or replace package dukepu.pkg_ar_summary is

  -- Author  : ADMIN
  -- Created : 2019-6-6 15:23:50
  -- Purpose : 目的 获取 某月 考勤  汇总 记录 。

  -- Public type declarations
  type  t_cur is ref cursor;



  -- Public function and procedure declarations
  function getARSummary(v_year_and_month_str varchar2) return t_cur;

end pkg_ar_summary;
/

prompt
prompt Creating package PKG_EMPS
prompt =========================
prompt
create or replace package dukepu.pkg_emps is



       type cursor_emps_t is ref cursor;

procedure      proc_GetAllEmps(cur_set out cursor_emps_t);

end pkg_emps;
/

prompt
prompt Creating package PKG_GET_AR
prompt ===========================
prompt
create or replace package dukepu.PKG_GET_AR is

  -- Author  : ADMIN
  -- Created : 2019-1-23 15:05:06
  -- Purpose : 此包用于考勤管理

  -- Public type declarations
  type t_cur is ref cursor;

  -- Public variable declarations

  -- Public function and procedure declarations
  function get_AR_By_Date_Range(v_year_and_month_str varchar2) return t_cur;

  function get_AR_By_Dept_And_DR(v_dept nvarchar2,v_year_and_month_str varchar2) return t_cur;

--依据 姓名首汉字以及 日期 查询 Attendance_Record
  function get_AR_By_LN_And_DR(v_lastName nvarchar2,v_year_and_month_str varchar2) return t_cur;

  --依据工号，日期更新 latest_off_duty,OVERTIME_WORKDAY_ONE_MONTH,OVERTIME_RESTDAY_ONE_MONTH
  procedure Update_Summary(v_ar_job_number nvarchar2,v_year_and_month_str varchar2);

end PKG_GET_AR;
/

prompt
prompt Creating package PKG_GET_SUMMARY_OF_AR
prompt ======================================
prompt
create or replace package dukepu.PKG_Get_Summary_Of_AR is

  -- Author  : ADMIN
  -- Created : 2018-8-16 15:20:19
  -- Purpose : 获得每个员工当月的考勤汇总

  -- Public type declarations
  type cur_t is ref cursor;

  function get_summary_of_ar(v_job_number varchar2,v_name nvarchar2,v_year_and_month varchar2) return cur_t;

end PKG_Get_Summary_Of_AR;
/

prompt
prompt Creating package PKG_IMPORT_AR
prompt ==============================
prompt
create or replace package dukepu.PKG_Import_AR is
  function import_AR(
                           v_start_date_str varchar2,
                           v_end_date_str varchar2,
                           v_tabulation_time_str varchar2,
                           v_fingerprint_date_str varchar2,
                           v_job_number varchar2,
                           v_name       nvarchar2,
                           v_dept       nvarchar2,
                           v_fpt_first_time_str       varchar2,
                           v_fpt_last_time_str        varchar2,
                           v_file_path                nvarchar2,
                           v_random_str               varchar2
                                   ) return int;
end PKG_Import_AR;
/

prompt
prompt Creating package PKG_IMPORT_AR_TO_P_TABLE
prompt =========================================
prompt
create or replace package dukepu.PKG_Import_AR_To_P_Table is
  function import_AR_To_Preparative_Table(
                           v_start_date_str varchar2,
                           v_end_date_str varchar2,
                           v_tabulation_time_str varchar2,
                           v_fingerprint_date_str varchar2,
                           v_job_number varchar2,
                           v_name       nvarchar2,
                           v_dept       nvarchar2,
                           v_fpt_first_time_str       varchar2,
                           v_fpt_last_time_str        varchar2,
                           v_file_path                nvarchar2,
                           v_random_str               varchar2
                                   ) return int;
                                   
          
end PKG_Import_AR_To_P_Table;
/

prompt
prompt Creating package PKG_REST_DAY
prompt =============================
prompt
create or replace package dukepu.PKG_Rest_Day is

  -- Author  : ADMIN
  -- Created : 2019-5-14 16:31:59
  -- Purpose : 生成带薪的加班日

  -- Public type declarations
  type t_cur is ref cursor;



  -- Public function and procedure declarations
  function generate_rest_day(v_name nvarchar2,v_year_and_month varchar2) return t_cur;

end PKG_Rest_Day;
/

prompt
prompt Creating package PKG_SALS_REPORT
prompt ================================
prompt
create or replace package dukepu.PKG_Sals_Report as

  -- Author  : ADMIN
  -- Created : 2019-3-20 15:56:23
  -- Purpose : 用于工资报表导出

  -- Public type declarations
  type t_cur is ref cursor;

  -- Public function and procedure declarations
  function getAR(v_dept nvarchar2,v_year_and_month_str varchar2)  return t_cur;

  function getEarningOfProducts(v_report_dept nvarchar2,v_pn nvarchar2,v_dept nvarchar2,v_name nvarchar2,v_report_specific_month varchar2) return number;

  function getEarningOfScatteredRecord(v_report_specific_month varchar2,v_dept nvarchar2,v_name nvarchar2) return number;


end PKG_Sals_Report;
/

prompt
prompt Creating package PKG_TO_EXPORT_AR_SUMMARY
prompt =========================================
prompt
create or replace package dukepu.PKG_TO_Export_AR_Summary is

  -- Author  : ADMIN
  -- Created : 2019-6-4 8:46:52
  -- Purpose : 导出 AR Summary

  -- Public type declarations
  type t_cur is ref cursor;

  ---保存 AR至  Attendance_Record_Summary,异机同名 汇总 。
  procedure Save_AR_To_Summary_Table(v_year_and_month_str varchar2) ;

end PKG_TO_Export_AR_Summary;
/

prompt
prompt Creating package PKG_TO_EXPORT_FROM_A_R_SUMMARY
prompt ===============================================
prompt
create or replace package dukepu.PKG_TO_Export_From_A_R_Summary is

  -- Author  : ADMIN
  -- Created : 2019-6-4 8:46:52
  -- Purpose : 导出 AR Summary

  -- Public type declarations
  type t_cur is ref cursor;

  ---保存 AR至  Attendance_Record_Summary,异机同名 汇总 。
  procedure Save_AR_To_Summary_Table(v_year_and_month_str varchar2) ;
 function get_summary_of_A_R_Summary(v_job_number varchar2,v_year_and_month varchar2) return t_cur;
 procedure GET_A_R_Time(v_job_number varchar2,v_ar_day varchar2, v_cur_result out t_cur) ;
end PKG_TO_Export_From_A_R_Summary;
/

prompt
prompt Creating package SHOW_PRODUCTS_COST
prompt ===================================
prompt
create or replace package dukepu.Show_Products_Cost is

  -- Author  : ADMIN
  -- Created : 2018-11-14 14:06:57
  -- Purpose : 显示 成衣 造价

  -- Public type declarations
  type cur_t is ref cursor;

  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  --<VariableName> <Datatype>;

  -- Public function and procedure declarations
  function getProductsCostDetail(v_PN nvarchar2) return cur_t;
  function getAllProductsCostSummary return cur_t;
  function get_P_C_Summary_To_Export(v_PN nvarchar2) return cur_t;
  --获取 Products_Cost中的 Products_Name,Summary_Process,Specific_Process
  function get_P_C_Info_To_Piecework(v_PN nvarchar2) return cur_t;
  
  --获取每部分的工价信息. 汇总字段中 包含数量.
  function get_P_C_Summary_By_Each_Part(v_PN nvarchar2)return cur_t;
  
end Show_Products_Cost;
/

prompt
prompt Creating package SHOW_SALARY_EMPS
prompt =================================
prompt
create or replace package dukepu.Show_Salary_Emps is

  -- Author  : ADMIN
  -- Created : 2018-11-13 9:28:22
  -- Purpose : 获取 计件制  报表  提交 的  员工  信息

  -- Public type declarations
  type cur_t is ref cursor;

  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  --<VariableName> <Datatype>;

  -- Public function and procedure declarations
  --从  计件 报表 中  获取  上个 月 所有 员工 信息。
  function getAllEmpsOfLastMonth return cur_t;


end Show_Salary_Emps;
/

prompt
prompt Creating function CALC_COME_NUM
prompt ===============================
prompt
create or replace function dukepu.Calc_Come_Num(v_Job_Number INTEGER,v_FP_D date) return nvarchar2 as
  Result nvarchar2(100):='';

    type t_cur is ref cursor;
    v_AR_Cur t_cur;


    v_SEQ Attendance_Record.Seq%TYPE;                                      ---序号
    v_DEPT Attendance_Record.Dept%TYPE;                                    --部门
    v_Fpt_F_T Attendance_Record.Fpt_First_Time%type;                          --第一次刷卡时间
    v_FPT_L_T Attendance_Record.Fpt_Last_Time%type;                           --最后一次刷卡时间


    v_Come_Num            Attendance_Record.Come_Num%TYPE;                    ---实际出勤天数。
    v_COUNT               INT;

    v_ON_Duty_TIME        DATE;                                               ----正常上班点
    v_OFF_DUTY_TIME       DATE;                                               ---正常下班点
begin
  ----此函数用于统计出勤天数。
  ----先判断今天是否休息日，休息日： 不计算考勤。     请全天假,不计考勤,提前回来,要销假.
   ---年月 字符串.

     OPEN v_AR_Cur
     FOR
     SELECT
            SEQ,
            job_number,
            DEPT,
            FPT_First_Time,
            FPT_Last_Time,
            FINGERPrint_Date
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
           AND fingerprint_date= TO_DATE(v_FP_D,'YYYY-MM-DD')
     ORDER BY AR.fingerprint_date ASC,
           AR.DEPT ASC;

     LOOP
       FETCH v_AR_Cur INTO
                           v_SEQ,
                           v_Dept,
                           v_Fpt_F_T,
                           v_FPT_L_T;
       EXIT WHEN v_AR_Cur%NOTFOUND;
       ---今天未打卡
       IF (  v_Fpt_F_T IS NULL AND v_FPT_L_T IS NULL) THEN
          v_Come_Num:=0;
          return result;
       END IF;
        ---先判断是否休息日。
       SELECT COUNT(1) INTO v_Count
       FROM Work_Schedule WS
       WHERE WS.dept = v_Dept
       AND WS.work_and_rest_date = v_FP_D
       AND WS.Work_Or_Rest = 0;
       ---休息日
       IF(v_Count =1) THEN
          v_Come_Num:=0;
          return result;
       END IF;
       ---是否请假。
       ---获取正常班上班点。和下班点。
       --GET_DUTY_TIME(v_FP_D,v_ON_Duty_TIME,v_OFF_DUTY_TIME);
       ---如果请的是全天假.
       SELECT COUNT(1) INTO v_Count
       FROM ASK_FOR_LEAVE A_F_L
       WHERE A_F_L.JOB_NUMBER = v_JOB_NUMBER
       AND A_F_L.LEAVE_START_TIME <=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 08:30:00','YYYY-MM-DD HH24:MI:SS')
       AND A_F_L.LEAVE_END_TIME >=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')|| ' 17:00:00','YYYY-MM-DD HH24:MI:SS');

       ---全天假
       IF(v_COUNT >0) THEN
          v_Come_NUM:=0;
          return result;
       END IF;

       ---请的是早上假.
       SELECT COUNT(1) INTO v_Count
       FROM ASK_FOR_LEAVE A_F_L
       WHERE A_F_L.JOB_NUMBER = v_JOB_NUMBER
       AND A_F_L.LEAVE_START_TIME <=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 08:30:00','YYYY-MM-DD HH24:MI:SS')
       AND A_F_L.LEAVE_END_TIME >=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')|| ' 13:30:00','YYYY-MM-DD HH24:MI:SS');
       ---只要刷2次卡，就统计考勤半天
       IF(v_Count>0) THEN
           IF(v_Fpt_F_T IS NOT NULL AND v_FPT_L_T IS NOT NULL) THEN
               v_Come_NUM:=0.5;
               return result;
           END IF;
           --少刷一次不统计考勤。
           v_Come_NUM:=0;
           return result;
       END IF;
      ---请的是下午假
       SELECT COUNT(1) INTO v_Count
       FROM ASK_FOR_LEAVE A_F_L
       WHERE A_F_L.JOB_NUMBER = v_JOB_NUMBER
       AND A_F_L.LEAVE_START_TIME <=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 13:30:00','YYYY-MM-DD HH24:MI:SS')
       AND A_F_L.LEAVE_END_TIME >=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')|| ' 17:00:00','YYYY-MM-DD HH24:MI:SS');
       IF(v_COUNT>0) THEN
          ---只要刷2次卡，就统计考勤半天
          IF(v_Fpt_F_T IS NOT NULL AND v_FPT_L_T IS NOT NULL) THEN
              v_Come_NUM:=0.5;
              return result;
          END IF;
          --少刷一次卡不统计考勤
           v_Come_NUM:=0;
           return result;
       END IF;
       ---未请假。
       --第一次，最后由一次刷卡记录都不为空，记录1天
       IF(v_Fpt_F_T IS NOT NULL AND v_FPT_L_T IS NOT NULL) THEN
            v_Come_NUM:=1;
            return result;
       END IF;
       --只要有一次卡，未刷上不统计考勤。
       v_Come_Num:=0;
       --更新考勤记录。
       UPDATE Attendance_Record AR
       SET AR.Come_NUM = v_Come_Num
       WHERE AR.JOB_NUMBER = v_Come_Num
       AND AR.fingerprint_date = v_FP_D ;
     END LOOP;
     CLOSE  v_AR_Cur;
  return(Result);
end Calc_Come_Num;
/

prompt
prompt Creating function CALC_DELAY_TIME
prompt =================================
prompt
create or replace function dukepu.Calc_DELAY_TIME(v_Job_Number INTEGER,v_FP_D date) return nvarchar2 as
       ----计算延时-----
  Result nvarchar2(100):='';

    type t_cur is ref cursor;
    v_AR_Cur t_cur;


    v_SEQ Attendance_Record.Seq%TYPE;                                      ---序号
    v_DEPT Attendance_Record.Dept%TYPE;                                    --部门
    v_Fpt_F_T Attendance_Record.Fpt_First_Time%type;                          --第一次刷卡时间
    v_FPT_L_T Attendance_Record.Fpt_Last_Time%type;                           --最后一次刷卡时间


    v_DELAY_TIME           Attendance_Record.Delay_Time%TYPE;                    ---实际出勤天数。
    v_COUNT               INT;
    v_Come_NUM            INT;
begin
  ----此函数用于统计出勤天数。
  ----先判断今天是否休息日，休息日： 不计算考勤。     请全天假,不计考勤,提前回来,要销假.
   ---年月 字符串.

     OPEN v_AR_Cur
     FOR
     SELECT
            SEQ,
            job_number,
            DEPT,
            FPT_First_Time,
            FPT_Last_Time,
            FINGERPrint_Date
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
           AND fingerprint_date= TO_DATE(v_FP_D,'YYYY-MM-DD')
     ORDER BY AR.fingerprint_date ASC,
           AR.DEPT ASC;

     LOOP
       FETCH v_AR_Cur INTO
                           v_SEQ,
                           v_Dept,
                           v_Fpt_F_T,
                           v_FPT_L_T;
       EXIT WHEN v_AR_Cur%NOTFOUND;
       ---今天未打卡
       IF (v_Fpt_F_T IS NULL AND v_FPT_L_T IS NULL) THEN
          v_DELAY_TIME:=0;
          return result;
       END IF;
       ---先判断是否休息日。
       SELECT COUNT(1) INTO v_Count
       FROM Work_Schedule WS
       WHERE WS.dept = v_Dept
       AND WS.work_and_rest_date = v_FP_D
       AND WS.Work_Or_Rest = 0;
       ---休息日  ---不计算延时。
       IF(v_Count =1) THEN
          v_DELAY_TIME:=0;
          return result;
       END IF;
       ---是否请假。
       ---获取正常班上班点。和下班点。
       --GET_DUTY_TIME(v_FP_D,v_ON_Duty_TIME,v_OFF_DUTY_TIME);
       ---如果请的是全天假.
       SELECT COUNT(1) INTO v_Count
       FROM ASK_FOR_LEAVE A_F_L
       WHERE A_F_L.JOB_NUMBER = v_JOB_NUMBER
       AND A_F_L.LEAVE_START_TIME <=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 08:30:00','YYYY-MM-DD HH24:MI:SS')
       AND A_F_L.LEAVE_END_TIME >=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')|| ' 17:00:00','YYYY-MM-DD HH24:MI:SS');

       ---全天假
       IF(v_COUNT >0) THEN
          v_Come_NUM:=0;
          return result;
       END IF;

       ---请的是早上假.
       SELECT COUNT(1) INTO v_Count
       FROM ASK_FOR_LEAVE A_F_L
       WHERE A_F_L.JOB_NUMBER = v_JOB_NUMBER
       AND A_F_L.LEAVE_START_TIME <=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 08:30:00','YYYY-MM-DD HH24:MI:SS')
       AND A_F_L.LEAVE_END_TIME >=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')|| ' 13:30:00','YYYY-MM-DD HH24:MI:SS');
       ---只要刷2次卡，就统计考勤半天
       IF(v_Count>0) THEN
           IF(v_Fpt_F_T IS NOT NULL AND v_FPT_L_T IS NOT NULL) THEN
               v_Come_NUM:=0.5;
               return result;
           END IF;
           --少刷一次不统计考勤。
           v_Come_NUM:=0;
           return result;
       END IF;
      ---请的是下午假
       SELECT COUNT(1) INTO v_Count
       FROM ASK_FOR_LEAVE A_F_L
       WHERE A_F_L.JOB_NUMBER = v_JOB_NUMBER
       AND A_F_L.LEAVE_START_TIME <=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 13:30:00','YYYY-MM-DD HH24:MI:SS')
       AND A_F_L.LEAVE_END_TIME >=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')|| ' 17:00:00','YYYY-MM-DD HH24:MI:SS');
       IF(v_COUNT>0) THEN
          ---只要刷2次卡，就统计考勤半天
          IF(v_Fpt_F_T IS NOT NULL AND v_FPT_L_T IS NOT NULL) THEN
              v_Come_NUM:=0.5;
              return result;
          END IF;
          --少刷一次卡不统计考勤
           v_Come_NUM:=0;
           return result;
       END IF;
       ---未请假。
       --第一次，最后由一次刷卡记录都不为空，记录1天
       IF(v_Fpt_F_T IS NOT NULL AND v_FPT_L_T IS NOT NULL) THEN
            v_Come_NUM:=1;
            return result;
       END IF;
       --只要有一次卡，未刷上不统计考勤。
       v_Come_Num:=0;
       --更新考勤记录。
       UPDATE Attendance_Record AR
       SET AR.Come_NUM = v_Come_Num
       WHERE AR.JOB_NUMBER = v_Come_Num
       AND AR.fingerprint_date = v_FP_D ;
     END LOOP;
     CLOSE  v_AR_Cur;
  return(Result);
end Calc_DELAY_TIME;
/

prompt
prompt Creating function GET_DURATION_OF_OVERTIME_DAY_F
prompt ================================================
prompt
create or replace function dukepu.get_duration_of_overtime_day_f(v_Job_Number in varchar2,v_Year_And_Month in varchar2) return int AS
       --计算 休息日的 加班时长
       type t_cur is ref cursor;
       day_cur t_cur;
       v_year_month_day date;
       v_year_month_day_str varchar2(20);
       --正常下班时间
       v_normal_off_duty_time date;
       --正常上班时间
       v_normal_on_duty_time date;
       --正午时刻
       v_highnoon_time       date;
       --上班时间
       v_fpt_first_time date;
        --下班时间
       v_fpt_last_time date;
       v_Rest_Day_Time_Temp INT:=0;

       --最晚 下班时间
       v_latest_off_duty_time date;

       v_duration_of_days_of_overtime int;

begin
     v_duration_of_days_of_overtime:=0;
     ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,    ---指纹日期
            to_char(FingerPrint_DATE,'yyyy-MM-dd'),
            AR.Fpt_First_Time,
            AR.Fpt_Last_Time                        ---最后一次指纹时间。
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'YYYY-MM')
     AND NOT (AR.Fpt_First_Time IS NULL AND AR.Fpt_Last_Time IS NULL)
     AND FINGERPrint_DATE =ANY(
         SELECT REST_Day
         FROM Rest_Day
         WHERE trunc(fingerprint_date,'MM') = TO_DATE(v_year_and_month,'YYYY-MM')
     );
     LOOP
         <<NEXT>>
         NULL;
         FETCH day_cur INTO v_year_month_day,
                            v_year_month_day_str,
                            v_fpt_first_time,
                            v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;
         v_latest_off_duty_time:=to_date(v_year_month_day_str || ' 23:59:59','yyyy-MM-dd hh24:mi:ss');
         IF(v_fpt_first_time is NULL AND v_fpt_last_time is not null) THEN
            v_fpt_first_time:=v_fpt_last_time -4/24;
            v_Rest_Day_Time_Temp:=round((v_fpt_last_time- v_fpt_first_time)*24*60);
            GOTO LeiJia;
         END IF;
         IF(v_fpt_first_time is NOT NULL AND v_fpt_last_time IS NULL) THEN
            v_fpt_last_time:=v_fpt_first_time+4/24;
            --不能大于凌晨.
            if(v_fpt_last_time>v_latest_off_duty_time) then
               v_fpt_last_time:= v_latest_off_duty_time;
            end if;
            v_Rest_Day_Time_Temp:=round((v_fpt_last_time- v_fpt_first_time)*24*60);
            GOTO LeiJia;
         END IF;

         ---设定 正常 下班时间 。
         v_normal_off_duty_time:=to_date(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd hh24:mi:ss');
         v_normal_on_duty_time:=to_date(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd hh24:mi:ss');
         v_highnoon_time:=to_date(v_year_month_day_str|| ' 12:00:00','yyyy-MM-dd hh24:mi:ss');
         /*
         ---若加班起始时间晚于8:00，下班时间晚于17:00
         IF(v_fpt_first_time>=v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              ---加班日工作时长为： 17:00-  加班起始时间
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_fpt_first_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_normal_on_duty_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time <v_normal_off_duty_time) THEN
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_normal_on_duty_time)*24*60);
         ELSE
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_fpt_first_time)*24*60);
         END IF;*/
         --工作 时长。
         if(v_fpt_first_time<= v_normal_on_duty_time) then
               v_fpt_first_time:=v_normal_on_duty_time;
         end if;
         v_Rest_Day_Time_Temp:=round((v_fpt_last_time- v_fpt_first_time)*24*60);
         --跨越正午时刻，总时间减去1小时。
         IF(v_fpt_first_time <=v_highnoon_time AND v_fpt_last_time >=v_highnoon_time) THEN
              v_Rest_Day_Time_Temp := v_Rest_Day_Time_Temp -1*60;
         END IF;

         IF(v_Rest_Day_Time_Temp<0) THEN
             v_Rest_Day_Time_Temp:=0 ;
         END IF;

         <<LeiJia>>
         v_duration_of_days_of_overtime:= v_duration_of_days_of_overtime +FLOOR(v_Rest_Day_Time_Temp/30) * 0.5;


     END LOOP;
     close day_cur;
     return v_duration_of_days_of_overtime;

end get_duration_of_overtime_day_f;
/

prompt
prompt Creating function GET_DUTY_TIME
prompt ===============================
prompt
create or replace function dukepu.GET_Duty_TIME(v_FP_D in date,v_ON_Duty_TIME OUT DATE,v_Off_Duty_Time OUT DATE) return int as
  Result int;
         ---公司总人数
         v_Total_Num      INT;
         ---7:30-8:00上班总人数
         v_Eight_Clock_on_Duty_Num   INT;
         ---8:00 --8:30  上班总人数.
         v_Eight_And_Half_an_hour_ON INT;
         --13:30         ---上班总人数.
         v_thirteen_And_Half_An_Hour_ON INT;
         ---12:00        ---下班人数
         v_twelve_Off_Duty_Num INT;
         --17:00               --- 17:00下班人数
         v_seventeen_Off_Duty_Num INT;


         v_TIMEPOINT temp_For_Duty_Num.Timepoint%TYPE;

begin

   ----获取公司总人数.
       SELeCT COUNT(1) INTO v_Total_Num
          FROM
          (
            SELECT DISTINCT(JOB_NUMBER) JOB_NUMBER
            FROM Attendance_Record
            WHERE TRUNC(FingerPrint_DATE,'MM') = TRUNC(v_FP_D,'MM')
            ORDER BY JOB_NUMBER ASC
          ) TEMP;

        DELETE FROM temp_for_duty_num;

        ---7:30 - 8:00上班人数.
        SELECT COUNT(1) INTO v_Eight_Clock_on_Duty_Num
        FROM Attendance_Record AR
        WHERE AR.FINGERPRINT_DATE = v_FP_D
        AND AR.FPT_FIRST_TIME BETWEEN TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 07:30:00','YYYY-MM-DD HH24:MI:SS')
        AND TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 08:00:00','YYYY-MM-DD HH24:MI:SS');



        INSERT INTO temp_for_duty_num(category,TIMEPOINT,NUM) VALUES(
               'ON_DUTY',
               'Eight',
               v_Eight_Clock_on_Duty_Num
        );

        COMMIT;

     ---8:00 - 8:30 上班人数.
        SELECT COUNT(1) INTO v_Eight_And_Half_an_hour_ON
        FROM Attendance_Record AR
        WHERE AR.FINGERPRINT_DATE = v_FP_D
        AND AR.FPT_FIRST_TIME BETWEEN TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 08:00:00','YYYY-MM-DD HH24:MI:SS')
        AND TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 08:30:00','YYYY-MM-DD HH24:MI:SS');

          INSERT INTO temp_for_duty_num(category,TIMEPOINT,NUM) VALUES(
               'ON_DUTY',
               'Eight_And_Half_an_hour',
               v_Eight_And_Half_an_hour_ON
        );
        ---  12:00--  13:30  上班人数.  目的: 按13:30算上班人数.
        SELECT COUNT(1) INTO v_thirteen_And_Half_An_Hour_ON
        FROM Attendance_Record AR
        WHERE AR.FINGERPRINT_DATE = v_FP_D
        AND AR.FPT_FIRST_TIME BETWEEN TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 12:00:00','YYYY-MM-DD HH24:MI:SS')
        AND TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 13:30:00','YYYY-MM-DD HH24:MI:SS');


        INSERT INTO temp_for_duty_num(category,TIMEPOINT,NUM) VALUES(
               'ON_DUTY',
               'thirteen_And_Half_An_Hour',
               v_thirteen_And_Half_An_Hour_ON
        );
             ---  12:00        ---下班人数  取12:00 -12:30  12:30-13:00  之间刷卡人数.
        SELECT COUNT(1) INTO v_twelve_Off_Duty_Num
        FROM Attendance_Record AR
        WHERE AR.FINGERPRINT_DATE = v_FP_D
        AND AR.FPT_LAST_TIME BETWEEN TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 12:00:00','YYYY-MM-DD HH24:MI:SS')
        AND TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 13:00:00','YYYY-MM-DD HH24:MI:SS');

        INSERT INTO temp_for_duty_num(category,TIMEPOINT,NUM) VALUES(
               'OFF_DUTY',
               'twelve',
               v_twelve_Off_Duty_Num
        );


        ---17:00  下班人数.
        SELECT COUNT(1) INTO v_seventeen_Off_Duty_Num
        FROM Attendance_Record AR
        WHERE AR.FINGERPRINT_DATE = v_FP_D
        AND AR.FPT_LAST_TIME >= TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 17:00:00','YYYY-MM-DD HH24:MI:SS');

         INSERT INTO temp_for_duty_num(category,TIMEPOINT,NUM) VALUES(
               'OFF_DUTY',
               'seventeen',
               v_seventeen_Off_Duty_Num
        );


        ---开始分析 .
        ---取出上班类型中,人数最大的时间
        SELECT TIMEPOINT INTO v_TIMEPOINT
        FROM temp_for_duty_num
        WHERE Category = 'ON_DUTY'
        AND NUM
        =(
          SELECT  MAX(NUM)
          FROM temp_for_duty_num
          WHERE Category = 'ON_DUTY'
        );
        ---获取其名称
        IF(v_TIMEPOINT = 'EIGHT') THEN
             v_ON_Duty_TIME:=TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 08:00:00','YYYY-MM-DD HH24:MI:SS');
             GOTO END_ON_DUTY;
        END IF;

        IF(v_TIMEPOINT = 'Eight_And_Half_an_hour') THEN
              v_ON_Duty_TIME:=TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 08:30:00','YYYY-MM-DD HH24:MI:SS');
              GOTO END_ON_DUTY;
        END IF;

        IF(v_TIMEPOINT = 'thirteen_And_Half_An_Hour') THEN
              v_ON_Duty_TIME:=TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 13:30:00','YYYY-MM-DD HH24:MI:SS');
              GOTO END_ON_DUTY;
        END IF;
        <<END_ON_DUTY>>
        NULL;
         ---下班分析 .
        ---取出上班类型中,人数最大的时间
        SELECT TIMEPOINT INTO v_TIMEPOINT
        FROM temp_for_duty_num
        WHERE Category = 'OFF_DUTY'
        AND NUM
        =(
          SELECT  MAX(NUM)
          FROM temp_for_duty_num
          WHERE Category = 'OFF_DUTY'
        );
          ---获取其名称
        IF(v_TIMEPOINT = 'twelve') THEN
             v_OFF_Duty_TIME:=TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 12:00:00','YYYY-MM-DD HH24:MI:SS');
             GOTO END_OFF_DUTY;
        END IF;
            ---获取其名称
        IF(v_TIMEPOINT = 'seventeen') THEN
             v_OFF_Duty_TIME:=TO_DATE(TO_CHAR(V_FP_D,'YYYY-MM-DD')|| ' 17:00:00','YYYY-MM-DD HH24:MI:SS');
             GOTO END_OFF_DUTY;
        END IF;
        <<END_OFF_DUTY>>


  return(Result);
end GET_Duty_TIME;
/

prompt
prompt Creating function GET_JOB_NUMBER_F
prompt ==================================
prompt
create or replace function dukepu.GET_JOB_NUMBER_F
return  VARCHAR2 AS
  Result VARCHAR2(10);
  v_Next_seq  INT;
  v_Count INT;
  str_Next_Seq VARCHAR2(10);
begin

  ---先从Employees_Temp中查看,有无工号记录.
  SELECT  COUNT(1) INTO v_Count
  FROM EMPLOYEES_TEMP E_T
  WHERE SUBSTR(JOB_NUMBER,1,6) = TO_CHAR(SYSDATE,'YYMMDD');

  IF(v_Count>0) THEN
     ---获取最大值
     SELECT MAX(SUBSTR(JOB_NUMBER,LENGTH(JOB_NUMBER)-2,3)) +1 INTO v_Next_seq
     FROM EMPLOYEES_TEMP
     WHERE JOB_NUMBER != 'admin'
     AND JOB_NUMBER != 'query'
     AND JOB_NUMBER != 'dyh'
     AND SUBSTR(JOB_NUMBER,1,6) = TO_CHAR(SYSDATE,'YYMMDD');
     str_Next_Seq:= CAST(v_Next_Seq AS VARCHAR2);
     SELECT TO_CHAR(SYSDATE,'YYMMDD') || LPAD(str_Next_Seq,3,'0') INTO Result
     FROM DUAL;
     RETURN RESULT;
  END IF;

-------从EMPLOYEES中获取最大值。

  SELECT Count(1) INTO v_Count
  FROM EMPLOYEES
  WHERE SUBSTR(JOB_NUMBER,1,6) = TO_CHAR(SYSDATE,'YYMMDD');

  IF(v_Count =0) THEN
             v_Next_Seq := 1;
  ELSE
      SELECT MAX(SUBSTR(JOB_NUMBER,LENGTH(JOB_NUMBER)-2,3)) +1 INTO v_Next_Seq
      FROM EMPLOYEES
      WHERE JOB_NUMBER != 'admin'
      AND JOB_NUMBER != 'query'
      AND JOB_NUMBER != 'dyh'
      AND SUBSTR(JOB_NUMBER,1,6) = TO_CHAR(SYSDATE,'YYMMDD');
  END IF;

  str_Next_Seq:= CAST(v_Next_Seq AS VARCHAR2);
  SELECT TO_CHAR(SYSDATE,'YYMMDD') || LPAD(str_Next_Seq,3,'0') INTO Result
  FROM DUAL;

  return(Result);
end GET_JOB_NUMBER_F;
/

prompt
prompt Creating function GET_OVERTIME_OF_RESTDAY
prompt =========================================
prompt
create or replace function dukepu.GET_OverTime_Of_RestDay(v_ar_jn varchar2,v_year_and_month varchar2) return integer is
  Result integer;
begin
     select FLOOR((fpt_last_time - (CASE  WHEN FPT_First_TIME <= TO_DATE(TO_CHAR(FPT_FIRST_TIME,'yyyy-MM-dd') || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')
                                THEN TO_DATE(TO_CHAR(FPT_FIRST_TIME,'yyyy-MM-dd') || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')
                                ELSE FPT_First_TIME
                                END))*24*60/30) * 0.5 -1 INTO Result
    from rest_day r_d inner join attendance_record ar
           on (r_d.rest_day = ar.fingerprint_date
               and not(ar.fpt_first_time is null and ar.fpt_last_time is  null))
    where ar.job_number = v_ar_jn
    and trunc(fingerprint_date,'MM') = to_date(v_year_and_month,'yyyy-MM');
  return(Result);
end GET_OverTime_Of_RestDay;
/

prompt
prompt Creating function GET_SUM_ASCII_STR
prompt ===================================
prompt
create or replace function dukepu.Get_Sum_Ascii_Str(Str in nvarchar2)
return number AS
  Result NUMBER :=0;
  LEN INT;    ----字符串的长度
  v_count INT :=0;

begin
     ---获取字符串的长度
     Len := LENGTH(str);

     LOOP
         v_count := v_count +1;

         RESULT := RESULT + ASCII(SUBSTR(Str,v_count,1));

         EXIT WHEN v_count = LEN;
     END LOOP;



  return(Result);


end Get_Sum_Ascii_Str;
/

prompt
prompt Creating function ISDATE
prompt ========================
prompt
create or replace function dukepu.isDate(dateStr varchar2,format varchar2)
return int AS
  p_date DATE;
  Result int;
begin

  SELECT TO_DATE(dateStr,format) INTO p_date
  FROM DUAL;

  Result:=1;

  RETURN Result;

  EXCEPTION
  WHEN OTHERS
  THEN

       RESULT:=0;
  return(Result);
end isDate;
/

prompt
prompt Creating function JUDGE_IF_RESTDAY
prompt ==================================
prompt
create or replace function dukepu.judge_If_RestDay(v_year_month_day varchar2) return int is
  ---大于99人，被认为是休息日。
  --返回1认为是休息日.
  ---返回0 认为是工作日。
  Result int;

begin
          SELECT COUNT(1) INTO Result
          FROM DUAL
          WHERE EXISTS(
                SELECT 1
                from Attendance_Record AR
                where (AR.Fpt_First_Time IS NOT NULL OR AR.Fpt_Last_Time IS NOT NULL)
                      AND trunc(AR.fingerprint_date,'DD') =to_date(v_year_Month_day,'yyyy-MM-dd')
                      having count(1) < 99
          );

  return(Result);
end judge_If_RestDay;
/

prompt
prompt Creating function SAVE_AR
prompt =========================
prompt
create or replace function dukepu.SAVE_AR(
                                     v_job_number       varchar2,
                                     v_name             nvarchar2,
                                     v_dept             nvarchar2,
                                     v_start_date varchar2,
                                     v_end_date   varchar2,
                                     v_tabulation_time varchar2,
                                     v_fingerPrint_date varchar2,
                                     v_fpt_first_time   varchar2,
                                     v_fpt_end_time     varchar2,
                                     v_sheet_name       nvarchar2,
                                     v_random_str       varchar2
                                    ) return int is
           v_Count INT:=0;
begin

                SELECT COUNT(1) INTO v_Count
                FROM Attendance_Record
                WHERE  JOB_NUMBER = v_job_number
                AND FingerPrint_Date = TO_DATE(v_fingerPrint_date,'yyyy-MM-dd');

                IF(v_Count = 0)
                THEN
                  INSERT /*+ append */ INTO Attendance_Record(
                         SEQ,
                         Start_Date,
                         End_Date,
                         Tabulation_Time,
                         FingerPrint_Date,
                         Job_Number,
                         Name,
                         Dept,
                         Sheet_Name,
                         FPT_First_Time,
                         FPT_Last_Time,
                        Random_Str
                  )
                  VALUES(
                        s_attendancerecord.Nextval,
                        TO_DATE(v_start_date,'yyyy-MM-dd'),
                        TO_DATE(v_end_date ,'yyyy-MM-dd'),
                        TO_DATE(v_tabulation_time,'yyyy-MM-dd'),
                         TO_DATE(v_fingerPrint_date,'yyyy-MM-dd'),
                         v_job_number,
                         v_name,
                         v_dept,
                         v_sheet_name,
                         TO_DATE(v_fpt_first_time,'yyyy-MM-dd HH24:MI'),
                         TO_DATE(v_fpt_end_time,'yyyy-MM-dd HH24:MI'),
                         v_random_str
                  );

                    RETURN v_count;
                END IF;


                UPDATE Attendance_Record
                    SET Start_Date =TO_DATE(v_start_date,'yyyy-MM-dd'),
                        END_DATE = TO_DATE(v_end_date,'yyyy-MM-dd'),
                        TABULATION_TIME =  TO_DATE(v_tabulation_time,'yyyy-MM-dd'),
                        DEPT =v_dept,
                        FPT_First_TIME = TO_DATE(v_fpt_first_time,'yyyy-MM-dd HH24:MI'),
                        FPT_LAST_TIME = TO_DATE(v_fpt_end_time,'yyyy-MM-dd HH24:MI'),
                        COME_LATE_NUM = 0,
                        LEAVE_EARLY_NUM = 0,
                         Sheet_Name = v_sheet_name,
                          Random_Str = v_random_str
                      WHERE JOB_NUMBER = v_job_number
                      AND NAME = v_name
                      AND FingerPrint_Date = TO_DATE(v_fingerPrint_date,'yyyy-MM-dd');

                      return v_count;

end SAVE_aR;
/

prompt
prompt Creating function SAVE_AR_FUNC
prompt ==============================
prompt
create or replace function dukepu.SAVE_AR_Func(
                                     v_job_number       varchar2,
                                     v_name             nvarchar2,
                                     v_dept             nvarchar2,
                                     v_start_date varchar2,
                                     v_end_date   varchar2,
                                     v_tabulation_time varchar2,
                                     v_fingerPrint_date varchar2,
                                     v_fpt_first_time   varchar2,
                                     v_fpt_end_time     varchar2,
                                     v_file_path        nvarchar2,
                                     v_sheet_name       nvarchar2,
                                     v_random_str       varchar2
                                    ) return int as
          -- v_Count INT:=0;
begin

                 ---在 导入时  以及 删除了 该 考勤机 对应的该月记录。
                /*
                SELECT COUNT(1) INTO v_Count
                FROM Attendance_Record
                WHERE  JOB_NUMBER = v_job_number
                AND FingerPrint_Date = TO_DATE(v_fingerPrint_date,'yyyy-MM-dd');

                IF(v_Count = 0)
                THEN
                  INSERT /*+ append */ /*INTO Attendance_Record(
                         SEQ,
                         Start_Date,
                         End_Date,
                         Tabulation_Time,
                         FingerPrint_Date,
                         Job_Number,
                         Name,
                         Dept,
                         Sheet_Name,
                         FPT_First_Time,
                         FPT_Last_Time,
                        Random_Str
                  )
                  VALUES(
                        s_attendancerecord.Nextval,
                        TO_DATE(v_start_date,'yyyy-MM-dd'),
                        TO_DATE(v_end_date ,'yyyy-MM-dd'),
                        TO_DATE(v_tabulation_time,'yyyy-MM-dd'),
                         TO_DATE(v_fingerPrint_date,'yyyy-MM-dd'),
                         v_job_number,
                         v_name,
                         v_dept,
                         v_sheet_name,
                         TO_DATE(v_fpt_first_time,'yyyy-MM-dd HH24:MI'),
                         TO_DATE(v_fpt_end_time,'yyyy-MM-dd HH24:MI'),
                         v_random_str
                  );

                    RETURN 1;
                END IF;


                UPDATE Attendance_Record
                    SET Start_Date =TO_DATE(v_start_date,'yyyy-MM-dd'),
                        END_DATE = TO_DATE(v_end_date,'yyyy-MM-dd'),
                        TABULATION_TIME =  TO_DATE(v_tabulation_time,'yyyy-MM-dd'),
                        DEPT =v_dept,
                        FPT_First_TIME = TO_DATE(v_fpt_first_time,'yyyy-MM-dd HH24:MI'),
                        FPT_LAST_TIME = TO_DATE(v_fpt_end_time,'yyyy-MM-dd HH24:MI'),
                        COME_LATE_NUM = 0,
                        LEAVE_EARLY_NUM = 0,
                         Sheet_Name = v_sheet_name,
                          Random_Str = v_random_str
                      WHERE JOB_NUMBER = v_job_number
                      AND NAME = v_name
                      AND FingerPrint_Date = TO_DATE(v_fingerPrint_date,'yyyy-MM-dd');
                      RETURN 1;
                      */

                       INSERT  INTO Attendance_Record(
                         SEQ,
                         Start_Date,
                         End_Date,
                         Tabulation_Time,
                         FingerPrint_Date,
                         Job_Number,
                         Name,
                         Dept,
                         file_path,
                         Sheet_Name,
                         FPT_First_Time,
                         FPT_Last_Time,
                        Random_Str
                  )
                  VALUES(
                        s_attendancerecord.Nextval,
                        TO_DATE(v_start_date,'yyyy-MM-dd'),
                        TO_DATE(v_end_date ,'yyyy-MM-dd'),
                        TO_DATE(v_tabulation_time,'yyyy-MM-dd'),
                         TO_DATE(v_fingerPrint_date,'yyyy-MM-dd'),
                         v_job_number,
                         v_name,
                         v_dept,
                         v_file_path,
                         v_sheet_name,
                         TO_DATE(v_fpt_first_time,'yyyy-MM-dd HH24:MI'),
                         TO_DATE(v_fpt_end_time,'yyyy-MM-dd HH24:MI'),
                         v_random_str
                  );

                  return 1;
EXCEPTION
         WHEN DUP_VAL_ON_INDEX THEN
              RETURN 0;
end SAVE_aR_Func;
/

prompt
prompt Creating procedure ANALYZE_AR
prompt =============================
prompt
create or replace procedure dukepu.Analyze_AR(v_Year_And_Month_Str VARCHAR2,v_Random_Str VARCHAR2,v_Flag out INTEGER) AS
       ---迟到,早退暂时改为统计为

     v_Count INT:=0;

     type t_Cursor is ref cursor;
     v_AR_Cur t_Cursor;

     v_SEQ    Attendance_Record.Seq%type;                 --序号.
     v_Job_Number Attendance_Record.Job_Number%type;                           --工号.
     v_Fpt_F_T Attendance_Record.Fpt_First_Time%type;                          --第一次刷卡时间
     v_FPT_L_T Attendance_Record.Fpt_Last_Time%type;                           --最后一次刷卡时间
     v_FP_D    Attendance_Record.Fingerprint_Date%type;                        ---刷卡日期.

     v_Dept    Work_Schedule.Dept%TYPE;             ---部门;



     v_PeaceTime_AM_ON_Duty_Time  DATE;   ---暂存早上时间 8:00;
     v_PeaceTime_AM_OFF_Duty_Time  DATE;  ---暂存早上下班时间 12:20
     v_PeaceTime_PM_ON_Duty_Time  DATE;   ---暂存下午上班时间 13:30;
     v_PeaceTime_PM_OFF_Duty_Time  DATE;     ---用于暂存下班时间 17:00。
     v_PeaceTime_AM_Back__D_T DATE;      ---用于暂存 请造假，12:40归来，计算饭补。


     v_Come_num       INTEGER;          ---出勤统计.
     v_Delay_Time     NUMBER;   ---暂存延时数值： 2.5小时。
     v_Come_Late_Num      NUMBER;   --暂存迟到数值：
     v_LEAVE_Early_Num     NUMBER;   --暂存早退数值; :0.5小时。
     v_meal_subsidy Attendance_Record.Meal_Subsidy%TYPE;      ---暂存餐补



     v_LEAVE_START_TIME  AsK_FOR_Leave.Leave_Start_Time%TYPE;                  ---请假起始时间
     v_LEAVE_END_TIME ASK_FOR_LEAVE.Leave_End_Time%TYPE;                       ---请假终止时间。
     V_ASK_FOR_LEAVE_TYPE Attendance_Record.Ask_For_Leave_Type%type;        ---请假类型:  早假,下午假,全天假.
     V_ASK_FOR_LEAVE_Days    Attendance_Record.Ask_For_Leave_Days%type;        ---请假天数： 1，0.5

     v_Subject varchar2(20):='Analyze_AR';


begin

     ----统计未刷卡.无论休息日还是上班日.
     UPDATE Attendance_Record AR
     SET AR.Not_Finger_Print = (
                                    CASE
                                      WHEN (AR.FPT_FIRST_TIME IS NULL AND AR.FPT_LAST_TIME IS NOT NULL) THEN
                                           1
                                      WHEN (AR.FPT_FIRST_TIME IS NOT NULL AND AR.FPT_LAST_TIME IS  NULL) THEN
                                           1
                                       ELSE
                                           NULL
                                 END
                              )
     WHERE TRUNC(AR.FingerPrint_Date,'MM') = TO_DATE(v_Year_And_Month_Str,'YYYY-MM');

     ---年月 字符串.
     OPEN v_AR_Cur
     FOR
     SELECT
            SEQ,
            job_number,
            DEPT,
            FPT_First_Time,
            FPT_Last_Time,
            FINGERPrint_Date
     FROM Attendance_Record AR
     WHERE TRUNC(fingerprint_date,'MM') = TO_DATE(v_Year_And_Month_Str,'YYYY-MM')
     ORDER BY AR.fingerprint_date ASC,
           AR.DEPT ASC;

     LOOP
         FETCH v_AR_Cur INTO
                             v_SEQ,
                             v_job_Number,
                             v_Dept,
                             v_Fpt_F_T,
                             v_FPT_L_T,
                             v_FP_D;
         EXIT WHEN v_AR_Cur%NOTFOUND;

         ----先判断有没有对应部门的 ----工作计划生成.
                  ---先判断是否休息日。
         SELECT COUNT(1) INTO v_Count
         FROM Work_Schedule WS
         WHERE NVL(WS.dept,'NULL') = v_Dept
         AND WS.work_and_rest_date = v_FP_D;
         IF(v_Count=0) THEN  ---休息。
            v_Flag:=0;
              ---保存信息到MESSAGE中.
              ---保存错误信息.
            INSERT INTO MSG(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            VALUES(
                   v_FP_D || '  '||v_Dept||'  :未生成工作计划!',
                   '0',
                   SYSDATE,
                   v_Subject,
                   v_Random_Str
            );
            return;
         END IF;


         v_PeaceTime_AM_ON_Duty_Time :=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 08:00:00','YYYY-MM-DD HH24:MI:SS');
         v_PeaceTime_AM_OFF_Duty_Time:=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 12:00:00','YYYY-MM-DD HH24:MI:SS');  ---下班时间计算为12:00
         v_PeaceTime_AM_Back__D_T :=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 12:40:00','YYYY-MM-DD HH24:MI:SS');
         v_PeaceTime_PM_ON_Duty_Time:=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 13:30:00','YYYY-MM-DD HH24:MI:SS');
         v_PeaceTime_PM_OFF_Duty_Time:= TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 17:00:00','YYYY-MM-DD HH24:MI:SS');

         ----------------计算出勤数--------  休息日不统计出勤,请假日不统计考勤------------
         ---请的全天假,当天不计考勤.
         SELECT COUNT(1) INTO v_Count
         FROM ASK_For_LEAVE A_F_L
         WHERE A_F_L.Job_Number = v_job_Number
         AND ( v_PeaceTime_PM_OFF_Duty_Time >= A_F_L.Leave_Start_Time
               AND v_PeaceTime_PM_OFF_Duty_Time <=A_F_L.Leave_End_Time
              );
         IF(v_Count=1) THEN
               v_Come_Num:=0;
               GOTO END_COME_NUM;
         END IF;
         ---请的上午假.


         ---先判断是否休息日。
         SELECT COUNT(1) INTO v_Count
         FROM Work_Schedule WS
         WHERE WS.dept = v_Dept
         AND WS.work_and_rest_date = v_FP_D
         AND WS.Work_Or_Rest = 1;
         IF(v_Count=1) THEN  ---工作
              IF(v_Fpt_F_T IS NULL AND v_FPT_L_T IS NULL) THEN
                 v_Come_Num:=0;
                 GOTO END_COME_NUM;
              END IF;
              v_Come_num:=1;
              GOTO END_COME_NUM;
         END IF;
         IF(v_Count=0) THEN  ---休息
              v_Come_Num:=0;
              GOTO END_COME_NUM;
         END IF;
         -----------------计算出勤数结束.------------------
         <<END_COME_NUM>>
         NULL;
         -------------------------------------延时--- 统计---------------------------------------
         ---未打下班卡，不计延时。
         IF v_FPT_L_T IS NULL THEN
            v_Delay_Time:=NULL;
            GOTO END_Delay_Time;
         END IF;
         ---判断是否请假中。
         SELECT COUNT(1) INTO v_Count
         FROM ASK_For_LEAVE A_F_L
         WHERE A_F_L.Job_Number = v_job_Number
         AND ( v_FPT_L_T >= A_F_L.Leave_Start_Time
               AND v_FPT_L_T <=A_F_L.Leave_End_Time
              );
         ---请假中.
         IF(v_Count=1) THEN
             v_Delay_Time:=NULL;
             GOTO END_Delay_Time;
         END IF;
         ---工作日，或自行加班日---
         IF(v_FPT_L_T<=v_PeaceTime_PM_OFF_Duty_Time) THEN   ---下班时间比17:00早。
            v_Delay_Time:=NULL;                     ---不计算延时。
         ELSE                                     -- 超出17:00计为延时
            ---延时
            v_Delay_Time:=TRUNC((v_FPT_L_T - v_PeaceTime_PM_OFF_Duty_Time)*24/0.5)*0.5;
         END IF;
         ----------------------------------------延时结束----------------------------------------------
         <<END_Delay_Time>>
         NULL;
         --- --------------------------------------计算迟到   --休假计算迟到-----------------------------------
         IF(v_Fpt_F_T IS NULL) THEN                           ---未打上班卡。
            v_Come_Late_Num:=NULL;
            GOTO END_COME_LATE;
         END IF;

         ---工作日。
         --判断当天有没有请假。
         SELECT COUNT(1) INTO v_Count
         FROM ASK_For_LEAVE A_F_L
         WHERE A_F_L.Job_Number = v_job_Number
         AND  v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
         IF(v_Count =0) THEN   ---正常班: 8:00之前签到。
            IF(v_Fpt_F_T <=v_PeaceTime_AM_ON_Duty_Time) THEN
                v_Come_Late_Num:=NULL;
                GOTO END_COME_LATE;
            END IF;
             ---迟到。
            IF(v_Fpt_F_T >v_PeaceTime_AM_ON_Duty_Time) THEN
                --v_Come_Late_Num:=ROUND((v_Fpt_F_T -v_PeaceTime_AM_ON_Duty_Time)*24*60);
                v_Come_Late_Num:=1;
                GOTO END_COME_LATE;
            END IF;
         END IF;
         ---已请假。
         SELECT
                  A_F_L.LEAVE_START_TIME,
                  A_F_L.Leave_End_Time
                INTO v_LEAVE_START_TIME,
                     v_LEAVE_END_TIME
                 FROM ASK_For_LEAVE A_F_L
                 WHERE A_F_L.Job_Number = v_job_Number
                 AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);

          IF(v_LEAVE_START_TIME <= v_PeaceTime_AM_ON_Duty_Time AND v_LEAVE_END_TIME <=v_PeaceTime_PM_ON_Duty_TIME) THEN  ---请了早上假。
             ---------假期中。第一次刷卡时间<=13:30-------------
             IF(v_Fpt_F_T <= v_PeaceTime_PM_ON_Duty_TIME) THEN
                  v_Come_Late_Num:=NULL;
                  GOTO END_COME_LATE;
             END IF;
             ---假期满后。第一次刷卡时间>13:30
             --v_Come_Late_Num:= ROUND((v_Fpt_F_T - v_PeaceTime_PM_ON_Duty_TIME) * 24 * 60);
             v_Come_Late_Num:=1;
             GOTO END_COME_LATE;
          END IF;
          ---请的是下午假期。
          IF(v_LEAVE_START_TIME >= v_PeaceTime_AM_OFF_Duty_Time) THEN      ---请的是下午假。
               IF(v_Fpt_F_T <= v_PeaceTime_AM_ON_Duty_TIME) THEN   ---正常出勤。
                  v_Come_Late_Num:=NULL;
                  GOTO END_COME_LATE;
               END IF;
             ----迟到. 第一次刷卡时间>08:00:00
             --v_Come_Late_Num:= ROUND((v_Fpt_F_T - v_PeaceTime_AM_ON_Duty_TIME) * 24 * 60);
             v_Come_Late_Num:=1;
          END IF;
        --------------------------------------------计算迟到完毕 ---------------------------------------
        <<END_COME_LATE>>
        NULL;
        --------------------------------------------计算早退-----  休假日不计早退-------------------------
        IF(v_Fpt_L_T IS NULL) THEN
            v_LEAVE_Early_Num:=NULL;                          ---未打下班卡。
            GOTO END_LEAVE_EARLY;
         END IF;
         ---先判断是否休息日。
         SELECT COUNT(1) INTO v_Count
         FROM Work_Schedule WS
         WHERE WS.dept = v_Dept
         AND WS.work_and_rest_date = v_FP_D
         AND WS.Work_Or_Rest = 1;
         ----休息日----------------
         IF(v_Count=0) THEN
            v_LEAVE_Early_Num:=NULL;
            GOTO END_LEAVE_EARLY;
         END IF;
         ---工作日-----------------------
         --判断当天有没有请假。
         SELECT COUNT(1) INTO v_Count
         FROM ASK_For_LEAVE A_F_L
         WHERE A_F_L.Job_Number = v_job_Number
         AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
         ---正常班: 17:00之后下班。-------------
         IF(v_Count =0) THEN
            ---正常下班。
            IF(v_Fpt_L_T >=v_PeaceTime_PM_OFF_Duty_Time) THEN
                v_LEAVE_Early_Num:=NULL;
                GOTO END_LEAVE_EARLY;
            END IF;
             ---早退
            IF(v_Fpt_L_T <v_PeaceTime_PM_OFF_Duty_Time) THEN
                --v_LEAVE_Early_Num:=ROUND((v_PeaceTime_PM_OFF_Duty_Time -v_Fpt_L_T)*24*60);
                v_LEAVE_Early_Num:=1;
                GOTO END_LEAVE_EARLY;
            END IF;
         END IF;
         ---已请假。-------------
         SELECT
                  A_F_L.LEAVE_START_TIME,
                  A_F_L.Leave_End_Time
                INTO v_LEAVE_START_TIME,
                     v_LEAVE_END_TIME
                 FROM ASK_For_LEAVE A_F_L
                 WHERE A_F_L.Job_Number = v_job_Number
                 AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
          -----上午假-----------  起始时间<8:00  终止时间< 13:30
         IF(v_LEAVE_START_TIME <= v_PeaceTime_AM_ON_Duty_Time AND v_LEAVE_END_TIME <=v_PeaceTime_PM_ON_Duty_TIME) THEN  ---请了早上假。
             ---下午下班
             IF(v_Fpt_L_T > v_PeaceTime_PM_OFF_Duty_TIME) THEN    ---下午正常班。
                  v_LEAVE_Early_Num:=NULL;
                  GOTO END_LEAVE_EARLY;
             END IF;
             ---早退-------
             --v_LEAVE_Early_Num:= ROUND((v_PeaceTime_PM_OFF_Duty_TIME - v_Fpt_L_T ) * 24 * 60);
             v_LEAVE_Early_Num:= 1;
             GOTO END_LEAVE_EARLY;
         END IF;
          ---下午假-----起始时间>=12:20 --------
         IF(v_LEAVE_START_TIME >= v_PeaceTime_AM_OFF_Duty_Time) THEN      ---请的是下午假。
               IF(v_Fpt_L_T >= v_PeaceTime_AM_OFF_Duty_TIME) THEN   --- 最后一次刷卡时间>=12:20
                  v_LEAVE_Early_Num:=NULL;
                  GOTO END_LEAVE_EARLY;
               END IF;
         END IF;
         ---最后一次刷卡时间<12:20  ---早退----
         --v_LEAVE_Early_Num:= ROUND((v_PeaceTime_AM_OFF_Duty_TIME - v_Fpt_L_T ) * 24 * 60);
         v_LEAVE_Early_Num:= 1;
        ------------------------------------计算早退完毕----------------------------------------
        <<END_LEAVE_EARLY>>
        NULL;
        ----------------------------计算餐补--休假日计算餐补-----------------------------------------------
        IF(v_Fpt_F_T IS NULL OR v_FPT_L_T IS NULL) THEN
            v_meal_subsidy:=0;
            GOTO END_dinner_subsidy;
        END IF;
       ---没有请假
          ---判断是否请假中。
       SELECT COUNT(1) INTO v_Count
       FROM ASK_For_LEAVE A_F_L
       WHERE A_F_L.Job_Number = v_job_Number
       AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
      ---正常班，或自行加班。
      IF(v_Count =0) THEN
          ---12:20前刷上班卡,解决午饭餐补。
          ---4小时半，就有餐补
          IF (v_Fpt_F_T <v_PeaceTime_AM_OFF_Duty_Time AND ROUND((v_FPT_L_T-v_Fpt_F_T)*24*60) > 270)  THEN
             v_meal_subsidy:=1;
          END IF;
          GOTO END_dinner_subsidy;
      END IF;
      ---如果是早上假。
     SELECT
                A_F_L.LEAVE_START_TIME,
                A_F_L.Leave_End_Time
              INTO v_LEAVE_START_TIME,
                   v_LEAVE_END_TIME
               FROM ASK_For_LEAVE A_F_L
               WHERE A_F_L.Job_Number = v_job_Number
               AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
        -----上午假-----------  起始时间<8:00  终止时间< 13:30
       IF(v_LEAVE_START_TIME <= v_PeaceTime_AM_ON_Duty_Time AND v_LEAVE_END_TIME <=v_PeaceTime_PM_ON_Duty_TIME) THEN  ---请了早上假。
          ---12:40 之前归来，
          IF (v_FPT_F_T<=v_PeaceTime_AM_Back__D_T) AND ROUND((v_Fpt_L_T - v_FPT_F_T)*24*60) > 270  THEN
             v_meal_subsidy := 1;
              GOTO END_dinner_subsidy;
          END IF;
       END IF;
       ----下午假，不计算餐补。
        ----------------------------计算餐补-------------------------------------------------
     <<END_dinner_subsidy >>
     NULL;
     ---开始更新
     UPDATE Attendance_Record AR
     SET
         AR.Come_Num = v_Come_Num,
         AR.come_Late_num = v_Come_Late_Num,
         AR.LEAVE_EARLY_NUM = v_LEAVE_Early_Num,
         AR.delay_time = v_Delay_Time,
         AR.meal_subsidy = v_meal_subsidy
     WHERE AR.JOB_NUMBER = v_JOB_NUMBER
     AND AR.fingerprint_date = v_FP_D;

     END LOOP;
     CLOSE v_AR_Cur;
     v_Flag:=1;
     return;
end Analyze_AR;
/

prompt
prompt Creating procedure ANALYZE_AR_BAK
prompt =================================
prompt
create or replace procedure dukepu.Analyze_AR_Bak(v_Year_And_Month_Str VARCHAR2,v_Random_Str VARCHAR2,v_Flag out INTEGER) AS
       ---迟到,早退暂时改为统计为

     v_Count INT:=0;

     type t_Cursor is ref cursor;
     v_AR_Cur t_Cursor;

     v_SEQ    Attendance_Record.Seq%type;                 --序号.
     v_Job_Number Attendance_Record.Job_Number%type;                           --工号.
     v_Fpt_F_T Attendance_Record.Fpt_First_Time%type;                          --第一次刷卡时间
     v_FPT_L_T Attendance_Record.Fpt_Last_Time%type;                           --最后一次刷卡时间
     v_FP_D    Attendance_Record.Fingerprint_Date%type;                        ---刷卡日期.

     v_Dept    Work_Schedule.Dept%TYPE;             ---部门;



     v_PeaceTime_AM_ON_Duty_Time  DATE;   ---暂存早上时间 8:00;
     v_PeaceTime_AM_OFF_Duty_Time  DATE;  ---暂存早上下班时间 12:20
     v_PeaceTime_PM_ON_Duty_Time  DATE;   ---暂存下午上班时间 13:30;
     v_PeaceTime_PM_OFF_Duty_Time  DATE;     ---用于暂存下班时间 17:00。


     v_Delay_Time     NUMBER;   ---暂存延时数值： 2.5小时。
     v_Come_Late_Num      NUMBER;   --暂存迟到数值：
     v_LEAVE_Early_Num     NUMBER;   --暂存早退数值; :0.5小时。
     v_dinner_subsidy integer;      ---暂存餐补



     v_LEAVE_START_TIME  AsK_FOR_Leave.Leave_Start_Time%TYPE;                  ---请假起始时间
     v_LEAVE_END_TIME ASK_FOR_LEAVE.Leave_End_Time%TYPE;                       ---请假终止时间。

     v_Subject varchar2(20):='Analyze_AR';


begin

     ---先统计出勤日.
     UPDATE Attendance_Record AR
     SET AR.Come_Num = (
                     CASE
                          WHEN (AR.FPT_FIRST_TIME IS NULL AND AR.FPT_LAST_TIME IS NULL) THEN
                               0
                           ELSE
                                1
                     END
                     ),         --只要刷一次卡，就统计为1。
     AR.Not_Finger_Print = (
                                    CASE
                                      WHEN (AR.FPT_FIRST_TIME IS NULL AND AR.FPT_LAST_TIME IS NOT NULL) THEN
                                           1
                                      WHEN (AR.FPT_FIRST_TIME IS NOT NULL AND AR.FPT_LAST_TIME IS  NULL) THEN
                                           1
                                       ELSE
                                           NULL
                                 END
                              )
     WHERE TRUNC(AR.FingerPrint_Date,'MM') = TO_DATE(v_Year_And_Month_Str,'YYYY-MM');

     ---年月 字符串.
     OPEN v_AR_Cur
     FOR
     SELECT
            SEQ,
            job_number,
            DEPT,
            FPT_First_Time,
            FPT_Last_Time,
            FINGERPrint_Date
     FROM Attendance_Record AR
     WHERE TRUNC(fingerprint_date,'MM') = TO_DATE(v_Year_And_Month_Str,'YYYY-MM')
     ORDER BY AR.fingerprint_date ASC,
           AR.DEPT ASC;

     LOOP
         FETCH v_AR_Cur INTO
                             v_SEQ,
                             v_job_Number,
                             v_Dept,
                             v_Fpt_F_T,
                             v_FPT_L_T,
                             v_FP_D;
         EXIT WHEN v_AR_Cur%NOTFOUND;

         ----先判断有没有对应部门的 ----工作计划生成.
                  ---先判断是否休息日。
         SELECT COUNT(1) INTO v_Count
         FROM Work_Schedule WS
         WHERE NVL(WS.dept,'NULL') = v_Dept
         AND WS.work_and_rest_date = v_FP_D;
         IF(v_Count=0) THEN  ---休息。
            v_Flag:=0;
              ---保存信息到MESSAGE中.
              ---保存错误信息.
            INSERT INTO FINISH_MESSAGE(
                   PROMPT,
                   FLAG,
                   UPDATE_TIME,
                   NAME_OF_THE_HANDLER,
                   RANDOM_STR
            )
            VALUES(
                   v_FP_D || '  '||v_Dept||'  :未生成工作计划!',
                   '0',
                   SYSDATE,
                   v_Subject,
                   v_Random_Str
            );
            return;
         END IF;


         v_PeaceTime_AM_ON_Duty_Time :=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 08:00:00','YYYY-MM-DD HH24:MI:SS');
         v_PeaceTime_AM_OFF_Duty_Time:=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 12:20:00','YYYY-MM-DD HH24:MI:SS');
         v_PeaceTime_PM_ON_Duty_Time:=TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 13:30:00','YYYY-MM-DD HH24:MI:SS');
         v_PeaceTime_PM_OFF_Duty_Time:= TO_DATE(TO_CHAR(v_FP_D,'YYYY-MM-DD')||' 17:00:00','YYYY-MM-DD HH24:MI:SS');

         ---未打下班卡，不计延时。
         IF v_FPT_L_T IS NULL THEN
            v_Delay_Time:=NULL;
            GOTO END_Delay_Time;
         END IF;
         ---判断是否请假中。
         SELECT COUNT(1) INTO v_Count
         FROM ASK_For_LEAVE A_F_L
         WHERE A_F_L.Job_Number = v_job_Number
         AND ( v_FPT_L_T >= A_F_L.Leave_Start_Time
               AND v_FPT_L_T <=A_F_L.Leave_End_Time
              );
         ---请假中.
         IF(v_Count=1) THEN
             v_Delay_Time:=NULL;
             GOTO END_Delay_Time;
         END IF;
         ---工作日，或自行加班日---
         IF(v_FPT_L_T<=v_PeaceTime_PM_OFF_Duty_Time) THEN   ---下班时间比17:00早。
            v_Delay_Time:=NULL;                     ---不计算延时。
         ELSE                                     -- 超出17:00计为延时
            ---延时
            v_Delay_Time:=TRUNC((v_FPT_L_T - v_PeaceTime_PM_OFF_Duty_Time)*24/0.5)*0.5;
         END IF;

         <<END_Delay_Time>>
         NULL;
         --- --------------------------------------计算迟到   -------------------------------------
         IF(v_Fpt_F_T IS NULL) THEN                           ---未打上班卡。
            v_Come_Late_Num:=NULL;
            GOTO END_COME_LATE;
         END IF;
         ---先判断是否休息日。
         SELECT COUNT(1) INTO v_Count
         FROM Work_Schedule WS
         WHERE WS.dept = v_Dept
         AND WS.work_and_rest_date = v_FP_D
         AND WS.Work_Or_Rest = 1;
         IF(v_Count=0) THEN  ---休息。
            v_Come_Late_Num:=NULL;
            GOTO END_COME_LATE;
         END IF;
         ---工作日。
         --判断当天有没有请假。
         SELECT COUNT(1) INTO v_Count
         FROM ASK_For_LEAVE A_F_L
         WHERE A_F_L.Job_Number = v_job_Number
         AND  v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
         IF(v_Count =0) THEN   ---正常班: 8:00之前签到。
            IF(v_Fpt_F_T <=v_PeaceTime_AM_ON_Duty_Time) THEN
                v_Come_Late_Num:=NULL;
                GOTO END_COME_LATE;
            END IF;
             ---迟到。
            IF(v_Fpt_F_T >v_PeaceTime_AM_ON_Duty_Time) THEN
                --v_Come_Late_Num:=ROUND((v_Fpt_F_T -v_PeaceTime_AM_ON_Duty_Time)*24*60);
                v_Come_Late_Num:=1;
                GOTO END_COME_LATE;
            END IF;
         END IF;
         ---已请假。
         SELECT
                  A_F_L.LEAVE_START_TIME,
                  A_F_L.Leave_End_Time
                INTO v_LEAVE_START_TIME,
                     v_LEAVE_END_TIME
                 FROM ASK_For_LEAVE A_F_L
                 WHERE A_F_L.Job_Number = v_job_Number
                 AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);

          IF(v_LEAVE_START_TIME <= v_PeaceTime_AM_ON_Duty_Time AND v_LEAVE_END_TIME <=v_PeaceTime_PM_ON_Duty_TIME) THEN  ---请了早上假。
             ---------假期中。第一次刷卡时间<=13:30-------------
             IF(v_Fpt_F_T <= v_PeaceTime_PM_ON_Duty_TIME) THEN
                  v_Come_Late_Num:=NULL;
                  GOTO END_COME_LATE;
             END IF;
             ---假期满后。第一次刷卡时间>13:30
             --v_Come_Late_Num:= ROUND((v_Fpt_F_T - v_PeaceTime_PM_ON_Duty_TIME) * 24 * 60);
             v_Come_Late_Num:=1;
             GOTO END_COME_LATE;
          END IF;
          ---请的是下午假期。
          IF(v_LEAVE_START_TIME >= v_PeaceTime_AM_OFF_Duty_Time) THEN      ---请的是下午假。
               IF(v_Fpt_F_T <= v_PeaceTime_AM_ON_Duty_TIME) THEN   ---正常出勤。
                  v_Come_Late_Num:=NULL;
                  GOTO END_COME_LATE;
               END IF;
             ----迟到. 第一次刷卡时间>08:00:00
             --v_Come_Late_Num:= ROUND((v_Fpt_F_T - v_PeaceTime_AM_ON_Duty_TIME) * 24 * 60);
             v_Come_Late_Num:=1;
          END IF;
        --------------------------------------------计算迟到完毕 ---------------------------------------
        <<END_COME_LATE>>
        NULL;
        --------------------------------------------计算早退------------------------------
        IF(v_Fpt_L_T IS NULL) THEN
            v_LEAVE_Early_Num:=NULL;                          ---未打下班卡。
            GOTO END_LEAVE_EARLY;
         END IF;
         ---先判断是否休息日。
         SELECT COUNT(1) INTO v_Count
         FROM Work_Schedule WS
         WHERE WS.dept = v_Dept
         AND WS.work_and_rest_date = v_FP_D
         AND WS.Work_Or_Rest = 1;
         ----休息日----------------
         IF(v_Count=0) THEN
            v_LEAVE_Early_Num:=NULL;
            GOTO END_LEAVE_EARLY;
         END IF;
         ---工作日-----------------------
         --判断当天有没有请假。
         SELECT COUNT(1) INTO v_Count
         FROM ASK_For_LEAVE A_F_L
         WHERE A_F_L.Job_Number = v_job_Number
         AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
         ---正常班: 17:00之后下班。-------------
         IF(v_Count =0) THEN
            ---正常下班。
            IF(v_Fpt_L_T >=v_PeaceTime_PM_OFF_Duty_Time) THEN
                v_LEAVE_Early_Num:=NULL;
                GOTO END_LEAVE_EARLY;
            END IF;
             ---早退
            IF(v_Fpt_L_T <v_PeaceTime_PM_OFF_Duty_Time) THEN
                --v_LEAVE_Early_Num:=ROUND((v_PeaceTime_PM_OFF_Duty_Time -v_Fpt_L_T)*24*60);
                v_LEAVE_Early_Num:=1;
                GOTO END_LEAVE_EARLY;
            END IF;
         END IF;
         ---已请假。-------------
         SELECT
                  A_F_L.LEAVE_START_TIME,
                  A_F_L.Leave_End_Time
                INTO v_LEAVE_START_TIME,
                     v_LEAVE_END_TIME
                 FROM ASK_For_LEAVE A_F_L
                 WHERE A_F_L.Job_Number = v_job_Number
                 AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
          -----上午假-----------  起始时间<8:00  终止时间< 13:30
         IF(v_LEAVE_START_TIME <= v_PeaceTime_AM_ON_Duty_Time AND v_LEAVE_END_TIME <=v_PeaceTime_PM_ON_Duty_TIME) THEN  ---请了早上假。
             ---下午下班
             IF(v_Fpt_L_T > v_PeaceTime_PM_OFF_Duty_TIME) THEN    ---下午正常班。
                  v_LEAVE_Early_Num:=NULL;
                  GOTO END_LEAVE_EARLY;
             END IF;
             ---早退-------
             --v_LEAVE_Early_Num:= ROUND((v_PeaceTime_PM_OFF_Duty_TIME - v_Fpt_L_T ) * 24 * 60);
             v_LEAVE_Early_Num:= 1;
             GOTO END_LEAVE_EARLY;
         END IF;
          ---下午假-----起始时间>=12:20 --------
         IF(v_LEAVE_START_TIME >= v_PeaceTime_AM_OFF_Duty_Time) THEN      ---请的是下午假。
               IF(v_Fpt_L_T >= v_PeaceTime_AM_OFF_Duty_TIME) THEN   --- 最后一次刷卡时间>=12:20
                  v_LEAVE_Early_Num:=NULL;
                  GOTO END_LEAVE_EARLY;
               END IF;
         END IF;
         ---最后一次刷卡时间<12:20  ---早退----
         --v_LEAVE_Early_Num:= ROUND((v_PeaceTime_AM_OFF_Duty_TIME - v_Fpt_L_T ) * 24 * 60);
         v_LEAVE_Early_Num:= 1;
        ------------------------------------计算早退完毕----------------------------------------
        <<END_LEAVE_EARLY>>
        NULL;
        ----------------------------计算餐补-------------------------------------------------
        IF(v_Fpt_F_T IS NULL OR v_FPT_L_T IS NULL) THEN
            v_dinner_subsidy:=0;
            GOTO END_dinner_subsidy;
        END IF;
       ---没有请假
          ---判断是否请假中。
       SELECT COUNT(1) INTO v_Count
       FROM ASK_For_LEAVE A_F_L
       WHERE A_F_L.Job_Number = v_job_Number
       AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
      ---正常班，或自行加班。
      IF(v_Count =0) THEN
          ---4小时半，就有餐补
          IF (ROUND((v_FPT_L_T-v_Fpt_F_T)*24*60) > 270)  THEN
             v_dinner_subsidy:=1;
          END IF;
          GOTO END_dinner_subsidy;
      END IF;
      ---如果是早上假。
     SELECT
                A_F_L.LEAVE_START_TIME,
                A_F_L.Leave_End_Time
              INTO v_LEAVE_START_TIME,
                   v_LEAVE_END_TIME
               FROM ASK_For_LEAVE A_F_L
               WHERE A_F_L.Job_Number = v_job_Number
               AND v_FP_D BETWEEN TRUNC(A_F_L.Leave_Start_Time) AND TRUNC(A_F_L.Leave_End_Time);
        -----上午假-----------  起始时间<8:00  终止时间< 13:30
       IF(v_LEAVE_START_TIME <= v_PeaceTime_AM_ON_Duty_Time AND v_LEAVE_END_TIME <=v_PeaceTime_PM_ON_Duty_TIME) THEN  ---请了早上假。
          IF ROUND((v_Fpt_L_T - v_PeaceTime_PM_ON_Duty_TIME)*24*60) > 270  THEN
             v_dinner_subsidy := 1;
              GOTO END_dinner_subsidy;
          END IF;
       END IF;
       ----下午假，不计算餐补。
        ----------------------------计算餐补-------------------------------------------------
     <<END_dinner_subsidy >>
     NULL;
     ---开始更新
     UPDATE Attendance_Record AR
     SET
         AR.come_Late_num = v_Come_Late_Num,
         AR.LEAVE_EARLY_NUM = v_LEAVE_Early_Num,
         AR.delay_time = v_Delay_Time,
         AR.MEAL_SUBSIDY = v_dinner_subsidy
     WHERE AR.JOB_NUMBER = v_JOB_NUMBER
     AND AR.fingerprint_date = v_FP_D;

     END LOOP;
     CLOSE v_AR_Cur;
     v_Flag:=1;
     return;
end Analyze_AR_BAk;
/

prompt
prompt Creating procedure GENERAL_JOB_NUMBER
prompt =====================================
prompt
create or replace procedure dukepu.General_Job_Number( v_Job_Number out varchar2) AS
       v_Next_seq  INT;
       v_Count INT;
       str_Next_Seq VARCHAR2(10);
begin

    SELECT Count(1) INTO v_Count
    FROM EMPLOYEES
    WHERE SUBSTR(JOB_NUMBER,1,7) = 'L'||TO_CHAR(SYSDATE,'YYMMDD');

    IF(v_Count =0) THEN
        v_Next_Seq := 1;
    ELSE
        SELECT (MAX(SUBSTR(JOB_NUMBER,LENGTH(JOB_NUMBER)-2,3)) +1) INTO v_Next_Seq
        FROM EMPLOYEES
        WHERE JOB_NUMBER != 'admin'
        AND JOB_NUMBER != 'query'
        AND SUBSTR(JOB_NUMBER,1,7) = 'L'||TO_CHAR(SYSDATE,'YYMMDD');
    END IF;

    str_Next_Seq:= CAST(v_Next_Seq AS VARCHAR2);
    V_JOB_NUMBER:= 'L'||TO_CHAR(SYSDATE,'YYMMDD') || LPAD(str_Next_Seq,3,'0');
end General_Job_Number;
/

prompt
prompt Creating procedure GENERATE_JOB_NUMBER
prompt ======================================
prompt
create or replace procedure dukepu.Generate_Job_Number( v_Job_Number out varchar2) AS
       v_Next_seq  INT;
       v_Count INT;
       str_Next_Seq VARCHAR2(10);
begin

    SELECT Count(1) INTO v_Count
    FROM EMPLOYEES
    WHERE SUBSTR(JOB_NUMBER,1,7) = 'L'||TO_CHAR(SYSDATE,'YYMMDD');

    IF(v_Count =0) THEN
        v_Next_Seq := 1;
    ELSE
        SELECT (MAX(SUBSTR(JOB_NUMBER,LENGTH(JOB_NUMBER)-2,3)) +1) INTO v_Next_Seq
        FROM EMPLOYEES
        WHERE JOB_NUMBER != 'admin'
        AND JOB_NUMBER != 'query'
        AND SUBSTR(JOB_NUMBER,1,7) = 'L'||TO_CHAR(SYSDATE,'YYMMDD');
    END IF;

    str_Next_Seq:= CAST(v_Next_Seq AS VARCHAR2);
    V_JOB_NUMBER:= 'L'||TO_CHAR(SYSDATE,'YYMMDD') || LPAD(str_Next_Seq,3,'0');
end Generate_Job_Number;
/

prompt
prompt Creating procedure GENERATE_REST_DAY
prompt ====================================
prompt
create or replace procedure dukepu.Generate_Rest_Day(
                                              v_name varchar2,
                                              v_YearAndMonth varchar2
                                              )
                                              AS
      --休息日： 最后 一日 。
       v_LastDay int;
       var_LastDay varchar2(2);
       v_date date;
       v_day varchar2(10);
       v_Count INT;
begin

     ---
     SELECT TO_CHAR(LAST_DAY(TO_DATE(v_YearAndMonth,'yyyy-MM')),'dd') INTO var_LastDay
     FROM DUAL;

     v_LastDay:= CAST(var_LastDay AS INT);
     FOR i IN 1..v_LastDay
     LOOP
        SELECT TO_DATE(v_YearAndMonth || '-' || CAST(i AS varchar2(2)),'yyyy-MM-dd') INTO v_date
        FROM DUAL;


        SELECT TO_Char(v_date,'day') INTO v_day
        FROM DUAL;


        IF('星期日' =v_day) THEN
           SELECT COUNT(1) INTO v_Count
           FROM Rest_Day
           WHERE name = v_name
           AND Rest_Day =v_date;

           IF(v_Count=0) THEN

                INSERT INTO Rest_Day(name,Rest_Day,Update_Time)
                VALUES(
                       v_Name,
                       v_date,
                       Sysdate
                );
                commit;
           END IF;
        end IF;

     END LOOP;

end Generate_Rest_Day;
/

prompt
prompt Creating procedure GENERATE_WORK_SUMMARY
prompt ========================================
prompt
create or replace procedure dukepu.Generate_Work_Summary(v_work_Date IN varchar2) AS
       ---   此方法尚未给出 上班时间，下班时间。
       v_Num_On_Duty INT:=0;
       v_Num_Off_Duty INT:=0;
       v_Count INT:=0;

       v_FingerPrint_Date Attendance_Record.Fingerprint_Date%type;
       v_Dept Attendance_Record.Dept%type;

       v_work_or_rest Work_Summary.work_or_rest%type;          --- 1: 工作  0:休息。
       v_Work_and_rest_date Work_Summary.Work_And_Rest_Date%type;    --工作日期
       v_FP_Number Work_Summary.Fp_Number%Type;                      --按指纹人数。

       v_FP_NUMBER_ALL_Staffs Work_Summary.Fp_Number%TYPE;           ---所有出勤的员工数量.


       type t_Cursor is ref  cursor;
       v_Cur_AR_Summary t_Cursor;            ---考勤记录 日期游标.
       v_Cur_WS         t_Cursor;            ----考勤安排游标
       v_Calculate_On_Duty_Time Date;             ---推算的上班时间
       v_Calculate_Off_Duty_Time Date;             ---推算的下班时间
begin
  ---生成工作安排表.
  --休息记录有
  OPEN v_Cur_AR_Summary
  FOR
   SELECT TEmP.fingerprint_date,
         Temp.dept,
          SUM(
          CASE
               WHEN TEMP.On_Duty_Nums IS NULL
                    THEN 0
                    ELSE
                         TEMP.On_Duty_Nums
               END
          ) On_Duty_Nums,                  ---上班人数。
         SUM(
          CASE
               WHEN TEMP.Off_Duty_Nums IS NULL
                    THEN 0
                    ELSE
                         TEMP.Off_Duty_Nums
               END
          ) Off_Duty_Nums                 ---休息人数。
  FROM
  (
     SELECT  fingerprint_date,
             NVL(dept,'NULL') dept,

            (CASE
                   WHEN  NOT(FPT_FIRST_TIME IS NULL AND fpt_last_time IS NULL)
                       THEN COUNT(1)
             END
            ) On_Duty_Nums,
             (CASE  WHEN FPT_FIRST_TIME IS NULL AND fpt_last_time IS NULL
                               THEN COUNT(1)
                     END
                    )  Off_Duty_Nums
    FROM Attendance_Record
    WHERE TRUNC(FingerPrint_Date,'MM') = TO_DATE(v_work_Date,'yyyy-MM')
    GROUP BY FingerPrint_DATE,
          dept,
          fpt_first_time,
          fpt_last_time
    ORDER BY FingerPrint_DATE DESC
    ) TEMP
  GROUP BY TEMP.fingerprint_date,
           TEMP.dept
  ORDER BY FINGERPrint_DATE DESC,
           DEPT dESC;

  LOOP
      FETCH  v_Cur_AR_Summary INTO v_FingerPrint_Date,v_Dept,v_Num_On_Duty,v_Num_Off_Duty;
      EXIT WHEN v_Cur_AR_Summary%NOTFOUND;

      ---获取该日期所有员工出勤的总数.
      SELECT SUM(FP_NUMBER) INTO v_FP_NUMBER_ALL_Staffs
      FROM Work_Summary
      WHERE  WORK_AND_REST_DATE = v_FingerPrint_Date;

      IF(v_FP_NUMBER_ALL_Staffs<3) THEN
            v_work_or_rest :=0;
      ELSE
            v_work_or_rest :=1;
      END IF;


      --保存
      SELECT COUNT(1) INTO v_Count
      FROM Work_Summary
      WHERE WORK_AND_REST_DATE = v_FingerPrint_Date
      AND NVL(dept,'NULL') = v_Dept;

      /*
      IF(v_Num_Off_Duty > v_Num_On_Duty) THEN
            v_work_or_rest := 0;
      ELSE
            v_work_or_rest:=1;
      END IF;
      */
      /*
      ---如果上班人数>=5人
      IF(v_Num_On_Duty <5) THEN
           v_work_or_rest := 0;
      ELSE
           v_work_or_rest:=1;
      END IF;
      */
      IF(v_Count =0) THEN
      --INSERT
              INSERT INTO Work_Summary(
                     seq,
                    dept,
                    work_and_rest_date,
                    on_duty_Time,
                    off_duty_time,
                    work_or_rest,
                    FP_Number,
                    REST_NUMBER,
                    record_time
              )
              VALUES(
                     Seq_Work_Summary.Nextval,
                     v_Dept,
                     v_FingerPrint_Date,
                     null,
                     null,
                     v_work_or_rest,
                     v_Num_On_Duty,     ---统计上班人数。
                     v_Num_Off_Duty,
                     SysDATE
              );
      ELSE
             --UPDATe
         UPDATE Work_Summary
         SET WORK_OR_REST = v_work_or_rest,
             FP_Number = v_Num_On_Duty,
             REST_NUMBER = v_Num_Off_Duty,
             Record_Time = SYSDATE
         WHERE Dept = v_Dept
              AND work_and_rest_date = v_FingerPrint_Date;

      END IF;

  END LOOP;
  CLOSE v_Cur_AR_Summary;

    ----第二步初步确定上下班时间。上班：8:00  下班: 12:20 或者 下午上班:13:30   17:00
      OPEN v_Cur_WS
      FOR
      SELECT work_and_rest_date,
             DEPT,
             WORK_OR_REST,
             FP_NUmber  --上班人数。
      FROM Work_Summary;
      LOOP
          FETCH v_Cur_WS INTO v_Work_and_rest_date,v_Dept,v_work_or_rest,v_FP_Number;
          EXIT WHEN v_Cur_WS%NOTFOUND;
          IF(v_work_or_rest =1) THEN  ---若上班。
              ---8:00前上班人数。
              v_Calculate_On_Duty_Time :=  TO_Date(TO_CHAR(v_Work_and_rest_date,'YYYY-MM-DD')|| ' '||'08:00:00','YYYY-MM-dd HH24:MI:SS');

              SELECt COUNT(1) INTO v_Count
              FROM Attendance_Record AR
              WHERE AR.FINGERPRINT_DATE = v_Work_and_rest_date
              AND Dept = v_Dept
              AND AR.Fpt_First_Time IS NOT NULL
              AND AR.Fpt_First_Time < v_Calculate_On_Duty_Time;

              IF(v_Count>=v_FP_Number/2) THEN  ---8:00前上班人数过半
                   UPDATE  Work_Summary A_R_Summary
                   SET on_duty_time =  v_Calculate_On_Duty_Time
                   WHERE work_and_rest_date   = v_Work_and_rest_date
                   AND Dept = v_Dept;
              ELSE
                   ---上班时间定为13:30
                   v_Calculate_On_Duty_Time :=  TO_Date(TO_CHAR(v_Work_and_rest_date,'YYYY-MM-DD')|| ' '||'13:30:00','YYYY-MM-dd HH24:MI:SS');
                      ---12:30 -- 13:30上班人数过半
                    SELECt COUNT(1) INTO v_Count
                    FROM Attendance_Record AR
                    WHERE AR.FingerPrint_Date = v_Work_and_rest_date
                        AND Dept = v_Dept
                        AND AR.Fpt_First_Time IS NOT NULL
                        AND (v_Calculate_On_Duty_Time-AR.Fpt_First_Time) *24*60 BETWEEN 0 AND 60;
                    IF(v_Count>=v_FP_Number/2) THEN
                          UPDATE  Work_Summary A_R_Summary
                         SET A_R_Summary.on_duty_time =  v_Calculate_On_Duty_Time
                         WHERE A_R_Summary.work_and_rest_date   = v_Work_and_rest_date
                         AND A_R_Summary.Dept = v_Dept;

                    END IF;
              END IF;
              ---处理下班时间。
               ---12:20前下班人数。
              v_Calculate_Off_Duty_Time :=  TO_Date(TO_CHAR(v_Work_and_rest_date,'YYYY-MM-DD')|| ' '||'12:30','YYYY-MM-dd HH24:MI:SS');

              SELECt COUNT(1) INTO v_Count
              FROM Attendance_Record AR
              WHERE AR.FingerPrint_Date = v_Work_and_rest_date
              AND Dept = v_Dept
              AND AR.FPT_Last_Time IS NOT NULL
              AND AR.FPT_Last_Time < v_Calculate_Off_Duty_Time;

              IF(v_Count>=v_FP_Number/2) THEN  ---半数以上人12:30前下班.
                   UPDATE  Work_Summary A_R_Summary
                   SET off_duty_time  =  v_Calculate_Off_Duty_Time
                   WHERE work_and_rest_date   = v_Work_and_rest_date
                   AND Dept = v_Dept;
              ELSE
                   ---下班时间定为17:00:00
                   v_Calculate_Off_Duty_Time :=  TO_Date(TO_CHAR(v_Work_and_rest_date,'YYYY-MM-DD')|| ' '||'17:00:00','YYYY-MM-dd HH24:MI:SS');
                      ---12:30 -- 13:30上班人数过半
                    SELECt COUNT(1) INTO v_Count
                    FROM Attendance_Record AR
                    WHERE AR.FINGERPRINT_DATE = v_Work_and_rest_date
                        AND AR.Dept = v_Dept
                        AND AR.FPT_Last_Time IS NOT NULL
                        AND (AR.FPT_Last_Time>=v_Calculate_Off_Duty_Time);        ---下班时间 晚于17:00
                    IF(v_Count>=v_FP_Number/2) THEN
                          UPDATE  Work_Summary A_R_Summary
                         SET off_duty_Time =  v_Calculate_Off_Duty_Time
                         WHERE work_and_rest_date   = v_Work_and_rest_date
                         AND Dept = v_Dept;

                    END IF;
              END IF;
          END IF;




      END LOOP;
      CLOSE v_Cur_WS;



end Generate_Work_Summary;
/

prompt
prompt Creating procedure GET_ACTUAL_AR_DAYS
prompt =====================================
prompt
create or replace procedure dukepu.get_Actual_AR_Days(v_job_number varchar2,v_year_and_month varchar2,v_AR_Days OUT INT )  AS
begin

      select
             sum(
                 case
                     when fpt_first_time is  null and fpt_last_time is null then  0
                     else 1
                 end
              ) INTO v_AR_Days
      from Attendance_Record
      where job_number =v_job_number
      and trunc(fingerprint_date,'MM') = to_date(v_year_and_month,'yyyy-MM');
end get_Actual_AR_Days;
/

prompt
prompt Creating procedure GET_ACTUAL_AR_DAYS_OF_A_R_S
prompt ==============================================
prompt
create or replace procedure dukepu.get_Actual_AR_Days_Of_A_R_S(v_job_number varchar2,v_year_and_month varchar2,v_AR_Days OUT INT )  AS
begin

      select
             sum(
                 case
                     when fpt_first_time is  null and fpt_last_time is null then  0
                     else 1
                 end
              ) INTO v_AR_Days
      from Attendance_Record_Summary
      where job_number =v_job_number
      and trunc(fingerprint_date,'MM') = to_date(v_year_and_month,'yyyy-MM');
end get_Actual_AR_Days_Of_A_R_S;
/

prompt
prompt Creating procedure GET_COME_LATE_NUM
prompt ====================================
prompt
create or replace procedure dukepu.get_Come_Late_Num(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_COME_LATE_NUM out int) AS

       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       --下班时间
       v_fpt_fisrt_time date;


       V_COUNT INT;


       ---上班时间
       V_MORNING_ON_DUTY_TIME date;
       ---姓名
begin

       ---先进行 清空
            --更新 当日 的 考勤记录
        UPDATE Attendance_Record
        SET COME_Late_NUM = 0
        WHERE JOB_NUMBER = v_Job_Number
        AND trunc(fingerprint_date,'MM')= TO_DATE(v_Year_And_Month,'yyyy-MM');

     v_COME_LATE_NUM:=0;
     ---对于没有 考勤 记录 的  计件月薪统计人员：
     SELECT COUNT(1) INTO v_COUNT
     FROM Attendance_Record
     WHERE JOB_NUMBER = v_Job_Number
     AND TRUNC(fingerprint_date,'MM') = to_date(v_year_and_Month,'yyyy-MM');
     --此 工号不存在 考勤记录 。
     IF(v_COUNT =0 ) THEN

          v_COME_LATE_NUM:=0;
          RETURN;
     END IF;

     v_COME_LATE_NUM:=0;
  ---获取迟到次数。
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),AR.FPT_First_Time
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'yyyy-MM');

     LOOP
        <<NEXT>>
        NULL;

        FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_fisrt_time;
        EXIT WHEN day_cur%NOTFOUND;

        IF(v_fpt_fisrt_time IS NULL) THEN    ---如果未 刷上班卡，没法计算迟到次数。

            GOTO NEXT;
        END IF;

       ---刷了上班卡.
       --判断今天是否是公司休息日.

        ---注意 休息日  以人工设定。

        SELECT COUNT(1) INTO v_COUNT
        FROM Rest_Day
        WHERE Rest_Day = v_year_month_day;

        IF(v_COUNT = 1) THEN
              GOTO NEXT;   ----公司加班日,不计迟到.
        END IF;

      ---正常工作日
      --判断是否超过08:00
        V_MORNING_ON_DUTY_TIME:= TO_DATE(v_year_month_day_str||' 08:00:00','yyyy-MM-dd HH24:MI:SS');
        IF(v_fpt_fisrt_time<=V_MORNING_ON_DUTY_TIME)
        THEN
           ---未迟到.
           GOTO NEXT;
        END IF;

        --更新 当日 的 考勤记录
        UPDATE Attendance_Record
        SET COME_Late_NUM = 1
        WHERE JOB_NUMBER = v_Job_Number
        AND fingerprint_date= v_year_month_day;
        --迟到
         v_COME_LATE_NUM:= v_COME_LATE_NUM+1;
     END LOOP;
     CLOSE day_cur;
end get_Come_Late_Num;
/

prompt
prompt Creating procedure GET_COME_LATE_NUM_OF_ARS
prompt ===========================================
prompt
create or replace procedure dukepu.get_Come_Late_Num_Of_ARS(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_COME_LATE_NUM out int) AS

       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       --下班时间
       v_fpt_fisrt_time date;


       V_COUNT INT;


       ---上班时间
       V_MORNING_ON_DUTY_TIME date;
       ---姓名
begin

       ---先进行 清空
            --更新 当日 的 考勤记录
        UPDATE Attendance_Record_Summary
        SET COME_Late_NUM = 0
        WHERE JOB_NUMBER = v_Job_Number
        AND trunc(fingerprint_date,'MM')= TO_DATE(v_Year_And_Month,'yyyy-MM');

     v_COME_LATE_NUM:=0;
     ---对于没有 考勤 记录 的  计件月薪统计人员：
     SELECT COUNT(1) INTO v_COUNT
     FROM Attendance_Record_Summary
     WHERE JOB_NUMBER = v_Job_Number
     AND TRUNC(fingerprint_date,'MM') = to_date(v_year_and_Month,'yyyy-MM');
     --此 工号不存在 考勤记录 。
     IF(v_COUNT =0 ) THEN

          v_COME_LATE_NUM:=0;
          RETURN;
     END IF;

     v_COME_LATE_NUM:=0;
  ---获取迟到次数。
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),ARS.FPT_First_Time
     FROM Attendance_Record_Summary ARS
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'yyyy-MM');

     LOOP
        <<NEXT>>
        NULL;

        FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_fisrt_time;
        EXIT WHEN day_cur%NOTFOUND;

        IF(v_fpt_fisrt_time IS NULL) THEN    ---如果未 刷上班卡，没法计算迟到次数。

            GOTO NEXT;
        END IF;

       ---刷了上班卡.
       --判断今天是否是公司休息日.

        ---注意 休息日  以人工设定。

        SELECT COUNT(1) INTO v_COUNT
        FROM Rest_Day
        WHERE Rest_Day = v_year_month_day;

        IF(v_COUNT = 1) THEN
              GOTO NEXT;   ----公司加班日,不计迟到.
        END IF;

      ---正常工作日
      --判断是否超过08:00
        V_MORNING_ON_DUTY_TIME:= TO_DATE(v_year_month_day_str||' 08:00:00','yyyy-MM-dd HH24:MI:SS');
        IF(v_fpt_fisrt_time<=V_MORNING_ON_DUTY_TIME)
        THEN
           ---未迟到.
           GOTO NEXT;
        END IF;

        --更新 当日 的 考勤记录
        UPDATE Attendance_Record_Summary
        SET COME_Late_NUM = 1
        WHERE JOB_NUMBER = v_Job_Number
        AND fingerprint_date= v_year_month_day;
        --迟到
         v_COME_LATE_NUM:= v_COME_LATE_NUM+1;
     END LOOP;
     CLOSE day_cur;
end get_Come_Late_Num_Of_ARS;
/

prompt
prompt Creating procedure GET_DELAY_TIMES_ORDINARY_DAYS
prompt ================================================
prompt
create or replace procedure dukepu.GET_Delay_times_Ordinary_days(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_Delay_Total_Time out NUMBER) AS
       ---获取平日加班的 延时时间

       type t_cur is ref cursor;
       day_cur t_cur;
       v_year_month_day date;
       v_year_month_day_str varchar2(20);
        --下班时间
       v_fpt_last_time date;
       v_Delay_Time_TEMP INT:=0;
       v_count INT;
begin
     v_Delay_Total_Time:=0;
     ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,    ---指纹日期
            TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'), ---指纹日期字符串。
            AR.Fpt_Last_Time                        ---最后一次指纹时间。
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month ,'yyyy-MM');
     LOOP
         <<NEXT>>
         NULL;

         FETCH day_cur INTO v_year_month_day,
                            v_year_month_day_str,
                            v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;

          ---判断是否为加班日。
         SELECT COUNT(1) INTO v_Count
         FROM Rest_Day
         WHERE Rest_Day = v_year_month_day;

         --若为加班日,则非平日，进行下次循环。
         IF(v_Count=1) THEN
              GOTO NEXT;
         END IF;

         IF(v_fpt_last_time IS NULL) THEN

              GOTO NEXT;
         END IF;
         v_Delay_Time_TEMP := round((v_fpt_last_time- TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-DD HH24:MI:SS'))*24*60);
         ---只要超过17:00  统一计算为延时。
         IF(v_Delay_Time_TEMP <=0) THEN
               GOTO NEXT;
         END IF;
         v_Delay_Total_Time := v_Delay_Total_Time +FLOOR(v_Delay_Time_TEMP/30) * 0.5;
     END LOOP;
     close day_cur;

end GET_Delay_times_Ordinary_days;
/

prompt
prompt Creating procedure GET_REST_DAY_TIME
prompt ====================================
prompt
create or replace procedure dukepu.GET_Rest_Day_Time(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_Rest_Day_Time out NUMBER) AS
       --计算 休息日的 加班（8：00-5：00）
       type t_cur is ref cursor;
       day_cur t_cur;
       v_year_month_day date;
       v_year_month_day_str varchar2(20);
       --正常下班时间
       v_normal_off_duty_time date;
       --正常上班时间
       v_normal_on_duty_time date;
       --正午时刻
       v_highnoon_time       date;
       --上班时间
       v_fpt_first_time date;
        --下班时间
       v_fpt_last_time date;
       v_Rest_Day_Time_Temp INT:=0;
       V_COUNT INT:=0;





begin
     v_Rest_Day_Time:=0;
     ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,    ---指纹日期
            to_char(FingerPrint_DATE,'yyyy-MM-dd'),
            AR.Fpt_First_Time,
            AR.Fpt_Last_Time                        ---最后一次指纹时间。
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month || '-01','YYYY-MM-DD');
     LOOP
         <<NEXT>>
         NULL;
         FETCH day_cur INTO v_year_month_day,
                            v_year_month_day_str,
                            v_fpt_first_time,
                            v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;
         IF(v_fpt_first_time is NULL) THEN
              GOTO NEXT;
         END IF;
         IF(v_fpt_last_time IS NULL) THEN
              GOTO NEXT;
         END IF;
         SELECT COUNT(1) INTO V_COUNT
         FROM Rest_Day
         WHERE Rest_Day = v_year_month_day;

         IF(v_Count=0)THEN
              GOTO NEXT;
         END IF;
         ---设定 正常 下班时间 。
         v_normal_off_duty_time:=to_date(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd hh24:mi:ss');
         v_normal_on_duty_time:=to_date(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd hh24:mi:ss');
         v_highnoon_time:=to_date(v_year_month_day_str|| ' 12:00:00','yyyy-MM-dd hh24:mi:ss');
         IF(v_fpt_first_time>=v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_fpt_first_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_normal_on_duty_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time <v_normal_off_duty_time) THEN
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_normal_on_duty_time)*24*60);
         ELSE
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_fpt_first_time)*24*60);
         END IF;
         --跨越正午时刻，总时间减去1小时。
         IF(v_fpt_first_time <=v_highnoon_time AND v_fpt_last_time >=v_highnoon_time) THEN
              v_Rest_Day_Time_Temp := v_Rest_Day_Time_Temp -1*60;
         END IF;
         ---只要超过17:00  统一计算为延时。
         v_Rest_Day_Time := v_Rest_Day_Time +FLOOR(v_Rest_Day_Time_Temp/30) * 0.5;
     END LOOP;
     close day_cur;

end GET_Rest_Day_Time;
/

prompt
prompt Creating procedure GET_DELAY_TOTAL_TIME
prompt =======================================
prompt
create or replace procedure dukepu.GET_Delay_Total_Time(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_Delay_Total_Time out NUMBER) AS
       type t_cur is ref cursor;
       day_cur t_cur;
       v_year_month_day date;
       v_year_month_day_str varchar2(20);
        --下班时间
       v_fpt_last_time date;
       v_Delay_Time_TEMP INT:=0;
       v_Rest_Day_Time NUMBER;
begin
     v_Delay_Total_Time:=0;
     ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,    ---指纹日期
            TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'), ---指纹日期字符串。
            AR.Fpt_Last_Time                        ---最后一次指纹时间。
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month || '-01','YYYY-MM-DD');
     LOOP
         <<NEXT>>
         NULL;
         FETCH day_cur INTO v_year_month_day,
                            v_year_month_day_str,
                            v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;
         IF(v_fpt_last_time IS NULL) THEN

              GOTO NEXT;
         END IF;
         v_Delay_Time_TEMP := round((v_fpt_last_time- TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-DD HH24:MI:SS'))*24*60);
         ---只要超过17:00  统一计算为延时。
         IF(v_Delay_Time_TEMP <=0) THEN
               GOTO NEXT;
         END IF;
         v_Delay_Total_Time := v_Delay_Total_Time +FLOOR(v_Delay_Time_TEMP/30) * 0.5;
     END LOOP;
     close day_cur;
     GET_Rest_Day_Time(v_Job_Number,v_Year_And_Month,v_Rest_Day_Time);
     v_Delay_Total_Time := v_Delay_Total_Time +v_Rest_Day_Time;
end GET_Delay_Total_Time;
/

prompt
prompt Creating procedure GET_DINNER_SUBSIDY_NUM
prompt =========================================
prompt
create or replace procedure dukepu.Get_Dinner_Subsidy_Num(v_JOB_NUMBER in varchar2, v_year_and_month varchar2, v_Dinner_Subsidy_num out int) as
       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       --上班时间
       v_fpt_first_time date;
       --下班时间
       v_fpt_last_time date;


begin

  v_Dinner_Subsidy_num:=0;
  ---获取迟到次数。
       ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),AR.Fpt_First_Time,AR.Fpt_Last_Time
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'yyyy-MM');

     LOOP
         <<NEXT>>
         NULL;
       FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_first_time,v_fpt_last_time;
       EXIT WHEN day_cur%NOTFOUND;


       --判断起始时间，和终止时间是否都存在
       IF(v_fpt_first_time IS NULL OR v_fpt_last_time IS NULL) THEN
          GOTO NEXT;
       END IF;

       ---判断是否包含范围12:00 --12:40
       --IF(v_fpt_first_time <=TO_DATE(v_year_month_day_str||' 12:00:00','YYYY-MM-DD HH24:MI:SS') AND v_fpt_last_time >=TO_DATE(v_year_month_day_str || ' 12:40:00','YYYY-MM-DD HH24:MI:SS')) THEN
       IF(v_fpt_first_time <=TO_DATE(v_year_month_day_str||' 12:00:00','YYYY-MM-DD HH24:MI:SS')) THEN
            ---其次，上班时间必须超过４小时.
            IF(ROUND((v_fpt_last_time - v_fpt_first_time)*24)>4) THEN
               v_Dinner_Subsidy_num:= v_Dinner_Subsidy_num +1;
               GOTO NEXT;
            END IF;
       END IF;

     END LOOP;
     CLOSE day_cur;

end Get_Dinner_Subsidy_Num;
/

prompt
prompt Creating procedure GET_DINNER_SUBSIDY_NUM_OF_ARS
prompt ================================================
prompt
create or replace procedure dukepu.Get_Dinner_Subsidy_Num_Of_ARS(v_JOB_NUMBER in varchar2, v_year_and_month varchar2, v_Dinner_Subsidy_num out int) as
       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       --上班时间
       v_fpt_first_time date;
       --下班时间
       v_fpt_last_time date;


begin

  v_Dinner_Subsidy_num:=0;
  ---获取迟到次数。
       ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),ARS.Fpt_First_Time,ARS.Fpt_Last_Time
     FROM Attendance_Record_Summary ARS
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'yyyy-MM');

     LOOP
         <<NEXT>>
         NULL;
       FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_first_time,v_fpt_last_time;
       EXIT WHEN day_cur%NOTFOUND;


       --判断起始时间，和终止时间是否都存在
       IF(v_fpt_first_time IS NULL OR v_fpt_last_time IS NULL) THEN
          GOTO NEXT;
       END IF;

       ---判断是否包含范围12:00 --12:40
       IF(v_fpt_first_time <=TO_DATE(v_year_month_day_str||' 12:00:00','YYYY-MM-DD HH24:MI:SS') AND v_fpt_last_time >=TO_DATE(v_year_month_day_str || ' 12:40:00','YYYY-MM-DD HH24:MI:SS')) THEN

            ---其次，上班时间必须超过４小时.
            IF(ROUND((v_fpt_last_time - v_fpt_first_time)*24)>4) THEN
               v_Dinner_Subsidy_num:= v_Dinner_Subsidy_num +1;
               GOTO NEXT;
            END IF;
       END IF;

     END LOOP;
     CLOSE day_cur;

end Get_Dinner_Subsidy_Num_Of_ARS;
/

prompt
prompt Creating procedure GET_DURATION_OF_OVERTIME_DAY
prompt ===============================================
prompt
create or replace procedure dukepu.get_duration_of_overtime_day(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_duration_of_days_of_overtime out number) AS
       --计算 休息日的 加班时长
       type t_cur is ref cursor;
       day_cur t_cur;
       v_year_month_day date;
       v_year_month_day_str varchar2(20);
       --正常下班时间
       v_normal_off_duty_time date;
       --正常上班时间
       v_normal_on_duty_time date;
       --正午时刻
       v_highnoon_time       date;
       --上班时间
       v_fpt_first_time date;
        --下班时间
       v_fpt_last_time date;
       v_Rest_Day_Time_Temp INT:=0;

       --最晚 下班时间
       v_latest_off_duty_time date;

begin
     v_duration_of_days_of_overtime:=0;
     ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,    ---指纹日期
            to_char(FingerPrint_DATE,'yyyy-MM-dd'),
            AR.Fpt_First_Time,
            AR.Fpt_Last_Time                        ---最后一次指纹时间。
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'YYYY-MM')
     AND NOT (AR.Fpt_First_Time IS NULL AND AR.Fpt_Last_Time IS NULL)
     AND FINGERPrint_DATE =ANY(
         SELECT REST_Day
         FROM Rest_Day
         WHERE trunc(fingerprint_date,'MM') = TO_DATE(v_year_and_month,'YYYY-MM')
     );
     LOOP
         <<NEXT>>
         NULL;
         FETCH day_cur INTO v_year_month_day,
                            v_year_month_day_str,
                            v_fpt_first_time,
                            v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;
         v_latest_off_duty_time:=to_date(v_year_month_day_str || ' 23:59:59','yyyy-MM-dd hh24:mi:ss');
         IF(v_fpt_first_time is NULL AND v_fpt_last_time is not null) THEN
            v_fpt_first_time:=v_fpt_last_time -4/24;
            v_Rest_Day_Time_Temp:=round((v_fpt_last_time- v_fpt_first_time)*24*60);
            GOTO LeiJia;
         END IF;
         IF(v_fpt_first_time is NOT NULL AND v_fpt_last_time IS NULL) THEN
            v_fpt_last_time:=v_fpt_first_time+4/24;
            --不能大于凌晨.
            if(v_fpt_last_time>v_latest_off_duty_time) then
               v_fpt_last_time:= v_latest_off_duty_time;
            end if;
            v_Rest_Day_Time_Temp:=round((v_fpt_last_time- v_fpt_first_time)*24*60);
            GOTO LeiJia;
         END IF;

         ---设定 正常 下班时间 。
         v_normal_off_duty_time:=to_date(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd hh24:mi:ss');
         v_normal_on_duty_time:=to_date(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd hh24:mi:ss');
         v_highnoon_time:=to_date(v_year_month_day_str|| ' 12:00:00','yyyy-MM-dd hh24:mi:ss');
         /*
         ---若加班起始时间晚于8:00，下班时间晚于17:00
         IF(v_fpt_first_time>=v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              ---加班日工作时长为： 17:00-  加班起始时间
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_fpt_first_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_normal_on_duty_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time <v_normal_off_duty_time) THEN
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_normal_on_duty_time)*24*60);
         ELSE
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_fpt_first_time)*24*60);
         END IF;*/
         --工作 时长。
         if(v_fpt_first_time<= v_normal_on_duty_time) then
               v_fpt_first_time:=v_normal_on_duty_time;
         end if;
         v_Rest_Day_Time_Temp:=round((v_fpt_last_time- v_fpt_first_time)*24*60);
         --跨越正午时刻，总时间减去1小时。
         IF(v_fpt_first_time <=v_highnoon_time AND v_fpt_last_time >=v_highnoon_time) THEN
              v_Rest_Day_Time_Temp := v_Rest_Day_Time_Temp -1*60;
         END IF;

         IF(v_Rest_Day_Time_Temp<0) THEN
             v_Rest_Day_Time_Temp:=0 ;
         END IF;

         <<LeiJia>>
         v_duration_of_days_of_overtime:= v_duration_of_days_of_overtime +FLOOR(v_Rest_Day_Time_Temp/30) * 0.5;

     END LOOP;
     close day_cur;
     --return v_duration_of_days_of_overtime;

end get_duration_of_overtime_day;
/

prompt
prompt Creating procedure GET_DURATION_OVERTIME_DAY_ARS
prompt ================================================
prompt
create or replace procedure dukepu.get_duration_overtime_day_ARS(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_duration_of_days_of_overtime out NUMBER) AS
       --计算 休息日的 加班时长
       type t_cur is ref cursor;
       day_cur t_cur;
       v_year_month_day date;
       v_year_month_day_str varchar2(20);
       --正常下班时间
       v_normal_off_duty_time date;
       --正常上班时间
       v_normal_on_duty_time date;
       --正午时刻
       v_highnoon_time       date;
       --上班时间
       v_fpt_first_time date;
        --下班时间
       v_fpt_last_time date;
       v_Rest_Day_Time_Temp INT:=0;
       V_COUNT INT:=0;
begin
       v_duration_of_days_of_overtime:=0;
     ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,    ---指纹日期
            to_char(FingerPrint_DATE,'yyyy-MM-dd'),
            A_R_S.Fpt_First_Time,
            A_R_S.Fpt_Last_Time                        ---最后一次指纹时间。
     FROM Attendance_Record_Summary A_R_S
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'YYYY-MM');
     LOOP
         <<NEXT>>
         NULL;
         FETCH day_cur INTO v_year_month_day,
                            v_year_month_day_str,
                            v_fpt_first_time,
                            v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;
         SELECT COUNT(1) INTO V_COUNT
         FROM Rest_Day
         WHERE Rest_Day = v_year_month_day;

         IF(v_Count=0)THEN
              ---非加班日，不做 计算 。
              GOTO NEXT;
         END IF;
         dbms_output.put_line(to_char(v_fpt_first_time,'yyyy-MM-dd HH24:MI:SS'));
         IF(v_fpt_first_time is NULL AND v_fpt_last_time is NOT NULL) THEN
             dbms_output.put_line('hello world!');
             IF(v_fpt_last_time >to_date(v_year_month_day_str || ' 13:00:00','yyyy-MM-dd hh24:mi:ss')) then

                 v_fpt_first_time:= to_date(v_year_month_day_str || ' 13:00:00','yyyy-MM-dd hh24:mi:ss');
             ELSE
                 v_fpt_first_time:= to_date(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd hh24:mi:ss');
             END IF;

             dbms_output.put_line(to_char(v_fpt_first_time,'yyyy-MM-dd HH24:MI:SS'));
         END IF;
         IF(v_fpt_first_time is NOT NULL AND v_fpt_last_time IS NULL) THEN
              IF(v_fpt_first_time <to_date(v_year_month_day_str || ' 12:00:00','yyyy-MM-dd hh24:mi:ss')) then

                 v_fpt_last_time:= to_date(v_year_month_day_str || ' 12:00:00','yyyy-MM-dd hh24:mi:ss');
              ELSE
                 v_fpt_last_time:= to_date(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd hh24:mi:ss');
              END IF;
         END IF;

         ---设定 正常 下班时间 。
         v_normal_off_duty_time:=to_date(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd hh24:mi:ss');
         v_normal_on_duty_time:=to_date(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd hh24:mi:ss');
         v_highnoon_time:=to_date(v_year_month_day_str|| ' 12:00:00','yyyy-MM-dd hh24:mi:ss');
         /*
         ---若加班起始时间晚于8:00，下班时间晚于17:00
         IF(v_fpt_first_time>=v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              ---加班日工作时长为： 17:00-  加班起始时间
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_fpt_first_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time >v_normal_off_duty_time ) THEN
              v_Rest_Day_Time_Temp:= round((v_normal_off_duty_time- v_normal_on_duty_time)*24*60);
         ELSIF(v_fpt_first_time<v_normal_on_duty_time AND v_fpt_last_time <v_normal_off_duty_time) THEN
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_normal_on_duty_time)*24*60);
         ELSE
              v_Rest_Day_Time_Temp := round((v_fpt_last_time- v_fpt_first_time)*24*60);
         END IF;*/
         --工作 时长。
         v_Rest_Day_Time_Temp:=round((v_fpt_last_time- v_fpt_first_time)*24*60);
         --跨越正午时刻，总时间减去1小时。
         IF(v_fpt_first_time <=v_highnoon_time AND v_fpt_last_time >=v_highnoon_time) THEN
              v_Rest_Day_Time_Temp := v_Rest_Day_Time_Temp -1*60;
         END IF;

         IF(v_Rest_Day_Time_Temp<0) THEN
             v_Rest_Day_Time_Temp:=0 ;
         END IF;

         v_duration_of_days_of_overtime := v_duration_of_days_of_overtime +FLOOR(v_Rest_Day_Time_Temp/30) * 0.5;
     END LOOP;
     close day_cur;

end get_duration_overtime_day_ARS;
/

prompt
prompt Creating procedure GET_D_T_ORDINARY_DAYS_OF_A_R_S
prompt =================================================
prompt
create or replace procedure dukepu.get_d_t_ordinary_days_of_A_R_S(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_Delay_Total_Time out NUMBER) AS
       ---获取平日加班的 延时时间

       type t_cur is ref cursor;
       day_cur t_cur;
       v_year_month_day date;
       v_year_month_day_str varchar2(20);
        --下班时间
       v_fpt_last_time date;
       v_Delay_Time_TEMP INT:=0;
       --v_count INT;
begin
     v_Delay_Total_Time:=0;
     ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,    ---指纹日期
            TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'), ---指纹日期字符串。
            A_R_S.Fpt_Last_Time                        ---最后一次指纹时间。
     FROM Attendance_Record_Summary A_R_S
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month ,'yyyy-MM')
     AND Fingerprint_Date != ALL(
         SELECT Rest_Day
         FROM Rest_Day
         WHERE TRUNC(Rest_day,'MM') = TO_DATE(v_year_and_month ,'yyyy-MM')
     );
     LOOP

         <<NEXT>>
         NULL;

         FETCH day_cur INTO v_year_month_day,
                            v_year_month_day_str,
                            v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;


         IF(v_fpt_last_time IS NULL) THEN

              GOTO NEXT;
         END IF;

         v_Delay_Time_TEMP := round((v_fpt_last_time- TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-DD HH24:MI:SS'))*24*60);
         dbms_output.put_line(v_Delay_Time_TEMP);
         ---只要超过17:00  统一计算为延时。
         IF(v_Delay_Time_TEMP <=0) THEN
               GOTO NEXT;
         END IF;
         dbms_output.put_line(v_Delay_Total_Time);
         v_Delay_Total_Time := v_Delay_Total_Time +FLOOR(v_Delay_Time_TEMP/30) * 0.5;
     END LOOP;
     close day_cur;

end get_d_t_ordinary_days_of_A_R_S;
/

prompt
prompt Creating procedure GET_JOB_NUMBER
prompt =================================
prompt
create or replace procedure dukepu.GET_JOB_NUMBER(V_JOB_NUMBER OUT VARCHAR2 ) AS
  v_Next_seq  INT;
  v_Count INT;
  str_Next_Seq VARCHAR2(10);
begin

  SELECT Count(1) INTO v_Count
  FROM EMPLOYEES
  WHERE SUBSTR(JOB_NUMBER,1,6) = TO_CHAR(SYSDATE,'YYMMDD');

  IF(v_Count =0) THEN
             v_Next_Seq := 1;
  ELSE
      SELECT (MAX(SUBSTR(JOB_NUMBER,LENGTH(JOB_NUMBER)-2,3)) +1) INTO v_Next_Seq
      FROM EMPLOYEES
      WHERE JOB_NUMBER != 'admin'
      AND JOB_NUMBER != 'query'
      AND SUBSTR(JOB_NUMBER,1,6) = TO_CHAR(SYSDATE,'YYMMDD');
  END IF;

  str_Next_Seq:= CAST(v_Next_Seq AS VARCHAR2);
  V_JOB_NUMBER:= TO_CHAR(SYSDATE,'YYMMDD') || LPAD(str_Next_Seq,3,'0');

end GET_JOB_NUMBER;
/

prompt
prompt Creating procedure GET_LEAVE_EARLY_NUM
prompt ======================================
prompt
create or replace procedure dukepu.get_Leave_Early_Num(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_Leave_Early_Num out int) AS

       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       --下班时间
       v_fpt_last_time date;

       --当天下班时间
       v_off_duty_time date;

       v_COUNT INT;
begin
     v_Leave_Early_Num:=0;


        ---先进行 清空
            --更新 当日 的 考勤记录
        UPDATE Attendance_Record
        SET LEAVE_EARLY_NUM = 0
        WHERE JOB_NUMBER = v_Job_Number
        AND trunc(fingerprint_date,'MM')= TO_DATE(v_Year_And_Month,'yyyy-MM');

  ---获取迟到次数。
       ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),AR.Fpt_Last_Time
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'yyyy-MM');

     LOOP
         <<NEXT>>
         NULL;

         FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;
         IF(v_fpt_last_time IS NULL) THEN    ---如果未 刷下班卡，没法计算迟到次数。

              GOTO NEXT;
         END IF;

         ---刷了上班卡.
         --判断今天是否是公司休息日.

         --判断 今天 是否 为 加班日
         SELECT COUNT(1) INTO v_COUNT
         FROM Rest_Day
         WHERE Rest_Day= TO_DATE(v_year_month_day_str,'yyyy-MM-dd');

         --加班日，不计算早退
         IF(1=v_Count) THEN
             GOTO NEXT;
         END IF;

         v_off_duty_time:= TO_DATE(v_year_month_day_str || '17:00:00','yyyy-MM-dd HH24:MI:SS');

         IF(v_fpt_last_time>=v_off_duty_time) THEN
              GOTO NEXT;

         END IF;

          --更新 当日 的 考勤记录
        UPDATE Attendance_Record
        SET LEAVE_EARLY_NUM = 1
        WHERE JOB_NUMBER = v_Job_Number
        AND fingerprint_date= v_year_month_day;

        v_Leave_Early_Num:=v_Leave_Early_Num+1;
     END LOOP;
     CLOSE day_cur;

end get_Leave_Early_Num;
/

prompt
prompt Creating procedure GET_LEAVE_EARLY_NUM_OF_ARS
prompt =============================================
prompt
create or replace procedure dukepu.get_Leave_Early_Num_Of_ARS(v_Job_Number in varchar2,v_Year_And_Month in varchar2,v_Leave_Early_Num out int) AS

       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       --下班时间
       v_fpt_last_time date;

       --当天下班时间
       v_off_duty_time date;

       v_COUNT INT;
begin
     v_Leave_Early_Num:=0;


        ---先进行 清空
            --更新 当日 的 考勤记录
        UPDATE Attendance_Record_Summary
        SET LEAVE_EARLY_NUM = 0
        WHERE JOB_NUMBER = v_Job_Number
        AND trunc(fingerprint_date,'MM')= TO_DATE(v_Year_And_Month,'yyyy-MM');

  ---获取迟到次数。
       ---获取某指定日期内的总延时 时间
     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),ARS.Fpt_Last_Time
     FROM Attendance_Record_Summary ARS
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND TRUNC(FingerPrint_DATE,'MM') =TO_DATE(v_year_and_month,'yyyy-MM');

     LOOP
         <<NEXT>>
         NULL;

         FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;
         IF(v_fpt_last_time IS NULL) THEN    ---如果未 刷下班卡，没法计算迟到次数。

              GOTO NEXT;
         END IF;

         ---刷了上班卡.
         --判断今天是否是公司休息日.

         --判断 今天 是否 为 加班日
         SELECT COUNT(1) INTO v_COUNT
         FROM Rest_Day
         WHERE Rest_Day= TO_DATE(v_year_month_day_str,'yyyy-MM-dd');

         --加班日，不计算早退
         IF(1=v_Count) THEN
             GOTO NEXT;
         END IF;

         v_off_duty_time:= TO_DATE(v_year_month_day_str || '17:00:00','yyyy-MM-dd HH24:MI:SS');

         IF(v_fpt_last_time>=v_off_duty_time) THEN
              GOTO NEXT;

         END IF;

          --更新 当日 的 考勤记录
        UPDATE Attendance_Record_Summary
        SET LEAVE_EARLY_NUM = 1
        WHERE JOB_NUMBER = v_Job_Number
        AND fingerprint_date= v_year_month_day;

        v_Leave_Early_Num:=v_Leave_Early_Num+1;
     END LOOP;
     CLOSE day_cur;

end get_Leave_Early_Num_Of_ARS;
/

prompt
prompt Creating procedure GET_NOT_FINGERPRINT_TIMES
prompt ============================================
prompt
create or replace procedure dukepu.Get_Not_FingerPrint_Times(v_Job_Number in varchar2,v_year_and_month in varchar2,v_NOT_FingerPrint_Times out int) as

       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       ---上班时间
       v_fpt_first_time date;
     --下班时间
       v_fpt_last_time date;

       v_Count INT;

       v_leave_Start_time Ask_For_leave.Leave_Start_Time%type;
       v_leave_end_Time   ASK_FOR_Leave.Leave_End_Time%type;

begin
     v_NOT_FingerPrint_Times:=0;

     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),AR.Fpt_First_Time,AR.Fpt_Last_Time
     FROM Attendance_Record AR
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND (AR.Fpt_First_Time IS NULL OR AR.Fpt_Last_Time IS NULL)
     AND TRUNC(FingerPrint_DATE,'MM') = TO_DATE(v_year_and_month|| '-01','YYYY-MM-DD');

     LOOP
         <<NEXT>>
         NULL;
         FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_first_time,v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;


         ---未出勤,不计算未打卡.
         IF(v_fpt_first_time IS NULL AND v_fpt_last_time IS NULL) THEN
             GOTO NEXT;
         END IF;


         ---判断今天是否为公司休息日。
                ---1.先判断今日是否为公司正常休息日.
          SELECT COUNT(1) INTO v_COUNT
          FROM DUAL
          WHERE EXISTS(
            select 1
            from Attendance_Record AR
            where (AR.Fpt_First_Time IS NOT NULL OR AR.Fpt_Last_Time IS NOT NULL)
                  AND trunc(AR.fingerprint_date,'DD') =v_year_Month_day
                  having count(1) < 99
          );
          IF(v_COUNT >=1) THEN
                GOTO NEXT;     ---正常休息日，不计算
          END IF;
          ---判断是否为请假日
          ---2. 正常工作日，判断当天是否请假。
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day;
          IF (v_Count = 0) THEN
             ---正常班
             IF(v_fpt_first_time IS NULL AND v_fpt_last_time is not null) THEN
                  v_NOT_FingerPrint_Times:=  v_NOT_FingerPrint_Times +1;
             ELSIF (v_fpt_first_time IS NOT NULL AND v_fpt_last_time is  null) THEN
                  v_NOT_FingerPrint_Times:=  v_NOT_FingerPrint_Times +1;
             END IF;
             GOTO NEXT;
          END IF;

          ---请假了。
          --是否请了全天假期
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day
          AND A_F_L.leave_start_time <= TO_DATE(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')  ---从8点开始起假;
          AND A_F_L.Leave_end_Time >=TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd HH24:MI:SS');  ---从17:00 开始下班;

          IF(v_Count >= 1) THEN
              --- 请了全天假
              GOTO NEXT;
          END IF;
          --是否请的早上假
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day
          AND A_F_L.leave_start_time <=TO_DATE(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')  ---从8点开始起假;
          AND A_F_L.Leave_end_Time <TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd HH24:MI:SS');  ---从17:00 开始下班;
          IF(v_Count >= 1) THEN
               --检查下班卡，是否没刷上。
               IF(v_fpt_last_time is null) THEN
                     v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                     GOTO NEXT;
               END IF;
               ---如果下班时间<=12:30,认为刷卡无效
               IF(v_fpt_last_time<=TO_DATE(v_year_month_day_str || ' 12:30:00','yyyy-MM-dd HH24:MI:SS')) THEN
                   v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                   GOTO NEXT;
               END IF;

          END IF;
          --是否请的下午假
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day
          AND A_F_L.leave_start_time > TO_DATE(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')  ---从8点开始起假;
          AND A_F_L.Leave_end_Time >= TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd HH24:MI:SS');  ---从17:00 开始下班;
          IF(v_Count >= 1) THEN
               --检查上班卡，是否没刷上。
               IF(v_fpt_first_time is null) THEN
                     v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                     GOTO NEXT;
               END IF;
               ---如果上班卡时间超过12:00,被计为无效卡.
               IF(v_fpt_first_time > TO_DATE(v_year_month_day_str || ' 12:00:00','yyyy-MM-dd HH24:MI:SS')) THEN
                    v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                     GOTO NEXT;
               END IF;
          END IF;
          --请的假是中间，要求两头都要刷卡。
          IF(v_fpt_first_time IS NULL) THEN
             v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
             GOTO NEXT;
          ELSIF(v_fpt_last_time IS NULL) THEN
             v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
              GOTO NEXT;
          END IF;

          SELECT A_F_L.Leave_Start_Time,A_F_L.Leave_End_Time INTO v_Leave_Start_Time,v_Leave_End_Time
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day;

          ---如果第一次刷卡时间超过请假时间.
          IF(v_fpt_first_time >= v_Leave_Start_Time) THEN
               ---上班无效卡.
               v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
               GOTO NEXT;
          END IF;
            ---如果最后一次刷卡时间超过请假时间.
          IF(v_fpt_last_time <=v_Leave_end_Time) THEN
               ---最后一次: 无效卡.
               v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
               GOTO NEXT;
          END IF;


     END LOOP;
end Get_Not_FingerPrint_Times;
/

prompt
prompt Creating procedure GET_NOT_FP_TIMES_OF_A_R_S
prompt ============================================
prompt
create or replace procedure dukepu.Get_Not_FP_Times_Of_A_R_S(v_Job_Number in varchar2,v_year_and_month in varchar2,v_NOT_FingerPrint_Times out int) as

       type t_cur is ref cursor;
       day_cur t_cur;

       v_year_month_day date;
       v_year_month_day_str varchar2(20);

       ---上班时间
       v_fpt_first_time date;
     --下班时间
       v_fpt_last_time date;


      -- v_leave_Start_time Ask_For_leave.Leave_Start_Time%type;
       --v_leave_end_Time   ASK_FOR_Leave.Leave_End_Time%type;

begin
     v_NOT_FingerPrint_Times:=0;

     OPEN day_cur FOR
     SELECT FingerPrint_DATE,TO_CHAR(FingerPrint_Date,'YYYY-MM-DD'),AR_S.Fpt_First_Time,AR_S.Fpt_Last_Time
     FROM Attendance_Record_Summary AR_S
     WHERE JOB_NUMBER = v_JOB_NUMBER
     AND (AR_S.Fpt_First_Time IS NULL OR AR_S.Fpt_Last_Time IS NULL)
     AND TRUNC(FingerPrint_DATE,'MM') = TO_DATE(v_year_and_month,'YYYY-MM');

     LOOP
         <<NEXT>>
         NULL;
         FETCH day_cur INTO v_year_month_day,v_year_month_day_str,v_fpt_first_time,v_fpt_last_time;
         EXIT WHEN day_cur%NOTFOUND;


         ---未出勤,不计算未打卡.
         IF(v_fpt_first_time IS NULL AND v_fpt_last_time IS NULL) THEN
             GOTO NEXT;
         END IF;


         ---判断今天是否为公司休息日。
                ---1.先判断今日是否为公司正常休息日.
          /*
          SELECT COUNT(1) INTO v_COUNT
          FROM DUAL
          WHERE EXISTS(
            select 1
            from Attendance_Record AR
            where (AR.Fpt_First_Time IS NOT NULL OR AR.Fpt_Last_Time IS NOT NULL)
                  AND trunc(AR.fingerprint_date,'DD') =v_year_Month_day
                  having count(1) < 99
          );
          */
          --加班日，计算未 打卡。目的是要求 去补 卡。
          /*
          SELECT COUNT(1) INTO v_Count
          FROM Rest_Day
          where Rest_day = to_date(v_year_Month_day,'yyyy-MM-dd');
          IF(v_COUNT >=1) THEN
                GOTO NEXT;     ---加班日，不计算
          END IF;
          */
          --
          ---判断是否为请假日
          ---2. 正常工作日，判断当天是否请假。
          /*
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day;
          IF (v_Count = 0) THEN
             ---正常班
             IF(v_fpt_first_time IS NULL AND v_fpt_last_time is not null) THEN
                  v_NOT_FingerPrint_Times:=  v_NOT_FingerPrint_Times +1;
             ELSIF (v_fpt_first_time IS NOT NULL AND v_fpt_last_time is  null) THEN
                  v_NOT_FingerPrint_Times:=  v_NOT_FingerPrint_Times +1;
             END IF;
             GOTO NEXT;
          END IF;
          */
          ---请假了。
          --是否请了全天假期
          /*
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day
          AND A_F_L.leave_start_time <= TO_DATE(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')  ---从8点开始起假;
          AND A_F_L.Leave_end_Time >=TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd HH24:MI:SS');  ---从17:00 开始下班;

          IF(v_Count >= 1) THEN
              --- 请了全天假
              GOTO NEXT;
          END IF;
          */
          /*
          --是否请的早上假
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day
          AND A_F_L.leave_start_time <=TO_DATE(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')  ---从8点开始起假;
          AND A_F_L.Leave_end_Time <TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd HH24:MI:SS');  ---从17:00 开始下班;
          IF(v_Count >= 1) THEN
               --检查下班卡，是否没刷上。
               IF(v_fpt_last_time is null) THEN
                     v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                     GOTO NEXT;
               END IF;
               ---如果下班时间<=12:30,认为刷卡无效
               IF(v_fpt_last_time<=TO_DATE(v_year_month_day_str || ' 12:30:00','yyyy-MM-dd HH24:MI:SS')) THEN
                   v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                   GOTO NEXT;
               END IF;

          END IF;
          --是否请的下午假
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day
          AND A_F_L.leave_start_time > TO_DATE(v_year_month_day_str || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')  ---从8点开始起假;
          AND A_F_L.Leave_end_Time >= TO_DATE(v_year_month_day_str || ' 17:00:00','yyyy-MM-dd HH24:MI:SS');  ---从17:00 开始下班;
          IF(v_Count >= 1) THEN
               --检查上班卡，是否没刷上。
               IF(v_fpt_first_time is null) THEN
                     v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                     GOTO NEXT;
               END IF;
               ---如果上班卡时间超过12:00,被计为无效卡.
               IF(v_fpt_first_time > TO_DATE(v_year_month_day_str || ' 12:00:00','yyyy-MM-dd HH24:MI:SS')) THEN
                    v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
                     GOTO NEXT;
               END IF;
          END IF;
          */
          --请的假是中间，要求两头都要刷卡。
          IF(v_fpt_first_time IS NULL) THEN
             v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
             GOTO NEXT;
          ELSIF(v_fpt_last_time IS NULL) THEN
             v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
              GOTO NEXT;
          END IF;

          /*
          SELECT A_F_L.Leave_Start_Time,A_F_L.Leave_End_Time INTO v_Leave_Start_Time,v_Leave_End_Time
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = v_year_Month_day;

          ---如果第一次刷卡时间超过请假时间.
          IF(v_fpt_first_time >= v_Leave_Start_Time) THEN
               ---上班无效卡.
               v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
               GOTO NEXT;
          END IF;
            ---如果最后一次刷卡时间超过请假时间.
          IF(v_fpt_last_time <=v_Leave_end_Time) THEN
               ---最后一次: 无效卡.
               v_NOT_FingerPrint_Times := v_NOT_FingerPrint_Times + 1;
               GOTO NEXT;
          END IF;
          */

     END LOOP;
end Get_Not_FP_Times_Of_A_R_S;
/

prompt
prompt Creating procedure GET_SHOULD_AR_DAYS
prompt =====================================
prompt
create or replace procedure dukepu.get_Should_AR_Days(v_year_and_month varchar2,v_should_AR_Days OUT INT )  AS
       ---统计该月休息日天数。
       v_count_of_rest_days int;
       v_total_days INT;
begin
     ---应出勤天数统计
     SELECT COUNT(1) INTO v_count_of_rest_days
     FROM Rest_Day R_D
     WHERE trunc(R_D.Rest_Day,'MM') = to_date(v_year_and_month,'yyyy-MM');

     select substr(to_char(last_day(to_date('2019-03','yyyy-MM')),'yyyy-MM-dd'),length(to_char(last_day(to_date('2019-03','yyyy-MM')),'yyyy-MM-dd'))-1,2) INTO v_total_days
     from dual;

     v_should_AR_Days:=v_total_days - v_count_of_rest_days;


end get_Should_AR_Days;
/

prompt
prompt Creating procedure GET_TOTAL_TIME_FOR_A_F_L
prompt ===========================================
prompt
create or replace procedure dukepu.GET_Total_TIME_For_A_F_L(v_job_number in nvarchar2, v_year_and_month IN VARCHAR2,v_vacation_total_time out int) AS

       ---游标
       type t_cur is ref cursor;
       day_cur t_cur;    ---某月内刷卡记录的日期游标.



       v_fingerprint_date_str varchar2(20);

       v_Count INT;                                  ---用于表示数量.
       v_vacation_time_temp   INT:=0;

begin
----某人一个月总共请假多少小时.

       v_vacation_total_time:=0;
      ---打开游标
      open day_cur FOR
      select to_char(fingerprint_date,'YYYY-MM-DD') fingerPrint_date_str
      from Attendance_record
      where job_number = v_job_number
      and trunc(Fingerprint_date,'MM') = to_date(v_year_and_month|| '-01','YYYY-MM-DD');

      LOOP
          <<NEXT>>
          NULL;
          FETCH day_cur INTO v_fingerprint_date_str;
          EXIT WHEN day_cur%NOTFOUND;

          v_Count:=0;


         ---当天是否公司休息日.
         SELECT COUNT(1) INTO v_Count
         FROM DUAL
         WHERE EXISTS(
             SELeCT 1
             from Attendance_Record AR
             where (AR.Fpt_First_Time IS NOT NULL OR AR.Fpt_Last_Time IS NOT NULL)
             AND AR.fingerprint_date=to_date(v_fingerprint_date_str,'YYYY-MM-DD')
             HAVING COUNT(1) <99
           );
         ---公司休息日.
          IF(v_COUNT >= 1) THEN
              GOTO NEXT;
          END IF;
          ---2. 正常工作日，判断当天是否请假。
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') = to_date(v_fingerprint_date_str,'YYYY-MM-DD');
          IF (v_Count = 0) THEN
             GOTO NEXT;             ---没请假，继续循环。
          END IF;
          ---进行了请假，计算时间。
          SELECT (LEAVE_END_TIME-LEAVE_START_TIME)*24 INTO v_vacation_time_temp
          FROM ASK_FOR_LEAVE A_F_L
          WHERE JOB_NUMBER = v_JOB_NUMBER
          AND TRUNC(A_F_L.leave_start_time,'DD') =to_date(v_fingerprint_date_str,'YYYY-MM-DD');


          ---如果终止时间>13:30,起始时间<12:00,则请假时间-1;
          SELECT COUNT(1) INTO v_Count
          FROM DUAL
          WHERE EXISTS(
                SELECT 1
                FROM ASK_FOR_LEAVE A_F_L
                WHERE JOB_NUMBER = v_JOB_NUMBER
                AND A_F_L.leave_start_time < TO_DATE(v_fingerprint_date_str || ' 12:00:00','YYYY-MM-DD HH24:MI:SS')
                AND A_F_L.Leave_End_Time > TO_DATE(v_fingerprint_date_str|| ' 13:30:00','YYYY-MM-DD HH24:MI:SS')
          );
          IF(v_Count >=1) THEN
                v_vacation_time_temp:=v_vacation_time_temp-1;
          END IF;

          v_vacation_total_time:= v_vacation_total_time + v_vacation_time_temp;

      END LOOP;
      close day_Cur;
end GET_Total_TIME_For_A_F_L;
/

prompt
prompt Creating procedure GET_T_T_FOR_A_F_L_BY_NAME
prompt ============================================
prompt
create or replace procedure dukepu.GET_T_T_For_A_F_L_By_Name(v_Name in nvarchar2, v_year_and_month IN VARCHAR2,v_vacation_total_time out int) AS

       ---游标
       type t_cur is ref cursor;
       day_cur t_cur;    ---某月内刷卡记录的日期游标.



       v_fingerprint_date_str varchar2(20);

       v_Count INT;                                  ---用于表示数量.
       v_vacation_time_temp   INT:=0;

begin
----某人一个月总共请假多少小时.

       v_vacation_total_time:=0;
      ---打开游标
      open day_cur FOR
      select to_char(fingerprint_date,'YYYY-MM-DD') fingerPrint_date_str
      from Attendance_record
      where name = v_Name
      and trunc(Fingerprint_date,'MM') = to_date(v_year_and_month|| '-01','YYYY-MM-DD');

      LOOP
          <<NEXT>>
          NULL;
          FETCH day_cur INTO v_fingerprint_date_str;
          EXIT WHEN day_cur%NOTFOUND;

          v_Count:=0;


         ---当天是否公司休息日.
         SELECT COUNT(1) INTO v_Count
         FROM DUAL
         WHERE EXISTS(
             SELeCT 1
             from Attendance_Record AR
             where (AR.Fpt_First_Time IS NOT NULL OR AR.Fpt_Last_Time IS NOT NULL)
             AND AR.fingerprint_date=to_date(v_fingerprint_date_str,'YYYY-MM-DD')
             HAVING COUNT(1) <99
           );
         ---公司休息日.
          IF(v_COUNT >= 1) THEN
              GOTO NEXT;
          END IF;
          ---2. 正常工作日，判断当天是否请假。
          SELECT COUNT(1) INTO v_Count
          FROM ASK_FOR_LEAVE A_F_L
          WHERE name = v_name
          AND TRUNC(A_F_L.leave_start_time,'DD') = to_date(v_fingerprint_date_str,'YYYY-MM-DD');
          IF (v_Count = 0) THEN
             GOTO NEXT;             ---没请假，继续循环。
          END IF;
          ---进行了请假，计算时间。
          SELECT (LEAVE_END_TIME-LEAVE_START_TIME)*24 INTO v_vacation_time_temp
          FROM ASK_FOR_LEAVE A_F_L
          WHERE name = v_name
          AND TRUNC(A_F_L.leave_start_time,'DD') =to_date(v_fingerprint_date_str,'YYYY-MM-DD');


          ---如果终止时间>13:30,起始时间<12:00,则请假时间-1;
          SELECT COUNT(1) INTO v_Count
          FROM DUAL
          WHERE EXISTS(
                SELECT 1
                FROM ASK_FOR_LEAVE A_F_L
                WHERE name = v_name
                AND A_F_L.leave_start_time < TO_DATE(v_fingerprint_date_str || ' 12:00:00','YYYY-MM-DD HH24:MI:SS')
                AND A_F_L.Leave_End_Time > TO_DATE(v_fingerprint_date_str|| ' 13:30:00','YYYY-MM-DD HH24:MI:SS')
          );
          IF(v_Count >=1) THEN
                v_vacation_time_temp:=v_vacation_time_temp-1;
          END IF;

          v_vacation_total_time:= v_vacation_total_time + v_vacation_time_temp;

      END LOOP;
      close day_Cur;
end GET_T_T_For_A_F_L_By_Name;
/

prompt
prompt Creating procedure IMPORT_PRODUCT_RECORD
prompt ========================================
prompt
create or replace procedure dukepu.Import_Product_Record(v_dept VARCHAR2,v_year_and_month varchar2,v_RandomStr varchar2,v_result out INT) as

       --type cur_t is ref cursor;
       --name_cur cur_t;

       v_Subject VARCHAR2(30);

       --v_Count INT;

       --v_Name Products_Record_Temp.Name%TYPE;
       --v_Sheet_Name Products_Record_Temp.Sheet_Name%TYPE;
begin
  ---此存储过程用于导入单据BillNo中的数据到 Product_Record.
  ----先检查该单据中的每个姓名是否是唯一的.
       v_Subject:= 'Import_Product_Record';

       dbms_output.put_line(v_dept);
       dbms_output.put_line(v_randomStr);
       dbms_output.put_line(v_year_and_month);
           dbms_output.put_line(v_Subject);
       ---不检查名字在考勤表中是否存在,重复.
       /*
       OPEN name_cur FOR
       SELECT
              DISTINCT
              name,
              SHEET_NAME
       FROM Products_Record_Temp  P_R_T
       WHERE P_R_T.dept = v_dept
       AND   P_R_T.Year_And_Month = v_year_and_month;


       DELETE MESSAGE
       WHERE RANDOM_STR = v_RandomStr;

       ---判断 dep
       LOOP
          FETCH name_cur INTO
                          v_Name,
                          v_Sheet_Name;
          EXIT WHEN  name_cur%NOTFOUND;

          ---判断此人,本月是否有考勤记录.
          select COUNT(distinct job_number) INTO v_Count
          from Attendance_Record AR
          WHERE TRUNC(AR.FingerPrint_Date,'MM') = TO_DATE(v_year_and_month,'YYYY-MM')
          AND AR.Name = v_Name;
          IF(v_Count=0) THEN
               ---保存信息到MESSAGE中.
              ---保存错误信息.
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            VALUES(
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 不存在考勤记录！',
                   '0',
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            );
            v_Result:=0;
          ELSIF(v_COUNT>1) THEN
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            SELECT
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 考勤表中存在同名用户',
                   0,
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            FROM DUAL;
             v_Result:=0;
          END IF;
       END LOOP;
       CLOSE name_cur;

       IF(v_Result=0) THEN
          RETURN;
       END IF;
       */
       INSERT INTO Products_Record(
                                       seq,
                                        AR_job_number,
                                        name,
                                        Report_Dept,
                                        products_name,
                                        summary_process,
                                        specific_process,
                                        quantities,
                                         sheet_name,
                                        FILE_NAME,
                                        REPORT_SPECIFIC_MONTH,
                                        update_time
                                     )
       SELECT                         seq_products_record_temp.nextval,
                                        emps.job_number,
                                        P_R_T.name,
                                        P_R_T.Report_Dept,
                                        P_R_T.products_name,
                                        P_R_T.summary_process,
                                        P_R_T.specific_process,
                                        P_R_T.quantities,
                                        P_R_T.sheet_name,
                                        P_R_T.path,
                                        REPORT_SPECIFIC_MONTH,
                                        P_R_T.update_time
       FROM Products_Record_TEMP P_R_T LEFT  JOIN Employees emps
            ON P_R_T.name = emps.name
       WHERE P_R_T.report_dept = v_dept;
       v_Result:=1;
       RETURN;
end Import_Product_Record;
/

prompt
prompt Creating procedure IMPORT_SCATTERED_RECORD
prompt ==========================================
prompt
create or replace procedure dukepu.Import_Scattered_Record(v_dept varchar2,v_year_and_month varchar2, v_randomStr VARCHAR2,v_result out INT) as

       --type cur_t is ref cursor;
       --name_cur cur_t;

       v_Subject VARCHAR2(30);

       --v_Count INT;

       --v_Name Products_Record_Temp.Name%TYPE;
       --v_Sheet_Name Products_Record_Temp.Sheet_Name%TYPE;
begin
  ---此存储过程用于导入单据BillNo中的数据到 Product_Record.
  ----先检查该单据中的每个姓名是否是唯一的.
       v_Subject:= 'Import_Scattered_Record';
       DBMS_OUTPUT.put_line(v_randomStr);
       DBMS_OUTPUT.put_line(v_Subject);

       /*
       OPEN name_cur FOR
       SELECT
              DISTINCT
              name,
              SHEET_NAME
       FROM Scattered_Record_Temp  S_R_T
       WHERE S_R_T.dept = v_dept
       AND S_R_T.Year_And_Month = v_year_and_month;

       DELETE MESSAGE
       WHERE RANDOM_STR = v_randomStr;


       LOOP
          FETCH name_cur INTO
                          v_Name,
                          v_Sheet_Name;
          EXIT WHEN  name_cur%NOTFOUND;
         --判断本单据中的Name是否唯一
            ---判断此人,本月是否有考勤记录.
            ---判断此人,本月是否有考勤记录.
          select COUNT(distinct AR.job_number) INTO v_Count
          from Attendance_Record AR
          WHERE TRUNC(AR.FingerPrint_Date,'MM') = TO_DATE(v_year_and_month,'YYYY-MM')
          AND AR.Name = v_Name;
          IF(v_Count=0) THEN
               ---保存信息到MESSAGE中.
              ---保存错误信息.
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            VALUES(
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 不存在考勤记录！',
                   '0',
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            );
            v_Result:=0;
          ELSIF(v_COUNT>1) THEN
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            SELECT
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 考勤表中存在同名用户',
                   0,
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            FROM DUAL;
             v_Result:=0;
          END IF;
       END LOOP;
       CLOSE name_cur;

       IF(v_Result=0) THEN
          RETURN;
       END IF;
       */
       ---先删除,再新增.
       DELETE
       FROM Scattered_Record S_R
       WHERE S_R.REPORT_DEPT = v_dept
       AND trunc(S_R.REPORT_SPECIFIC_MONTH,'MM') =to_date( v_year_and_month,'yyyy-MM');

       INSERT INTO Scattered_Record(
                                       seq,
                                       AR_JOB_NUMBER,
                                        name,
                                        particulars,
                                        quantities,
                                        TOTAL_HOURS,
                                        labour_cost,
                                        aggregate_amount,
                                        Report_Dept,
                                        update_time,
                                        REPORT_SPECIFIC_MONTH
                                     )
       SELECT                         seq_Scattered_record.nextval,
                                        emps.job_number,
                                        S_R_T.Name,
                                        S_R_T.Particulars,
                                        S_R_T.Quantities,
                                        S_R_T.Hours,
                                        S_R_T.Labour_Cost,
                                        S_R_T.Aggregate_Amount,
                                        S_R_T.Report_Dept,
                                        SYSDATE,
                                        REPORT_SPECIFIC_MONTH
       FROM Scattered_Record_TEMP S_R_T LEFT JOIN Employees emps
            ON S_R_T.name = emps.name
       WHERE S_R_T.report_Dept = v_dept;
       v_Result:=1;
       RETURN;
end Import_Scattered_Record;
/

prompt
prompt Creating procedure INSERT_PRODUCT_RECORD_TEMP
prompt =============================================
prompt
create or replace procedure dukepu.INSERT_Product_Record_Temp(
                                                       v_job_number varchar2,
                                                       v_name       nvarchar2,
                                                       v_report_dept  nvarchar2,
                                                       v_products_name nvarchar2,
                                                       v_summary_process nvarchar2,
                                                       v_specific_process nvarchar2,
                                                       v_process_cost number,
                                                       v_quantities   integer,
                                                       v_amount       number,
                                                       v_sheet_name   nvarchar2,
                                                       v_path         nvarchar2,
                                                       v_year_and_month varchar2
) as
begin
        INSERT INTO Products_Record_Temp(
              seq,
              job_number,
              name,
              report_dept,
              products_name,
              summary_process,
              specific_process,
              process_cost ,
              quantities,
              amount,
              sheet_name,
              path,
              report_specific_month,
              update_time
          )
        VALUES(
               SEQ_Products_Record_Temp.nextval,
               v_job_number, ---<<工号>>---
              v_name,  --<<姓名>>----
              v_report_dept,  ---<报表部门.>-------
              v_products_name,  ---<品名>---------
              v_summary_process,  ---<概要工序>----
              v_specific_process,  ------<指定工序>---
              v_process_cost,  ----<单序成本>-------
              v_quantities,  ----<件数>------
              v_amount,  ----<金额>------
              v_sheet_name,     ---<表名>-----
              v_path,     ---<路径>-----
              v_year_and_month,     ---<年月>----
              SYSDATE);

end INSERT_Product_Record_Temp;
/

prompt
prompt Creating procedure LOADLOBFROMBFILE_PROC
prompt ========================================
prompt
create or replace procedure dukepu.loadlobfrombfile_proc(
         tid in number,
         rfilename in varchar2,    --文件
         rfiledir in varchar2, --目录
         upmessage out varchar2
       )
as
   dest_loc       blob;
   src_loc        bfile;
begin
  insert into blobtest(id,ablob) values(tid,empty_blob()) return ablob into dest_loc;

  src_loc := bfilename(rfiledir,rfilename);


   /* 如果bfile文件实际存在 */
   if (dbms_lob.fileexists(src_loc) != 0)
   then
       /* 打开bfile源文件 */
       dbms_lob.open(src_loc, dbms_lob.lob_readonly);
       /* 打开目标blob: */
       dbms_lob.open(dest_loc, dbms_lob.lob_readwrite);
       /*从文件中装入 */
       dbms_lob.loadfromfile(dest_loc, src_loc,dbms_lob.getlength(src_loc));
       /* 记得关闭: */
       dbms_lob.close(dest_loc);
       dbms_lob.close(src_loc);
       commit;
       upmessage := 0;
   end if;
   exception
       when others then
          rollback;
          upmessage := '操作失败';

end;
/

prompt
prompt Creating procedure SAVEDAILYCAPACITYTOHISTORY
prompt =============================================
prompt
create or replace procedure dukepu.SaveDailyCapacityToHistory(S_D_C IN INTEGER)
is
begin

     INSERT INTO Daily_Capacity_History(
            SEQ,
            JOB_NUMBER,
            PRODUCTS_NAME,
            SUMMARY_PROCESS,
            SPECIFIC_PROCESS,
            MANUFACTURE_QUANTITIES,
            YIELDS_TIME,
            SUBMIT_PERSON,
            UPDATE_TIME,
            SAVED_HISTORY_TIME
     )
     SELECT SEQ,
            JOB_NUMBER,
            PRODUCTS_NAME,
            NVL(SUMMARY_PROCESS,'NULL'),
            SPECIFIC_PROCESS,
            MANUFACTURE_QUANTITIES,
            YIELDS_TIME,
            SUBMIT_PERSON,
            UPDATE_TIME,
            SYSDATE
     FROM Daily_Capacity
     WHERE SEQ =S_D_C;


end SaveDailyCapacityToHistory;
/

prompt
prompt Creating procedure SAVETOAFL
prompt ============================
prompt
create or replace procedure dukepu.SaveToAFL AS
     v_Job_Number Ask_For_leave.Job_Number%type;
     v_name Ask_For_leave_temp.name%type;
     v_leave_Start_Time Ask_For_Leave.Leave_Start_Time%type;
     v_leave_End_Time Ask_For_Leave.leave_end_Time%type;
     v_NO Ask_For_Leave_Temp.No%type;

       ---获取起始日的:  年月日字符串.
     v_current_date            date;        ---当前日期:
     v_start_date_temp         date;        ---起始日期变量.(临时变量)
     v_end_date_temp           date;        ---终止日期变量(临时变量)
     v_start_time_str_temp     varchar2(20);   ---时间变量(字符串部分)
     v_end_time_str_temp       varchar2(20);   --时间变量(字符串变量)

begin
     ---将临时记录保存到Ask_For_Leave表中.
     ----如果
     select JOB_NUMBER,name,LEAVE_START_TIME,LEAVE_END_TIME,NO
            INTO V_JOB_NUMBER,v_name,v_leave_Start_Time,v_leave_End_Time,v_NO
     FROM ASK_FOR_LEAVE_TEMP;
       ---如果起始时间与结束时间不是同一日
          v_start_date_temp := trunc(v_leave_start_time,'DD');
          v_end_date_temp:= trunc(v_leave_end_time,'DD');
          v_current_date:= trunc(v_leave_start_time,'DD');

     LOOP
          EXIT WHEN v_current_date > v_end_date_temp;
          IF (v_current_date = v_start_date_temp)  THEN
              v_start_time_str_temp := TO_CHAR(v_leave_Start_Time,'YYYY-MM-DD HH24:MI:SS');
          ELSE
              v_start_time_str_temp:= TO_CHAR(v_current_date,'YYYY-MM-DD') || ' 08:00:00';
          END IF;

          IF (v_current_date = v_end_date_temp) THEN
              v_end_time_str_temp := TO_CHAR(v_leave_End_Time,'YYYY-MM-DD HH24:MI:SS');
          ELSE
              v_end_time_str_temp:= TO_CHAR(v_current_date,'YYYY-MM-DD') || ' 17:00:00';
          END IF;

          INSERT INTO ASK_FOR_LEAVE(
                seq,
                job_number,
                name,
                leave_start_time,
                leave_end_time,
                record_time,
                no
          )VALUES(
                SEQ_ASK_FOR_LEAVE.NEXTVAL,
                v_JOB_NUMBER,
                v_name,
                TO_DATE(v_start_time_str_temp,'YYYY-MM-DD HH24:MI:SS'),
                TO_DATE(v_end_time_str_temp,'YYYY-MM-DD HH24:MI:SS'),
                SYSDATE,
                v_NO
          );
          v_current_date:= v_current_date + 1;
     END LOOP;
end SaveToAFL;
/

prompt
prompt Creating procedure SP_DEMO
prompt ==========================
prompt
create or replace procedure dukepu.sp_demo(
       emp_no in varchar2,
       o_res1 out varchar2,
       o_res2 out varchar2,
       o_ds1 out sys_refcursor,
       o_ds2 out sys_refcursor
)
is
   v_count number;
begin
     open o_ds1 for
     select 'hello world'
     from dual;

     open o_ds2
     for select 'hello world'
     from dual;

     o_res1:= 'ok';
     o_res2:= to_char(sysdate,'yyyy/mm/dd hh24:mi:ss');

     return;

end;
/

prompt
prompt Creating procedure SP_IMPORT_DC_TEMP_TO_PR
prompt ==========================================
prompt
create or replace procedure dukepu.sp_import_DC_Temp_To_PR(v_Dept nvarchar2,v_result out INT) as

       --type cur_t is ref cursor;
       --name_cur cur_t;


       --v_Count INT;

       --v_Name Products_Record_Temp.Name%TYPE;
       --v_Sheet_Name Products_Record_Temp.Sheet_Name%TYPE;
begin
  ---此存储过程用于导入单据BillNo中的数据到 Product_Record.
  ----先检查该单据中的每个姓名是否是唯一的.

       ---不检查名字在考勤表中是否存在,重复.
       /*
       OPEN name_cur FOR
       SELECT
              DISTINCT
              name,
              SHEET_NAME
       FROM Products_Record_Temp  P_R_T
       WHERE P_R_T.dept = v_dept
       AND   P_R_T.Year_And_Month = v_year_and_month;


       DELETE MESSAGE
       WHERE RANDOM_STR = v_RandomStr;

       ---判断 dep
       LOOP
          FETCH name_cur INTO
                          v_Name,
                          v_Sheet_Name;
          EXIT WHEN  name_cur%NOTFOUND;

          ---判断此人,本月是否有考勤记录.
          select COUNT(distinct job_number) INTO v_Count
          from Attendance_Record AR
          WHERE TRUNC(AR.FingerPrint_Date,'MM') = TO_DATE(v_year_and_month,'YYYY-MM')
          AND AR.Name = v_Name;
          IF(v_Count=0) THEN
               ---保存信息到MESSAGE中.
              ---保存错误信息.
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            VALUES(
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 不存在考勤记录！',
                   '0',
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            );
            v_Result:=0;
          ELSIF(v_COUNT>1) THEN
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            SELECT
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 考勤表中存在同名用户',
                   0,
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            FROM DUAL;
             v_Result:=0;
          END IF;
       END LOOP;
       CLOSE name_cur;

       IF(v_Result=0) THEN
          RETURN;
       END IF;
       */
       INSERT INTO Products_Record(
                                       seq,
                                        ar_job_number,
                                        name,
                                        Report_Dept,
                                        products_name,
                                        summary_process,
                                        specific_process,
                                        quantities,
                                        sheet_name,
                                        file_name,
                                        submit_date,
                                        update_time
                                     )
       SELECT                         seq_products_record_temp.nextval,
                                        emps.job_number,
                                        P_R_T.name,
                                        P_R_T.Report_Dept,
                                        P_R_T.products_name,
                                        P_R_T.summary_process,
                                        P_R_T.specific_process,
                                        P_R_T.quantities,
                                        P_R_T.sheet_name,
                                        P_R_T.path,
                                        P_R_T.UPDATE_TIME,
                                        P_R_T.update_time
       FROM Products_Record_TEMP P_R_T LEFT  JOIN Employees emps
            ON P_R_T.name = emps.name
       WHERE P_R_T.report_dept = v_dept;
       v_Result:=1;
       RETURN;
end sp_import_DC_Temp_To_PR;
/

prompt
prompt Creating procedure SP_IMPORT_SR_TEMP_TO_SR
prompt ==========================================
prompt
create or replace procedure dukepu.sp_import_SR_Temp_to_SR(v_dept varchar2,v_submit_date varchar2, v_randomStr VARCHAR2,v_result out INT) as

       --type cur_t is ref cursor;
       --name_cur cur_t;

       v_Subject VARCHAR2(30);

       --v_Count INT;

       --v_Name Products_Record_Temp.Name%TYPE;
       --v_Sheet_Name Products_Record_Temp.Sheet_Name%TYPE;
begin
  ---此存储过程用于导入单据BillNo中的数据到 Product_Record.
  ----先检查该单据中的每个姓名是否是唯一的.
       v_Subject:= 'Import_Scattered_Record';
       DBMS_OUTPUT.put_line(v_randomStr);
       DBMS_OUTPUT.put_line(v_Subject);

       /*
       OPEN name_cur FOR
       SELECT
              DISTINCT
              name,
              SHEET_NAME
       FROM Scattered_Record_Temp  S_R_T
       WHERE S_R_T.dept = v_dept
       AND S_R_T.Year_And_Month = v_year_and_month;

       DELETE MESSAGE
       WHERE RANDOM_STR = v_randomStr;


       LOOP
          FETCH name_cur INTO
                          v_Name,
                          v_Sheet_Name;
          EXIT WHEN  name_cur%NOTFOUND;
         --判断本单据中的Name是否唯一
            ---判断此人,本月是否有考勤记录.
            ---判断此人,本月是否有考勤记录.
          select COUNT(distinct AR.job_number) INTO v_Count
          from Attendance_Record AR
          WHERE TRUNC(AR.FingerPrint_Date,'MM') = TO_DATE(v_year_and_month,'YYYY-MM')
          AND AR.Name = v_Name;
          IF(v_Count=0) THEN
               ---保存信息到MESSAGE中.
              ---保存错误信息.
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            VALUES(
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 不存在考勤记录！',
                   '0',
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            );
            v_Result:=0;
          ELSIF(v_COUNT>1) THEN
            INSERT INTO MESSAGE(
                   PROMPT,
                   FLAG,
                   OPERATE_TIME,
                   SUBJECT,
                   RANDOM_STR
            )
            SELECT
                   v_Sheet_Name ||' ' ||v_year_and_month ||' '|| v_dept|| ' '|| v_Name || ' 考勤表中存在同名用户',
                   0,
                   SYSDATE,
                   v_Subject,
                   v_RandomStr
            FROM DUAL;
             v_Result:=0;
          END IF;
       END LOOP;
       CLOSE name_cur;

       IF(v_Result=0) THEN
          RETURN;
       END IF;
       */
       ---先删除,再新增.
       DELETE
       FROM Scattered_Record S_R
       WHERE S_R.REPORT_DEPT = v_dept
       AND S_R.submit_date = v_submit_date;

       INSERT INTO Scattered_Record(
                                       seq,
                                       ar_job_number,
                                        name,
                                        particulars,
                                        quantities,
                                        TOTAL_HOURS,
                                        labour_cost,
                                        aggregate_amount,
                                        REPORT_DEPT,
                                        update_time,
                                        submit_date
                                     )
       SELECT                         seq_Scattered_record.nextval,
                                        emps.job_number,
                                        S_R_T.Name,
                                        S_R_T.Particulars,
                                        S_R_T.Quantities,
                                        S_R_T.HOURS,
                                        S_R_T.Labour_Cost,
                                        S_R_T.Aggregate_Amount,
                                        S_R_T.REPORT_DEPT,
                                        SYSDATE,
                                        S_R_T.update_time
       FROM Scattered_Record_TEMP S_R_T LEFT JOIN Employees emps
            ON S_R_T.name = emps.name
       WHERE S_R_T.report_Dept = v_dept;
       v_Result:=1;
       RETURN;
end sp_import_SR_Temp_to_SR;
/

prompt
prompt Creating procedure SP_SAVE_EMPS
prompt ===============================
prompt
create or replace procedure dukepu.sp_save_emps as

       type cur_t is  ref cursor;
       emps_temp_cur cur_t;

       v_dept nvarchar2(10);
       v_name nvarchar2(10);



       v_ar_name nvarchar2(20);   --考勤表中姓名.
       v_job_number varchar2(20);                ---考勤表中的工号.

       v_random_str varchar2(50);
       v_Report_Time date;               ---报表时间.

       v_count int:=0;
begin

     ---先分析
     open   emps_temp_cur
     for
         select distinct department,
                         name,
                         random_str,
                         Report_Time
         from employees_temp;

     fetch  emps_temp_cur into v_dept,v_name,v_random_str,v_Report_Time;
     loop
         exit when emps_temp_cur%notfound;

         select count(1) into v_count
         from employees
         where name = v_name;

         if(v_count=0)
         then
             ---这里要求Attendance_Record中的名称唯一,即同一个姓名只能对应一个Job_Number;

             insert into employees(
                                    seq,
                                    job_number,
                                    department,
                                    name,
                                    random_str,
                                    Report_Time
                                    )
              values(
                     Seq_Employees.Nextval,
                     'NULL',
                     v_dept,
                     v_name,
                     v_random_str,
                     v_Report_Time
              );

             ---取最近3个月,指定姓名的工号.
             select count(distinct job_number)  into v_count
             from attendance_record ar
             where ar.name = v_name
             and trunc(ar.fingerprint_date,'MM')>= trunc(add_months(sysdate,-2),'MM');

             if(v_count =1) then
                 select ar.job_number,ar.name into v_job_number,v_ar_name
                 from attendance_record ar
                 where ar.name = v_name
                 and rownum =1;

                          --更新AR_Name,Job_Number
                 UPDATE Employees
                 set Job_Number =v_job_number,
                     ar_name = v_ar_name,
                     ar_job_number = v_job_number
                 where name = v_name;

             end if;

         end if;
         fetch  emps_temp_cur into v_dept,v_name,v_random_str,v_Report_Time;
     end loop;
     close emps_temp_cur;
end sp_save_emps;
/

prompt
prompt Creating procedure TEST_FOR_INSERT_TO_T
prompt =======================================
prompt
create or replace procedure dukepu.test_for_insert_To_T as
  begin
       insert into T(num,name) values(6,'f');
  end;
/

prompt
prompt Creating procedure UPDATE_JN_BY_NAME
prompt ====================================
prompt
create or replace procedure dukepu.UPDATE_JN_By_Name(v_JN varchar2,v_Name varchar2) AS
          ---更新Employees    中 Job_Number
          -- Products_Record  中 Job_Number
          -- Scattered_Record 中 Job_Number

begin

              UPDATE EMPLOYEES
              SET JOB_Number = v_JN
              WHERE Name = v_Name;


              ---更新产量表
              UPDATE Products_Record
              SET AR_JOB_NUMBER = v_JN
              WHERE Name = v_Name
              AND (
                  TRUNC(submit_date,'MM') >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
              );


              ---更新零活表
              UPDATE Scattered_Record
              SET ar_JOB_Number = v_JN
              WHERE Name = v_Name
              AND (
                TRUNC(submit_date,'MM') >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
              );

end UPDATE_JN_By_Name;
/

prompt
prompt Creating procedure UPDATE_JN_IN_EMPS_IS_NULL
prompt ============================================
prompt
create or replace procedure dukepu.UPDATE_JN_IN_EMPS_IS_NULL AS
          ---更新Employees    中 Job_Number
          -- Products_Record  中 Job_Number
          -- Scattered_Record 中 Job_Number

           v_Job_Number VARCHAR2(20);
           v_Name       varchar2(20);
          type cur_t is ref cursor;
          jN_Cursor cur_t;
begin
          OPEN jN_Cursor
          FOR SELECT NAME
          FROM EMPLOYEES EMPS
          WHERE EMPS.Job_Number = 'NULL';

          FETCH jN_Cursor INTO v_NAME;
          LOOP
              ---获取一个新的工号.
              general_job_number(v_Job_Number);

              UPDATE EMPLOYEES
              SET JOB_Number = V_Job_Number
              WHERE Name = v_Name;

              COMMIT;

              ---更新产量表
              UPDATE Products_Record
              SET AR_JOB_Number = v_Job_Number
              WHERE Name = v_Name
              AND (
                    REPORT_SPECIFIC_MONTH >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
                  OR TRUNC(submit_date,'MM') >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
              );

              COMMIT;
              ---更新零活表
              UPDATE Scattered_Record
              SET ar_JOB_Number = v_Job_Number
              WHERE Name = v_Name
              AND (
                    REPORT_SPECIFIC_MONTH  >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
                  OR TRUNC(submit_date,'MM') >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
              );
              COMMIT;

              FETCH jN_Cursor INTO v_NAME;
          END LOOP;
          CLOSE jN_Cursor;


end UPDATE_JN_IN_EMPS_IS_NULL;
/

prompt
prompt Creating procedure UPDATE_JN_IN_PR_AND_SR_BY_NAME
prompt =================================================
prompt
create or replace procedure dukepu.UPDATE_JN_IN_PR_And_SR_By_Name(v_JN nvarchar2, v_name nvarchar2) AS
          ---更新Employees    中 Job_Number
          -- Products_Record  中 Job_Number
          -- Scattered_Record 中 Job_Number
             ---此v_JN 为考勤表中的工号.
             v_AR_Name             VARCHAR2(20):='';   ---考勤中姓名.
             v_Count               INT;
begin
                   ---更新产量表
              UPDATE Products_Record
              SET AR_JOB_Number = v_JN
              WHERE Name = v_Name
              AND (
                    REPORT_SPECIFIC_MONTH >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
                  OR TRUNC(submit_date,'MM') >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
              );


              ---更新零活表
              UPDATE Scattered_Record
              SET AR_JOB_Number = v_JN
              WHERE Name = v_Name
              AND (
                    REPORT_SPECIFIC_MONTH >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
                  OR TRUNC(submit_date,'MM') >TRUNC(ADD_MONTHS(SYSDATE,-2),'MM')
              );


              SELECT COUNT(1) INTO v_Count
              FROM Attendance_Record AR
              WHERE AR.Job_Number = v_JN
              AND TRUNC(AR.Fingerprint_Date,'MM') >= ADD_MONTHS(TRUNC(SYSDATE,'MM'),-2)
              AND ROWNUM = 1;

              if(v_Count =1)
              THEN
                    SELECT name INTO V_AR_Name
                    FROM Attendance_Record AR
                    WHERE AR.Job_Number = v_JN
                    AND TRUNC(AR.Fingerprint_Date,'MM') >= ADD_MONTHS(TRUNC(SYSDATE,'MM'),-2)
                    AND ROWNUM = 1;
              END IF;

              UPDATE EMPLOYEES
              SET JOB_Number = v_JN,
                  AR_Name = v_AR_Name,
                  AR_Job_Number = v_JN
              WHERE Name = v_Name;



end UPDATE_JN_IN_PR_And_SR_By_Name;
/

prompt
prompt Creating package body GETHZPY
prompt =============================
prompt
create or replace package body dukepu.GetHZPY is

  -- Private type declarations
  --type <TypeName> is <Datatype>;

  -- Private constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  --<VariableName> <Datatype>;

  -- Function and procedure implementations
  FUNCTION GetHzPY_by_index(p_PY_Index number) RETURN VARCHAR2 IS
   v_PY_List THZPY_LIST :=  THZPY_LIST(
    'a',      'aes',    'ai',     'an',     'ang',    'ao',     'ba',     'bai',    'baike',  'baiwa',
    'ban',    'bang',   'bao',    'be',     'bei',    'ben',    'beng',   'bi',     'bia',    'bian',
    'biao',   'bie',    'bin',    'bing',   'bo',     'bu',     'ca',     'cai',    'cal',    'can',
    'cang',   'cao',    'ce',     'cen',    'ceng',   'ceok',   'ceom',   'ceon',   'ceor',   'cha',
    'chai',   'chan',   'chang',  'chao',   'che',    'chen',   'cheng',  'chi',    'chong',  'chou',
    'chu',    'chua',   'chuai',  'chuan',  'chuang', 'chui',   'chun',   'chuo',   'ci',     'cis',
    'cong',   'cou',    'cu',     'cuan',   'cui',    'cun',    'cuo',    'da',     'dai',    'dan',
    'dang',   'dao',    'de',     'defa',   'dei',    'deli',   'dem',    'den',    'deng',   'deo',
    'di',     'dia',    'dian',   'diao',   'die',    'dim',    'ding',   'diu',    'dong',   'dou',
    'du',     'duan',   'dug',    'dui',    'dul',    'dun',    'duo',    'e',      'ei',     'en',
    'eng',    'eo',     'eol',    'eom',    'eos',    'er',     'fa',     'fan',    'fang',   'fei',
    'fen',    'feng',   'fenwa',  'fiao',   'fo',     'fou',    'fu',     'fui',    'ga',     'gad',
    'gai',    'gan',    'gang',   'gao',    'ge',     'gei',    'gen',    'geng',   'geo',    'geu',
    'gib',    'go',     'gong',   'gongli', 'gou',    'gu',     'gua',    'guai',   'guan',   'guang',
    'gui',    'gun',    'guo',    'ha',     'hai',    'hal',    'han',    'hang',   'hao',    'haoke',
    'he',     'hei',    'hem',    'hen',    'heng',   'heui',   'ho',     'hol',    'hong',   'hou',
    'hu',     'hua',    'huai',   'huan',   'huang',  'hui',    'hun',    'huo',    'hwa',    'hweong',
    'i',      'ji',     'jia',    'jialun', 'jian',   'jiang',  'jiao',   'jie',    'jin',    'jing',
    'jiong',  'jiu',    'jou',    'ju',     'juan',   'jue',    'jun',    'ka',     'kai',    'kal',
    'kan',    'kang',   'kao',    'ke',     'keg',    'kei',    'kem',    'ken',    'keng',   'keo',
    'keol',   'keop',   'keos',   'keum',   'ki',     'kong',   'kos',    'kou',    'ku',     'kua',
    'kuai',   'kuan',   'kuang',  'kui',    'kun',    'kuo',    'kweok',  'kwi',    'la',     'lai',
    'lan',    'lang',   'lao',    'le',     'lei',    'lem',    'len',    'leng',   'li',     'lia',
    'lian',   'liang',  'liao',   'lie',    'lin',    'ling',   'liu',    'liwa',   'lo',     'long',
    'lou',    'lu',     'luan',   'lue',    'lun',    'luo',    'lv',     'm',      'ma',     'mai',
    'man',    'mang',   'mangmi', 'mao',    'mas',    'me',     'mei',    'men',    'meng',   'meo',
    'mi',     'mian',   'miao',   'mie',    'min',    'ming',   'miu',    'mo',     'mol',    'mou',
    'mu',     'myeo',   'myeon',  'myeong', 'n',      'na',     'nai',    'nan',    'nang',   'nao',
    'ne',     'nei',    'nem',    'nen',    'neng',   'neus',   'ng',     'ngag',   'ngai',   'ngam',
    'ni',     'nian',   'niang',  'niao',   'nie',    'nin',    'ning',   'niu',    'nong',   'nou',
    'nu',     'nuan',   'nue',    'nun',    'nung',   'nuo',    'nv',     'nve',    'o',      'oes',
    'ol',     'on',     'ou',     'pa',     'pai',    'pak',    'pan',    'pang',   'pao',    'pei',
    'pen',    'peng',   'peol',   'phas',   'phdeng', 'phoi',   'phos',   'pi',     'pian',   'piao',
    'pie',    'pin',    'ping',   'po',     'pou',    'ppun',   'pu',     'q',      'qi',     'qia',
    'qian',   'qiang',  'qianke', 'qianwa', 'qiao',   'qie',    'qin',    'qing',   'qiong',  'qiu',
    'qu',     'quan',   'que',    'qun',    'ra',     'ram',    'ran',    'rang',   'rao',    're',
    'ren',    'reng',   'ri',     'rong',   'rou',    'ru',     'rua',    'ruan',   'rui',    'run',
    'ruo',    'sa',     'saeng',  'sai',    'sal',    'san',    'sang',   'sao',    'se',     'sed',
    'sei',    'sen',    'seng',   'seo',    'seon',   'sha',    'shai',   'shan',   'shang',  'shao',
    'she',    'shei',   'shen',   'sheng',  'shi',    'shike',  'shiwa',  'shou',   'shu',    'shua',
    'shuai',  'shuan',  'shuang', 'shui',   'shun',   'shuo',   'shw',    'si',     'so',     'sol',
    'song',   'sou',    'su',     'suan',   'sui',    'sun',    'suo',    'ta',     'tae',    'tai',
    'tan',    'tang',   'tao',    'tap',    'te',     'tei',    'teng',   'teo',    'teul',   'teun',
    'ti',     'tian',   'tiao',   'tie',    'ting',   'tiu',    'tol',    'ton',    'tong',   'tou',
    'tu',     'tuan',   'tui',    'tun',    'tuo',    'uu',     'wa',     'wai',    'wan',    'wang',
    'wei',    'wen',    'weng',   'wie',    'wo',     'wu',     'xi',     'xia',    'xian',   'xiang',
    'xiao',   'xie',    'xin',    'xing',   'xiong',  'xiu',    'xu',     'xuan',   'xue',    'xun',
    'ya',     'yan',    'yang',   'yao',    'ye',     'yen',    'yi',     'yin',    'ying',   'yo',
    'yong',   'you',    'yu',     'yuan',   'yue',    'yug',    'yun',    'za',     'zad',    'zai',
    'zan',    'zang',   'zao',    'ze',     'zei',    'zen',    'zeng',   'zha',    'zhai',   'zhan',
    'zhang',  'zhao',   'zhe',    'zhei',   'zhen',   'zheng',  'zhi',    'zhong',  'zhou',   'zhu',
    'zhua',   'zhuai',  'zhuan',  'zhuang', 'zhui',   'zhun',   'zhuo',   'zi',     'zo',     'zong',
    'zou',    'zu',     'zuan',   'zui',    'zun',    'zuo'
    );
BEGIN
    IF (p_PY_Index>0) AND (p_PY_Index<527) THEN
       RETURN  INITCAP(v_PY_List(p_PY_Index));
    ELSE
      RETURN '';
    END IF;
END GetHzPY_by_index;


FUNCTION get_greece_alphabet_py(p_Index NUMBER)
RETURN NUMBER IS
  v_greece_alphabet_list TGREECE_ALPHABET_LIST := TGREECE_ALPHABET_LIST(
    'a','b','g','d','e','z','e','th','i','k','l','m','n','x','o','p','r',
    's','t','u','ph','kh','ps','o'
  );
BEGIN
  IF (p_Index>0) AND (p_Index<95) THEN
    RETURN v_greece_alphabet_list(p_Index);
  ELSE
    RETURN '';
  END IF;
end get_greece_alphabet_py;


FUNCTION get_roma_num_py(p_Index NUMBER)
RETURN NUMBER IS
  v_rom_num_list TROMA_NUM_LIST := TROMA_NUM_LIST(
    '1','2','3','4','5','6','7','8','9','10','','','','','','',
    '1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20',
    '1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20',
    '1','2','3','4','5','6','7','8','9','10','','',
    '1','2','3','4','5','6','7','8','9','10','','',
    '1','2','3','4','5','6','7','8','9','10','11','12','',''
  );
BEGIN
  IF (p_Index>0) AND (p_Index<95) THEN
    RETURN v_rom_num_list(p_Index);
  ELSE
    RETURN '';
  END IF;
end get_roma_num_py;


FUNCTION get_py_index_01(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list01 TPYIndex_list := TPYIndex_list(
    TPYIndex_191_list(483,389,458,273,262, 50,395, 88,350,232,482, 24,182,172,178,213, 42,517,144,180,
     117,477,477,456,182,157,508,161,394,478,471,121,182,146,158, 90,395,279,190,201,
     437,269,311, 29,469,472,326,386,276,341,410,103, 65, 39,507,141,122,243,235,477,
     186,249,507,  0,483,408,415,128,471,499,471, 68,475,460,180,475,482,500,231, 97,
     451,172,355,456,  7, 24,115,423,102,459,503,159,147, 25, 44,501,389,361,108,263,
     341,455,474,112, 55,450, 81,508,320,483, 84, 96,456,477,463,172,  3,478,328,393,
     117,422,522,487,184,459,470,463,494,459,301,291,462,467,509,522, 17,328,477,408,
     477,506,147,250,510, 26,351, 18,502, 59,473,500, 18,459,351,395, 13,166,151,460,
     125,107,266, 24,155,168,141,352, 59,464,393,445,145,220,477,140,478,261,467,  4,
     242,106,245, 40, 48,470,509,366,175,408, 69),
    TPYIndex_191_list(418,297,179,181,435,505,526, 50,247,184,399,435,393,445, 25,278,461,443,483,457,
     467,140,209,456,477,117,232,167,479,459,376,320,457,262,458,466, 81,184,507,220,
     408,168,461,175, 21,431,110,471, 15,483,463,161,506,507, 24,182,474,522,232,449,
     234, 55,520,  0,125,432,399,258,421,515,464,333,339,122,232,415,346,109,507,520,
     245,411,236,167, 89,518, 16,456,184,277, 28,175,475,386,346,479, 47,341,368,508,
      57,451,483, 24,431,472,112,422,455, 98, 45,394,191, 81, 40, 15,498,165,474,500,
     521,472,482,467,498, 59,117,117,507,262,172,477,462,470,408, 92,499,505,440, 15,
     491,346,451,412,507,413,458,484,364,301,487,176,249, 83,422,149,178,457,388,341,
     353, 46, 51,376, 15,461,481,474,421,417,473,107, 24,460,490,136,376,225,481,493,
     520,322,411,513,483,499,522,389, 55,180,147),
    TPYIndex_191_list(501,348,478, 81,462,241, 15,330,179,231,242,251,341,459,421,479, 89,525,388,345,
     181,443,525,337,223, 43,140,339,427,513,451,172, 25,166, 57,434,388,474,111,459,
     483, 98,235, 25,136,459,459,265,475,179,340,345,112,509,  3,374,477,187,299,421,
     477, 71,211,  0,175, 51,177,386,490, 30, 23,  4,420, 72, 41,221,477,179,341,259,
     456,297,349,291, 43,234,247,213, 13,483, 21,491,507,408,482,149,348,347,229,427,
     451,240, 51, 42,460,433,462,229,246,491,306,422,472,246,279,491,465,369,369,441,
      43,291,291,179,472,395,396,343,  0,150,393, 90,  9,134,165,456,369,232,483,147,
     432,336,172,477,254,357,472,254,498,181,137,181,254,509,135,467,482,191,477,261,
     395,259,184,208,265,117,462,261,420,123,161,317,117,265,340,175,412,257,441,136,
     180,348, 89,122,478,  3,229, 31,266,516, 65),
    TPYIndex_191_list(408, 97,179,235,457, 91,108,108,184, 51,506,112,271,507,112,112,189,122,333,211,
     147,361, 55,172,341, 66,172, 70,449,186,229,117,351, 84,265,236,508, 22,178,178,
     388, 42,128, 55,214, 97,106,178, 59,180, 90,246,494,484, 67,194,386, 55, 67,229,
     110, 42,339,  0, 55,518,123,337, 97,348,517,175,172,472,168, 97,507,456,137,394,
     175,498,189,342, 54, 42,513,242,229,322,388,208,137,162,498,517,231,184,237,141,
     177,141,175,175,439,172,175,175,507, 42,523,268,229,510,471,180,199,462,507,477,
     510,268,223,185,208,473,447,461,270,213,178,234,194,180,124,265, 48,222,481,194,
     185,348,242, 26,220,189,262, 89,467,456,477,470,473,394,233,242,330,395,172,342,
     177,352,460,477,469,108,185,439,184, 70,250,470,470,247,229, 45,460,352,487,182,
      13,253, 18,121,121,477,322,184,474,125, 98),
    TPYIndex_191_list(133, 68,182,133,280,182,477,176,192,161,351,108,346,492,213,161,483,141,166, 70,
     214,231,231,414, 91,182,351,457,194,472,351,470,292,522,395,457,449,449,462,388,
     172,401,213,457,462,357,473,349,390, 48,467,457,214,172, 98,457,376,472,503,147,
     471, 81,499,  0,318,  2,346,471,507,252,431,391,435,524,110,494,484,229, 83,347,
       6,141,472,229, 43,341,229,472,472,484,159,262,365,351,204,225, 91,513,393,393,
     393,477, 69,398,186,  7,371,395,517,458,461,172,487,369, 61,137,350, 48, 93,159,
     264,252,468,518, 97,475,313,168,477, 50,347,462,335,162,159,483,306,469,366,313,
     124,187,247,125,452,339,456,177,487, 48,394,444,452, 98,395,185,321,452,270,357,
      81,395,509,434,457,477,339,333,518,467,477,461,471,351,459,445,335, 22,117,473,
     168,420, 68,447,526, 26,418,459,168,339,106),
    TPYIndex_191_list( 98,507,510,470,461,210,395,433,275,468,448,223,439,465,482,261,292,464,336,149,
     487,240,335,252,522,151,459,223,334,232,  7,264,247,415,117,147,485,482,136,136,
      15,147,477,341,441,472,449,229,350, 45,493,471, 90,339, 81,347,255,159,428,203,
     232,222,386,  0,519,455,478,339,447,342,  4,494,292,483,432,220,457,  3,300,517,
     499,488,461,460,516,456,452,431,136,339,339, 70,475,518,441, 65,151,471,339,503,
     232,459,479,137,494,143,246,290, 81,352,445,130,422,  4, 70,483,503,509, 41,448,
     483,491,474,262,161,487,164,484,172,508,451,386,467,165,498,472,232,483,377,189,
     345,472,388,321,416,480,451,479,327, 15,131,493,168,431,474,461,342,379,481,159,
     462,249, 40,145,366,447,172,318,456,459,518,242,447,174,417, 60,374,132,276,342,
      18,  6,231,524,510,268,421,177, 49,177,189),
    TPYIndex_191_list(421,393,  3,461,241,461,161,166,143,467,459,494, 43,334, 73,249,161,119,422,475,
     374,177,461,162,250,357,461,461,172,214,461,149,248,345,467,445,421,470,456,525,
     108,189,166, 30, 55,488, 70,483,444,457,339,149,231,467,166,478,470,474,408,472,
     479, 68,500,  0,517,299,485,462,345,484,  3,481,451,483,321, 72,463, 96, 71,463,
     328,478,524,297, 81,221,418,455,458,475, 97,466,509,499,179, 43,470,256,507,242,
     166,319,482,474,478,480,257,159,503,229,237,145,279,268,472,229,242,240,268, 70,
      46,332,328,460,256,457, 97,209,472, 42,479, 86,219,418,461, 58,164,168,513,503,
     461,498,229, 42, 41,229,477,246,491,413,156,496,175,488,510,221,295,356,239,166,
     478,296,442,192,484,181,329,487, 61,166, 98,143,439,441,143,354,363,143,420,143,
     478,167,147,245,143, 56,451,484,352,209,337),
    TPYIndex_191_list(484,484,471,442,441,441,442,244,166,477,243,243,471,441,435,337,242,211,471,516,
     413,413,517, 71,340,458,388,295,268,173,507,470,477,347,257,364,444,111, 18,464,
     221,180,172, 81,464,317,422,351,517,137,420,181,473,115,242,350,135,469,  7,236,
     510,117,161,  0,507,  6, 69,319,265,172,151,247, 59, 48,478,160, 94,502,117,140,
     474, 97,141, 40,473,462,398, 24,159, 68,188, 71,148,  4,464,459, 12,335, 15,477,
     478,147,467,515,347,112,109,353,481,187,458, 81,222,185,347,503,234,162, 26,181,
     475, 81,471,352,415,506,449,184,245,506,206,389, 89,421, 28,440, 17,459, 97,477,
     507,516,339,184,291,194,215,291,175,123,483,471,136,228,109,471,215,  4,393,280,
     441, 47,164, 18,231,455,513, 13,483,456,178,368,475,128,520,483,165, 98,474,117,
     172,257,389,445,478,112,508,178,179,155,123),
    TPYIndex_191_list( 57,459,333,225,464,165, 92,449,468,457,172,211,479,481,189,413,395,261,453, 47,
     441,353,508,229,322, 12,492, 94,505,456,506,470,505,  3,133,472,191,452,462,237,
     145,222,389,322, 17, 46,242,242,313,341,257,268,513,403,241, 21, 33,507,501,191,
      83, 46,517,  0,172,143,342,347, 81, 65,472,418,497,341,451,515,345,388,388,110,
     337,443,442,108,353, 96,525, 81,394,166, 97,421, 79,456,111,165,421, 68,475,510,
     175,483,342,345,198,477,328, 83,176,475,469,421,221,184,163, 71,358,341,470,459,
     457,  3,471, 72,368,179,247,213,242,472,421,451,166,240,240,369,229,235, 42,470,
     472,225,  7,449,376,514,477,250,510,514,161,215,161,467,215,398,252, 96,398,477,
     479,176,318,499, 20,415,354,236, 67,468,462,280,458,484,449,507,348,310,135,339,
     259,259, 46,494,186,124,423,420,472, 18,169),
    TPYIndex_191_list(487,462,  7,100,431,319,185,462, 83,473,164,189,498, 16,165,110, 84,470,199,  6,
     453,420,456,  6,176,231, 97,487,176,395,111,168, 18,243, 97,435,341,182,302, 40,
     459,108,172,159, 70,482,180,178,452,508,314,199,508,487,328, 48,485,514,472,278,
     463,111,112,  0,484, 91, 25,517,502,291,484,440,468,507, 98,268, 18,393, 98,151,
     467,107,506,265, 11,117,236,518,357,459,473,251,518,184,361, 89,172,121,460,168,
     185,135,175,175,292,507,505,459,155,140,470,210,472,266,234,320,471,482,472,459,
     431,447,352,411,159,459,390,394,462,252,117,456,194,220, 63,435,464,278,483,334,
     415,507,147,514,333,443,459,483,472,456,457,472,483,408,229,184,515,339,459,517,
      89,242, 98, 98,247,262, 61,335,184, 28,236,461,399,339,166,117,455,455,421,110,
     110,432,291,352,180,180,341, 83,464,161,449)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list01(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_01;


FUNCTION get_py_index_02(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list02 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(220,478,509,280,117,245,  4,215,478,471,184,229, 83,459,162,162,473,474,278,371,
     173,483,483,451,431,365,257, 70,368,348,166,455,341, 57,263,117,178, 92,477,508,
     165,262,472,479,468,178,451,506,350,507,462,445,231,254,357,408,329,451,447, 63,
     161,346, 13,  0,467,483,141,521,474,484,364,366,237,257,317,487,249,214,393,505,
     484,417,364,266,479,413,294,423,318,222,280, 13,328,477,483,468,484,477,192,481,
     291,524,179,513,494,278,223,503,161,161,  6,368,249,331,136,456,345,445,500,263,
     459,459,268,233,231,162,141, 79,507,467,477,162,457,214,474,472, 42,177,257,117,
     108,472,477,152,177,117,395,415,342,231,468,463,294, 89,477, 30,  3,293,297,249,
     433, 50,179, 59,483,332,364,366,291,472,420,479,341,485,262, 18,393,464,291, 91,
     237,484,221,472,236,177,358,221,459,479,403),
    TPYIndex_191_list(462,352,261,229,243,472,510,221,186,518,463,408,420,482,513,470,264, 61,449,471,
     477,518,229,469, 25,277,295,479,243,364,349,441,365,474,477,180,516,510,159,395,
     477,433,457, 47,354,133,461,498,395,393,165,261,208, 28,491,484,350,151,505,175,
     297, 24,164,  0,347,395,297,179,297,507,483, 13,212,297,247,347,161,507,297,393,
     451,462,212,166,187,477,477, 13,347,240, 13,112,247, 94,334,513,334,194,473,513,
     470,510, 94, 72,178,261,261,399,389,268,233,459,459,215,482,294,318,450,450,450,
     474, 97,214,508,122,136,512,122,122,457, 18,178,432, 84,395,505,462,291,457,446,
     251,241,333,462,110,462,247, 35,462,184,186,233,186,510,462,334,447,459,229,472,
      72,166,240,361,456,147,393, 51,476,485, 11,474,  5,456,178,172,111,449,341,339,
     178,526,526,473,184,123,469,334,229,433,522),
    TPYIndex_191_list(117,445,328,  6,213,351,334,433,236, 48,333, 37, 12,439,469, 20,151,194,246, 98,
     295, 85,242,100,106,121,352,477,271,395,  4,451,164,261,229,172,439,451,482,136,
     234,474,177, 98,475, 26,354,112,280,229,482,459,364, 72,393, 47,441,128,124,458,
     478,483,279,  0,191,472,353, 49,418,235,162,184,220,265,215,215,522,136,471,123,
     245,245,236, 97,506,478, 89,147,506,451,328,178,522,209, 89,478,518,494,165,483,
     473,112,350,473,431,477,507,395, 98,510,500,247,472,257,147,172,164,435,456,483,
     520,221,194,472,472,451,520, 40,417,194,347,431,441, 94,457,453, 31,422,479,178,
     189,237,456,345, 17, 83,341,481,295, 67,395,371,411,520,176,233,192, 42, 85, 34,
      87,441,241,500,500,  6, 32,351,342,524,524, 72, 72,457,483,328,240,460,506, 25,
     347,177,472,223,500,233,233,347, 97,525,345),
    TPYIndex_191_list(186,474,177,474,186,500,477,469,280,475,475,477,295,472,172,462,194,457, 81,  6,
     524,451,364, 72,236,178,483,485,478,366,178,234,457,240,240,479,457,184, 42,479,
     451,472,280,352, 44, 64,243, 83, 83,295,472,472,472,280,472,211,165,464, 44,234,
     200,337,337,  0,350,507,502,477,179,416,352,324,334,488, 87,295,111,314,507,161,
      70, 69,447,117,268,477,477,333,340,185,366,401,404,345,505,395,354, 69,141,333,
     501,376,449, 69,386,339, 91,160,506,467,451,477, 12,333, 85,133,317,423,261,173,
     427,166,508,393, 21,143,494,271, 12,180, 42,507,456, 18, 18,501,261,345, 42,111,
     259, 12, 72,264, 51,178,459,221,175, 24,122,172,435,494,140,256,347,444,471,463,
     178,514,471, 59,439,477,507,433,507,461,441,141,209,259,482, 26, 24, 47,220,172,
     411,399,348,483,263,412,494,460,110,182, 98),
    TPYIndex_191_list(451,237,458,412,507, 26,348,182,182,241,478,457,242,477, 51,441,408,463,263, 43,
     456,110,213,207,211, 18,379,235,233,247,172,479,459,435,481,229,435,472, 81,334,
     166,277,166,111,351,472,492,477,106,376,106,395, 84,161,456,443,176,  7,393,501,
     423,117, 81,  0, 44,505,477,352,390,484,180, 84,501,176,342,322, 18,391,421,175,
     125,107, 18,208,175, 22,461,421,143,342,159,291,143,449,186,172,242,166,166,477,
     477,477,485,485,452,472,483, 48, 84,481,330, 48,517,477,172,508,450, 81,236,117,
     450,457,450,506,507,180, 61,507, 61,446,172,507,520,509,220,462,178,175,431,458,
     329,117,451,318,457,506,330,431, 73,507, 22,508, 45,474,166,257,240,460, 13,351,
     224,361,435,121,361,147,477,420,457,108,479,452,452,456,172,457,178,449, 61,483,
     395, 65,420,516,347,167,465,450,459,192,184),
    TPYIndex_191_list(477, 13,265,320,208, 11,298,500,161,522,482, 81,443,482,117,457, 18,482,468, 61,
      24,165,469,328,399,457,421,481,268,205,395,457,223,155,213,270,507,462,474, 85,
     149,451,467,461,408,210,350,166, 48,477,465,138,235, 48,389,513,485,322, 73,166,
     461,252,481,  0,484,328,485,483,483,194,503,235,177,346,431, 26,341,457,258,477,
     155, 47,456,229,232, 61,477,229,280, 98,456, 61, 73, 43,258,229,139,139,339,206,
     432,245,457,191,142,291, 96,143,500,484,179,172,235,483,151,352,421,431,295, 58,
     258,463,456,417,520,175,481, 73,280,487,434, 57,349, 33, 20,167,520,431, 15,468,
     451,125,451, 18,468,164,262,481,339,422,478,463,254,340,194,  3,346,472,368,520,
     408,479,353,159,487,413,339,474,411,165,172,136,184, 55,291,462,189,506,481, 32,
     470,393, 25,457,462,167,481,473,229,378,423),
    TPYIndex_191_list(478,467,420,487,266,133, 61,330,271,143, 48, 30, 30, 30, 65,265,501,439,  6,403,
     139,353,493,182,231,313,411,347,478,247,389,442,251,459,391,348, 81,507,247,185,
     339,339,483,333,233,411,482, 49,507,439, 47,339,351,322, 15,349,177, 48,231,333,
     214,166,506,  0,478,478,457,457, 70,421, 97,444,413,186, 33,461,108,111,223,223,
     459,265,233,456, 30,186, 63,459,421,394,328,477,459,299, 70,421,180,411,177,451,
     468,347,347,184,378,198,479,477,235,379,187,163,  3,475,216,458, 48,483,478, 69,
     259,291,259, 94,339,268,459,258, 50,507,306, 51,473, 25,507,213,213,482,117,237,
     264, 47,166, 42,221,163,468,358, 42,172,184,164,391,231,278,268,422,186,514,514,
     485,125,175, 89, 85, 28,173,507,214,500,342,125,175,483,482,457,500,457,457,351,
     161,161, 98,477,431,254, 83,389,477,477,472),
    TPYIndex_191_list(350,229,108,366,490,501,485,483,456,147,393,498,477,339,456, 78,361,457,347,173,
     483,  6,503,507,507, 78,472,450, 20,184,452,161,485,347,393,506,487,449,369,335,
     335,  7,298,494,487, 24,507,278,337,474,505,498,473,340,291,475, 48,328,173,257,
     351, 51,471,  0,500,319,276,341,445,  8,507,184,216,340,341,154,296,133,525,477,
     462,379,166,  8,507,216, 97, 97,299,505,151,177, 89,366,234,498,242,391,186,234,
     184,471,459,483,472, 25,128,431, 47,417,341,257,299,184,322,175,472,415,462,498,
     112,209,350,168,441,335,494,412,483,517,449,507,525,512,499,242,412,472, 12,451,
     449,347,391,265,258,117, 72,455,352,485,520,432,441, 16,455,526,458,339, 47,378,
     245,348,123, 81,167,339,399,449,236,471,506,232,137,477,467,472,506, 28, 24,431,
     521,198,398,178,266,128,259,378,322,306,175),
    TPYIndex_191_list(506,482,341,472,278,468,328,451,374,295,395,520,505,470,481, 20,473,164,472,523,
     467,340,172,431,219,219, 46,182,441,167,127, 89,461,462,341,498, 15,474,451, 77,
     456,520,127,135,347,364,353,521,416,416,364,322,194,474, 72,507,306,462,350,459,
     179,264,477,  0, 94,388,418,498,334,229,423,209,507,447,458,452,342,432,505, 98,
     306,352,498,456,503,192,364,387,416,417,233, 49, 55,143,322,507,339,412,231, 47,
      48,139,242,241,520,457,161,511,342,422,162,507,342,141,479,345,507,295,251, 42,
     313, 51,413,513,177,388,341,330,176,474,135,341,172,331,223, 96,459,371,141,496,
     477,470, 47,461,159,140,418,292,235,506,451,193,172, 32,463,421,107, 45,186,461,
      16,268,517,451,337,347, 96,162,177,418,474,511,231,481,279,242,517,499,337, 58,
     457, 71,379,348,178,211,388,462,498,  6,184),
    TPYIndex_191_list(475, 98,259,261,172,420, 72,221,184,475,366,475,475,291,455,178, 23,297,125,507,
     507,422,268,175,462,234,421,  8,412,242,485,359,507,473,225,372,399, 64,292,459,
     320,229,220,164,479,246,240,341,341,341,221,459,479,257,388,479, 64,462,503,246,
     257,268, 48,  0,523,243,421,387, 83,447,422,177,221,246,141,141,339,470,193,477,
     147, 11,334, 83,208,265,456,151, 33,398,143,467,177, 46,505, 97,483,  8,467, 97,
     295, 83,353,477,194,472,339,440,461, 97,473,458,265,510,  3, 81,505,399,233,351,
     465,477,177,388,177,517,477,231, 18,420,461,461,469,339,339,186,499,446, 11,483,
     221,451,394,173,173,483,177,440, 90,507,342,351,500,517,517,517,347,235,517, 51,
      92,510,178,148,320,482,272,339,328,237,117,109,180,502,477,390,175,105,507,108,
     330,108,500,211,415,483,172,172,168,462,433)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list02(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_02;


FUNCTION get_py_index_03(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list03 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(479, 81,467, 42,473,395,265,265,516, 57,456, 15, 11,178,394,161,109,181,468,111,
     347,161,472,494,109,393,184,473,109,468,334,505,236,149,268, 20,467,167,520,458,
     110,477,452, 89,  3, 24,  5,240,213,433,395,165,468,214,467,177,179,507,439,159,
     121,460,147,  0,187,459,215,509,457,394,503,503,147,149,449,432,517,524,509,388,
     291,457,339,506,477,472,449,235, 43,450,461,110,468,477,487,166,467,265,475,479,
     399,451,348,254,278,221,473, 57,474,417,337,177,189,149,453, 43,339,149,472,229,
     172,258,491,462,149,268, 61,291,501,166,147,468, 54,233,421,180,331,235,457,477,
     178,165, 69,475,475,229,421,439,461,110,393,502,149,477,460,464,388,177, 13,180,
     472,  3,475,366,259,229, 46,213, 85,446,474,168,247,364,240,246,243,387,422,472,
     510,485,477,161,399, 32,394,497,341,467,216),
    TPYIndex_191_list(478,346,111,328,111,236,209,446,307,433,222,524,266,450,444,339,479,520,450,439,
     222,223,240,332,399,429,361,  7, 97,433,229,350,182, 18,505, 59,366,341,483,456,
     470,108,518,361,503, 97,252, 48,477,125,133,507,176,388,449,182,252,507,484,110,
      89,459, 57,  0,399,162,463,298, 50,411,485,179,172,254,328,  5,111,477,117,278,
     161,475,510,463,474, 98,502,487,524,394, 97,242,411,278,505,420,457,138,117,268,
     477,475,475,395,295, 18,477,291,219,151,317,108,508, 69, 59,479,117,399,390,411,
     393,357,481,507,522, 70,136,337,  6,117,117,526, 22,498,408,510,320,395,138, 40,
     474,182,237,257,229,364,493,373,481,470,339,505,477,460,505,229,379,191, 24,361,
       8,361, 24,518, 50,477, 59,525,524,106,106,483,107,133,500,229,478,507,395,117,
     366,477,209,349,377,469, 97, 56,483,491,446),
    TPYIndex_191_list(479,178,237,500,470,372,505, 15,479,216,180,334, 16,369,457,222,237,112,339,452,
     187,147,478,350,482,240,322,514, 81,469,441,493,482, 18, 81,147,507,361, 15,459,
     164,449,306,173,433,172,461,247,212, 34,111,411,408, 90,347,479,184,215,517, 42,
     451,180,229,  0, 24,458,115,423,507,220,231,517,229,339, 24,245,411,341,339, 28,
      42,503,110,320,335,167, 47,493,234,483,483,136,142, 89,123,450, 67,108, 47,500,
     339,484,472,483,352,477,393,457,517,413,220,521,521,111, 46,348,295,449,242,149,
     346,509,184,184, 47,526,342,471,328,517,518, 23,322, 87, 51, 43,258,162,175,141,
     457, 72,141, 83,507,352,274,117,128,322,388,477,393, 97,117,451,451,173,520,175,
     477,457,472,472,500,483,151,455,329, 18,474,210,467,371,473,219,472, 16,166,214,
     178,214,408,112,445,507,271,254,209,161,435),
    TPYIndex_191_list(483,482,411,484,473,505,329,475,340,475,405,483,451,257,431,172,178,365,165,224,
     352,460,395,421,487,393, 51,328,173,477,505,117,306,261,136,179,418,474,462,484,
     518,266,413,173,474,178,165,147,341,249,484,364,395,507,452,435,364,422,499,408,
     394,194,457,  0,136,339,193,416,317,423,125, 57,505,300,172,178,342,459,257,467,
     123,517,445,345,473, 83,173,507, 72,240,377,457,172,231,166,481,341,143,121,121,
     442,162,393,524,322,482,176,161,164,141,477,477,124,192,141,141,449,507,514,487,
     222, 46,520,229,466,348,403,439,139,494,413,225,242,232,261,247,177,413,194, 21,
     242,233,503,498,399,251,294,473,433,322,510,386,352,175, 61,172,472,469,507,470,
     507,524, 61,337,399,162,214,505,388,457, 57, 83,110,268,456,359,235,237,345,459,
     370,108,500,223,487,405,443, 47,422,259,461),
    TPYIndex_191_list(186,463,166,172,306,445,297,369,439,497,111,349,472,155,347,136,237,223,124,457,
     394,518,376,172, 90,180,175, 51, 68,399,176,235,280,478,166,388,524,468, 47,122,
     184,524,477,337,112,166, 71,172,415,333, 47, 51,511,166,172,178,173,499,175,342,
      72,477, 21,  0,411,391,229,478,423,420,262,339,442, 24,168,172,341,291,297,477,
     124,191,478,368,348,472,339,261,502,141, 57,172,214,334, 79, 51,125,262,482,507,
     165,341,225,234,372,242,229, 64,247,264,166,313,247,507,124, 91,484,485,110,517,
     412,231,176, 51,348,510,247,472,229,510,347,178, 98,413,163,295,483,240,220,177,
     459,141,184,466,236,479,388,478,482,479,460,299, 25,500,231,184,403,391,524, 61,
     352,351, 31,183,483,246,229,523,243,422,186,472,221,221,510,246,229,  7,279,483,
     236,140,477,459,467, 44,457,339,194,478,186),
    TPYIndex_191_list(457,467,458,214,222,463,412,462,467, 53,478,341,463,341, 54,137,478,483,461,475,
     473,421,354,313,161,461,164,467,321,477,461,467,446,231, 51,477, 98,483, 58,164,
      26, 26,184,341,507,379, 48,379,508,417,415,229,494,483,229,214, 98,503,452,268,
     474,394,467,  0,186,340,350,413,348,477,475,475, 30,258, 85,505,487,452, 50,431,
     179,389,478, 84,182,214, 64, 70, 91,176,231, 23, 91,175,175,510,394,477,462,353,
     345,474,470,166,353,339,351,166, 92,477,461,139,257,  3,178,328, 42,446,446,328,
     234,173,374,271,445,470,106,364,459,184,350,306,446,320,184, 97, 18,376,254,415,
     399,445,194,418,376,399,271,254,439,364,500,378,500,259,242, 85,186,339,473,282,
      23,393,457,457,348,471, 89,473,487,506, 24, 71,404,224,291,108,350,314,494,262,
      84,517, 54,449,108, 69,445,252,482,332,341),
    TPYIndex_191_list(483,483,441,182,507,507,341,180,180,444,187,159,352, 20,147,508,318,469,165,482,
     467,467,487,472, 70,482,161,168,307,268,456, 49,318, 18,507,317,518,488,237,494,
     112,257,488,445,505,505,477,107,432,408,213,479,184,477,173,508,166, 16,494,510,
     482,136,161,  0,333,518,507,413, 47,408,184,469,394,469,117,172,139, 70,478,509,
     475,166,490, 47,451,160,175,408,106,464,117,518,507,478,456,193,446,472,431,270,
     225,477,261,352,334,461,477,413,213,346,184,333,465,507,165,266,456,351,477,180,
     395,323, 42,179,234,350,451,147,252,482, 25, 90,159,477,506,221,147,229,128,231,
      57,159,477,439,223,458, 49,181,415, 47,320,459,393,215,333,147,348,361,441,461,
     435, 98,487,229,404,408,225,404, 91,487,155,464,423, 58,501,279,484,445, 89,455,
     184,391,232,167,418,346, 73,185,161,143,472),
    TPYIndex_191_list(509,322,149, 43,341,109, 48,242,184,229,503,333,432,483,291,242,261,180,236,245,
     351,483,393,161,161,484,220,348,341,507,478,334, 16,484,452,371,110,484,194,339,
     391,379,339,328,457,484,365,164,175,302,456,435,112,455,431,451,368, 33,151,472,
     159,261,254,  0,479,472,348,394,257,490,167,277,141, 48, 98,231,339,339,257,432,
      62,451, 30,265,334,467,172,175,112,477,478,395,462,506,421,483, 18,265,395,441,
     394,481,184,439,442,350,350,473,240,168,484,278,317,482,352,514,232, 42,472,516,
     151,518,258,479,219,112,241,451,458,479,334,179,472,417,484,459,474,259,517, 47,
     420,418,447,208,378,498,395,245,249,451,490,456,452,342,494,395,  3,487,478,413,
     417,395,  3,317,467,453, 31,264,125,469,165,462, 81,507,479,178,125,415,177,166,
     478,494,403, 57,461,483,466,161, 18, 21,507),
    TPYIndex_191_list(176,208,393,389,261,  6,242,467,482, 42,108,481,142,258,348,483,172,471, 44,457,
     172,242,240,179,143,411,507,121,342,177, 61, 57,513,313,427,475,457,261,422,422,
     421,231,447,420,122,322,518,192,322,501,514,467,216,341,472,403,461, 65,431,176,
     520,479,159,  0,463,399,164,520,215,467,507,331,399,345,334,473,166,178,456,314,
     172,451,461,341,471,457,416, 96,265,370,413,505,520,477,507,449,421,478,462,475,
     498,376,152, 18, 42,399,337,235,451,379,379, 47,181,162,280,223, 66,159,147,487,
     237,159,117,149,151,459,175,388,457,483,242,297,483,235,394, 71,164,494,462,483,
     395,469,236,449,518,481,211, 30,231, 83,475,468,505,251, 70,477,415,328,184,418,
     347,517,299,455,347,321,379,386,451, 51,418,411,435,379,510,231,291,457,399,261,
     297,479,479,259,179,339,339,524,455,423,478),
    TPYIndex_191_list(478, 94, 59,168,348,221,470,194,451, 23,136,341,479, 23,216,110, 31,256,491,451,
     334,491,242,229,482,473,242,408,507,479, 91,450,166,462,317,393, 21, 42,268,237,
     175,379, 47,136, 23,168,459,242,347,364,229,180,461,479,415,451,448,469,510,403,
     220, 94,108,  0,161,220,399,236,479,291,172,231,525,479,235,477,175, 42, 69,358,
     175,221,108,403,484,517,112,391,225,221, 61,351,481,341,107,186,472,479,459,491,
     243,472,229,261,388,421, 71,177, 42,479,149,510,221,221,279,449,243,470,459,472,
     122,472,483,140,461,461,166,159,513,498,462, 48,490,339,508,111,298,452,337,477,
     328,189,317,472,318,271,233,140,463,140,140, 20, 68,458,506,510,194,502,117,  7,
     462,462,236,517,319,420,473,439,388,451,165,509,474,467,155,352,164,466,466,459,
     478,471,509,474,395,451,439,469,490,189,458)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list03(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_03;


FUNCTION get_py_index_04(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list04 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(468,506,334,166,140, 45,166, 46,446,234,117,181,462,337,435,517,435,145,222,472,
     467, 48,364,161,457,399,168,470,209,485,461,457,514,351, 81,462,339,446,247,472,
     184,235,215,167,444,457, 65,456,159,184,117,455, 61,112,333,349,371,477,349,463,
     477,345,483,  0,123,328,479,450,394,137,390,446,283,128,451, 46,151,214,508,458,
     487,112,231,464,177, 18,479,510,451,442,388,457,468,302, 42,472,181,181,257,451,
     498,179,349,365,164,108,350,415,473,234,178,493,137,487,278,395,232,135,422, 44,
     487, 25,475,462,457,456,487,151,461,477,487,277,388,349,474,261,341,479,456,133,
     472,342, 18, 21,520,242,175,241,322,415,477,439,186,520,161,477,507,451,237,357,
     313,360,181,215, 64,497,175,457,457,477,461, 48,165, 70,475,470,472,470,461,187,
      79,444,393,345,111,457,483,235,439,390,111),
    TPYIndex_191_list(470,221,257,422,477,181,258,180,446,479,477,469,221,420, 30,457,353,520,341,166,
     510,236,483,477,462,502,166, 68,305, 24,368,461,470,179, 50,423,474,151,221, 21,
     364,234,268,371,247,234,  6,470,213,485,233,229,242,186,233,472,457,462,240,475,
      30,358,485,  0,221, 61,439,139,184, 45,261,422,221,510,221,236,483,502,506,319,
      47,451,147,186,475,522,261, 55,194,492, 85,342,481,342,317, 44,175, 55,483,498,
     262,317, 25, 55,482, 91, 47,298,224,445,361,252,109,123,472,492, 15,408,482,125,
     271,499,352,352,518,252,199,341,229,335,123,507, 16,352, 57,173,112,194,184, 51,
     457, 15,246,178,249,376,451,254, 96,439,345,457,229, 91,234,315,330, 25,457, 50,
     451,359, 50,  7,172, 41,517,151,192,320,160,471,478,164,514,213,508,271,328,184,
     477,464,477,236,328,291,474,482,469, 70, 25),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0, 98,  0,  0,  0,171,  0,  0,
       0,248,275,309,  0,338,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  1,  0,  0,  0, 98,  0,  0,  0,171,  0,  0,  0,248,275,309,  0,338,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,
       0, 98,  0, 98,  0,171,  0,  0,248,275,  0,309,  0,  0,  0,  0,  0,  0,  0,  0,
     309,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0, 98,  0, 98,  0,171,  0,  0,
     248,275,  0,309,  0,  0,  0,  0,  0,  0,  0,  0,309,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list04(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_04;


FUNCTION get_py_index_05(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list05 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(209,459,468,268,502,178,470,388,418,439,223,517,457,458, 15,507,472,386,147,180,
     315,110,461,328,339, 21,478,220,175,342,215,472,520,507,506,471,234, 38,520,118,
     112,455,484,388,442,471,462,173,329,482,474,416,334,266,412,249,484, 69,483,395,
     149,342,477,  0,505, 31,149,251,176,271, 42,  6,124, 65,111, 18, 18,165,337,235,
     483,514,474,457,461,398, 96,177,125,468, 91,166,211,459,459,297, 20,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(168,366,259,234,482,180,398,242,418,459,261,358,280,246,459,339,186,474,518,242,
     413,350,119,224,  7,159, 81, 54,122,483,339,483, 43,159,456,117,178,471,258, 12,
     485,186,487,186,478, 70,332,342,477,122,333,117,468, 62,135,173,390, 59,357,394,
     393,477,522,  0,237, 18,505,179,177,175,229,140,459,509,472,466,473,467,413,347,
     478,470, 13,460,458,141, 49,467,320,223, 71,479,452, 98,435,431,456,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(456, 47,187,257, 15,435,459, 51,147,468,472,468,466,117,457,236,229,179,417,112,
     449, 83,332,500,379,265,483,220,265,450,483,432, 51,320, 47, 98, 43, 17,242,352,
      84,320,342,517,347,107,179, 91,178,167,483,257, 57,468,431,464, 69,365,265,175,
     451,368,164,  0,462, 54,175,513,473,231,352, 92,471,165,237,395,364,417,474,452,
     456,505,179,479,249,423,237,229,222,432,342, 67,186,502, 23,441, 43,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(215,513, 61,477,339,180,493,350,  6,231,258,478,162,451,456, 79,466,497,470,351,
      71,235,233,349,413,141,180,108,179,237,172,166,180,  3,493, 71,177,142,421,211,
     164,379,415,432, 51,483,179,242,329,399,524,221,457,518,468,368,455,121,225, 91,
     229,507,365,  0,229,491,468,431,141,415,219,240,242,229,221,479,457,460,451,139,
      72,491,475, 25,319,507,229,397,460,344, 11,321,109, 70,113,  0,447,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(161,477, 10,185, 43, 48,238, 71,259,515,333, 20,509,238, 59,479,339,459,241, 81,
     313,513,235,456, 70,453,479,472,432,147, 43,348,393, 42, 42,369,413,393,242,112,
     498,117,333, 87,516,259, 18,237,416,237,271,487,117,128,178,117,432,271,424,176,
     447,117,278,  0,271,271,172,432,121, 18, 68,507,244,317,477,162,483,483,271,187,
     477,237, 85,162, 71,515,176, 47, 43,444,225, 40,237, 85,235,176, 50,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(328, 85, 85,346, 70,399,507,277, 18,123,509,458,467, 46,469,339,471, 65, 18,520,
     469,507,107,507,110,184,388,295,427,439,178,483,166,421, 48,257,180,461,441,252,
     461,414,337, 97,398,477,322,501,139,249,235,172,432,475, 48,328,265, 94,194,471,
      63,393,508,  0,507,483,112,473, 46,441,143,452,164,209,478,186,457,139,477, 55,
     225,308, 83,501,393, 63,477,520,412,379, 84,241,247,347,117,406,345,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(237,223,459,110,421,478,151,459,139,451,299,483,451,481,225,229,399, 70,235,235,
      22,172, 48,473,178,506,256,229,168,220,172,468,479,478,481,421, 83,246,243,243,
      25,446,  7,107,107,346,172,493,254,314, 59,236,268,172,322,124, 98,147, 18, 50,
     341,  3,461,  0,149,165,149,494, 65,149,461,475,149,177,  3,464,165,246,330,151,
     177,122,319,350,353,498,136,187,187,509,498,446,502, 91,339,479, 15,  1,  1,  3,
       3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  4,  4,  4,  4,  4,  4,  4,  4,
       4,  5,  5,  5,  6,  6,  6,  6,  6,  6,  6,  6,  6,  7,  7,  7,  7,  7,  7,  7,
       7,  7,  7,  7,  7,  7,314,  7,  7,  7,  7,  8,  8,  8,  8,  8,  8,  8,  8, 11,
      11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12,
      12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13),
    TPYIndex_191_list(502,151,151, 25,449,483,108,117,350, 72,242,500,229,179,467,191,468,  4,247,467,
     509, 71,  4,136,229,122,450,339,484,459,463,457,112,265,266,395,487,317,109,257,
     459,395,479,506,474,393,168, 68,505,213,467,393,257,268,510,505,395, 85,291,518,
      44,109,317,  0,240,439,507, 81,281,266,470,505,473,268,508,268,257,461,147,164,
      47,512,185, 98,251,459,457,215,388,432,245,449,228,395,349,234,506, 13, 13, 13,
      13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,
      15, 15, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18,
      18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18,328, 18, 18, 18, 18, 20, 20,
      20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 23, 23,
      23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24),
    TPYIndex_191_list(229,220,524,185,328,167,242,494,509,483,167,249,458,464,166,142,490, 57,175,257,
     160,468,432,467,107,455,141,261,453,208, 71,432,349,268,111,494,501,477, 90,208,
     268,405, 61,247, 48,258,141,164,405,457,337,393,233, 45,459,475,469,456,451,175,
     475,  3,166,  0,175,502,257, 50,378,297,470,474,485,259,262,332,262,225,213,468,
     262,168,242,259,240,352,251,457,422,191,510,347,483,406,517,186,393, 24, 24, 25,
      25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 25,
      26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28,
      28, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 33, 33,
      33, 33, 33, 35, 35, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 41, 41, 41, 42,
      42, 42, 42, 42, 42, 42, 42, 42, 42, 43, 43)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list05(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_05;


FUNCTION get_py_index_06(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list06 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(160,479,509,177,497,485,  7, 87,339,518,456,503,340,342, 70,186,229,117,452, 98,
     192,507,178,332, 98,503,415,447,179,268,522,483,246,445, 98,271,510,301,333,236,
     337,224, 98,334,481,213,199,352,510,213, 98,340,242,451,  3,478,472,333,223,159,
     348,451,345,  0, 36,348,353, 42,222,159,483,461,458,252,246,481, 45, 45,472,386,
     215,136, 36,162,242, 46,303,411,517,199,472,515,206, 47,339,520,348, 43, 43, 43,
     501, 43, 43, 43, 43, 43, 43, 43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45, 45, 45,
      45, 45, 45, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 47, 47, 47, 47, 47, 47, 47,
      47, 47, 47, 47, 47, 47, 47, 47, 48, 48, 48,395, 48, 48, 48, 48, 48, 48, 48, 48,
      48, 48, 48, 48, 49, 49, 49, 49, 49, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
      50, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51),
    TPYIndex_191_list(235,187,317,265,500,151,457,228,478,456,339,245,280,368,472, 87,445,479,194,451,
     406,505, 92,458, 71,431,280,432,339, 96,112,353,353,249,133,462, 98,237,431,422,
     194,328,451,432,471,339,231,451,487,515,219,316,474,513, 42,339,345,322,237,242,
     191, 55, 46,  0,478,225,330,339,510, 65,520, 58,245,172,388,223,497,175,457, 87,
      83,317,488,345, 81,229,175,457,501,345,459,483,515,345,194,494,225, 51, 51, 51,
      51, 51, 51, 53, 54, 54, 54, 54, 54, 54, 54, 55, 55,514, 55, 55, 55, 56, 56, 56,
      56, 56, 57, 57, 57, 57, 57, 57, 57, 58, 44, 59, 59, 59, 59, 59, 59, 59, 59, 59,
      59, 59, 59, 61, 61, 61, 61, 61, 61, 62, 63, 63, 63, 63, 64, 64, 64, 65, 65, 65,
      65, 65, 65, 65, 65, 66, 66, 66, 67, 67, 67, 67, 67, 67, 68, 68, 68, 68, 68, 68,
      69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69),
    TPYIndex_191_list(178, 51,475,353, 71,477,328,328,483,332,339,477,194,175,483,368,319, 59, 25,473,
     249,463,213,225,225,507,229,246,108,353,319,479,229,240,240,268,403,139,221, 27,
     472,362,485,418,249,462,474,507,109, 94,508,446,477,395,482,507,433,117,261,414,
     257, 41,247,  0,483,456,510,141,458,507,124,124,404,179,393,121,215, 81,423,136,
     139,524,236,242, 72,507, 18, 51,166,482,478,518,168,505,484,456,459, 69, 70, 70,
      70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 72, 72,
      72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 73, 73, 73, 79, 79, 79, 79, 79, 79, 79,
      81, 81, 81, 81, 81, 81, 81, 81,499, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 83,
      83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 84, 84, 84, 84, 84,
      84, 84, 84,433, 85, 85, 85, 85, 85, 85, 85),
    TPYIndex_191_list(473,507,477,257,408, 81, 15,505,481,172,124,422,408,249,418,117,468,339,483,339,
     408,421, 70,141,415,229,299,459, 72,229,485,507,491,225,365,462,441,361,518,276,
     507,459,292,350,111,254,487,507,180,507,483,209, 11,328,291,229,482,328, 25,236,
     292,526,507,  0,184,168,439,507,216,151,478,518,507,361, 91,510,299,337,124,494,
     445,215,122,180,431,441,471,245,242,136,526,516, 12,339,507,215,228, 87, 87, 87,
      87, 87, 87, 87, 87, 87, 88, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 90, 90, 90,
      90, 90, 90, 90, 90, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 92,
      92, 92, 92, 92, 92, 94, 94, 94, 94, 96, 96, 96, 96, 96,444, 96, 96, 96, 97, 97,
      97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98,
      98, 98, 98,100,106,106,106,106,106,106,106),
    TPYIndex_191_list(322,235,524,483,413,446,477,457, 20,172,117,328,306,178,508,520,467, 47, 72,459,
     518,483,467,507,193,136,364,415,364,172,192,388,261,507,172,242,413,172,479,452,
     350,217,477,165,346,172,461,337,177,517,508,524,247,415,299,379,166,358,306,483,
     332,518,443,  0,452, 47,168,213,247,319,379,517,229,491,471,483,393,180,474,223,
     474, 13, 24,447,510,319, 84,456,447, 55,474,461, 47,208, 70,517,467,106,107,107,
     107,107,107,107,107,107,108,108,108,108,108,108,108,108,108,108,108,108,108,108,
     108,108,108,109,109,109,109,109,109,109,109,109,109,109,110,110,110,110,110,110,
     110,110,110,110,110,110,111,111,111,111,111,111,111,111,111,111,111,111,111,111,
     111,112,112,112,112,112,112,112,112,112,112,112,112,112,112,112,115,116,117,117,
     117,117,117,117,117,117,117,117,117,117,117),
    TPYIndex_191_list(413,139,517,455,447,475,349,474,474,433, 44,432, 84,241,233,457,456,214, 55,502,
     212,212, 47, 65,233,493, 64,345,349, 91,493,240,346, 51,395,117,341, 51,159,339,
     149,394,111,263,351,510,236,285, 24,  8,408,159,505, 84,477,399,180,351,333,229,
     513, 35, 79,  0, 66,448,180,191,180,224,322, 48,252,510,449,177,414,347,471,515,
     484,148,179,328,477, 89,388,458,510,276,136,346,265, 13,388,320,236,117,117,117,
     117,117,117,117,117,117,117,117,337,117,117,117,117,117,117,117,117,117,117,117,
     117,117,117,117,117,117,117,117,117,119,119,121,121,121,121,121,121,122,122,122,
     122,122,122,122,122,122,122,122,123,123,123,123,123,123,123,123,123,124,124,124,
     124,124,124,124,124,124,124,125,125,125,125,125,125,125,125,125,125,125,144,125,
     125,125,125,125,126,127,127,128,128,128,128),
    TPYIndex_191_list(301,117,108,122,108,395,254,461,349,265,246,141,351, 48,478,474, 18,216,177,487,
     366,172,148,508,220, 71, 33,117,441,229,222,184,139,459,147,481,458,507, 47,414,
     510,526,435,173,124,122,213,487,309,461,337,220,521,315,328,125,420,138,483,175,
     502,161,506,  0,498,509,242,235,354,117,498,136,341,187,515, 33,522, 25,468, 20,
     416,459,333,464,161,477,485, 57,247,456, 89,461,172,178,464,257,108,128,128,128,
     133,133,133,133,133,133,133,133,133,133,133,133,133,133,133,135,135,135,135,135,
     135,135,135,135,136,136,136,136,136,136,136,136,136,136,136,136,136,136,136,136,
     136,136,137,137,137,137,137,137,138,138,138,139,139,139,139,139,139,139,139,139,
     139,139,140,140,140,141,141,141,141,141,141,141,141,141,141,141,141,141,141,141,
     141,142,142,142,143,143,143,143,143,143,144),
    TPYIndex_191_list( 92,112,510,159,346,350,263,341,136,395,487,151,422,485, 50,371,506,295,341,461,
     240,322, 91,517, 51,395,510,342,240,175, 26,166, 18,510, 61,472,491,523,328,330,
     483,513,499,387,143,477,161, 42,208,333,493,172,247,172,292,417, 64, 84,417,224,
     232,461, 25,  0,261,408,422,233, 70,117,175,265,214, 69,177,513,223,461,242,395,
     491,339,315,339,328,122,184,242,242,472, 71,374,511,135,341,231,395,145,145,145,
     145,145,145,145,147,147,147,147,147,147,147,147,147,147,147,147,147,147,147,147,
     147,147,147, 16,148,148,149,149,149,149,149,149,149,149,149,151,151,151,151,151,
     151,151,151,151,151,268,151,151,151,151,151,151,151,152,152,154,154,154,154,155,
     155,155,155,155,159,159,159,159,159,159,159,159,159,160,160,160,160,160,160,160,
     161,161,161,161,161,161,161,161,161,161,161),
    TPYIndex_191_list(221,214,483,485,149,505,420,431,295,423,477,339,427,513,509,317,412,509,341,517,
     427,242,242,175,445,479,483,220,240,346,231,221,341,485,508,351,231, 20, 92,523,
     229,395,246,479,485,517,483,108,393,503,393,307,151,291, 66,501,341,499,328, 11,
     456,386,192,  0,365, 18,415,478,503,261,420,161,122,184,268,509,229,413,159,439,
     379,235,514,  8,223,106,351,151,459,117,229,485,242,184,339,  8,501,161,161,161,
     161,161,161,161,162,162,162,162,162,162,162,162,162,163,163,163,163,163,164,164,
     164,145,164,164,164,164,164,164,164,164,164,164,165,165,165,165,165,165,165,165,
     165,165,165,165,165,165,166,166,166,166,166,166,166,166,166,166,166,166,166,166,
     166,166,166,166,166,166,166,167,167,167,167,167,167,168,168,168,168,168,168,168,
     168,168,168,172,172,172,172,172,172,172,172),
    TPYIndex_191_list(162,162,376,422, 20,262,520,175,229,462,117,306, 15,136,466,173,514,422,376,111,
     176,268,376,376,306,457,232,211, 25,164,399,172,459,442,295,229,526, 81,295,433,
     221,408,182,133,506,182,482,172, 40,509,470,485,176,483,178,449,361,452,350,276,
     518,440,298,  0,116,178,399,516,328,505,386,159,507,172,111,487,361, 70,179,109,
     522,182,498,  7,117,507,339,509,159,498,457,117,477,393, 25,510,351,172,172,172,
     172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,
     172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,172,
     172,172,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,175,
     175,175,175,175,175,175,175,175,175,175,175,175,175,175,175,175,175,175,175,175,
     175,175,175,191,175,175,175,175,175,175,175)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list06(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_06;


FUNCTION get_py_index_07(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list07 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(236,510,390,122,473,117,445,505, 69, 51,395,508,468,522,181, 11,351,268,399,524,
     213,180,361,148,477,178,510, 50,210,268,186,213,161, 59,164,128,423,462,209,461,
     352,121,246,470,322,459,117,458,439,364,433,478,225,462,185,145, 85,439,408,176,
     460,166,186,  0,175,468,507,452,505,247, 47,350,399, 12,439,461,449,459,128,466,
     431,466,462,159,457,117,435,415, 94,215,117,180,161,507,472,181,112,175,175,175,
     175,175,175,175,175,176,176,176,176,176,176,176,176,176,176,176,176,176,177,177,
     177,177,177,177,177,177,177,177,177,177,177,177,474,177,177,177,177,177,177,177,
     177,177,177,177,177,177,178,178,178,178,178,178,178,178,178,184,178,178,178,178,
     178,178,178,178,178,172,178,178,178,178,178,178,178,179,179,179,179,179,179,179,
     179,179,179,179,179,179,179,179,179,179,179),
    TPYIndex_191_list(172,467,361,520,393, 97,234,247,232,423,352,390,339,516,339,449,506,459,398,477,
     423,449,123,450, 17,515, 28,143,522,245,237,477,500, 18, 58,236,262,339,346,432,
     520,167,521,457,518,464,232,179,110,369,265,483,520,108,247,467,479,389,339,467,
     460,175,194,  0,459,368,262,339, 92,508, 81,265,263,484,475, 13,408,350, 20,164,
     128,520,262,451,117,451,467,135,263,462,231,520,329,487,478,431,137,179,179,180,
     180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,
     180,180,180,180,181,181,182,182,182,182,182,182,182,182,182,182,182,182,182,182,
     182,182,182,184,184,184,184,184,184,184,184,184,184,184,184,184,184,184,184,184,
     184,184,184,184,184,184,184,184,185,185,185,185,185,185,185,186,186,186,186,186,
     186,177,186,186,186,187,187,187,187,187,187),
    TPYIndex_191_list(507,487, 47, 42, 69,458,484,520,467,479,451,128,385,479,179,477,515,291, 12,161,
     317,509,175,417,352,403,487,458,415,457,364,423,117,487,505,124,366,161,497,427,
     468,413,505,520,423,165, 28, 18,112, 63,229,417,478,457,520,225,513,341,251,507,
     247,271,330,  0,231,468,520,172,461,415,247, 17,477,493,271,342,167,459,172,386,
     466,357,468,415,345,497,526,507,388,376,235,483,108,359, 58,525,175,187,187,187,
     187,187,188,188,188,125,189,189,189,189,189,191,191,191,191,191,191,192,192,192,
     192,192,192,192,193,193,193,193,194,194,194,194,194,194,194,194,194,194,194,194,
     194,194,194,198,198,198,198,199,199,206,206,206,206,208,208,208,208,209,209,209,
     209,209,209,209,210,210,210,210,210,211,211,211,211,212,212,213,213,213,213,213,
     213,213,213,214,214,214,214,214,214,214,214),
    TPYIndex_191_list(359, 42,369,466,166,162,523,457,342,487, 68,479,166,457,379,175,176,164,493, 61,
     462,517, 18,421,477,299,415,477,387,467,172, 23,341,221,337,470,339,322,474,268,
     225,462,523,213,482,467,225,459, 42,177,242, 42,479,388,460,459,524,523,246,457,
     221,225,231,  0,159,361,510,505, 85,457,479,423,487,459,415,462,116,116,339, 25,
     333,460,502,123,479,139,525,421, 31,339,453,479,225,421,242,408,123,214,214,214,
     215,215,215,215,216,216,216,216,219,219,219,219,219,219,219,220,220,220,221,221,
     221,221,221,221,221,221,221,221,221,221,221,221,221,222,222,222,222,222,222,222,
     223,223,223,223,223,223,223,223,223,224,224,225,225,225,225,225,225,225,225,225,
     225,225,228,228,228,229,229,229,229,229,229,229,229,229,229,229,229,229,229,229,
     229,229,229,229,229,229,229,229,229,229,229),
    TPYIndex_191_list(355,393,136,510,184,259,265,137,431,185,117,393,138,517,483,  4,107,408,249,237,
     328,107, 44,451, 18,172, 49,237,185,261,502,246,328,172,172,243,261, 68,473,482,
     482,111,  7,473,136,482,492,257,477,510,477,364,354,342,164,477,477,473,342,459,
     483,222,484,  0,108,388,111,388,231,300,342,159, 49,111,159, 48, 65,117,458,321,
     219,334,242,507,483,457,462,457,194,166,166,461,386,159,176,509,386,229,229,229,
     229,229,229,229,229,232,231,231,231,231,231,231,231,231,231,231,231,231,231,231,
     232,232,232,232,232,232,232,232,232,232,232,233,233,233,233,233,233,233,233,224,
     233,233,233,233,234,234,234,234,234,235,235,235,235,235,235,235,235,235,235,235,
     235,236,236,236,236,236,236,236,236,236,236,236,236,236,236,237,237,237,237,237,
     237,237,237,237,237,237,240,240,240,240,240),
    TPYIndex_191_list( 48,468, 48,520,449,166,160,151,330,231,351,  6,235,321,345,  6,166,468, 72,446,
     135,135,135, 85,368,277,513,435,328,477,351,173,184, 51,245,178,498,241,172,223,
     168,482,163,477,347,487, 70,159,507,446,505, 45,506,482,517,433,307,471,503,381,
     149,394,234,  0,180, 18, 81,143,452,467,333, 61, 87,446,435,184, 61,214,231,231,
     453,214,231,231, 61,394,411,435,214,503,507, 70,297,346,291,435,435,240,240,240,
     240,241,241,241,241,241,241,242,242,242,242,242,242,242,242,242,242,242,242,242,
     242,242,242,242,242,242,242,247,247,247,247,247,247,247,247,247,247,247,247,247,
     247,243,243,243,243,243,243,244,244,245,245,245,245,245,245,245,246,246,246,246,
     246,246,246,246,246,246,246,246,249,249,249,249,249,249,249,249,249,250,250,250,
     250,250,250,251,251,251,251,251,251,251,251),
    TPYIndex_191_list(240,502,408,413,502,477,350,198, 32,339, 81,164, 48,361,366,484, 40,347,111,320,
     318,482,357,452,339,328,457,457,198, 85,110,  7, 25,467,432,518,209,507,291,333,
     518,509,459,271,351,194, 48,473,318,507,465,106,155,518,214,506,433, 65,257,462,
     462,250,462,  0,296,452,452,466,199,482,155,319,388,435,257, 57,393,351,425,524,
     172,482,463,445, 47,443, 90,280,328,136,229,501,415,178,232,404, 21,251,252,252,
     252,252,252,252,254,254,254,254,254,254,254,254,254,254,254,254,256,257,257,257,
     257,257,257,257,257,257,257,257,257,257,257,257,257,258,258,258,259,259,259,259,
     259,259,259,259,261,261,261,261,261,261,261,261,261,261,261,261,261,261,262,262,
     262,262,262,262,262,262,262,263,263,263,263,263,263,263,263,264,264,265,265,265,
     265,265,265,266,266,266,266,266,266,267,268),
    TPYIndex_191_list(245,329,225,352,160, 70,282,277,361,393,515,184, 89,328,168,455,257,368,513, 48,
     246,313, 81,  4,280,402,487,508,365,441,451,186,173, 92, 18, 43,472,447,398,422,
     413,515,477,233,172,328,462,247,313, 43,242,168,318, 53,176,242,513,242,177,479,
     247,469, 34,  0,439,291,233, 65,214,461,444,317,507,177,456, 65,476,460,415,111,
     511, 70,211,299,186, 51,185,219,231,444,339, 65, 23,470,366,485,492,268,268,268,
     268,268,268,268,268,268,268,268,268,268,268,268,268,270,270,270,271,271,271,271,
     271,271,271,271,271,271,271,271,271,271,271,276,276,276,276,276,276,276,277,277,
     277,277,277,278,278,278,279,280,280,280,280,280,281,282,282,284,285,291,291,291,
     291,291,291,291,291,291,291,291,292,292,292,292,292,292,292,293,293,294,294,295,
     295,295,295,295,295,295,296,297,297,297,297),
    TPYIndex_191_list(459, 21,464,215,234,472,242,168,488,246,351,492,243,291,491,459,455,181,235,181,
     177,172,149,466,262,295,125,175,507,507,466,420,459, 40,457,483,464,184,182,463,
     391,182,432,395,421,337,337,139,339,432,458, 72,108,314,420,108,108,242,236,458,
     349,318,210,  0,117,493,112,229,483,222,446, 25,341,184,165,520, 20,271, 85, 90,
      12, 40,477, 31,241, 69,469,474, 79, 71,342,242,477,172,175,455,339,297,297,298,
     298,298,298,299,299,299,299,301,301,301,307,302,303,303,306,306,306,306,309,313,
     313,313,313,313,313,313,314,314,314,314,314,314,315,315,315,315,315,315,317,317,
     317,317,317,317,317,317,318,318,318,318,318,319,319,319,319,319,319,319,320,320,
     320,320,320,320,320,320,320,321,321,322,322,322,322,322,322,322,322,322,322,322,
     322,322,322,328,328,328,328,328,328,328,328),
    TPYIndex_191_list(242,242, 42,403,175,333,472,472, 32,224,435,433,177,322,477, 40,262,122,483,458,
     518,166,415,507,444,451,339,452,361,117,510,162,186,172,  6,521,254,362,148,478,
     482,477,346,328,431, 81,229,481, 15,477,510,291,314, 24,466,474,459,159,526, 89,
      85,295,161,  0,257,394,137,261,451,117,518,507,172, 61,446,469,246,229,364,507,
      46,483,466,518,234,456,172,141, 59,135,140,294,483,518,320,271,508,328,328,328,
     328,328,328,328,328,328,329,329,329,329,330,330,330,330,331,331,332,332,332,332,
     332,333,333,333,333,333,333,333,333,333,334,334,334,334,334,334,334,334,335,337,
     337,337,337,337,337,337,337,337,337,337,337,337,337, 13,339,339,339,339,339,339,
     339,339,339,339,339,339,339,339,339,339,339,339,339,339,339,339,339,339,339,339,
     339,339,339,339,339,339,339,339,339,339,340)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list07(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_07;


FUNCTION get_py_index_08(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list08 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(341,510,164,117,121,418, 54,180,106,  4,345, 48,333,341,223,399,514, 68, 33,483,
      91,451,229, 90,117,361,478,337,487,415, 47,299,456, 22,457,128,510,268,514,526,
     445,350,417, 46,322,457,464,479, 45,187,472, 67,147, 67,173,450,482,365,461,459,
     452,178,278,  0,271,441,286,252, 59, 81,351, 89,521,219,242,451,361,215,337,518,
     124,143,245, 50, 56,500,258,229, 13,347,185,347, 81,386,179,502,507,340,340,341,
     341,341,341,341,341,341,341,341,341,341,341,341,341,341,341,341,341,341,341,341,
     341,342,342,342,342,342,342,342,342,345,345,345,345,345,345,345,345,345,345,345,
     345,345,345,345,346,346,346,346,346,347,347,347,347,347,347,347,347,347,347,347,
     348,348,348,348,348,348,348,348,348,348,348,348,348,349,349,350,350,350,350,350,
     350,350,350,351,351,351,351,351,351,351,351),
    TPYIndex_191_list(128,210,347,472,450, 17,509,175,235,421,432, 72,161,151, 57, 43,164,117,220,386,
     472,477,433,339,449, 33,505,494,182, 18,477,259, 14,319, 87,350,194,460,449,483,
     483,117,231,468,278, 33,455, 57,461,329,271,  4,479,216,216,176,262,526,526,522,
     365,457,475,  0,472,351,175,117,247,175,321,159,159,160,472,441,518,348,261,165,
     393,121,509,341,451, 25,451,172, 92,474,417,352,505,470,395,221,520,351,351,351,
     351,351,352,352,352,352,352,352,352,352,352,352,352,353,353,353,353,353,353,353,
     353,354,354,357,357,357,357,358,358,358,358,358,359,359,359,360,360,361,361,361,
     361,361,361,361,361,361,361,362,362,363,364,364,364,364,364,364,364,364,364,364,
     365,365,365,366,366,366,366,366,366,366,366,366,366,368,368,369,369,369,370,370,
     371,371,372,372,372,374,374,374,374,376,376),
    TPYIndex_191_list(474,484,257,487,399,513,139,357,469,446,451,482,412,478,395, 57,395,487,505,366,
     229,353,484,229,184,457, 51,467,441,237,455, 83,341,522,334, 67,484, 51,483,317,
     337,276,457,111,487,371, 31,261,416,266,412,237,457,136,222,125, 67,422,246,468,
     517,141,520,  0,142,526,433, 33,320,446,393,222,236,433,466,254,439,510,  4,231,
     520,333,467,179,442,178,451,443, 32,483,477,518, 18,242, 26,501,225,376,376,377,
     377,377,378,378,378,378,379,379,379,382,383,386,386,386, 40,386,386,386,386,386,
     387,387,388,388,388,388,388,388,388,388,388,388,388,388,388,388,388,388,389,389,
     389,389,389,389,389,389,390,390,390,390,390,390,390,390,390,390,390,391,391,391,
     391,391,391,391,391,391,391,391,391,393,393,393,393,393,393,393,393,393,393,393,
     393,393,393,393,393,394,394,394,394,394,394),
    TPYIndex_191_list(342,251,472,236,457,330,142,147, 81,242,391,389, 81,470, 25, 81,498,393,468,161,
       6,261,247,508,334,176,261, 61,294,166,187,478,388,478,143, 46,161,386,208,341,
     249,492,494,229,451,172,470,394,259,313, 42, 83,369,225,483,345,510,210,175,250,
     487, 13,482,  0,242,474, 98,431,110,186,110,366,111,214,405,471,467,117,422,456,
      89,408,461,457,372,487,390,175,416,236,483,458,408,299,468,487,483,394,394,394,
     394,394,395,395,395,395,395,395,395,395,395,395,395,395,393,395,395,395,395,395,
     395,395,395,395,395,395,395,395,395,395,395,395,395,395,395,395,395,395,395,395,
     395,395,395,395,395,395,395,395,395,398,398,398,398,398,398,398,398,398,398,399,
     399,399,399,399,399,399,399,399,399,399,399,399,399,399,399,399,399,399,399,399,
     399,399,399,399,399,399,399,399,399,399,399),
    TPYIndex_191_list(461,149,  3,166,166,172,518,460,449,264,228,176, 30,393,379,231,194,484, 68,507,
     422,500,416,472,108, 87,462,136,510,175,193,372,470,474,  8, 94,332,484,297,509,
     455,330,339,493, 46,505,106,291,479, 61,461,339,107,175,483,214, 20,517,261,221,
     179,349,346,  0,446,459,413,247,477,467,462,477,219,225,177, 81,507, 15,474,268,
     164,319,412,421,443,349,345,451,237,166,313,193,487, 13,229,510,510,399,400,400,
     401,401,401,401,402,402,403,403,403,404,404,404,404,405,405,405,405,406,406,406,
     406,408,408,408,408,408,408,408,408,408,408,408,408,408,395,408,408,411,411,411,
     411,411,411,411,411,412,412,412,412,413,413,413,413,413,413,413,413,413,466,413,
     413,414,414,414,415,415,415,415,415,415,415,415,415,415,415,416,416,416,417,417,
     417,417,417,417,417,417,418,418,418,418,418),
    TPYIndex_191_list(  3,235,468,347,220,494,456,369,369,347,242,413,443,252,487,333,483,470,172,181,
     468,350,413,181,112, 25,460,477,459,483,184,459,459,478,342,479,240,440,162,485,
     236,474,257,221,214,221,172,422,251,225,225,166,411,507,451,214,163,229,172,225,
     163,246,172,  0,214,242,175,375,427,225,352,461,477,243,258, 22,507,461,184,161,
     467, 67,117,467,242,161,149,177,184, 13,472,500,500,214, 23,457,399,418,418,418,
     418,420,420,420,420,420,420,420,420,420,421,421,421,421,421,421,421,421,421,421,
     421,421,421,421,421,421,421,421,422,422,422,422,422,422,422,422,422,422,422,422,
     422,423,423,423,423,423,423,423,423,423,423,423,425,427,427,427,427,431,431,431,
     431,431,431,431,431,431,431,431,431,431,431,431,432,432,432,432,432,432,432,432,
     433,433,433,433,433,434,434,434,435,435,435),
    TPYIndex_191_list( 84,350, 87,446,186,503,475,483,147,518,460,109, 98,  7, 48,341,452,485,485,187,
     339,439,507,484,353,482,347,339,508,271,450,111,111,148,117,357,319,291,425,333,
      81,184,229,117,498,467,328,328,459, 84, 22, 24,500,434,136,479,246, 59,166,252,
     117,234,477,  0,459,229,477,333,346,391,477,450,268,346,141,349,223,464,178,350,
     173,485, 45, 15,147,468,505,337,459,232, 18,484,482,178, 70, 83,166,435,435,435,
     435,435,435,435,439,439,439,439,439,439,439,439,439,439,439,439,439,440,440,440,
     440,441,441,441,441,441,441,441,441,441,441,441,442,442,443,443,443,443,443,443,
     444,444,444,445,445,445,445,445,445,445,445,445,445,445,447,447,447,447,447,447,
     447,448,448,449,449,449,449,449,449,449,449,449,449,449,449,449,449,449,449,449,
     450,450,450,450,450,450,450,450,450,450,451),
    TPYIndex_191_list(411,184,339,483,187,457,245,229, 85,423,215,147,147, 12,110,451,444,487,417,341,
     451,291,451,232, 89, 98, 11,517,450, 30,261,446,219,178,435,254,467,262,178,395,
     468,472,365,451,117,484,257,451,368,462,458,479,395,508,422,510,520,431,484,259,
     219, 91,350,  0,457,455,487,483,479,176, 11,408, 59,457,453,231,317,364,172,456,
     466,147,477,328,162,477, 91,285,458,161,166,249,477,452,479,427,508,451,451,451,
     451,451,451,451,451,451,451,451,451,451,451,451,451,451,451,451,451,451,451,451,
     451,451,451,451,451,451,451,451,451,452,452,452,452,452,452,452,452,452,452,453,
     453,453,455,455,455,455,455,455,455,455,455,456,456,456,456,456,456,456,456,456,
     456,456,456,456,456,456,456,456,456,456,456,456,456,456,456,456,456,456,456,456,
     457,457,457,457,457,457,457,457,457,457,457),
    TPYIndex_191_list( 31,409,339,433,389, 81,242,451,507, 46,351,328,483,175,241,347,478,176,452,461,
     251,503,503,249,483,237, 61,229,251,461, 43,268,524,408,350,425,507,322,345,351,
      22,233,141,457,339,513,110,233,186,186,478,431,177,359,461,456,508,470,408, 51,
      47, 71,229,  0,445,477,180, 68,339,172,460,391,347,479, 41,229,495,468,510,494,
     462,252,462,339,364,175,149,517,178, 23,151,108,225,178,219,265,229,457,457,457,
     457,457,457,457,457,457,457,457,457,457,457,457,457,457,457,459,457,457,457,457,
     457,458,458,458,458,458,458,458,458,458,458,386,458,458,459,459,459,459,459,459,
     459,459,459,459,459,459,459,459,459,459,459,459,459,459,459,459,459,459,459,459,
     460,460,460,460,460,460,460,460,460,460,460,460,460,460,460,460,460,460,460,460,
     461,461,461,469,461,461,461,461,461,461,461),
    TPYIndex_191_list(350,295,242, 91,461,510,240,229,240,318,475,328,389,475,479,399,457, 30,351,352,
      30,251,178,510,517,165,307,320,508,250,106,194,264,457,191,484,351,236,468,399,
     439,460,483,161,451, 72, 49,451, 72,516,122,483,477,117,321,178,508, 70,477,508,
     178,507,462,  0,357,507,187, 41,477,357,445,236,319,474,526, 18,390,184,210,469,
     505,477,314,117, 81,117,142,507,507,357,477,445,276,135,468,503,351,461,461,461,
     461,461,461,461,462,462,462,462,462,462,173,462,462,462,462,462,462,462,462,462,
     462,462,462,462,462,463,463,463,463,463,463,463,463,463,463,464,464,464,464,464,
     464,464,464,464,148,464,464,464,464,464,465,465,465,465,465,465,465,466,466,466,
     466,466,466,466,466,466,467,467,467,467,467,467,467,467,467,467,467,467,467, 51,
     467,467,467,467,467,468,468,468,468,468,468)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list08(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_08;


FUNCTION get_py_index_09(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list09 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(483,291, 25,446,306,339,209,361,176,525,268,178,106,366,510,141,478,188,464,380,
     215,294,399,462,215,229,185,393,178,505,237,172,477, 26,514,404,354,229,466,421,
     215,423,484,236, 48, 43, 72,232,320,110,484,472, 91,507,477,339,143,198,339,431,
     431,117,508,  0,462, 85,215,442,482,482,484,117,483,442,472,477,319, 70,487,418,
     135,163,364,484,277,181,417,317,377,294,479,178,163,209,231,229,395,468,468,468,
     468,469,469,469,469,469,469,470,470,470,470,470,470,470,470,470,470,470,470,470,
     470,471,471,471,471,471,471,471,471,471,471,471,471,471,471,471,471,472,472,472,
     472,472,472,472,472,472,472,472,472,472,472,472,472,472,472,472,472,472,472,472,
     472,472,472,472,472,472,472,472,472,472,473,473,473,473,473,473,473,473,473,473,
     473,473,473,473,473,473,473,474,474,474,474),
    TPYIndex_191_list(247,477, 85,462,459,451, 21, 32,172,388,335, 18,337,175,513,175, 67,172, 70,488,
     108,110,460,470, 22,359,251,221,  6,494,166, 32,415,299, 70,231, 71,399,500, 18,
     221,337,507,419,399,447,395, 15,462, 25, 46,220,240,457,459,221,503, 69,184,491,
     395,175,477,  0,221,471,457,112,117,114,  7,151,172,172,459,139, 20,472,467,186,
     329,254,261,261,331,395,408,172,505,186,261,433,231,474,507,187,457,474,474,474,
     474,474,474,474,474,474,474,474,475,475,475,475,475,475,475,475,475,475,475,475,
     475,475,475,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,
     477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,
     477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,477,478,478,478,478,
     478,478,478,478,478,478,478,478,478,478,478),
    TPYIndex_191_list(388,451,457,432,483,221, 98, 91,347,318,172,266,479,135,351,500,179,139, 79,175,
     246,351,175,451,186,351,246,221,393,172,139,472,432,350,179, 63,507, 44,172, 70,
     507,462,352,125,395,141,462,167,350,464,291,339,242,498, 18,464,389,133,507,469,
      51,457,477,  0,242,186,457,472,457,472, 87,117,350,350,177,172,108,470, 84,159,
      41,423,467,178,477,361,470,478,388,339,445,172,470,478, 98,111,471,478,479,479,
     479,479,479,479,479,479,479,479,479,479,479,479,479,479,479,479,480,481,481,481,
     481,481,481,481,481,481,481,481,481,481,481,481,482,482,482,482,482,482,482,482,
     482,482,482,482,482,482,482,482,482,482,482,482,483,483,483,483,483,483,483,483,
     483,483,483,483,483,483,483,483,483,483,483,483,483,483,483,483,483,483,483,483,
     483,467,483,483,483,483,483,483,483,483,483),
    TPYIndex_191_list(474,411,393,478,478,186,461,281, 46,482,507,465,109,463,263,391,472,372,516,467,
     477,477,413, 48,151,393,151,467,505,510,506,135,518,500,136,117,175, 85,236,431,
     473,301,317,509,122,477,184,474,498,477,477,351,502,333, 18,465,351, 25, 68,522,
     423,510, 59,  0,503,481,467,470,477,165,151,395,346,461,395,154, 91,160,141,352,
     166,178,162,121,473,451,393,509,439,261,266,246,166,472,465,137,106,483,483,483,
     483,483,483,484,484,484,484,484,484,484,484,484,484,484,484,484,484,484,484,484,
     484,484,484,485,485,485,485,474,485,485,485,485,485,487,487,487,487,487,487,487,
     487,487,487,487,487,488,488,488,490,490,490,490,490,490,490,491,491,491,491,492,
     492,492,493,493,493,493,493,493,493,493,493,493,493,493,493,493,494,494,494,494,
     495,496,497,497, 35,497,498,498,498,498,498),
    TPYIndex_191_list( 24,433,477,225,510,213,351,456,172,507,361, 63,222, 98,213,477,435, 70, 15, 42,
     482,199,345,347,400,  4,483,461, 47,178,459,456,456,124,411, 26,166,180,485,505,
     485, 91,162, 43,404,178,194,351, 61,461,415,450,459,110,220,418,477,291,478,509,
     328,517, 42,  0, 46,516,172,339,421,515,451,184,348, 89,506,526,521,341,517,232,
     175,172,458,245,393, 21,162,329,483,462,467,329,395,468,395,167,162,498,498,498,
     388,498,488,498,498,498,499,499,499,499,499,499,500,500,500,500,500,500,500,500,
     500,500,500,500,500,500,500,500,500,501,501,501,501,501,501,501,501,501,501,501,
     501,501,501,501,502,502,502,502,502,502,502,502,502,502,503,503,503,503,503,503,
     503,503,503,503,505,505,505,505,505,505,505,505,505,505,505,505,505,505,505,505,
     506,506,506,506,506,506,506,506,506,506,506),
    TPYIndex_191_list( 98,508,431,462,117,337,435,221,339,483,518,513,457,166,478,440,459,278, 46,112,
     510,473,472,165,468,125,306,467,270,475,451,464,427,509,388,334,443,165,168,125,
     479,261,461,261,458,342,505,469,431,413, 12, 48,500,477,176,484,462,461,423,474,
     474,507,483,  0,330, 61,229,268,268,389,503,267,175,494,522,231,247,493,467,142,
     457,517,  6,  6,179,503,477,461,176,251,502,459,447, 70,467,497,379,505,506,506,
     506,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,
     507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,507,
     507,507,507,507,508,508,508,508,508,508,508,508,508,508,508,509,509,509,509,509,
     509,509,509,509,509,509,509,509,509,510,510,510,510,510,510,510,510,510,510,510,
     510,510,510,510,510,510,510,510,510,510,510),
    TPYIndex_191_list(457,498, 94,506,461,221, 98,479,186,172,525,345, 25,166,513,456,496,498,507,345,
     421,496,337,394,468,493,421, 71,415,459,172,177,500,300,477,  3,500,166,462,477,
     477,388,358,300,341, 94,418,161,509,149,477,479,191,483,175,166, 91,503,468,491,
     225,393,451,  0, 42,229,477, 20,503,472, 98, 50,451, 50,474, 42,358,478,221, 46,
     462,295,164,491,477, 71,500,472, 91,445,361,465,465, 18,509,393,467,510,510,510,
     510,511,502,512,513,513,513,513,523,513,514,514,514,514,514,514,514,515,515,515,
     515,515,515,516,516,517,517,517,517,517,517,517,517,503,517,517,518,518,518,518,
     518,518,518,518,490,518,518,518,518,518,518,520,520,520,520,520,520,520,521,521,
     521,521,522,522,522,522,522,522,522,522,523,523,524,524,524,524,525,525,526,526,
     526,498,526,526,526,526,  0,  0,  0,  0,  0),
    TPYIndex_191_list(341,159,458,172,159,147,240,457,457,233,147, 91,240,339,229, 79, 20,399,459,112,
     507,507,472,472, 51,166,444,477,477,472,  7,160, 98, 51,472,215,121,184,337,457,
     164,510,173,111,457,168,452,164, 81,520,111,477,  4,328,276,328,135,276,482,268,
     408,164,254,  0,268,  4,483,291, 18,483,173,442,254,457,477,483, 51,421,164,186,
      15,505,487,117, 28,133,425,477,148,449,332,168,108,421,449,499,507, 51,172,456,
     121,292,372,328,127, 47,125,280, 98,399,483,331, 18,445,474,474,507, 81,463,478,
     214,483,124,423, 83,172,277,295,172,339,261, 15,379,136,494,391, 67,472,186,408,
     475,472,351,334,141,214, 20,494,137,482, 33,477,452,180,209,141,189,219,172,472,
     449,211,330,186,345,168,477,439,450, 70, 87,501,224,372,477,271,361,483,328,471,
     447,456, 43, 31,192,510,297,188,482,477,135),
    TPYIndex_191_list(106,510,395, 18,518,106,141,329,107,250,425,394,213,117,434,477, 48,254,151,111,
     242,235,166,121,329,518,173,467,495,177,121,492,175,479,470,505,391, 23, 23,350,
     391, 54,492,509,220,491, 59, 46,389,432,320,128,459,250,175,415,117,421, 61, 61,
     507,172,501,  0, 91,179,465, 57,487, 13,490,220,112, 31,172,394,477,523,117,135,
     374,494,233,477,  8, 46,449,507,515, 21,487,497, 70,491,472,337,388,439,445,291,
     119,172,106,482,210,191,510,477,433, 41,177,299,270, 50,472,229,350,229,483,333,
     481,408,112,341,371,315,517,399,246,455, 18,431,139,206,184,111,472,462,172,451,
     520,247,422, 23,306, 48,457,180,175,177,182,439,468, 70,439,444,391,341,522,485,
      64, 81,457,470,159,143, 42,214, 13,337,159,117,117,413,408,452,472, 25,142,254,
     462,243,335, 24,479,246,225,232,161,234,459),
    TPYIndex_191_list(449,479,179,514,459,492, 18, 91,399,472,446,468,240,514,492,487, 18,509,112,487,
     457,465,457, 47, 47,458,422,521,229,388,349,478,459,518,186,347, 81, 59,505,441,
      81,457,500,186,178,351, 51,168,469,433, 97,122,417, 63,457,502,413,478,351,175,
     353,517,451,  0,242, 71,350,518,431,351, 48,165,345,345,177,493,485,106,522,456,
     194,186, 46,318,485,314,339,445,477,292,236,257,209,518,340,510,351,411,333,508,
     266,472,178,159,388,313,184,281,136,151, 81,502,351,477,213,225,137,178,166,393,
     135,352,506,167,467,345,124,213, 99,521,517,451,483,393, 42,415, 46,175,469,475,
      98,483,468,  4, 81,518,329,268, 71,413,395,261,503,175,496,345,186,472,500, 46,
      70,179,526,456,341,180, 11, 83,526, 15,464,121,507,295,521, 56,328,451,165,451,
     457,147,349,213,252,456,109, 24,328, 15,475)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list09(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_09;


FUNCTION get_py_index_10(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list10 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(500,317,510,291,477,172, 97, 97,510,525,512,460, 85,329,507,178, 28, 68,351,399,
     441, 63,199,295,461, 26,525,271,399,177,345,260,175,339,455,451,178,353,295,184,
     295,245,242,228,455,352,522,346,477, 81,520,322,506,483, 96, 57,481,507,498, 46,
     445,422,117,  0,522,360,498,443,342,500, 83,431,172,237,491, 18, 49,242,233,422,
     507,413,457,214,172,517,342,507,317,520,231,493,357,443,184,459,508, 81,420,173,
     507,510,211,346,470,487,229,479,124,457,117,328,421,472,185,472,478,501,334,388,
     521,236,112, 51,164,250,351,390,151,125,259,467,462,412,462,186,175,388, 71, 43,
     408, 20, 16,350, 16, 98,107,399,172,481,151,467,456,125,505,213,328,477,229,339,
      11,122,240, 83,242, 45, 81,445,291,271,  6,471, 85, 89,189,388,389,280,121,478,
      47,395,143,470,234,484,507,  4,477,328,292),
    TPYIndex_191_list( 25, 63,186,235,418,345,345,233, 96,139, 68, 18, 18,184,345, 96, 50,172,456,485,
     292,507,485,507, 51, 92,451,240,235,459,451,221,358,462,295,418,351,353, 64,523,
     457,214,339,235, 70,111,431, 97,133,222,361,246,  3,172,184,206,446,472,257,192,
     351,247,223,  0,445,507,472,431, 72,479,483, 45,498,141,187,485,463, 69,468,108,
     361,388,213,399,444,339,420, 98,276,339,254,368,213,341,513,159,161,322,441,378,
      69,209, 85,478,228,160,125,484,251,481,232, 48,463,328,477, 32,177,277, 91,341,
     172,449,465,339,460,117,484,487,110,172,229, 98,184,328,507,369,459, 43, 61,347,
     456,341,339,388, 20,510,208,477,268,122,331,240,  7,271,184,357,348, 48,117,236,
     294,478,254,479,349,265,433,341,477,359, 18, 59,184,439,166,510,435,345,117,361,
     464,352,166,470,266,339,177, 49,176,246,479),
    TPYIndex_191_list(351,213, 81,236, 69,  6,505,108,213,473,322, 15,136,136,319,510,364, 98,  7,509,
     507,474,194,503,507,395,333,106,133,184,461,140,471,189,352,509,518,507,391,232,
     483,390,482,484,478,503,449,117,348,509,477,236,503,500,232,518,166,450, 58,166,
     191,477,322,  0,341,142,292,333,139, 15,245,315,232,368,365,172,473,459, 54, 62,
     405,471,482,159,399,117,518,117,487, 16,500,483,487,423,136,505,458,470,127,179,
     250,416,159,509,191, 18,395,455,482, 98,257,482,229,441,459,117,415,482, 81,393,
     139,232,479, 57,180,339,457,411,179,277,339,  7,399, 43,434,483,164, 18,117,441,
      70, 65,472,522, 71,175,449,479,136,147,340,112,393,460,451, 42,189,339,214,457,
      98, 13,314,435,241,315,468,173,505,395,366,268,100, 15,453,149,172,229, 12,175,
     406,222,479,483,413,259, 90,457,231, 63,235),
    TPYIndex_191_list(484,242,461, 44,513,451,468,469,503,177,500, 26,233,111,108,235,125,379,191,164,
     477,172,515,106,483,175,159,225,320,229,229,242,235, 69,509,232,487, 59,524, 20,
     219, 59,477, 20, 20,446, 11, 59, 20,329,299,299,505, 58,477,362,108,395,366, 42,
     122,483,477,  0,339,498,450,441,516,431,460,431, 98,508, 45,291,507,505,510,423,
     477,351,166, 89,482,277,477,178,234,470, 96,181,482,350, 81,180,477,351,208,467,
     233,166,470,186,369,524,172,259,108,339,159,462,159,451,477,453,412, 18,149,420,
     366,470,459,124,229,168,351,155,108,295,261,299,477,213,231, 68,477,457,492,319,
     482,233,119,122,431,258,442, 46,117,332,298,178,177,488,477,247,187,432,475,  3,
     276,172,143,  8,184,335,234,341,139, 85,498,471,347,483,  4,468, 24,214,484,399,
     100, 53,175,406,500,306,377,246,479,507,147),
    TPYIndex_191_list(472,456,231,417,166,136,220, 16, 67,510,322,482,509,179,483, 58,431,418,484,306,
     422,415,472, 48,431,395,505,482,487, 98,168,418,451,278,474, 50,470,418,395,507,
     484,413,249,139,501,503, 27, 48,413, 96,395,241,507, 67,359,341,468,483,477, 98,
     233,395,250,  0,468,500,427,106, 20, 20,229,484,482,246,229,435,339,388,483,366,
     449,117,192, 23,463,393,484, 66,168, 12,184, 20,447,213,141,395,209,503,462,242,
     525, 64,122,164,328,464,517,168,523,279,477,443, 69,395, 26, 48,172,208, 72,224,
     498,  1,474,117,271,477,420,229, 98, 18, 15,143,347,478,488,188,119,137,236, 89,
     297, 97,280,482,408,213,172,393,166, 68,234,477,461, 18, 59,140,166,466,477,315,
     211, 97,172,264,261,498,299,127,270,250, 48,223,128,100,498,417,493,457,526,172,
     112,494,306,263,235,513,509,423,161, 65,386),
    TPYIndex_191_list(145,458,172,160,464,457,141,306,222,472, 47, 90,247,117,483,222,173,128, 25,457,
     351,461,339,348,509,521,333,225,291,482,335,460,184,481,345,477,257,371, 15,399,
     483,487,160,214,460,460,412,422,266,457,366, 51,518,521,475,456,460,487,345,481,
     254, 44,242,  0,233,513,161,345,449,345,467, 79, 18,470, 18,497,451,506,254,235,
      97,259,475,378,211,112,259,216,231,491, 42,482,339,472, 42,491,352,480, 70, 25,
      87,222,229,400, 58,498, 68,278,229,214,178,481,214,182,412,478, 48,178,241,209,
     455,166,347,  6,413, 91,194,295,151, 46,417,125,  1,100,149, 82,  3,  3,417,152,
     439, 48,320,225, 32,330,339,479, 17,412, 81,261,322,186,233,337, 53,177,309,347,
     242, 35, 79,149,179,469,477,374,328,366, 40,168,279,451,175,278,245,161,236,482,
     483,348,483,164,451,507,320,422, 50,494,143),
    TPYIndex_191_list(457,491,507,483,478,524,254,505, 90,505,484,117,432,340,334, 50,524, 58,482,478,
     337,524,145,515,242,221,472,423,500,421,515,459, 91,421,350, 57,487,107,194,412,
      50, 67,487,481,  5,498,176,330, 46,483,229,493,477,176,421,334,299,477,472,477,
     293,366,398,  0,472,236,261,261,293,463,177,395,261,472, 20,395,477,457,179,350,
     477,233, 72,502,236,334,350,  7,505,507,  7,243,117,277, 84,459,345,451,455,251,
     501,117,108,172,339,341,339,351,471,459,  6, 34,221,  7,161,194, 89,173,466, 69,
     135,254,265,477, 89,345,470,506,223,220,411,472,136,461,143,206,186,364,474,448,
     490,451,483, 67,241,518,257,394,411,172,501,235, 79, 23,477, 83, 48,318, 63,470,
     473,160,220,457, 43,165,474,507,177,351,376,108,350,  4,140,249,298,487,458,319,
     110,364,211,398,416, 18,185,229,483,459,478),
    TPYIndex_191_list(208, 54,518,108,483,456,147,123,339,252,363, 81,408,457,477, 41,477,441,457,307,
     341,350,175,502,475,478,314,109,505,464, 90,485,508,117,328,369,463, 98,186, 96,
     135,478,341, 11,457,361, 44,298,111,487,477,347,328,143,159,478,187, 84,477,508,
     457,121,363,  0,168,420,192,484,242,288,452, 97,518,291,441,395,265,328,194,236,
      24,420,161, 25,328,483,408,526, 26,509,432,173,505,395,522,507,184,414,477,143,
     246,291,391, 63,261,161, 40,451,451,257,280,501,180,186,233,462,470,164, 54,168,
     416,478, 89,395,422,444,457,361,483, 48,477,460, 25,483,167, 40,412,268,466,179,
     376,513,279,328,456,141,319,466,460,445,  4,483, 18,128,  6,179, 42,462,235,479,
     399, 72, 66, 42,456,507,313, 49,456,189, 43, 55,411, 20,298,161, 51,322, 68,473,
     526,291,117, 44,477,477,439,472, 33,189,470),
    TPYIndex_191_list(434,477,477,468,502,319,151,379,394,522,522, 25,510, 48,488,334,439,341,117,499,
     254,472,117,229,485,328,473, 11, 25,178,351,467,506,271,457,457, 81,173,271,421,
     393,477,408,213,188, 15,517,464,159,177, 48,199,246,333,395,270,194,478,187,509,
      49,460,439,  0,268,225,172,483,467,361,525,507,406,229,459,464,352,328,477,510,
     460,266,210,474,459,459,466,187, 40,223,172,328,366,261,477,478,140,194,487, 15,
     411,341,214,215,477,431,352,346,464,110, 43,450, 50,161, 65,487,214, 98,228,515,
     345, 18,413,341,481,180,345, 49, 51,235,259,432,166,402,472,451,159,265,192,418,
     247,215,182,222,483, 43,457,452,167, 98,351,353,151,432,353,191,514,317,342,376,
     339,408, 40,112,484,271,262, 96,261,136, 20,452,148,451,224,122,399,240,242,473,
     408, 97,236,254,246,468,317,445,159,265,180),
    TPYIndex_191_list(  4, 88,482,379,193,341,408,289, 84,147,485,507,199,350,461,503,482,492,431, 67,
     137,159,508,441,247,259,222,449,518,487, 15,413,483, 42,435, 25,147,173,159,185,
     112, 42,449,507,445,468,456,483,433,213,517,244,464,347,393,147,244,475,184,497,
     184,459,434,  0,252,337,229,317,485, 47,124,229,425, 24,510,505,441,237,524,184,
      43,484,175,123, 84,423, 43,245,210,236,328,242,229,342,335,185,265,164,451,234,
     173,505,478,166,510,172,467,166,423,470,176,237,161,470,366,413,456,220,451,517,
     185, 34, 12,457,257,164,510,339,457,411, 91,517,328,262,122,110, 61,393,139,242,
     402,462,472,262,350,412,165,467,321,175,468,455,257,472,347,194,391,252,479,337,
     229,366,418,167, 18,466,117,422,318,266,165,479,461,221, 32,161,246,164,231,510,
     477,242,468,122,399,408,388,390,439, 42,220)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list10(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_10;


FUNCTION get_py_index_11(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list11 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(524,322,  4,328,459,471,515,229,194,206,418,215, 91,515, 56,518,506, 16,295,520,
      97,472, 87,477,341,515,172,483,179,139,254, 43,444,457,231,423,136,457,399,505,
     247,259,242,162, 21,119,220,198,109,456,277,449,161, 73,459,446,168,232,107,258,
     189,473,395,  0,231,143,459, 91,441,451,449,117,365,172, 98,187,505,431,498,161,
     473, 92,458,483,199,394,165,451,117,502, 40,346,395,159,214,432,345,415,229, 70,
      42,231,366,337, 18,149,517,147,462,479,485,111,149,  7, 13,141, 71,261,482, 46,
     297,341,341,456,233,341,164,175,175,521,471,456,181,494,477,106,173,180, 69,160,
     318, 26,229,350,461,431,354,214,451,164,242, 54,165,350,458,  6,135,418,237,459,
     235,184,462,263,415,219,470,166,442,507,193,507,172, 98, 42,457,184, 42,180,301,
     261,117, 18,483, 51,406,110,472,456,483, 18),
    TPYIndex_191_list(345,160,440,520,164,475,265,175, 92,175,411,214,161,468,503,178,505, 20,508,518,
     466,475,257,315,  3,121,341,257,417,418,318,458,231,417,189,522,475,300,453,364,
     422,417,342,229,406,515, 25,317,372,328,377,123,518,456,479,165,433,237,189,416,
     395,412,449,  0,149,505,505,246,477,484,422,295,457,173,125,249,185,411,522,417,
     446,112,452,276,242,417,313,522,442,466,139,468,231,412,251,268,246,179,518,141,
     298,483,408, 68,509,388,346,471,359,399,243,177,332, 40,229,333,447,459,417, 81,
     451, 98,180, 21,178, 43, 18, 42,301,  6,484,435,456,135,268,328,  3,332, 48,229,
     472,342,330, 43,225,501,457,388, 18,294,268,403,119,119,117,301,518,178,186, 13,
     492,408,117,521,477,301,420,461,162,329,229,339,194,515, 30,507,456,  6,237,388,
      21, 61, 42,172,460,177,483,509,125,449,213),
    TPYIndex_191_list( 18,451,237, 81,376,520,477,242,199,342, 65,339, 43,422,251,481, 42,112,180, 21,
     399,247,466, 61,240,491,491, 32,229,458,457,192,403, 17,501,341, 47,242,162,172,
     337,415,342,334,235,379,466,459, 47,214,408,237,280,165,331,415,108,345,352,473,
     422,460,483,  0,177,525,233,346,223, 96,463,491,339,175,508, 79,471,479, 96,186,
     300,491,337,434,446,501, 87,388,189,175,110,415,242,185,166,483,231,487,328,399,
     122,462,117,509,117, 51, 69,209,148,176,128,461,431,236,339,110,389,142, 97,398,
     237,352,449,518,194,460,431,263,166,408, 20,135,515,265,179,505,366,124,229,477,
     175, 23,330,251,225,267,378,462,233,497,176,341,345,164,523,474,172, 54,490,481,
      87,172,451, 23,265,186,194,240, 83, 69,334,265,173,106,133,467,471,155,474,246,
     457,166,231,339,479,339,161,215,472, 61,449),
    TPYIndex_191_list(517,378,341,517,225, 18,434,468,475, 97,143,422,351,111, 68,477,  3,520,470, 84,
     510,155,515,172,295,151,168,348, 23,479,214,297,467,175,175,341, 40,507,264,229,
     225,172,523,213,389,322,219, 91,485, 58,247, 21, 13,242,459,212,240, 98,242,175,
     221, 25,341,  0,474, 42,460,175,457,139, 31,295,225, 64,351,317,246,523,243,526,
     477,186,422,510,221,457,473,464,319,464,252,471,507,459,483,477, 43, 46,184,254,
     483,484,458,280,  3,422,179,165,479, 65, 61,468,501,337, 30,351,242, 18,491,452,
     451,487,423,456,390,339, 40,249,229,328,263,474,369,175, 51, 47, 61,461,109,314,
     510,277,507,503,240,182,333,242,458,461,482,507,445,507,236,135, 81,229,445, 47,
     193,223,471,359,507,505,140,339,435,216,182,162,155,141,178,243,185,  4,467,108,
     136,117,186,518,417,236, 51,111, 91,341,502),
    TPYIndex_191_list(507,479,165,518, 25,422,364, 17,237,468,219, 42,501,501,182,  6, 85,186,233,291,
     258,249,402,388,388,258,472, 18,147, 18,388,341,192, 17,159,370,376,459,459,175,
     265,458,404, 90,498,280,500,322,458,236,139, 18,370,151,449,125,125,107, 51,460,
     141,265,384,  0,215,232,247,435,386,184,485,485, 42,351,235,422,387,215,472,452,
     472,483,167,483,452,460, 13,460,351,474,452,317,478,451,478,216,353,246, 56,232,
     143,175, 81,184, 62,393,278,498,231,221,172,332,184,350, 92, 56, 46,247, 40,184,
     468,257,479,505,110,418,416,462,124, 65,124,406, 23,364,510,462,179,342,339, 51,
     422,510,161,122,485,348,445,186,345,347,242,525,457,184,484,225,472,235, 25, 40,
     482,  6,268, 63,389,432,487,231,330, 70,172, 23,477,361, 98,136,194,242,507,477,
     505,161,229,474,395,507,352,242,503,292,450),
    TPYIndex_191_list(221,391,352,325,432,295,418,189,151,353, 55,449, 90,339,214,422,449,330,459,457,
     166, 42,328,422,164,418,452,446,147,189,391,166,418,164,224,463,477,507,478,473,
      90, 98,394,320,199,487,507,328, 47, 98,351, 81,236,507, 24, 97,399,415,106,141,
     483,187,345,  0,464, 57,456,458,388,394,337,505,459, 72,320,477, 94,245,478,184,
     505,242,394,459,478,510,473,362,458, 49,472,478,483, 81,451,295,515, 58,518, 62,
     242,235,451,175,342,173,172,172,191, 79,121,175,492,313,236, 26, 17,497,328,334,
     119,219,122,149,421,124,494,463,487,141,151,491,254,483, 43,291,339,394,475, 44,
     472,166, 26,147,141,468,214,  3,266,444,470,474,457,279, 16,395,213,477,507,518,
     121,179,505,220,350,172, 70,117, 42,172,457, 81,483,135,179,351,175,176,332,254,
     136,456,136,172,184,175,329,193,346,417,  8),
    TPYIndex_191_list(  4,178,339,472,166,487,456,422,172, 72,  6,457,478,372,359,235,443, 79,328,415,
     483,472,111,291,106,172, 72,478,507,240,457,229,229,353,507,477,347,341,164,135,
     524,161,488,483, 50,415,147,455,403,164,184,488,481,172,457,237,229,306,469,488,
     172,172,276,  0,116,457,271,111,318,487, 48,473,  4,456, 83, 71,161, 84,271, 46,
     498,236,339,509,159,500,478,510,444,236, 89,479,456,236,236,159,478,125, 25,254,
     271, 65,175,376,399, 43,242,337,351,331, 72,459, 54, 89,471,478,194,487,108, 48,
     177, 91, 85,482,484,143,485,455,364,165,180,368,420,133,516,276,474,341,240, 89,
     188,242,173,393,509,526,137,505,351,507,180,140, 89,472,211,372,145,329,505,261,
     444,246, 67,319,449,294,180,472,110,483,520, 87,175, 62,278,262,447, 98,399, 47,
     479,125,247, 23,427,507, 53,136,259,378,388),
    TPYIndex_191_list(250,250,487,237,259, 23,456,451,216,457,477, 70,427,483,240, 69,172,318,473,451,
     446,457,172,456,259,225,229,417,  3,110, 69,240,236,477,112,229, 13,151,151,151,
      24,348,432,505, 47,348,232,180,432,110,262, 13,432,166,475, 87, 40,341,361, 81,
      91,456,361,  0,347,298,478,372,276,447,522, 11,477,474,423, 18,178,159,319, 24,
     478,418,423,178,  4,154,133,340,435,479,415,433,468,206, 17,418,501,231,235,483,
     457,477,386,463,457, 21,372,184,412, 21, 21,399,135,136,161,110,172,221,483,320,
     254,500,180,291,237,477,473,451, 96,342,395,161,510,468,420,475,473,456,147,258,
      44,472,161,483,451, 92, 13,468, 20,443,237,251,389,487,477,483,108,415,459,186,
      64,408,423,467,457,229,161,181,161,110,395,408,459,507,351,161,117,526,261,507,
      59,505,433,339, 42,457,517,457,358,425,421),
    TPYIndex_191_list(328,216,219,498, 12,101,350,350,391,390,271,175, 81,312,423,418,462,317,125, 24,
     216,422,241,166,345,469,172,175,176, 42,418,161,459,341, 91,447,175,221,451,361,
     117,447,352,125,451,390,147, 43,216,365,487,391,451,125,117,423,135,487,124, 18,
     469,415, 91,  0,447, 91,117,182,459,462,459,172,488,224,322,479,479,487,322,  4,
     478,460,161,475, 87,348,214,460,405,147,467,477,467,136,411,214,339, 94,173,166,
     307,296,473,518,353,341,265,425,339, 94,254,258,123,483,483,418,469,263,172,122,
      71,162, 45, 96,471,517, 20,112,107,  3,229,240,498,439, 81,219,445,117,464,252,
     458,345,499, 89,280,125,455,339, 94, 15, 87, 46,509,178, 81,468, 20,503,142,377,
     348,351, 96, 79,176, 27,259, 25,191,507,117,117,467,262,208, 96,263, 70,394,484,
     477,415,518, 48,270,220,175, 81,417,471,291),
    TPYIndex_191_list(148,483,449,111, 96, 81, 83,317,334,236, 45,180,225,347,345, 98, 98,451,462,216,
     393,477,477,194, 94,483,333,225,433,173,440,166,214,173,246,435, 47,479,487,161,
     147,180,443,443,332,220,443,518,518, 56, 87,220,421,147,341,212,522,459,347,477,
     374,431, 98,  0, 98,472,452,472,483,513,472,459,463,477,484,377,432,432,176,214,
     225,223,330,512,251, 63,474,149,345,136,470,472,166,388,366,259, 23,415,328,369,
     412,214,254,194,266,330, 47,191,235,136, 87, 18,352,432,108,505,391,449,442,117,
     123,136,229,472,328,221,229,172,497,151,139,185,179,119,477,334,502,233,441, 54,
     388,258, 41,307, 26,420,184, 11,341,109,192,440,168,314,483,506,136,194,334, 26,
      25,485,271,421, 83,406,395,468,418, 18,291,328, 97,193,223,106,482, 47,173,280,
     475, 47, 84,478,189,510, 87, 88,162,352,144)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list11(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_11;


FUNCTION get_py_index_12(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list12 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(459,332,242,235,295,352,435,181,335,479,483,225,112, 88,137,117,458,500,319,372,
     117,420,234,172,468,461,184, 21,408,451,473,474,412,189,412,108,237,457,237,330,
     330,237, 21, 21, 21,233, 21,379,112,466,473,500,408,474,237,110,108,110,395, 30,
     172, 87,408,  0,445,500,516,361,483,473,395,478,108,108,416,478,510,477,526, 18,
     178,423, 13, 59,434,408, 13,395, 97,145,361,432,177,173, 24,474,439,386, 84,506,
     379, 49,422,  4,366,223,220,425,199,497,229,124, 98, 67,244,237,189,175,222,347,
     184,  1,342,306, 16, 73,194,215,136,168,320,185,421,518,346,189,408, 98, 40,412,
     164,  3,241,342,110,257,268,125,185,276,237,477,173, 23, 21,422,251,246,481,522,
     468, 81, 42,186,337,242, 96,221,337, 64,342, 79,168,517,477, 40, 21,508,393, 67,
     507, 18,518,268,399,247,172,117,222,194,361),
    TPYIndex_191_list( 59,460,473,185,106,224,457, 25,282, 98, 26,187, 90,413,483,457,474,215,143,395,
     175,515, 24,459, 26,475,421,110,501,451,139, 98,302,487,161,165,166,500,160,151,
     464,111,451,136, 40,411,422, 25,124,457,214,237,412,459,475,452,268,422,251, 18,
     483,466,179,  0,376,443,513,388, 48, 70,477,339,359, 47,451,460,500,111,145,259,
     472,268, 42,460,246,491,279, 87,445, 97,173,224,457, 90,187,143,136,505,172,379,
     292,117,358,141,177,149,457,334, 85,161,481,182,484, 13,505,136, 89,242,351, 48,
     408,106,507,137,466,243, 25,229,161,483,459,431,456,263,  4, 15, 57,161, 98, 59,
     257,456,474,175,479,503,237,233,177,182,483,161,242,139, 24, 87,178,229,388,229,
     482,122,194, 70,498,319,510,468,173,471,477,507,223,456, 67,459,386,510,110,136,
     451,483,483, 70,219,477,160, 67,241,173,378),
    TPYIndex_191_list(475, 25,111, 25,291, 18,334,441,147,110,175,  4,  3,459,487,111,332,463,249,483,
     333,341, 81,445,503, 48,470,510,507,320,463,363,372,487,452,507, 70,247,482, 25,
      13,211,445,477,351,337,351,181,334,502,484,322,509,184,510,301,184,328,522,173,
     236,505,499,  0,117,473,395, 18,445,445,408,237,249,329,423,507,364,427, 89,470,
     352,393,181,106,145, 25,510,478,246,509, 70,145,237,184,411,347,252, 48,268, 11,
     172,165, 21,246,479,499,240,478, 50, 11,220,477, 83,328, 83,351,477,411,457,349,
     516, 20,474,433, 90,194,483,470,184,483,477, 40,276,361,179,257,317, 71,340,125,
     198,231, 47,231,175, 21, 51,431, 18,184, 97, 68, 15, 13,247, 20,221, 48,503,342,
     366,317,399,467,187, 66,179,225,518, 44,408,168,223,422,313,241,176,300,268, 85,
      87, 70,236,297,143,214,  6,421,147,339,148),
    TPYIndex_191_list(232,147,441,468,443,187, 98, 47,464,408,242,515,509,391,329,215,423,220,520,194,
     339,339,472,110,378,472,125,474,456,329, 61,329,341,110,165,341,168,483,431,352,
     458,520,214,365,408,137,445,443,412,341, 47,507,237,322,427,457, 32, 91,472,484,
     521,461,388,  0,339,507,403,242,457,246,501,268,474, 30,330, 61,351, 18,507,483,
     467,162, 25,413,461,235,500, 96,237,445, 35, 83,461,434,472,246,500,178,151,479,
     194,147, 98,513,295,251,377,149,366,332,161,341,350,172, 41,166,125,259,117,328,
     369,459,149,178,133, 90,478, 48,147,136,194,229,482,357,498,350,236, 47,482,349,
     173,280,507,408,351,435,216,339,177,473,270,393,503,390,456,229, 51,117,342,348,
     339,457,483,110,143,143,477,328,433,352,449,222,259, 57,364,278,117,214,194,117,
     412,483,482,241,350, 20,270,347,  6,251,252),
    TPYIndex_191_list(180,477,475,503,332,509,472,492,247,427,460,172,403,184,457,164,229,330,363,478,
     330,464,347,520,413,214,403,451,451,451,483,122,477,192, 13, 15,499,431,461,210,
     443,128,329,483,415,334,461,318,186, 67,268,233,241,461,492,431, 23,212,242,124,
     345,193,345,  0,223,378,215,431,109,466,357, 70,215, 23,107,328,107,431, 13, 18,
     365,117,106,364,351,133,485,322,511,390,417,431,229, 23,431,322,411,249,484,457,
      48,422,318,395,165, 32,330,422,457,460,508,501,401,254,322,166,317,388,168,259,
      42,231,264,229, 91,351,116,479,348,458,395,510,483,172, 91,172,175,502,518,161,
     349,334, 68,394,494,135,229,408,433,173, 20, 48,208, 18,459,472,352,506,187,395,
     123,314,390,461,348,494,346,510,371,341,445, 18, 70,206,484,461,505,214,165,160,
     135,110,229, 18, 48,413,264, 90,242, 92,141),
    TPYIndex_191_list(506,520,405,175, 97,161,219,339,231,505,322,249,376,251,251,383,467,234,341,341,
     279,216,297, 23,358, 90, 90,280,460,457, 90,147, 90, 90,182,483,483,472,229,463,
     141,520,237,462,389,257,339,339,119,467,483,443,339,232,122,330, 18,339,467, 50,
     472,500,483,  0, 72,361,178,  7,159,445, 84,172,483,162,346,417,148,444,268,178,
     393, 11,484,328,247,452,161,242,488,109,111,276,482,329,268,151,458, 83,491, 79,
      25,220,509,483,483, 49,457,295,307, 54,388,477, 18,508, 11,109,125,242,510,494,
     457,390,451,259,398, 32, 49,259,347,294,173,350,386, 18, 81,342,417,178,422,457,
     459,261,  7,229,433,457, 59, 30,235,520,376,160,491, 59,467,365,350,176,127,172,
     477,236,457,510,110,175,329,151,477,261,507,339,339,474, 72,117,351,182,346,234,
     518,491,278,503,176, 48, 87,122,509,477,136),
    TPYIndex_191_list(462,147,328,236,445, 25,350,333,117, 18,172,451,351, 84, 25,482,142,328,292,506,
     420,319,117,498,184,136,395, 89, 69,418,340,399,160,505,106,  4,451,502,510,478,
     234,246,439,477,477, 24,451,177,209,462,459,125,166,223,117,193,466, 97,187,431,
     262,390,498,  0,417,347,483,282,503,142,128,413,456,350,393,337,164,433,229,386,
     386,193,259, 47,229,521,457,481,393,518,339,506,460,282, 57,172, 84,526,445,459,
     266,507,472,387, 47,441,225,215,320,161,431,467,145,422,223, 26,177,457,184,229,
     470,395, 67, 96,349,469, 63, 22, 13,418,175,117,342,507,117,388,229,445,173, 25,
     420,214,345, 18,459,459,172,177,232,172, 58,163, 48,507, 83, 25,507,175, 85, 53,
     508,184, 97, 67,329,365,295,317,339, 51,186,337,108, 63,510,235, 42,234,523,462,
     507, 84,268,466,268,328,161,186,389,136,524),
    TPYIndex_191_list(346,136,509, 89,220,110,291,477,215,242,182, 43,180,245,236,521,229,259,520,507,
     292,161,483, 81,395,393,164,431,160,506,510,219,520,495, 20, 20,164,352,495,451,
     451,483, 57,365,498,165,231,472,350,350,175, 18, 98,473,117,457,459,458,451,161,
     395,371,468,  0,452,341,149,456,318,378,237,249,395,395,215,518,427,418,474,125,
     481,341,339,452,371,393,231,  6,224,166,265,172,433,351,175,393,251,133,413,507,
     518,348,232,483,229,452,435,172,320,110,386,478,  3,459,250, 46,184, 13,433,518,
     478,483, 58,455,265,484,445,515,416,187,184,246,351, 50,349,243,456,491,270,  6,
     237, 15,463,482,109,  7,333,292,242,413,117,160,420,141,178,451,106,172,177,460,
     470,128,229,231,175,395,433,142,386,164,172,348,236,521,110,215, 43,136,291,292,
      84,395,518,111, 85, 98,350,117,165, 20,378),
    TPYIndex_191_list(457,350, 21,172,172,510,176,466,513,481,501,192,469, 22,483,351,460, 25,177,470,
     413,165,525,445,388,108,186,235,470,263,457,497,460,111,139,160,211,495,378,500,
     122,141,479,229, 43,225,399,  3,366,172,483,161,399,229,234,246,264,505,460, 98,
     242,139,229,  0,459, 72,172,444,  7,151,482,498, 25,328,193,439,495,160,211,498,
     187,481,339,393, 18, 43,431,452,451,352,176,318,341,451,457,161,122,  6,339,418,
     139,474,224, 21,469,251,265,481,141,388,525,229, 68,473, 68,345,251,175,184,365,
     135, 15,178,440,209,136, 81,160,125,194, 18,241,340,212, 23, 91,257,  7,472,232,
     461,450, 48,460,472,434,423,481, 19,215,254,357,433,172,518,466,352,182, 23,164,
     234,256,166,261,172,187,510,261,339,  6,391,235, 69, 51,482,458,477,351, 91,229,
     348, 30,  4,111,482,456,472,457,350,147,498),
    TPYIndex_191_list(500,139,353,477,117,229,507, 26,472,117,502,172,112,366,472,395,112,266, 13,484,
     507,161,347,141,111,452,500,395,483,116,474,186,186,328,164,505, 13,472,471,506,
     109,112,452,313, 69,125,366,236,264,117,445,452,229, 20,507,125,484, 59,351,461,
      48, 70,184,  0,474,136,508,483,473,483,471,434,483,432,479, 94,456,106,137,  3,
     507,472,155,461,173,234,510,473,477,159,242,366,270,125,361,461,466,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list12(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_12;


FUNCTION get_py_index_13(p_Index1 NUMBER, p_Index NUMBER)
RETURN NUMBER IS
  v_list13 TPYIndex_list := TPYIndex_list(
     TPYIndex_191_list(509, 48,246,155,292, 98,243,173,172,441,185,445,337,456,185,483, 25,187,187, 18,
     457,187,184,441,180,431, 98, 98,213,161,456,393,220,177,317,242,328,399,117,471,
     517,322,350,341, 15, 84,242,353,175,184,441,471,484,339,229,475,515,206, 97,215,
     394,339,180,  0,477,477,348,518,220, 89,339,442,128,184,351,477,525,172,399,446,
      48,263,365,471,350,431,161,431, 98,178,254,117, 57,441,472,151,484,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(329,215,257,161,479,507,456,184, 89,342,109,161,479,484,459,453,395,151, 51,422,
     458,371,237,172,161,341,470,147, 59, 59,477,474,472,172,229,432,208,431,431,477,
     441,249,461,124,432, 46,172,442,503,  6,474,477,313, 48,507,237,481,247, 18,403,
     517,483,456,  0,186,478,431,408,177,477,162, 18,479,413,165,108,177,233,472,124,
     182,459,459,441,250,525,483,479,242,442,459,469,477,328,510,246,457,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(477,172,494,483,500,475,473,328,297,161,261,479,259, 81,485,483,225, 26,242,151,
     240,403,485,479,352,351,229,243,395,342,461,236,469,155,509,456,215,341,128,484,
     413,151,350,477,453,237,172,477,477,164,500,259,403,242,179,236,175,459, 67,175,
     175,472,482,  0, 63,319, 63,319,510,175,261,483,237, 46,354,235,291,182,354,180,
     408,460,472,173,261,229,501,180,339,236,472, 63,250,151, 44,117,262,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(262,117,319,351,351,270,117,472,220,262, 48,112,351,262,268,268,521,304,111,165,
     179,140,432,440,162,213,159, 48,152,477, 70,457,444,268,341,500,472,257,472,485,
     422,472,472,472,505,505,516, 30,477,257,500,472, 91,242,111,265,484, 63,351,502,
     447,510,507,  0,259,  6, 22,445, 18,502,261,505,518,136, 89,111,484, 43,124,339,
     484,422,427,399,110,452,110, 84,445,508,351,394,395,395,435,457,180,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(167,457,472,441,408,459,225,474,456,456,209,462,151,466,453,498,299,279,518,499,
     172,518,172,172, 48, 46, 46,151,471,478,462, 13,494,462,518, 48,472,498,433,236,
     236, 51,352,462,478,295,182,474, 58,487,483, 51,477,291,498,521,351,487,472,483,
      98,455,477,  0, 67,521, 83, 51,179,471,151,478,252,318,455,318,472,252,240,133,
     194, 68,236, 68,350,350, 22, 56,151,186,462,485,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0),
    TPYIndex_191_list(  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0)
     );
BEGIN
  IF (p_Index>0) AND (p_Index<192) THEN
    RETURN v_list13(p_Index1)(p_Index);
  ELSE
    RETURN 0;
  END IF;
end get_py_index_13;


FUNCTION GetHzFullPY(p_String varchar2)
 RETURN VARCHAR2 IS
--declare
 --p_String varchar2(200) := '???????';
 v_char varchar2(2);  --????
 n_loop number;    --??
 n_len number;     --????
 n_ascii number;   --??ASCII?
 n_ord_high number; --n_ascii/156
 n_ord_low number;  --n mod 256
 n_temp number;
 n_temp1 number;
 v_PY varchar2(32767);

BEGIN
  v_PY := '';
  n_len := length(p_String);
  FOR n_loop IN 1..n_len LOOP
    v_char := substr(p_string,n_loop,1);
    IF upper(v_char) IN (
        'A','B','C','D','E','F','G',
        'H','I','J','K','L','M','N',
        'O','P','Q','R','S','T',
        'U','V','W','X','Y','Z',
        '0','1','2','3','4','5','6','7','8','9',
        '(', ')', '[', ']','.', '!', '@', '#', '$',
        '%', '^', '&', '*', '-', '+','<', '>', '?', ':', '"')  THEN
      v_PY := v_PY||v_char;
    ELSE
        n_ascii := ascii(v_char);
        n_ord_high := trunc(n_ascii/256,0);
        n_ord_low := n_ascii-(n_ord_high*256);
        --DBMS_OUTPUT.PUT_LINE('n_ascii = '||to_char(n_ascii,'9999999'));
        --DBMS_OUTPUT.PUT_LINE('n_ord_high = '||to_char(n_ord_high,'9999999'));
        --DBMS_OUTPUT.PUT_LINE('n_ord_low = '||to_char(n_ord_low,'9999999'));
        IF (n_ord_high>128) and (n_ord_low>63) THEN
          CASE n_ord_high
            WHEN 162 THEN     --????
              IF n_ord_low>160 THEN
                v_PY := v_PY||get_roma_num_py(n_ord_low-160);
              END IF;
            WHEN 163 THEN     --??ASCII
              IF n_ord_low>128 THEN
                v_char := chr(n_ord_low-128);
                IF upper(v_char) IN (
                   'A','B','C','D','E','F','G',
                   'H','I','J','K','L','M','N',
                   'O','P','Q','R','S','T',
                   'U','V','W','X','Y','Z',
                   '0','1','2','3','4','5','6','7','8','9',
                   '(', ')', '[', ']') THEN
                  v_PY := v_PY||v_char;
                END IF;
              END IF;
            WHEN 166 THEN     --????
              IF (n_ord_low>160) AND (n_ord_low<185) THEN --A1--B8
                v_PY := v_PY||get_greece_alphabet_py(n_ord_low-160);
              ELSE
                IF (n_ord_low>192) AND (n_ord_low<217) THEN --C1--D8
                  v_PY := v_PY||get_greece_alphabet_py(n_ord_low-192);
                END IF;
              END IF;
            ELSE
            BEGIN
              n_temp := n_ord_high-128;
              n_ord_low := n_ord_low-63;
              n_temp1 := trunc(n_temp/10,0);
              n_temp1 := n_temp-n_temp1*10;
              IF n_temp1=0 THEN
                n_temp1 := 10;
              END IF;
              --DBMS_OUTPUT.PUT_LINE('n_temp = '||to_char(n_temp,'9999999'));
              --DBMS_OUTPUT.PUT_LINE('n_temp1 = '||to_char(n_temp1,'9999999'));
              CASE
              WHEN n_temp<11 THEN
                n_temp1 := get_py_index_01(n_temp1,n_ord_low);
              WHEN n_temp<21 THEN
                n_temp1 := get_py_index_02(n_temp1,n_ord_low);
              WHEN n_temp<31 THEN
                n_temp1 := get_py_index_03(n_temp1,n_ord_low);
              WHEN n_temp<41 THEN
                n_temp1 := get_py_index_04(n_temp1,n_ord_low);
              WHEN n_temp<51 THEN
                n_temp1 := get_py_index_05(n_temp1,n_ord_low);
              WHEN n_temp<61 THEN
                n_temp1 := get_py_index_06(n_temp1,n_ord_low);
              WHEN n_temp<71 THEN
                n_temp1 := get_py_index_07(n_temp1,n_ord_low);
              WHEN n_temp<81 THEN
                n_temp1 := get_py_index_08(n_temp1,n_ord_low);
              WHEN n_temp<91 THEN
                n_temp1 := get_py_index_09(n_temp1,n_ord_low);
              WHEN n_temp<101 THEN
                n_temp1 := get_py_index_10(n_temp1,n_ord_low);
              WHEN n_temp<111 THEN
                n_temp1 := get_py_index_11(n_temp1,n_ord_low);
              WHEN n_temp<121 THEN
                n_temp1 := get_py_index_12(n_temp1,n_ord_low);
              WHEN n_temp<121 THEN
                n_temp1 := get_py_index_13(n_temp1,n_ord_low);
              ELSE
                n_temp1 := 0;
              END CASE;
              v_PY := v_PY||GetHzPY_by_index(n_temp1);
            END;
          END CASE;
        END IF;
    END IF;
  END LOOP;
  RETURN v_PY;
  --DBMS_OUTPUT.PUT_LINE(v_PY);
END;


 FUNCTION GetHzPYCAP(p_String varchar2) RETURN VARCHAR2 IS
--declare
 --p_String varchar2(200) := '???????';
 v_char varchar2(2);  --????
 n_loop number;    --??
 n_len number;     --????
 n_ascii number;   --??ASCII?
 n_ord_high number; --n_ascii/156
 n_ord_low number;  --n mod 256
 n_temp number;
 n_temp1 number;
 v_PY varchar2(32767);

BEGIN
  v_PY := '';
  n_len := length(p_String);
  FOR n_loop IN 1..n_len LOOP
    v_char := substr(p_string,n_loop,1);
    IF upper(v_char) IN (
        'A','B','C','D','E','F','G',
        'H','I','J','K','L','M','N',
        'O','P','Q','R','S','T',
        'U','V','W','X','Y','Z',
        '0','1','2','3','4','5','6','7','8','9',
        '(', ')', '[', ']','.', '!', '@', '#', '$',
        '%', '^', '&', '*', '-', '+','<', '>', '?', ':', '"')  THEN
      v_PY := v_PY||v_char;
    ELSE
        n_ascii := ascii(v_char);
        n_ord_high := trunc(n_ascii/256,0);
        n_ord_low := n_ascii-(n_ord_high*256);
        --DBMS_OUTPUT.PUT_LINE('n_ascii = '||to_char(n_ascii,'9999999'));
        --DBMS_OUTPUT.PUT_LINE('n_ord_high = '||to_char(n_ord_high,'9999999'));
        --DBMS_OUTPUT.PUT_LINE('n_ord_low = '||to_char(n_ord_low,'9999999'));
        IF (n_ord_high>128) and (n_ord_low>63) THEN
          CASE n_ord_high
            WHEN 162 THEN     --????
              IF n_ord_low>160 THEN
                v_PY := v_PY||get_roma_num_py(n_ord_low-160);
              END IF;
            WHEN 163 THEN     --??ASCII
              IF n_ord_low>128 THEN
                v_char := chr(n_ord_low-128);
                IF upper(v_char) IN (
                   'A','B','C','D','E','F','G',
                   'H','I','J','K','L','M','N',
                   'O','P','Q','R','S','T',
                   'U','V','W','X','Y','Z',
                   '0','1','2','3','4','5','6','7','8','9',
                   '(', ')', '[', ']') THEN
                  v_PY := v_PY||v_char;
                END IF;
              END IF;
            WHEN 166 THEN     --????
              IF (n_ord_low>160) AND (n_ord_low<185) THEN --A1--B8
                v_PY := v_PY||get_greece_alphabet_py(n_ord_low-160);
              ELSE
                IF (n_ord_low>192) AND (n_ord_low<217) THEN --C1--D8
                  v_PY := v_PY||get_greece_alphabet_py(n_ord_low-192);
                END IF;
              END IF;
            ELSE
            BEGIN
              n_temp := n_ord_high-128;
              n_ord_low := n_ord_low-63;
              n_temp1 := trunc(n_temp/10,0);
              n_temp1 := n_temp-n_temp1*10;
              IF n_temp1=0 THEN
                n_temp1 := 10;
              END IF;
              --DBMS_OUTPUT.PUT_LINE('n_temp = '||to_char(n_temp,'9999999'));
              --DBMS_OUTPUT.PUT_LINE('n_temp1 = '||to_char(n_temp1,'9999999'));
              CASE
              WHEN n_temp<11 THEN
                n_temp1 := get_py_index_01(n_temp1,n_ord_low);
              WHEN n_temp<21 THEN
                n_temp1 := get_py_index_02(n_temp1,n_ord_low);
              WHEN n_temp<31 THEN
                n_temp1 := get_py_index_03(n_temp1,n_ord_low);
              WHEN n_temp<41 THEN
                n_temp1 := get_py_index_04(n_temp1,n_ord_low);
              WHEN n_temp<51 THEN
                n_temp1 := get_py_index_05(n_temp1,n_ord_low);
              WHEN n_temp<61 THEN
                n_temp1 := get_py_index_06(n_temp1,n_ord_low);
              WHEN n_temp<71 THEN
                n_temp1 := get_py_index_07(n_temp1,n_ord_low);
              WHEN n_temp<81 THEN
                n_temp1 := get_py_index_08(n_temp1,n_ord_low);
              WHEN n_temp<91 THEN
                n_temp1 := get_py_index_09(n_temp1,n_ord_low);
              WHEN n_temp<101 THEN
                n_temp1 := get_py_index_10(n_temp1,n_ord_low);
              WHEN n_temp<111 THEN
                n_temp1 := get_py_index_11(n_temp1,n_ord_low);
              WHEN n_temp<121 THEN
                n_temp1 := get_py_index_12(n_temp1,n_ord_low);
              WHEN n_temp<121 THEN
                n_temp1 := get_py_index_13(n_temp1,n_ord_low);
              ELSE
                n_temp1 := 0;
              END CASE;
              v_PY := v_PY||substr(GetHzPY_by_index(n_temp1),1,1);
            END;
          END CASE;
        END IF;
    END IF;
  END LOOP;
  RETURN v_PY;
  --DBMS_OUTPUT.PUT_LINE(v_PY);
END GetHzPYCAP;

end GetHZPY;
/

prompt
prompt Creating package body GET_AR_SUMMARY
prompt ====================================
prompt
create or replace package body dukepu.get_AR_Summary is

   function get_nums_of_staffs(v_attendance_machine_NO int,v_year_month_str varchar2) return int is
            v_count int;
   begin
         select count(distinct job_number)  INTO v_count
      from attendance_record ar
      where substr(ar.job_number,1,1) = v_attendance_machine_NO
      and trunc(ar.fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM');

      return v_count;
   end;


  function get_nums_of_ar_days(v_attendance_machine_NO int,v_year_month_str varchar2) return int is
       v_count int;
  begin
       select count(distinct fingerprint_date) INTO v_count
      from attendance_record ar
      where substr(ar.job_number,1,1) = v_attendance_machine_NO
      and trunc(ar.fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM');

      return v_count;
  end;

  function get_machines_no(v_year_month_str varchar2) return t_cur is
           v_cur t_cur;
  begin
       open v_cur
       for  select distinct substr(job_number,1,1) machine_no
        from Attendance_Record AR
        where trunc(ar.fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM')
        order by machine_no asc;
        return v_cur;
  end;


  -- Private type declarations
  -- Function and procedure implementations
  function get_Statff_Info(v_attendance_machine_NO int,v_year_month_str varchar2) return t_cur is
           v_cur t_cur;
  begin

         open v_cur
         for
         select distinct substr(job_number,10,3) AS job_number,
          name,
          dept
        from Attendance_record
        where substr(job_number,1,1) = v_attendance_machine_NO
        and trunc(fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM')
        order by job_number asc;

        return v_cur;
  end;


  function get_AR_Of_Each_Staff(v_attendance_machine_no int,v_year_month_str varchar2) return t_cur is
           v_cur t_cur;
  begin

       OPEN v_cur
       FOR
           SELECT SUBSTR(job_number,10,3) last_three_digits_Of_jn,
           name,
           dept,
           to_char(fpt_first_time,'HH24:MI') || '   ' || to_char(fpt_last_time,'HH24:MI') ar_time
            FROM Attendance_Record AR
            WHERE substr(AR.Job_Number,1,1) = v_attendance_machine_no
            AND TRUNC(AR.Fingerprint_Date,'MM') = to_date(v_year_month_str,'yyyy-MM')
            ORDER BY JOB_NUMBER ASC;

        return v_cur;
  end;

  function Get_AR_Summary(v_attendance_machine_no int,v_year_month_str varchar2) return t_cur
  is
     v_cur t_cur;
     PRAGMA AUTONOMOUS_TRANSACTION;
     v_sw_am_on_duty_time varchar2(20):= '08:00';
     v_ne_am_on_duty_time varchar2(20):= '08:30';
     v_am_on_duty_time varchar2(20);
  begin

       /*
        job_number
       name,
        dept,
        actual_attendance_days,
        not_brush_fingerprint,
        come_late_num,
        leave_early_num,
        delay_time,
        meal_subsidy

        ---先 删除 AR_Summary
        DELETE FROM AR_Summary;
        if(v_attendance_machine_no = 4) then
            v_am_on_duty_time:=v_ne_am_on_duty_time;
        else
            v_am_on_duty_time:=v_sw_am_on_duty_time;
        end if;

          ---先 计算  实际 出勤 天数 ，并储存数据。
        insert into AR_Summary(
                               AR_JOB_NUMBER,
                                name,
                                dept,
                                DAYS_OF_REAL_ATTENDANCE,
                                not_finger_print,
                                Come_Late_Num,
                                leave_early_num)
        select job_number,
         name,
         dept,
         sum(case when fpt_first_time is not null or fpt_last_time is not null then 1
                  else 0 end) actual_attendance_days,
         sum(case when (fpt_first_time is null and fpt_last_time is not null)
                  or (fpt_first_time is not null and fpt_last_time is null) then 1 else 0 end) not_brush_fingerprint,
         sum(case when (fpt_first_time is not null and to_char(fpt_first_time,'HH24:MI') <=v_am_on_duty_time) then 0  when fpt_first_time is null then 0 else 1 end) come_late_num,
         sum(case when (fpt_last_time is not null and to_char(fpt_last_time,'HH24:MI')>='17:00') then 0 when fpt_last_time is null then 0 else 1 end) leave_early_num
        from Attendance_Record AR
        where substr(job_number,1,1) = v_attendance_machine_no
        and trunc(fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM')
        group by job_number,name,dept
        order by job_number asc;



        ---延迟 时间
        ---统计 非休息日的 加班时间
        UPDATE Attendance_Record
        SET DELAY_TIME = floor((fpt_last_time -to_date(to_char(fingerprint_date,'yyyy-MM-dd')||' 17:00:00','yyyy-MM-dd HH24:MI:SS'))*24*60/30) *0.5
        WHERE substr(job_number,1,1) = v_attendance_machine_no
        and fpt_last_time is not null
        and fpt_last_time >to_date(to_char(fingerprint_date,'yyyy-MM-dd')||' 17:30:00','yyyy-MM-dd HH24:MI:SS')
        and trunc(fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM')
        and fingerprint_date not in (
            select rest_day
            from rest_day
        );

        --统计 休息日的加班时间
        UPDATE Attendance_Record
        SET DELAY_TIME = DELAY_TIME + floor((fpt_last_time -fpt_first_time)*24*60/30) *0.5
        WHERE substr(job_number,1,1) = v_attendance_machine_no
        and fpt_first_time is not null
        and fpt_last_time is not null
        and trunc(fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM')
        and fingerprint_date  in (
            select rest_day
            from rest_day
        );

        --统计 休息日的加班时间 如果早上未刷卡，则从下午13:00:00计算。
        UPDATE Attendance_Record
        SET DELAY_TIME = DELAY_TIME + floor((fpt_last_time -to_date(to_char(fingerprint_date,'yyyy-MM-dd')||' 13:00:00','yyyy-MM-dd HH24:MI:SS'))*24*60/30) *0.5
        WHERE substr(job_number,1,1) = v_attendance_machine_no
        and fpt_first_time is not null
        and fpt_last_time is not null
        and trunc(fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM')
        and fingerprint_date  in (
            select rest_day
            from rest_day
        );

        --计算餐补。
        UPDATE Attendance_Record
        SET MEAL_SUBSIDY = 1
        WHERE substr(job_number,1,1) = v_attendance_machine_no
        and fpt_first_time is not null
        and fpt_last_time is not null
        and trunc(fingerprint_date,'MM') = to_date(v_year_month_str,'yyyy-MM')
        and fpt_first_time <= TO_DATE(TO_CHAR(fingerprint_date,'yyyy-MM-dd')||' 12:50:00','yyyy-MM-dd HH24:MI:SS')
        and fpt_last_time >= TO_DATE(TO_CHAR(fingerprint_date,'yyyy-MM-dd')||' 13:30:00','yyyy-MM-dd HH24:MI:SS')
        and (fpt_last_time - fpt_first_time) * 24 >4;


        --更新AR_Summary中的 Delay_Time
        UPDATE AR_Summary
        SET Delay_time = (SELECT SUM(DELAY_TIME) FROM Attendance_Record AR WHERE AR.JOB_NUMBER =  AR_Summary.job_number)
        WHERE EXISTS(
              SELECT 1
              FROM Attendance_Record AR
              WHERE AR.JOB_NUMBER =  AR_Summary.job_number
        );

        ---更新AR_Summary中的meal_subsidy
        UPDATE AR_Summary
        SET meal_subsidy  = (SELECT SUM(meal_subsidy) FROM Attendance_Record AR WHERE AR.JOB_NUMBER = AR_SUMMARY.JOB_NUMBER)
        WHERE EXISTS(
              SELECT 1
              FROM Attendance_Record AR
              WHERE AR.JOB_NUMBER =  AR_Summary.job_number
        );

        commit;
        */
        open v_cur
        for
        select
                AR_JOB_NUMBER,
                name,
                dept,
                DAYS_OF_REAL_ATTENDANCE,
                NOT_FINGER_PRINT,
                come_late_num,
                leave_early_num,
                OVERTIME_WORKDAY_ONE_MONTH
         from AR_Summary
         order by AR_JOB_NUMBER asc
        ;
        return v_cur;
  end Get_AR_Summary;
end get_AR_Summary;
/

prompt
prompt Creating package body IMPORT_PRODUCTS_COST
prompt ==========================================
prompt
create or replace package body dukepu.Import_Products_Cost is


  -- Function and procedure implementations
  function ifExists(v_PN nvarchar2) return int is
           v_Count INT;
  begin
        select Count(1) INTO v_Count
        FROM Products_Cost
        WHERE product_name = v_PN;

        IF(v_Count=0)
        THEN
             RETURN 0;
        END IF;

        ---保存 至History.
        INSERT  INTO Products_COST_HISTORY(
                                  seq,
                                  summary_process,
                                  specific_process,
                                  man_hours,
                                  labour_cost,
                                  supplier,
                                  insert_time,
                                  products_name
        )
        SELECT seq_products_cost_history.nextval,
                summary_process,
                specific_process,
                man_hours,
                labour_cost,
                supplier,
                SYSDATE,
                product_name
        FROM Products_COST;


        --删除 Products_Cost中 的 成品名
        DELETE
        FROM Products_Cost
        WHERE Product_Name = v_PN;

        return 1;
  end;

  function add(v_summary_process nvarchar2,
                v_specific_process nvarchar2,
                v_man_hours number,
                v_labour_cost number,
                v_supplier nvarchar2,
                v_products_name nvarchar2) return int is
  begin
       INSERT INTO Products_Cost(
              SEQ,
              summary_process,
              specific_process,
              man_hours,
              labour_cost,
              supplier,
              product_name
       )
       VALUES(
              Seq_Products_Cost.Nextval,
              v_summary_process ,
                v_specific_process,
                v_man_hours ,
                v_labour_cost ,
                v_supplier ,
                v_products_name
       );
       return 1;
  end;
end Import_Products_Cost;
/

prompt
prompt Creating package body PKG_ANALYZE_AR
prompt ====================================
prompt
create or replace package body dukepu.PKG_Analyze_AR is

  -- Private type declarations
  function get_Same_PY_Of_Staffs return t_cur
  as
    v_count int;
    v_cur t_cur;
    v_name       nvarchar2(20);

    PRAGMA AUTONOMOUS_TRANSACTION;
  begin

       DELETE FROM AR_SAME_PINYIN;

       open v_cur
       for
       select distinct name
       from AR_Temp;

       LOOP
           <<NEXT>>
           FETCH v_cur INTO v_name;
           EXIT WHEN v_cur%Notfound;

           --先判断AR_Same_PinYin中是否有该用户
           SELECT COUNT(1) INTO v_Count
           FROM AR_Same_PINYIN
           WHERE name = v_name;

           IF(v_count!=0) THEN
               GOTO NEXT;

           END IF;

           dbms_output.put_line('v_name =' || v_name);

           SELECT COUNT(1) INTO v_Count
           FROM AR_Temp
           WHERE name != v_name
           AND gethzpy.GetHzFullPY(name) = gethzpy.GetHzFullPY(v_name);

           --拼音相同，但汉字不同！
           IF(v_count >=1) THEN
              --INSERT
              INSERT INTO AR_Same_PINYIN(
                     job_number,
                      name,
                      attendance_machine_flag,
                      row_index,
                      record_time
              )
              SELECT job_number,
                      name,
                      attendance_machine_flag,
                      row_index,
                      record_time
              FROM AR_TEMP
              WHERE gethzpy.GetHzFullPY(name) = gethzpy.GetHzFullPY(v_name);

           END IF;

       END LOOP;
       CLOSE v_cur;

       OPEN v_cur
       FOR
       SELECT job_number,
            name,
            attendance_machine_flag,
            row_index,
            record_time
       FROM AR_Same_PINYIN;
       RETURN v_cur;
  end;
end PKG_Analyze_AR;
/

prompt
prompt Creating package body PKG_ANALYZE_PRODUCTS_COST
prompt ===============================================
prompt
create or replace package body dukepu.PKG_Analyze_Products_Cost is
       procedure analyze_P_C(v_product_name varchar2)
       as
            
       begin
               --先清空.
              update Products_Cost 
              set amount = null,
                  specific_each_process =null,
                  each_cost = null,
                  final_labour_cost = null
              where product_name = v_product_name;
           
       
              update Products_Cost 
              set amount = substr(specific_process,instr(specific_process,'*')+1,1),
                  specific_each_process = replace(specific_process,substr(specific_process,instr(specific_process,'*')+1,1),'1'),
                  each_cost = round(labour_cost/substr(specific_process,instr(specific_process,'*')+1,1),4)
              where product_name = v_product_name
              and (length(specific_process) - length(replace(specific_process,'*')) =1)
              and  substr(specific_process,instr(specific_process,'*')+1,1) >1;
              
              
              update Products_Cost 
              set 
                  specific_each_process = specific_process,
                  final_labour_cost = labour_cost
              where product_name = v_product_name
              and(
                    instr(specific_process,'*1') >0
                    or instr(specific_process,'*')= 0
                    or length(specific_process) - length(replace(specific_process,'*')) >1
              );

       end;
end PKG_Analyze_Products_Cost;
/

prompt
prompt Creating package body PKG_AR
prompt ============================
prompt
create or replace package body dukepu.PKG_AR is

       procedure     get_ar_By_RandomStr(v_Random_Str varchar2,v_cur_ar out cur_t) as
       begin
            OPEN v_cur_ar FOR
            SELECT
                          start_date AS "起始日期",
                          end_date AS "终止日期",
                          tabulation_time AS "制表日期",
                          fingerprint_date AS "指纹日期",
                          dept AS "部门",
                          SUBSTR(job_number,10,3) AS "工号",
                          name AS "姓名",
                          SUBSTR(TO_CHAR(fpt_first_time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS "上班时间点",
                          SUBSTR(TO_CHAR(fpt_last_time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS "下班时间点",
                          file_path As "文件路径",
                          to_char(record_time,'yyyy-MM-dd HH24:MI:SS') AS "记录时间",
                          random_str  AS "随机字符串"
            FROM Attendance_Record
            WHERE Random_Str= v_Random_Str
            OrDER bY
                      JOB_NUMBER ASC,
                      fingerprint_date ASC;

       end;

       function     get_ar_By_Random_Str(v_Random_Str varchar2) return cur_t
       as
         v_cur_ar cur_t;
       begin
            OPEN v_cur_ar FOR
            SELECT
                          start_date AS "起始日期",
                          end_date AS "终止日期",
                          tabulation_time AS "制表日期",
                          fingerprint_date AS "指纹日期",
                          dept AS "部门",
                          SUBSTR(job_number,10,3) AS "工号",
                          name AS "姓名",
                          SUBSTR(TO_CHAR(fpt_first_time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS "上班时间点",
                          SUBSTR(TO_CHAR(fpt_last_time,'yyyy-MM-dd HH24:MI:SS'),12,5) AS "下班时间点",
                          file_path As "文件路径",
                          to_char(record_time,'yyyy-MM-dd HH24:MI:SS') AS "记录时间",
                          random_str  AS "随机字符串"
            FROM Attendance_Record
            WHERE Random_Str= v_Random_Str
            OrDER bY
                      JOB_NUMBER ASC,
                      fingerprint_date ASC;

            return v_cur_ar;

       end;
end PKG_AR;
/

prompt
prompt Creating package body PKG_ARTIME
prompt ================================
prompt
create or replace package body dukepu.PKG_ARTime is

  procedure GET_JN_And_AR_Day(v_job_number varchar2,v_ar_day varchar2, v_cur_result out t_cur) as
  begin
       open v_cur_result
       FOR
       SELECT TO_CHAR(TEMP.TIME,'HH24:MI') AS TIME,
              TEMP.FLAG FLAG,
              TEMP.COME_LATE_NUM COME_LATE_NUM,
              TEMP.LEAVE_EARLY_NUM AS LEAVE_EARLY_NUM
        FROM
             (
              SELECT AR.Fpt_First_Time TIME,
                                  0 AS FLAG,
                                  AR.COME_LATE_NUM AS COME_LATE_NUM ,
                                  0 AS LEAVE_EARLY_NUM
                      FROM Attendance_Record AR
                        WHERE AR.JOB_NUMBER = v_job_number
                        AND TRUNC(AR.FingerPrint_Date,'DD') = TO_DATE(v_ar_day,'YYYY-MM-DD')
                      UNION
                        SELECT AR.FPT_LAST_TIME TIME,0 AS FLAG,0 AS COME_LATE_NUM ,AR.LEAVE_EARLY_NUM AS LEAVE_EARLY_NUM
                        FROM Attendance_Record AR
                        WHERE AR.JOB_NUMBER = v_job_number
                        AND TRUNC(AR.FingerPrint_Date,'DD') = TO_DATE(v_ar_day,'YYYY-MM-DD')
                      UNION
                        SELECT LEAVE_START_TIME TIME, 1 AS FLAG, 0 AS COME_LATE_NUM,0 AS LEAVE_EARLY_NUM
                        FROM ASK_FOR_LEAVE A_F_L
                        WHERE A_F_L.Job_Number = v_job_number
                        AND TRUNC(A_F_L.Leave_start_time,'DD') = TO_DATE(v_ar_day,'yyyy-MM-dd')
                      UNION
                        SELECT LEAVE_END_TIME TIME, 1 AS FLAG,  0 AS COME_LATE_NUM,0 AS LEAVE_EARLY_NUM
                        FROM ASK_FOR_LEAVE A_F_L
                        WHERE A_F_L.Job_Number = v_job_number
                        AND TRUNC(A_F_L.Leave_start_time,'DD') = TO_DATE(v_ar_day,'yyyy-MM-dd')
                    )  TEMP;

  end;
  function GET_A_R_Time(v_job_number varchar2,v_ar_day varchar2) return t_cur
  as
     v_cur_result t_cur;
  begin
       open v_cur_result
       FOR
          SELECT to_char(fpt_first_time,'HH24:MI') as fpt_first_time,
                 to_char(fpt_last_time,'HH24:MI') as fpt_last_time,
                 come_late_num,
                 leave_early_num
          FROM Attendance_Record
          WHERE job_number = v_job_number
          AND fingerprint_date = to_date(v_ar_day,'yyyy-MM-dd');

      return v_cur_result;

  end;

end PKG_ARTime;
/

prompt
prompt Creating package body PKG_AR_DETAIL
prompt ===================================
prompt
create or replace package body dukepu.PKG_AR_Detail is

 procedure get_ar_detail(v_date_str varchar2,v_prefix_job_number varchar2,v_cur_result out cur_t) as
           type t_cur is ref cursor;
           v_cur t_cur ;


           v_other_am_jN varchar2(20);
           v_other_am_name       nvarchar2(20);

           v_jN varchar2(20);
   begin
        --先清除此表
        DELETE FROM AR_Detail;
        INSERT INTO AR_Detail(
                               start_date,
                                end_date,
                                tabulation_time,
                                fingerprint_date,
                                job_number,
                                name,
                                dept,
                                fpt_first_time,
                                fpt_last_time,
                                come_late_num,
                                leave_early_num
                                )
           Select
                  start_date,
                  end_date,
                  tabulation_time,
                  fingerprint_date,
                  job_number,
                  name,
                  dept,
                  fPT_First_Time,
                  fpt_last_time,
                  come_late_num,
                  leave_early_num
            from v_AR_Detail
            WHERE fingerprint_date = TO_DATE(v_date_str,'yyyy-MM-dd')
            and name = any(
                select distinct name
                from v_AR_Detail
                where substr(job_number,1,9) = v_prefix_job_number
                and fingerprint_date = TO_DATE(v_date_str,'yyyy-MM-dd')
            );

            commit;

            open v_cur
            for select distinct job_number,
                       name
                from ar_detail
                where substr(job_number,1,9) != v_prefix_job_number
                order by job_number asc;
            LOOP
                --Dbms_Output.put_line('BEFORE FETCH');

                FETCH v_cur INTO v_other_am_jN,v_other_am_name;
                EXIT WHEN v_cur%notfound;

                --Dbms_Output.put_line('v_other_am_jN: '|| v_other_am_jN);
                --Dbms_Output.put_line('v_other_am_name: '||v_other_am_name);
                --Dbms_Output.put_line('v_prefix_job_number: '||v_prefix_job_number);


                --Dbms_Output.put_line('SELECT DISTINCT JOB_NUMBER INTO v_jN
                --FROM AR_DETAIL
                --WHERE name = v_other_am_name
                --AND SUBSTR(JOB_NUMBER,1,9) = v_prefix_job_number;');


                SELECT DISTINCT JOB_NUMBER INTO v_jN
                FROM AR_DETAIL
                WHERE name = v_other_am_name
                AND SUBSTR(JOB_NUMBER,1,9) = v_prefix_job_number;

                UPDATE AR_DETAIL
                SET JOB_NUMBER = v_JN || '_' || v_other_am_jN
                WHERE Job_NUMBER = v_other_am_jN;
            END LOOP;
            close v_cur;
        open v_cur_result
        FOR
         Select
              TO_CHAR(start_date,'yyyy-MM-dd') AS start_date,
              TO_Char(end_date,'yyyy-MM-dd') as end_date,
              TO_Char(tabulation_time,'yyyy-MM-dd') as tabulation_time,
              to_char(fingerprint_date,'yyyy-MM-dd') as fingerprint_date,
              job_number,
              name,
              dept,
              SUBSTR(to_char(fpt_first_time,'yyyy-MM-dd HH24:MI:SS'),12,5) fPT_First_Time,
              SUBSTR(to_char(fpt_last_time,'yyyy-MM-dd HH24:MI:SS'),12,5) fpt_last_time,
              cast (come_late_num as varchar2(10)) as come_late_num,
              cast(leave_early_num as varchar2(10)) as leave_early_num
        from AR_DETAIL
        order by fingerprint_date asc,
              job_number asc;
   end;
    procedure get_ar_detail(v_date_str varchar2,v_cur_result out cur_t) as
           type t_cur is ref cursor;
           v_cur t_cur ;

           v_name nvarchar2(20);
           v_min_jN varchar2(20);


   begin
        ---删除临时表。
        DELETE FROM AR_Detail;
         INSERT INTO AR_Detail(
                               start_date,
                                end_date,
                                tabulation_time,
                                fingerprint_date,
                                job_number,
                                name,
                                dept,
                                fpt_first_time,
                                fpt_last_time,
                                come_late_num,
                                leave_early_num
                                )
           Select
                  start_date,
                  end_date,
                  tabulation_time,
                  fingerprint_date,
                  job_number,
                  name,
                  dept,
                  fPT_First_Time,
                  fpt_last_time,
                  come_late_num,
                  leave_early_num
            from v_AR_Detail
            WHERE fingerprint_date = TO_DATE(v_date_str,'yyyy-MM-dd');
          ---获取姓名相同，但 工号不同的 记录。
          open v_cur
           for select name,MIN_JOB_NUMBER
               FROM
               (
                      select trunc(a_d.fingerprint_date,'MM') as trunc_fpd,
                             name,
                             MIN(JOB_NUMBER) MIN_JOB_NUMBER,
                             count(1) as count_name
                             from ar_detail a_d
                             group by trunc(a_d.fingerprint_date,'MM'),name
                ) temp
                where count_name >1;
          LOOP
              FETCH v_cur into v_name,v_min_jN;
              Exit WHEN v_cur%NOTFOUND;

              ---获取该姓名 对应 的 最小 job_number
              UPDATE Ar_Detail
              SET JOB_NUMBER = v_min_jN || '_' || JOB_NUMBER
              WHERE NAME = v_name
              AND JOB_Number != v_min_jN;

          END LOOP;
          close v_cur;
        --插入所有 数据。
        open v_cur_result
        FOR
         Select
              TO_CHAR(start_date,'yyyy-MM-dd') AS start_date,
              TO_Char(end_date,'yyyy-MM-dd') as end_date,
              TO_Char(tabulation_time,'yyyy-MM-dd') as tabulation_time,
              to_char(fingerprint_date,'yyyy-MM-dd') as fingerprint_date,
              job_number,
              name,
              dept,
              SUBSTR(to_char(fpt_first_time,'yyyy-MM-dd HH24:MI:SS'),12,5) fPT_First_Time,
              SUBSTR(to_char(fpt_last_time,'yyyy-MM-dd HH24:MI:SS'),12,5) fpt_last_time,
              cast (come_late_num as varchar2(10)) as come_late_num,
              cast(leave_early_num as varchar2(10)) as leave_early_num
        from AR_DETAIL
        order by fingerprint_date asc,
              job_number asc;
   end;
   function GET_OverTime_Of_RestDay(v_ar_jn varchar2,v_year_and_month varchar2) return integer is
            Result integer;
            v_Count INT;
   begin
         select COUNT(1) INTO v_Count
        from attendance_record ar
        where ar.job_number = v_ar_jn
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month,'yyyy-MM');


        IF(v_COUNT=0)
        THEN
            Result :=0;
            RETURN RESULT;
        END IF;

         select FLOOR((fpt_last_time - (CASE  WHEN FPT_First_TIME <= TO_DATE(TO_CHAR(FPT_FIRST_TIME,'yyyy-MM-dd') || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')
                                    THEN TO_DATE(TO_CHAR(FPT_FIRST_TIME,'yyyy-MM-dd') || ' 08:00:00','yyyy-MM-dd HH24:MI:SS')
                                    ELSE FPT_First_TIME
                                    END))*24*60/30) * 0.5 -1 INTO Result
        from rest_day r_d inner join attendance_record ar
               on (r_d.rest_day = ar.fingerprint_date
                   and not(ar.fpt_first_time is null and ar.fpt_last_time is  null))
        where ar.job_number = v_ar_jn
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month,'yyyy-MM');
      return(Result);
   end GET_OverTime_Of_RestDay;

function get_ar_detail_by_JN(v_job_number varchar2,v_year_and_month_str varchar2)  return cur_t
as
           v_cur_result cur_t ;


begin

        open v_cur_result
        FOR
         Select
              SUBSTR(to_char(fpt_first_time,'yyyy-MM-dd HH24:MI:SS'),12,5) fPT_First_Time,
              SUBSTR(to_char(fpt_last_time,'yyyy-MM-dd HH24:MI:SS'),12,5) fpt_last_time,
              come_late_num,
              leave_early_num
        from Attendance_Record
        where trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        and job_number = v_job_number
        order by fingerprint_date asc;

        return v_cur_result;
   end;


   function get_Staffs_Base_Info(v_year_and_month_str varchar2) return cur_t
   as
     v_cur_result cur_t;
   begin
        open v_cur_result
        for
        select distinct dept,job_number,name
        from Attendance_Record
        where trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        order by job_number asc;
        return v_cur_result;
   end;
    function get_Staffs_BI_by_AMFlag_YMStr(v_attendance_machine_flag varchar2,v_year_and_month_str varchar2) return cur_t
    as
      v_cur_result cur_t;
    begin
          open v_cur_result
        for
        select distinct dept,job_number,name
        from Attendance_Record
        where substr(job_number,1,1) in (v_attendance_machine_flag)
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        order by job_number asc;
        return v_cur_result;
    end;
end PKG_AR_Detail;
/

prompt
prompt Creating package body PKG_AR_SUMMARY
prompt ====================================
prompt
create or replace package body dukepu.pkg_ar_summary is

 function getARSummary(v_year_and_month_str varchar2) return t_cur
 as
   v_cur_result t_cur;
 begin
      open v_cur_result
      for
      select
             job_number,
              name,
              days_of_real_attendance,
              not_finger_print,
              overtime_of_workday,
              overtime_of_restday,
              (overtime_of_workday + overtime_of_restday) as total_overtime,
              come_late_num,
              leave_early_num,
              meal_subsidy,
              belong_to_month
      from AR_SUMMARY_FINAL
      WHERE trunc(belong_to_month,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
      order by job_number asc;

      RETURN v_cur_result;
 end;

end pkg_ar_summary;
/

prompt
prompt Creating package body PKG_EMPS
prompt ==============================
prompt
create or replace package body dukepu.pkg_emps is

       procedure proc_getAllEmps(cur_set out cursor_emps_t) as

begin
     open cur_set
     for select name,
                job_number,
                department,
                contact_way,
                position,
                role,
                update_time,
                is_on_the_job,
                random_str,
                seq,
                ar_name,
                ar_job_number,
                report_time
         from employees;
     end;
end;
/

prompt
prompt Creating package body PKG_GET_AR
prompt ================================
prompt
create or replace package body dukepu.PKG_GET_AR is


  -- Public variable declarations

  -- Public function and procedure declarations
  function get_AR_By_Date_Range(v_year_and_month_str varchar2) return t_cur as

      v_cur t_cur;
      v_name nvarchar2(20);
      v_dept nvarchar2(10);

      --考勤记录中的 工号
      v_ar_job_number varchar2(20);
      --考勤姓名
      v_ar_name nvarchar2(20);
      ---本月 最晚 下班时间
      v_max_fpt_last_time date;

      --本月 工作日 加班 时间 总和
      v_overtime_workDay_One_Month number;

       --本月 休息日 加班 时间 总和
      v_overtime_restDay_One_Month number;


      v_Count INT;

      v_remark NVARCHAR2(50);
      v_cur_AR_By_Date_Range t_cur;

      v_COME_LATE_NUM INT;
      v_Leave_early_num int;
      v_AR_Days INT;    --实际出勤天数。
      v_NOT_FingerPrint_Times INT;      --未打卡次数。
      v_should_AR_Days INT;   ---应出勤天数

      PRAGMA AUTONOMOUS_TRANSACTION;

begin

  --获取该月 计件记录和零活
  open v_cur for
  SELECT TEMP.Name,TEMP.Dept
          FROM
          (
          select distinct PR.name,PR.Dept
          from Products_Record PR
          where trunc(REPORT_SPECIFIC_MONTH,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
          UNION
          SELECT distinct SR.name,SR.Dept
          FROM Scattered_Record SR
          where trunc(REPORT_SPECIFIC_MONTH,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
          ) TEMP;

  LOOP

       <<NEXT>>

        --获取姓名
        FETCH v_cur INTO v_name,v_dept;
        EXIT WHEN v_cur%notfound;
        v_remark:='';
        v_ar_job_number:='';
        v_ar_name:='';
        v_max_fpt_last_time:=null;
        v_overtime_workDay_One_Month:=null;
        v_overtime_restDay_One_Month:=null;

        --1.先判断此姓名  在 AttendanceRecord 中  是否 存在。
        select count(1) INTO v_Count
        from Attendance_Record
        where name = v_name
        and fingerprint_date= TO_DATE(v_year_and_month_str|| '-01','yyyy-MM-dd');

        if(v_Count >1)then    ---存在同名用户

            select WM_CONCAT(TO_CHAR(JOB_NUMBER)) INTO v_remark
            from Attendance_Record
            where name = v_name
            and fingerprint_date= TO_DATE(v_year_and_month_str|| '-01','yyyy-MM-dd');

            v_remark:= '在考勤记录中存在'|| v_Count||'个同名用户: ' || v_remark;
            --判断 AR_Summary中 是否 已经存在记录
            SELECT COUNT(1) INTO v_Count
            FROM AR_Summary
            WHERE dept = v_dept
            AND Name = v_name
            AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

            IF(v_count=0) THEN
                     insert into AR_Summary(
                                   SEQ,
                                   dept,
                                   name,
                                    remark,
                                    Belong_To_Month)
              VALUES(
                     SEQ_AR_SUMMARY.Nextval,
                     v_dept,
                     v_name,
                     v_remark,
                     to_date(v_year_and_month_str,'yyyy-MM')
              );
            ELSE
                 ---update
                 UPDATE AR_Summary
                 SET ar_job_number = '',
                      ar_name = '',
                      latest_off_duty = null ,
                      overtime_workday_one_month = null,
                      overtime_restday_one_month = null,
                      days_of_should_be_attendance = null,
                      days_of_real_attendance = null,
                      not_finger_print = null,
                      come_late_num = null,
                      leave_early_num = null,
                      remark = v_remark
                 WHERE dept = v_dept
                  AND Name = v_name
                  AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

            END IF;


            commit;

           GOTO NEXT;
        end if;
        --依据计件，零活报表中的 用户信息，在考勤记录中，没有得到 该用户出勤记录。
        IF(v_Count =0) then

             v_remark:= v_year_and_month_str || '考勤记录中：无'|| v_name ;

               SELECT COUNT(1) INTO v_Count
                  FROM AR_Summary
                  WHERE dept = v_dept
                  AND Name = v_name
                  AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

             IF(v_count=0) then

                 insert into AR_Summary(
                                        SEQ,
                                        dept,
                                        name,
                                       remark,
                                       belong_To_Month)
                VALUES(
                       SEQ_AR_SUMMARY.Nextval,
                       v_dept,
                       v_name,
                       v_remark,
                       to_date(v_year_and_month_str,'yyyy-MM')
                );
            else
                 ---update
                 UPDATE AR_Summary
                 SET ar_job_number = '',
                      ar_name = '',
                      latest_off_duty = null ,
                      overtime_workday_one_month = null,
                      overtime_restday_one_month = null,
                      days_of_should_be_attendance = null,
                      days_of_real_attendance = null,
                      not_finger_print = null,
                      come_late_num = null,
                      leave_early_num = null,
                      remark = v_remark
                 WHERE dept = v_dept
                  AND Name = v_name
                  AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');
            end if;
            commit;

           GOTO NEXT;
        end if;


      -- 在考勤机中，该姓名在该月记录中只有一条。

      select count(1) into v_count
      from Attendance_Record AR
      where AR.name = v_name
      and trunc(ar.FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM');

      if(v_count!=0) then

            select distinct job_number into v_ar_job_number
            from Attendance_Record AR
            where AR.name = v_name
            and trunc(ar.FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM');
            --- 计算迟到次数
            get_Come_Late_Num(v_ar_job_number,v_year_and_month_str,v_COME_LATE_NUM );
            ---计算早退次数
            get_leave_early_num(v_ar_job_number,v_year_and_month_str,v_Leave_early_num );
            ---计算考勤天数
            get_Actual_AR_Days(v_ar_job_number,v_year_and_month_str, v_AR_Days);
            ---未打卡次数。
            Get_Not_FingerPrint_Times(v_ar_job_number,v_year_and_month_str,v_NOT_FingerPrint_Times);
            --获取应出勤天数。
            get_Should_AR_Days(v_year_and_month_str,v_should_AR_Days);
      end if;



        --2. 计算最晚下班时间。
      select FPT_LAST_TIME,job_number,name INTO v_max_fpt_last_time,v_ar_job_number,v_ar_name
      from
      (
        select row_number() over(order by (to_char(fpt_last_time,'HH24:MI:SS')) desc) row_ID,job_number,name,fpt_last_time
            from Attendance_Record AR_Condition
            where name = v_name
            and trunc(FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM')
            and fpt_last_time is not null
       ) TEMP
       where Temp.row_ID =1;

        ---3. 计算 本月 工作日 加班时长
        get_delay_times_ordinary_days(v_ar_job_number,v_Year_And_Month_str,v_overtime_workDay_One_Month);


        /*
        select sum(floor((fpt_last_time - to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')) * 24 *60 /30) *0.5) INTO v_overtime_workDay_One_Month
        from Attendance_Record AR
        where name = v_name
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        and fpt_last_time is not null
        and fpt_last_time > to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')
        and fingerprint_date  in (
            select Rest_Day
            from Rest_Day
            where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        );
        */
        ---4. 计算休息 日  加班 时长
        get_duration_of_overtime_day(v_ar_job_number,v_year_and_month_str,v_overtime_restDay_One_Month);
        /*
        select sum(floor((fpt_last_time - fpt_first_time) * 24 *60 /30) *0.5) INTO v_overtime_restDay_One_Month
        from Attendance_Record AR
        where name = v_name
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        and fpt_first_time is not null
        and fpt_last_time is not null
        and fingerprint_date in (
            select Rest_Day
            from Rest_Day
            where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        );
        */

        SELECT COUNT(1) INTO v_Count
        FROM AR_Summary
        WHERE dept = v_dept
         AND Name = v_name
        AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

        if(v_count=0) then


            insert into AR_Summary(
                                      SEQ,
                                      dept,
                                      name,
                                      ar_job_number,
                                      AR_NAME,
                                      latest_off_duty,
                                      overtime_workday_one_month,
                                      overtime_restday_one_month,
                                      days_of_should_be_attendance,
                                      days_of_real_attendance,
                                      not_finger_print,
                                      come_late_num,
                                      leave_early_num,
                                      remark,
                                      belong_To_Month
                                     )
            VALUES(
                   SEQ_AR_Summary.Nextval,
                   v_dept,
                   v_name,
                   v_ar_job_number,
                   v_ar_name,
                   v_max_fpt_last_time,
                   v_overtime_workDay_One_Month,
                   v_overtime_restday_one_month,
                   v_should_AR_Days,
                   v_ar_days,
                   v_NOT_FingerPrint_Times,
                   v_COME_LATE_NUM,
                   v_Leave_early_num,
                   v_remark,
                   to_date(v_year_and_month_str,'yyyy-MM')
            );
        else
                ---update
                 UPDATE AR_Summary
                 SET AR_job_number = v_ar_job_number,
                     ar_name = v_ar_name,
                     latest_off_duty = v_max_fpt_last_time,
                       overtime_workday_one_month = v_overtime_workDay_One_Month,
                        overtime_restday_one_month = v_overtime_restDay_One_Month,
                     days_of_should_be_attendance = v_should_AR_Days,
                     days_of_real_attendance = v_ar_days,
                     not_finger_print = v_not_fingerprint_times,
                     come_late_num = v_COME_LATE_NUM,
                     leave_early_num = v_Leave_early_num,
                     remark =v_remark
                 WHERE dept = v_dept
                  AND Name = v_name
                  AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');
        end if;
        commit;

   END LOOP;
   CLOSE v_cur;


   OPEN v_cur_AR_By_Date_Range
   FOR SELECT
              SEQ,
              dept,
              name,
              AR_Job_Number,
              AR_name,
              to_char(latest_off_duty,'yyyy-MM-dd HH24:MI:SS') latest_off_duty,
              overtime_workday_one_month,
              overtime_restday_one_month,
              days_of_should_be_attendance,
              days_of_real_attendance,
              not_finger_print,
              come_late_num,
              leave_early_num,
              remark
        FROM  AR_Summary
        WHERE  trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM')
        ORDER BY NLSSORT(remark,'NLS_SORT= SCHINESE_PINYIN_M') desc nulls last,
              substr(dept,instr(dept,'组')-1) desc,
              NLSSORT(name,'NLS_SORT= SCHINESE_PINYIN_M') desc;

   return v_cur_AR_By_Date_Range;

end;

  function get_AR_By_Dept_And_DR(v_dept nvarchar2,v_year_and_month_str varchar2) return t_cur
  as

      v_cur t_cur;
      v_name nvarchar2(20);

      --考勤记录中的 工号
      v_ar_job_number varchar2(20);
      --考勤姓名
      v_ar_name nvarchar2(20);
      ---本月 最晚 下班时间
      v_max_fpt_last_time date;

      --本月 工作日 加班 时间 总和
      v_overtime_workDay_One_Month number;

       --本月 休息日 加班 时间 总和
      v_overtime_restDay_One_Month number;


      v_Count INT;

      v_remark NVARCHAR2(50);
      v_cur_AR_By_DR_And_Dept t_cur;

      v_COME_LATE_NUM INT;
      v_Leave_early_num int;
      v_AR_Days INT;    --实际出勤天数。
      v_NOT_FingerPrint_Times INT;      --未打卡次数。
      v_should_AR_Days INT;   ---应出勤天数

      PRAGMA AUTONOMOUS_TRANSACTION;
  begin

          --获取该月 计件记录和零活
          open v_cur for
          SELECT TEMP.Name
                  FROM
                  (
                  select distinct PR.name
                  from Products_Record PR
                  where trunc(REPORT_SPECIFIC_MONTH,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                  and dept = v_dept
                  UNION
                  SELECT distinct SR.name
                  FROM Scattered_Record SR
                  where trunc(REPORT_SPECIFIC_MONTH,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                  and dept = v_dept
                  ) TEMP;

          LOOP

               <<NEXT>>

                --获取姓名
                FETCH v_cur INTO v_name;
                EXIT WHEN v_cur%notfound;
                v_remark:='';
                v_ar_job_number:='';
                v_ar_name:='';
                v_max_fpt_last_time:=null;
                v_overtime_workDay_One_Month:=null;
                v_overtime_restDay_One_Month:=null;

                --1.先判断此姓名  在 AttendanceRecord 中  是否 存在。
                select count(1) INTO v_Count
                from Attendance_Record
                where name = v_name
                and fingerprint_date= TO_DATE(v_year_and_month_str|| '-01','yyyy-MM-dd');

                if(v_Count >1)then    ---存在同名用户

                    select WM_CONCAT(TO_CHAR(JOB_NUMBER)) INTO v_remark
                    from Attendance_Record
                    where name = v_name
                    and fingerprint_date= TO_DATE(v_year_and_month_str|| '-01','yyyy-MM-dd');

                    v_remark:= '在考勤记录中存在'|| v_Count||'个同名用户: ' || v_remark;
                    --判断 AR_Summary中 是否 已经存在记录
                    SELECT COUNT(1) INTO v_Count
                    FROM AR_Summary
                    WHERE dept = v_dept
                    AND Name = v_name
                    AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

                    IF(v_count=0) THEN
                             insert into AR_Summary(
                                           SEQ,
                                           dept,
                                           name,
                                            remark,
                                            Belong_To_Month)
                      VALUES(
                             SEQ_AR_SUMMARY.Nextval,
                             v_dept,
                             v_name,
                             v_remark,
                             to_date(v_year_and_month_str,'yyyy-MM')
                      );
                    ELSE
                         ---update
                         UPDATE AR_Summary
                         SET ar_job_number = '',
                              ar_name = '',
                              latest_off_duty = null ,
                              overtime_workday_one_month = null,
                              overtime_restday_one_month = null,
                              days_of_should_be_attendance = null,
                              days_of_real_attendance = null,
                              not_finger_print = null,
                              come_late_num = null,
                              leave_early_num = null,
                              remark = v_remark
                         WHERE dept = v_dept
                          AND Name = v_name
                          AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

                    END IF;


                    commit;

                   GOTO NEXT;
                end if;
                --依据计件，零活报表中的 用户信息，在考勤记录中，没有得到 该用户出勤记录。
                IF(v_Count =0) then

                     v_remark:= v_year_and_month_str || '考勤记录中：无'|| v_name ;

                       SELECT COUNT(1) INTO v_Count
                          FROM AR_Summary
                          WHERE dept = v_dept
                          AND Name = v_name
                          AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

                     IF(v_count=0) then

                         insert into AR_Summary(
                                                SEQ,
                                                dept,
                                                name,
                                               remark,
                                               belong_To_Month)
                        VALUES(
                               SEQ_AR_SUMMARY.Nextval,
                               v_dept,
                               v_name,
                               v_remark,
                               to_date(v_year_and_month_str,'yyyy-MM')
                        );
                    else
                         ---update
                         UPDATE AR_Summary
                         SET ar_job_number = '',
                              ar_name = '',
                              latest_off_duty = null ,
                              overtime_workday_one_month = null,
                              overtime_restday_one_month = null,
                              days_of_should_be_attendance = null,
                              days_of_real_attendance = null,
                              not_finger_print = null,
                              come_late_num = null,
                              leave_early_num = null,
                              remark = v_remark
                         WHERE dept = v_dept
                          AND Name = v_name
                          AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');
                    end if;
                    commit;

                   GOTO NEXT;
                end if;


              -- 在考勤机中，该姓名在该月记录中只有一条。

              select count(1) into v_count
              from Attendance_Record AR
              where AR.name = v_name
              and trunc(ar.FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM');

              if(v_count!=0) then

                    select distinct job_number into v_ar_job_number
                    from Attendance_Record AR
                    where AR.name = v_name
                    and trunc(ar.FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM');
                    --- 计算迟到次数
                    get_Come_Late_Num(v_ar_job_number,v_year_and_month_str,v_COME_LATE_NUM );
                    ---计算早退次数
                    get_leave_early_num(v_ar_job_number,v_year_and_month_str,v_Leave_early_num );
                    ---计算考勤天数
                    get_Actual_AR_Days(v_ar_job_number,v_year_and_month_str, v_AR_Days);
                    ---未打卡次数。
                    Get_Not_FingerPrint_Times(v_ar_job_number,v_year_and_month_str,v_NOT_FingerPrint_Times);
                    --获取应出勤天数。
                    get_Should_AR_Days(v_year_and_month_str,v_should_AR_Days);
              end if;



                --2. 计算最晚下班时间。
              select FPT_LAST_TIME,job_number,name INTO v_max_fpt_last_time,v_ar_job_number,v_ar_name
              from
              (
                select row_number() over(order by (to_char(fpt_last_time,'HH24:MI:SS')) desc) row_ID,job_number,name,fpt_last_time
                    from Attendance_Record AR_Condition
                    where name = v_name
                    and trunc(FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM')
                    and fpt_last_time is not null
               ) TEMP
               where Temp.row_ID =1;

                ---3. 计算 本月 工作日 加班时长
                get_d_t_ordinary_days_of_A_R_S(v_ar_job_number,v_Year_And_Month_str,v_overtime_workDay_One_Month);
               /*
                select sum(floor((fpt_last_time - to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')) * 24 *60 /30) *0.5) INTO v_overtime_workDay_One_Month
                from Attendance_Record AR
                where name = v_name
                and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                and fpt_last_time is not null
                and fpt_last_time > to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')
                and fingerprint_date  in (
                    select Rest_Day
                    from Rest_Day
                    where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                );
                */
                ---4. 计算休息 日  加班 时长
                get_duration_overtime_day_ARS(v_ar_job_number,v_year_and_month_str,v_overtime_restDay_One_Month);
                /*
                select sum(floor((fpt_last_time - fpt_first_time) * 24 *60 /30) *0.5) INTO v_overtime_restDay_One_Month
                from Attendance_Record AR
                where name = v_name
                and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                and fpt_first_time is not null
                and fpt_last_time is not null
                and fingerprint_date in (
                    select Rest_Day
                    from Rest_Day
                    where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                );
                */

                SELECT COUNT(1) INTO v_Count
                FROM AR_Summary
                WHERE dept = v_dept
                 AND Name = v_name
                AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');

                if(v_count=0) then


                    insert into AR_Summary(
                                              SEQ,
                                              dept,
                                              name,
                                              ar_job_number,
                                              AR_NAME,
                                              latest_off_duty,
                                              overtime_workday_one_month,
                                              overtime_restday_one_month,
                                              days_of_should_be_attendance,
                                              days_of_real_attendance,
                                              not_finger_print,
                                              come_late_num,
                                              leave_early_num,
                                              remark,
                                              belong_To_Month
                                             )
                    VALUES(
                           SEQ_AR_Summary.Nextval,
                           v_dept,
                           v_name,
                           v_ar_job_number,
                           v_ar_name,
                           v_max_fpt_last_time,
                           v_overtime_workDay_One_Month,
                           v_overtime_restday_one_month,
                           v_should_AR_Days,
                           v_ar_days,
                           v_NOT_FingerPrint_Times,
                           v_COME_LATE_NUM,
                           v_Leave_early_num,
                           v_remark,
                           to_date(v_year_and_month_str,'yyyy-MM')
                    );
                else
                        ---update
                         UPDATE AR_Summary
                         SET AR_job_number = v_ar_job_number,
                             ar_name = v_ar_name,
                             latest_off_duty = v_max_fpt_last_time,
                               overtime_workday_one_month = v_overtime_workDay_One_Month,
                                overtime_restday_one_month = v_overtime_restDay_One_Month,
                             days_of_should_be_attendance = v_should_AR_Days,
                             days_of_real_attendance = v_ar_days,
                             not_finger_print = v_not_fingerprint_times,
                             come_late_num = v_COME_LATE_NUM,
                             leave_early_num = v_Leave_early_num,
                             remark =v_remark
                         WHERE dept = v_dept
                          AND Name = v_name
                          AND trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM');
                end if;
                commit;

           END LOOP;
           CLOSE v_cur;


           OPEN v_cur_AR_By_DR_And_Dept
           FOR SELECT
                      SEQ,
                      dept,
                      name,
                      AR_Job_Number,
                      AR_name,
                      to_char(latest_off_duty,'yyyy-MM-dd HH24:MI:SS') latest_off_duty,
                      overtime_workday_one_month,
                      overtime_restday_one_month,
                      days_of_should_be_attendance,
                      days_of_real_attendance,
                      not_finger_print,
                      come_late_num,
                      leave_early_num,
                      remark
                FROM  AR_Summary
                WHERE  trunc(belong_to_month,'MM') =  to_date(v_year_and_month_str,'yyyy-MM')
                AND dept = v_dept
                ORDER BY NLSSORT(remark,'NLS_SORT= SCHINESE_PINYIN_M') desc nulls last,
                      substr(dept,instr(dept,'组')-1) desc,
                      NLSSORT(name,'NLS_SORT= SCHINESE_PINYIN_M') desc;

           return v_cur_AR_By_DR_And_Dept;



  end;

--返回 考勤 汇总
function get_AR_By_LN_And_DR(v_lastName nvarchar2,v_year_and_month_str varchar2) return t_cur
is
      v_cur t_cur;
      v_ar_job_number varchar2(20);
      v_ar_name nvarchar2(20);
      ---本月 最晚 下班时间
      v_max_fpt_last_time date;

      --本月 工作日 加班 时间 总和
      v_overtime_workDay_One_Month number;

       --本月 休息日 加班 时间 总和
      v_overtime_restDay_One_Month number;


      v_count int;

      v_remark NVARCHAR2(50);
      v_cur_AR_By_LN_And_DR t_cur;

        v_COME_LATE_NUM INT;
      v_Leave_early_num int;
      v_AR_Days INT;    --实际出勤天数。
      v_NOT_FingerPrint_Times INT;      --未打卡次数。
      v_should_AR_Days INT;   ---应出勤天数

      PRAGMA AUTONOMOUS_TRANSACTION;

begin
--获取该月 计件记录和零活
  open v_cur for
  SELECT job_number,NAME
  FROM Attendance_Record AR
  WHERE NAME LIKE v_lastName || '%'
  AND FingerPrint_DATE = TO_DATE(v_year_and_month_str||'-01','yyyy-MM-dd')
  ORDER BY NLSSORT(Name,'NLS_SORT= SCHINESE_PINYIN_M') ASC;

  DELETE
  FROM AR_Summary_For_LN;

  LOOP

       <<NEXT>>

        --获取姓名
        FETCH v_cur INTO v_ar_job_number,v_ar_name;
        EXIT WHEN v_cur%notfound;
        v_remark:='';
        v_max_fpt_last_time:=null;
        v_overtime_workDay_One_Month:=null;
        v_overtime_restDay_One_Month:=null;



        --2. 计算最晚下班时间。
      select FPT_LAST_TIME INTO v_max_fpt_last_time
      from
      (
        select row_number() over(order by (to_char(fpt_last_time,'HH24:MI:SS')) desc) row_ID,fpt_last_time
            from Attendance_Record AR_Condition
            where job_number = v_ar_job_number
            and trunc(FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM')
            and fpt_last_time is not null
       ) TEMP
       where Temp.row_ID =1;

        ---3. 计算 本月 工作日 加班时长
        ---
        select sum(floor((fpt_last_time - to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')) * 24 *60 /30) *0.5) INTO v_overtime_workDay_One_Month
        from Attendance_Record AR
        where job_number = v_ar_job_number
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        and fpt_last_time is not null
        and fpt_last_time > to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')
        and fingerprint_date not in (
            select Rest_Day
            from Rest_Day
            where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        );


        SELECT COUNT(1) INTO v_Count
        FROM DUAL
        WHERE  EXISTS(
                         SELECT 1
                         FROM Attendance_Record
                          WHERE job_number = v_ar_job_number
                          and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                          and fpt_first_time is not null
                          and fpt_last_time is not null
                          and fingerprint_date in (
                              select Rest_Day
                              from Rest_Day
                              where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        ));

        IF v_Count =0 THEN
           v_overtime_restDay_One_Month:=0;
        ELSE

        ---4. 计算休息 日  加班 时长
          select sum(floor((fpt_last_time - fpt_first_time) * 24 *60 /30) *0.5) INTO v_overtime_restDay_One_Month
          from Attendance_Record AR
          where job_number = v_ar_job_number
          and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
          and fpt_first_time is not null
          and fpt_last_time is not null
          and fingerprint_date in (
              select Rest_Day
              from Rest_Day
              where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
          );

        END IF;

           --- 计算迟到次数
            get_Come_Late_Num(v_ar_job_number,v_year_and_month_str,v_COME_LATE_NUM );
            ---计算早退次数
            get_leave_early_num(v_ar_job_number,v_year_and_month_str,v_Leave_early_num );
            ---计算考勤天数
            get_Actual_AR_Days(v_ar_job_number,v_year_and_month_str, v_AR_Days);
            ---未打卡次数。
            Get_Not_FingerPrint_Times(v_ar_job_number,v_year_and_month_str,v_NOT_FingerPrint_Times);
            --获取应出勤天数。
            get_Should_AR_Days(v_year_and_month_str,v_should_AR_Days);

        insert into AR_Summary_For_LN(
                                  AR_Job_Number,
                                  AR_NAME,
                                  latest_off_duty,
                                  overtime_workday_one_month,
                                  overtime_restday_one_month,
                                   days_of_should_be_attendance,
                                    days_of_real_attendance,
                                    not_finger_print,
                                    come_late_num,
                                    LEAVE_EARLY_NUM,
                                    remark)
        VALUES(
               v_ar_job_number,
               v_ar_name,
               v_max_fpt_last_time,
               v_overtime_workDay_One_Month,
               v_overtime_restday_one_month,
               v_should_AR_Days,
               v_AR_Days,
               v_NOT_FingerPrint_Times,
               v_COME_LATE_NUM,
               v_Leave_early_num,
               v_remark
        );
        commit;

   END LOOP;
   CLOSE v_cur;



   OPEN v_cur_AR_By_LN_And_DR
   FOR SELECT
              ar_job_number,
              AR_name,
              to_char(latest_off_duty,'yyyy-MM-dd HH24:MI:SS') latest_off_duty,
              overtime_workday_one_month,
              overtime_restday_one_month,
              days_of_should_be_attendance,
              days_of_real_attendance,
              not_finger_print,
              come_late_num,
              LEAVE_EARLY_NUM,
              remark
        FROM  AR_Summary_For_LN
        ORDER BY NLSSORT(AR_NAME,'NLS_SORT = SCHINESE_PINYIN_M') ASC ;



   return v_cur_AR_By_LN_And_DR;

end;
   procedure Update_Summary(v_ar_job_number nvarchar2,v_year_and_month_str varchar2) as
             v_latest_off_duty ar_summary.latest_off_duty%type;
             v_overtime_workDay_One_Month ar_summary.overtime_workday_one_month%type;
             v_overtime_restDay_One_Month ar_summary.overtime_restday_one_month%type;

   begin
      --1. 计算最晚下班时间。
      select FPT_LAST_TIME INTO v_latest_off_duty
      from
      (
        select row_number() over(order by (to_char(fpt_last_time,'HH24:MI:SS')) desc) row_ID,
               fpt_last_time
            from Attendance_Record AR_Condition
            where job_number = v_ar_job_number
            and trunc(FINGERPRINT_DATE,'MM') =to_date(v_year_and_month_str,'yyyy-MM')
            and fpt_last_time is not null
       ) TEMP
       where Temp.row_ID =1;

       --2. 计算 本月工作 日 加班时长
         select sum(floor((fpt_last_time - to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')) * 24 *60 /30) *0.5) INTO v_overtime_workDay_One_Month
        from Attendance_Record AR
        where job_number = v_ar_job_number
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        and fpt_last_time is not null
        and fpt_last_time > to_date(to_char(fpt_last_time,'yyyy-MM-dd') || ' 17:00:00','yyyy-MM-dd HH24:MI:SS')
        and fingerprint_date not in (
            select Rest_Day
            from Rest_Day
            where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        );

        ---3. 计算休息 日  加班 时长
        select sum(floor((fpt_last_time - fpt_first_time) * 24 *60 /30) *0.5) INTO v_overtime_restDay_One_Month
        from Attendance_Record AR
        where job_number = v_ar_job_number
        and trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        and fpt_first_time is not null
        and fpt_last_time is not null
        and fingerprint_date in (
            select Rest_Day
            from Rest_Day
            where trunc(Rest_Day,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
        );



       ----更新时 修改一下

       update AR_Summary
       set latest_off_duty = v_latest_off_duty,
            overtime_workday_one_month = v_overtime_workDay_One_Month,
           OVERTIME_RESTDAY_ONE_MONTH = v_overtime_restDay_One_Month,
           remark = '人工关联: ' || to_char(sysdate,'yyyy-MM-dd HH24:MI:SS')
       where AR_JOB_NUMBER = v_ar_job_number;
   end;
end PKG_GET_AR;
/

prompt
prompt Creating package body PKG_GET_SUMMARY_OF_AR
prompt ===========================================
prompt
create or replace package body dukepu.PKG_Get_Summary_Of_AR is

  function get_summary_of_ar(v_job_number varchar2,v_name nvarchar2,v_year_and_month varchar2) return cur_t
  as
         v_cur_result cur_t;
         v_ar_days INT;
         v_vacation_total_time INT;
         v_NOT_FingerPrint_Times INT;
         v_Delay_Total_Time NUMBER;
         v_duration_of_overtime_days number;        ---加班日时长;
         v_delay_times_ordinary_days number;       ---平日延时;
         v_COME_LATE_NUM INT;
         v_Leave_Early_Num INT;
         v_Dinner_Subsidy_num INT;

         PRAGMA AUTONOMOUS_TRANSACTION;
  begin

       get_Actual_AR_Days(v_job_number,v_year_and_month, v_AR_Days);
       GET_Total_TIME_For_A_F_L(v_job_number, v_year_and_month,v_vacation_total_time);
       Get_Not_FingerPrint_Times(v_Job_Number,v_year_and_month,v_NOT_FingerPrint_Times);

       ---平日延时获取。
       get_delay_times_ordinary_days(v_Job_Number,v_Year_And_Month,v_delay_times_ordinary_days);
       --休息日加班时长获取。
       get_duration_of_overtime_day(v_Job_Number,v_year_and_month,v_duration_of_overtime_days);
       --这里要对平日延时和加班日加班时长 进行叠加。
       v_Delay_Total_Time:=v_delay_times_ordinary_days + v_duration_of_overtime_days;
       get_Come_Late_Num(v_Job_Number,v_Year_And_Month,v_COME_LATE_NUM);
       get_Leave_Early_Num(v_Job_Number,v_Year_And_Month,v_Leave_Early_Num);
       Get_Dinner_Subsidy_Num(v_JOB_NUMBER, v_year_and_month, v_Dinner_Subsidy_num);

       --保存数据到 AR_Summary_Final;

       INSERT INTO AR_Summary_Final(
                                      job_number,
                                      name,
                                      days_of_real_attendance,
                                      not_finger_print,
                                      overtime_of_workday,
                                      overtime_of_restday,
                                      come_late_num,
                                      leave_early_num,
                                      meal_subsidy,
                                      belong_to_month
       )VALUES(
               v_job_number,
               v_name,
               v_AR_Days,
               v_NOT_FingerPrint_Times,
               v_delay_times_ordinary_days,
               v_duration_of_overtime_days,
               v_COME_LATE_NUM,
               v_Leave_Early_Num,
               v_Dinner_Subsidy_num,
               to_date(v_year_and_month,'yyyy-MM')
       );


       OPEN v_cur_result FOR
       SELECT v_ar_days AR_DAYS,
              v_vacation_total_time VACATION_TOTAL_TIME,
              v_NOT_FingerPrint_Times NOT_FINGERPRINT_TIMES,
              v_delay_times_ordinary_days DELAY_TIMES_OF_Ordinary_Days,
              v_duration_of_overtime_days Duration_Of_Overtime_Days,
              v_Delay_Total_Time DELAY_TOTAL_TIME,
              v_COME_LATE_NUM COME_LATE_NUM,
              v_Leave_Early_Num LEAVE_EARLY_NUM,
              v_Dinner_Subsidy_num DINNER_SUBSIDY_NUM
        FROM DUAL;

        COMMIT;

        return v_cur_result;
  end;
end PKG_Get_Summary_Of_AR;
/

prompt
prompt Creating package body PKG_IMPORT_AR
prompt ===================================
prompt
create or replace package body dukepu.PKG_Import_AR is
  -- Private type declarations
  function import_AR(
                           v_start_date_str varchar2,
                           v_end_date_str varchar2,
                           v_tabulation_time_str varchar2,
                           v_fingerprint_date_str varchar2,
                           v_job_number varchar2,
                           v_name       nvarchar2,
                           v_dept       nvarchar2,
                           v_fpt_first_time_str       varchar2,
                           v_fpt_last_time_str        varchar2,
                           v_file_path                nvarchar2,
                           v_random_str               varchar2
                                   ) return int
   as
       ---现存工号
       v_job_number_existing varchar2(20);
       v_fpt_first_time_existing date;
       v_fpt_last_time_existing date;
       v_fpt_first_time_date date;
       v_fpt_last_time_date date;
       --最终的 比较值。
       v_job_number_final varchar2(50);
       v_fpt_first_time_final date;
       v_fpt_last_time_final  date;
       v_count int;
       v_index_of_jn int;     --现存 工号 索引
   begin
        SELECT COUNT(1) INTO v_count
        FROM Attendance_Record
        WHERE NAME = v_name
        AND Fingerprint_date = TO_DATE(v_fingerprint_date_str,'yyyy-MM-dd');

        IF(0=v_count)
        THEN
            INSERT INTO Attendance_Record(
                                         start_date,
                                         end_date,
                                         tabulation_time,
                                         fingerprint_date,
                                         job_number,
                                         name,
                                         dept,
                                         fpt_first_time,
                                         fpt_last_time,
                                         File_Path,
                                         random_str
            )VALUES(
                    TO_DATE(v_start_date_str,'yyyy-MM-dd'),
                    TO_DATE(v_end_date_str,'yyyy-MM-dd'),
                    TO_DATE(v_tabulation_time_str,'yyyy-MM-dd'),
                    TO_DATE(v_fingerprint_date_str,'yyyy-MM-dd'),
                    v_job_number,
                    v_name,
                    v_dept,
                    TO_DATE(v_fpt_first_time_str,'yyyy-MM-dd HH24:MI:SS'),
                    TO_DATE(v_fpt_last_time_str,'yyyy-MM-dd HH24:MI:SS'),
                    v_file_path,
                    v_random_str
             );
             return 1;
        END IF;

        v_fpt_first_time_date := TO_DATE(v_fpt_first_time_str,'yyyy-MM-dd HH24:MI:SS');
        v_fpt_last_time_date:=TO_DATE(v_fpt_last_time_str,'yyyy-MM-dd HH24:MI:SS');
        ---更新
        SELECT
               job_number,
               fpt_first_time,
               fpt_last_time
               INTO
               v_job_number_existing,
               v_fpt_first_time_existing,
               v_fpt_last_time_existing
        FROM Attendance_Record
        WHERE NAME = v_name
        AND Fingerprint_date = TO_DATE(v_fingerprint_date_str,'yyyy-MM-dd');

        if(v_fpt_first_time_existing is not null) then
               --比较大小.
               if(v_fpt_first_time_date< v_fpt_first_time_existing) then
                  --更新
                  v_fpt_first_time_final:=v_fpt_first_time_date;
               else
                  v_fpt_first_time_final:=v_fpt_first_time_existing;
               end if;
        else
             v_fpt_first_time_final:=v_fpt_first_time_date;
        end if;
        if(v_fpt_last_time_existing is not null) then
               --比较大小.
               if(v_fpt_last_time_date> v_fpt_last_time_existing) then
                  --更新
                  v_fpt_last_time_final:= v_fpt_last_time_date;
               else
                  v_fpt_last_time_final:= v_fpt_last_time_existing;
               end if;
        else
            v_fpt_last_time_final:=v_fpt_last_time_date;
        end if;

        --书写 工号。
        v_index_of_JN:=instr(v_job_number_existing,v_job_number);
        if(0=v_index_of_JN) then
            v_job_number_final:=v_job_number_existing || '_'||v_job_number;
        end if;

        UPDATE Attendance_Record
        SET JOB_NUMBER = v_job_number_final,
            fpt_first_time = v_fpt_first_time_final,
            fpt_last_time  = v_fpt_last_time_final,
            record_time = sysdate
        WHERE NAME = v_name
        AND Fingerprint_date = TO_DATE(v_fingerprint_date_str,'yyyy-MM-dd');

        return 1;
 EXCEPTION WHEN OTHERS THEN RETURN 0;
   end;
end PKG_Import_AR;
/

prompt
prompt Creating package body PKG_IMPORT_AR_TO_P_TABLE
prompt ==============================================
prompt
create or replace package body dukepu.PKG_Import_AR_To_P_Table is
  function import_AR_To_Preparative_Table(
                           v_start_date_str varchar2,
                           v_end_date_str varchar2,     
                           v_tabulation_time_str varchar2,
                           v_fingerprint_date_str varchar2,
                           v_job_number varchar2,
                           v_name       nvarchar2,
                           v_dept       nvarchar2,
                           v_fpt_first_time_str       varchar2,
                           v_fpt_last_time_str        varchar2,
                           v_file_path                nvarchar2,
                           v_random_str               varchar2
                                   ) return int
 as 
 begin
       INSERT INTO Attendance_Record(
                                         start_date,
                                         end_date,
                                         tabulation_time,
                                         fingerprint_date,
                                         job_number,
                                         name,
                                         dept,
                                         fpt_first_time,
                                         fpt_last_time,
                                         File_Path,
                                         random_str
            )VALUES(
                    TO_DATE(v_start_date_str,'yyyy-MM-dd'),
                    TO_DATE(v_end_date_str,'yyyy-MM-dd'),
                    TO_DATE(v_tabulation_time_str,'yyyy-MM-dd'),
                    TO_DATE(v_fingerprint_date_str,'yyyy-MM-dd'),
                    v_job_number,
                    v_name,
                    v_dept,
                    TO_DATE(v_fpt_first_time_str,'yyyy-MM-dd HH24:MI:SS'),
                    TO_DATE(v_fpt_last_time_str,'yyyy-MM-dd HH24:MI:SS'),
                    v_file_path,
                    v_random_str
             );
     return 1;
 end;                               
          
end PKG_Import_AR_To_P_Table;
/

prompt
prompt Creating package body PKG_REST_DAY
prompt ==================================
prompt
create or replace package body dukepu.PKG_Rest_Day is
function generate_rest_day(v_name nvarchar2,v_year_and_month varchar2) return t_cur
is
  --休息日： 最后 一日 。
       v_LastDay int;
       var_LastDay varchar2(2);
       v_date date;
       v_day nvarchar2(10);
       v_Count INT;
       v_cur t_cur;
       PRAGMA AUTONOMOUS_TRANSACTION;
begin

     SELECT TO_CHAR(LAST_DAY(TO_DATE(v_year_and_month,'yyyy-MM')),'dd') INTO var_LastDay
     FROM DUAL;

     v_LastDay:= CAST(var_LastDay AS INT);
     FOR i IN 1..v_LastDay
     LOOP
        SELECT TO_DATE(v_year_and_month || '-' || CAST(i AS varchar2(2)),'yyyy-MM-dd') INTO v_date
        FROM DUAL;


        SELECT TO_Char(v_date,'day') INTO v_day
        FROM DUAL;


        IF('星期日' =v_day) THEN
           SELECT COUNT(1) INTO v_Count
           FROM Rest_Day
           WHERE name = v_name
           AND Rest_Day =v_date;

           IF(v_Count=0) THEN

                INSERT INTO Rest_Day(name,Rest_Day,Update_Time)
                VALUES(
                       v_Name,
                       v_date,
                       Sysdate
                );

           END IF;

        end IF;

     END LOOP;

     commit;

     open v_cur
     for select name,
                rest_day,
                update_time
         from rest_day
         where trunc(rest_day,'MM') = to_date(v_year_and_month,'yyyy-MM')
         order by update_time desc;


       return v_cur;

  end;
  end Pkg_rest_day;
/

prompt
prompt Creating package body PKG_SALS_REPORT
prompt =====================================
prompt
create or replace package body dukepu.PKG_Sals_Report is
  -- Function and procedure implementations
    function getAR(v_dept nvarchar2,v_year_and_month_str varchar2)  return t_cur as
             v_cur t_cur;
             v_staffs_Info_cur t_cur;
    begin
           /*
             select dept,
                 name,
                 latest_off_duty,
                 overtime_workday_one_month,
                 overtime_restday_one_month,
                 remark,
                 belong_to_month
           from AR_Summary;
         */
         --先判断AR_Summary中，是否有无该月的汇总记录。
         open v_cur
         for
          select AR_Summary.dept,
                AR_Summary.name,
                '实出勤',--<实出勤>
                '未打卡',--<未打卡>
                overtime_workday_one_month,--<延点>
                overtime_restday_one_month,--<周日/加班>
                overtime_workday_one_month + overtime_restday_one_month as total_delay_time,--<总小时>
                (overtime_workday_one_month + overtime_restday_one_month)* 2 as total_overtime_pay--<加班费>
         from AR_Summary  inner join Attendance_Record AR
              ON (AR_Summary.Ar_Job_Number = AR.Job_Number
                 and trunc(ar_summary.belong_to_month,'MM') = trunc(AR.Fingerprint_Date,'MM')
                 )
         where AR_Summary.dept = v_dept
         and trunc(belong_To_month,'MM') = to_date(v_year_and_month_str,'yyyy-MM');


          return v_staffs_Info_cur;
    end;
     function getEarningOfProducts(v_report_dept nvarchar2,v_pn nvarchar2,v_dept nvarchar2,v_name nvarchar2,v_report_specific_month varchar2) return number
     as
       v_aggregate_amount number;
       v_count int;
     begin

          select count(1) into v_count
          from Products_Record
          where Report_Dept = v_report_dept
          and products_name =v_pn
          and dept = v_dept
          and name = v_name
          and trunc(report_specific_month,'MM') = to_date(v_report_specific_month,'yyyy-MM');

          if(v_count=0)
          then

            return 0;
          end if;



         select round(sum(amount_of_money),2) aggregate_amount into v_aggregate_amount
          from Products_Record
          where Report_Dept = v_report_dept
          and products_name =v_pn
          and dept = v_dept
          and name = v_name
          and trunc(report_specific_month,'MM') = to_date(v_report_specific_month,'yyyy-MM')
          and amount_of_money is not null;

          return v_aggregate_amount;
     end;

     function getEarningOfScatteredRecord(v_report_specific_month varchar2,v_dept nvarchar2,v_name nvarchar2) return number
     as
         v_aggregate_amount number;
       v_count int;
     begin
           select count(1) into v_count
            from Scattered_record
            where dept = v_dept
            and name = v_name
            and trunc(report_specific_month,'MM') = to_date(v_report_specific_month,'yyyy-MM');

           if(v_count=0)
           then
               return 0;

           end if;

            select sum(Aggregate_amount) into v_aggregate_amount
            from Scattered_record
            where dept = v_dept
            and name = v_name
            and trunc(report_specific_month,'MM') = to_date(v_report_specific_month,'yyyy-MM');

            return v_aggregate_amount;
     end;

end PKG_Sals_Report;
/

prompt
prompt Creating package body PKG_TO_EXPORT_AR_SUMMARY
prompt ==============================================
prompt
create or replace package body dukepu.PKG_TO_Export_AR_Summary is

   ---保存 AR至  Attendance_Record_Summary,异机同名 汇总 。
  procedure Save_AR_To_Summary_Table(v_year_and_month_str varchar2)
  as
  begin
       --异机同名 汇总 。
       INSERT INTO Attendance_Record_Summary(
                              Start_date,
                              End_Date,
                              Tabulation_time,
                              fingerprint_date,
                              dept,
                              job_number,
                              name,
                              fpt_first_time,
                              fpt_last_time
                        )
                        select   T.Start_date,
                                 T.end_date,
                                 T.tabulation_time,
                                 T.fingerprint_date,
                                 replace(wm_concat(to_char(T.dept)),',','_') as dept,
                                 replace(wm_concat(T.job_number),',','_')  AS job_number,
                                 T.name,
                                 min(T.fpt_first_time) fpt_first_time,
                                 max(T.fpt_last_time)  fpt_last_time
                        from (
                               select   Start_date,
                                   end_date,
                                   tabulation_time,
                                   fingerprint_date,
                                   dept,
                                   cast (job_number as varchar2(20)) as job_number,
                                   name,
                                   fpt_first_time,
                                   fpt_last_time
                               from attendance_record ar
                               where trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                               order by job_number
                          ) T
                          where trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                          group by name,
                                   Start_date,
                                   end_date,
                                   tabulation_time,
                                   fingerprint_date
                          ORDER BY Job_number,
                                   fingerprint_date;

       end;

end PKG_TO_Export_AR_Summary;
/

prompt
prompt Creating package body PKG_TO_EXPORT_FROM_A_R_SUMMARY
prompt ====================================================
prompt
create or replace package body dukepu.PKG_TO_Export_From_A_R_Summary is

   ---保存 AR至  Attendance_Record_Summary,异机同名 汇总 。
  procedure Save_AR_To_Summary_Table(v_year_and_month_str varchar2)
  as
  begin
       ---异机同名用户。
       INSERT INTO Attendance_Record_Summary(
                              Start_date,
                              End_Date,
                              Tabulation_time,
                              fingerprint_date,
                              dept,
                              job_number,
                              name,
                              fpt_first_time,
                              fpt_last_time
                        )
                        select   T.Start_date,
                                 T.end_date,
                                 T.tabulation_time,
                                 T.fingerprint_date,
                                 replace(wm_concat(to_char(T.dept)),',','_') as dept,
                                 replace(wm_concat(T.job_number),',','_')  AS job_number,
                                 T.name,
                                 min(T.fpt_first_time) fpt_first_time,
                                 max(T.fpt_last_time)  fpt_last_time
                        from (
                               select   Start_date,
                                   end_date,
                                   tabulation_time,
                                   fingerprint_date,
                                   dept,
                                   cast (job_number as varchar2(40)) as job_number,
                                   name,
                                   fpt_first_time,
                                   fpt_last_time
                               from attendance_record ar
                               where trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                               order by job_number
                          ) T
                          where trunc(fingerprint_date,'MM') = to_date(v_year_and_month_str,'yyyy-MM')
                          group by name,
                                   Start_date,
                                   end_date,
                                   tabulation_time,
                                   fingerprint_date
                          ORDER BY Job_number,
                                   fingerprint_date;

       end;
function get_summary_of_A_R_Summary(v_job_number varchar2,v_year_and_month varchar2) return t_cur
as
         v_cur_result t_cur;
         v_ar_days INT;
         v_vacation_total_time INT:=0;
         v_NOT_FingerPrint_Times INT;
         v_Delay_Total_Time NUMBER;
         v_duration_of_overtime_days number;        ---加班日时长;
         v_delay_times_ordinary_days number;       ---平日延时;
         v_COME_LATE_NUM INT;
         v_Leave_Early_Num INT;
         v_Dinner_Subsidy_num INT;

         PRAGMA AUTONOMOUS_TRANSACTION;
  begin

       get_Actual_AR_Days_Of_A_R_S(v_job_number,v_year_and_month, v_AR_Days);
       --GET_Total_TIME_For_A_F_L(v_job_number, v_year_and_month,v_vacation_total_time);
       Get_Not_FP_Times_Of_A_R_S(v_Job_Number,v_year_and_month,v_NOT_FingerPrint_Times);

       ---平日延时获取。
       get_d_t_ordinary_days_of_A_R_S(v_Job_Number,v_Year_And_Month,v_delay_times_ordinary_days);
       --休息日加班时长获取。
       get_duration_overtime_day_ARS(v_Job_Number,v_year_and_month,v_duration_of_overtime_days);
       --这里要对平日延时和加班日加班时长 进行叠加。
       v_Delay_Total_Time:=v_delay_times_ordinary_days + v_duration_of_overtime_days;
       get_Come_Late_Num_Of_ARS(v_Job_Number,v_Year_And_Month,v_COME_LATE_NUM);
       get_Leave_Early_Num_Of_ARS(v_Job_Number,v_Year_And_Month,v_Leave_Early_Num);
       Get_Dinner_Subsidy_Num_Of_ARS(v_JOB_NUMBER, v_year_and_month, v_Dinner_Subsidy_num);

       OPEN v_cur_result FOR
       SELECT v_ar_days AR_DAYS,
              v_vacation_total_time VACATION_TOTAL_TIME,
              v_NOT_FingerPrint_Times NOT_FINGERPRINT_TIMES,
              v_delay_times_ordinary_days DELAY_TIMES_OF_Ordinary_Days,
              v_duration_of_overtime_days Duration_Of_Overtime_Days,
              v_Delay_Total_Time DELAY_TOTAL_TIME,
              v_COME_LATE_NUM COME_LATE_NUM,
              v_Leave_Early_Num LEAVE_EARLY_NUM,
              v_Dinner_Subsidy_num DINNER_SUBSIDY_NUM
        FROM DUAL;

        COMMIT;

        return v_cur_result;
  end;
   procedure GET_A_R_Time(v_job_number varchar2,v_ar_day varchar2, v_cur_result out t_cur) as
  begin
       open v_cur_result
       FOR
          SELECT to_char(fpt_first_time,'HH24:MI') as fpt_first_time,
                 to_char(fpt_last_time,'HH24:MI') as fpt_last_time,
                 come_late_num,
                 leave_early_num
          FROM Attendance_Record_Summary
          WHERE job_number = v_job_number
          AND fingerprint_date = to_date(v_ar_day,'yyyy-MM-dd');

  end;
end PKG_TO_Export_From_A_R_Summary;
/

prompt
prompt Creating package body SHOW_PRODUCTS_COST
prompt ========================================
prompt
create or replace package body dukepu.Show_Products_Cost is

  -- Private type declarations
     --type cur_t is ref cursor;

  -- Private constant declarations
     --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  --<VariableName> <Datatype>;

  -- Function and procedure implementations
   function getProductsCostDetail(v_PN nvarchar2) return cur_t is
            v_cur cur_t;
   begin

        OPEN v_cur
        FOR

              select rownum as  "序号",
                       成衣名称,
                       概要工序,
                       具体工序,
                       工时,
                       单价,
                     提供者,
                     更新时间
              from
              (
               select
                    product_name AS "成衣名称",
                    summary_process AS "概要工序",
                    specific_process AS "具体工序",
                    man_hours AS "工时",
                    labour_cost AS "单价",
                    supplier AS "提供者",
                    update_time AS "更新时间"
              from Products_Cost
              where product_name = v_PN
              order by seq_p_c_record asc
              ) temp;


        return v_cur;

   end;

    function getAllProductsCostSummary return cur_t is
             v_cur cur_t;
    begin

        OPEN v_cur
        FOR   select     V_Products_Cost_Summary.Product_Name,
                        total_man_hours,
                        total_labour_cost,
                        supplier,
                        latest_update_time,
                      products_picture.picture AS picture
        from V_Products_Cost_Summary inner join products_picture
             on V_Products_Cost_Summary.product_name = products_picture.product_name;

        return v_cur;

    end;
     function get_P_C_Summary_To_Export(v_PN nvarchar2) return cur_t is
              v_cur cur_t;
     begin
          OPEN v_cur
          FOR
            SELECT
            SEQ AS "序号",
               (CASE
                         WHEN Product_Name IS NULL THEN N'合计'
                         ELSE PRODUCT_NAME
                       END) AS "成衣名称",
                      summary_process AS "概要工序",
                      specific_process AS "具体工序",
                      man_hours AS "工时",
                      sum(labour_cost) as "工价",
                      supplier AS "提供者",
                      update_time AS "更新时间"
            FROM
            (
               SELECT SEQ_P_C_Record AS SEQ,
                          Product_Name,
                          summary_process,
                          specific_process,
                          man_hours,
                          labour_cost,
                          supplier,
                          update_time
               FROM Products_Cost
               WHERE Product_NAME = v_PN
              ) TEMP
       group by rollup (SEQ,Product_Name,summary_process,specific_process,man_hours,labour_cost,supplier,update_time)
        having (summary_process is not null and specific_process is not null and man_hours is not null and update_time is not null)
       OR (SEQ IS NULL AND Product_Name is null and Summary_Process is null and specific_process is  null and man_hours is  null and labour_cost is  null and update_time is  null);

        return v_cur;
     end;
     function get_P_C_Summary_By_Each_Part(v_PN nvarchar2)return cur_t
     as
       v_cur cur_t;
     begin
            
            open v_cur 
            for       
                select seq_p_C_Record,
                 product_name,
                 summary_process,
                 specific_Process,
                 specific_each_process,
                 man_hours,
                 amount,
                 each_cost,
                 labour_cost,
                 null as final_labour_cost
          from Products_Cost
          where product_name = v_PN
          order by seq_p_c_record asc;
          
          return v_cur;
     end;
  
     function get_P_C_Info_To_Piecework(v_PN nvarchar2) return cur_t
     is
              v_cur cur_t;
     begin
        OPEN v_cur
        FOR
            select
                  rownum as row_num,
                  product_name,
                  summary_process,
                  specific_process
            from
            (
                     select
                              product_name,
                          summary_process,
                          specific_process
                    from Products_Cost
                    where product_name = v_PN
                    order by SEQ_P_C_Record asc
            )temp;

        return v_cur;


     end;
end Show_Products_Cost;
/

prompt
prompt Creating package body SHOW_SALARY_EMPS
prompt ======================================
prompt
create or replace package body dukepu.Show_Salary_Emps is

  -- Private type declarations

  -- Private constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  --<VariableName> <Datatype>;

  -- Function and procedure implementations
 --从  计件 报表 中  获取  上个 月 所有 员工 信息。
  function getAllEmpsOfLastMonth return cur_t is
      v_cur cur_t  ;
  begin
       open v_cur
       for
      SELECT 工号,
              姓名,
              报表部门,
              考勤工号,
              考勤姓名,
              部门,
              报表月份
      FROM V_Salary_Emps;

      return v_cur;

  end;

end Show_Salary_Emps;
/

prompt
prompt Creating trigger TRIGGER_AFTER_DELETE_P_C
prompt =========================================
prompt
create or replace trigger DUKEPU.trigger_after_delete_P_C
 after delete on Products_Cost
 for each row


declare

 begin
      INSERT INTO Products_Cost_History(
          seq,
          summary_process,
          specific_process,
          man_hours,
          labour_cost,
          supplier,
          insert_time,
          Create_Time_Of_P_C,
          products_name,
          Seq_p_c_Record
      )
      VALUES(
             seq_products_cost_history.nextval,
             :old.Summary_Process,
             :old.specific_process,
             :old.man_hours,
             :old.labour_cost,
             :old.supplier,
             sysdate,
             :old.update_time,
             :old.product_name,
             :old.seq_p_c_record
            );


 end trigger_after_insert_P_C;
/

prompt
prompt Creating trigger TRIGGER_AFTER_INSERT_D_C
prompt =========================================
prompt
create or replace trigger DUKEPU.trigger_after_insert_D_C
  after insert on daily_capacity
  for each row
declare
  -- local variables here
begin

  INSERT INTO DAILY_CAPACITY_HISTORY(
         SEQ,
         JOB_NUMBER,
         NAME,
         PRODUCTS_NAME,
         SUMMARY_PROCESS,
         SPECIFIC_PROCESS,
         MANUFACTURE_QUANTITIES,
         YIELDS_TIME,
         SUBMIT_PERSON,
         UPDATE_TIME,
         SAVED_HISTORY_TIME
  )
  VALUES(
         :new.SEQ,
         :new.job_number,
         :new.name,
         :new.products_name,
         NVL(:new.summary_process,'NULL'),
         :new.specific_process,
         :new.manufacture_quantities,
         :new.yields_time,
         :new.submit_person,
         :new.update_time,
         SYSDATE
  );
end trigger_after_insert_D_C;
/

prompt
prompt Creating trigger TRIGGER_AFTER_INSERT_EMPS
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER DUKEPU.trigger_AFTER_INSERT_EMPS
  after insert on employees
  for each row
declare
  -- local variables here
begin
      if(:new.IS_ON_THE_JOB =1) THEN
         INSERT INTO USER_INFO(
                USER_NAME,
                DEPARTMENT,
                ACTION
         )VALUES(
                :new.JOB_NUMBER,    ---这里获取工号作为用户名。
                :new.department,
                'query'
         );
       END IF;
end trigger_AFTER_INSERT_EMPS;
/

prompt
prompt Creating trigger TRIGGER_AFTER_UPDATE_D_C
prompt =========================================
prompt
create or replace trigger DUKEPU.trigger_after_update_D_C
  after update on daily_capacity
  for each row
declare
  -- local variables here
begin

    INSERT INTO DAILY_CAPACITY_HISTORY(
         SEQ,
         JOB_NUMBER,
         NAME,
         PRODUCTS_NAME,
         SUMMARY_PROCESS,
         SPECIFIC_PROCESS,
         MANUFACTURE_QUANTITIES,
         YIELDS_TIME,
         SUBMIT_PERSON,
         UPDATE_TIME,
         SAVED_HISTORY_TIME
  )
  VALUES(
         :new.SEQ,
         :new.job_number,
         :new.name,
         :new.products_name,
         NVL(:new.summary_process,'NULL'),
         :new.specific_process,
         :new.manufacture_quantities,
         :new.yields_time,
         :new.submit_person,
         :new.update_time,
         SYSDATE
  );
end trigger_after_update_D_C;
/

prompt
prompt Creating trigger TRIGGER_AFTER_UPDATE_EMPLOYEES
prompt ===============================================
prompt
CREATE OR REPLACE TRIGGER DUKEPU.TRIGGER_AFTER_UPDATE_EMPLOYEES
  after update on employees
  for each row
declare
  -- local variables here
begin
  IF(:NEW.IS_ON_THE_JOB = 0) THEN
     DELETE FROM USER_INFO
     WHERE USER_NAME = (:NEW.JOB_NUMBER);
   ELSIF(:NEW.IS_ON_THE_JOB = 1) THEN
         UPDATE USER_INFO
         SET USER_NAME = :new.JOB_NUMBER,
             DEPARTMENT = :new.department
         WHERE USER_NAME = :OLD.JOB_NUMBER;
   END IF;
   EXCEPTION
              WHEN DUP_VAL_ON_INDEX THEN
                   DBMS_OUTPUT.put_line('工号重复，未能插入值到USER_INFO中！');
end;
/

prompt
prompt Creating trigger TRI_AFTER_INS_AR
prompt =================================
prompt
CREATE OR REPLACE TRIGGER DUKEPU.TRI_AFTER_INS_AR
  after insert on attendance_record
  for each row
declare
  -- local variables here
  v_Count INT:=0;
begin


  IF(:new.FPT_First_Time IS NULL AND :New.FPT_LAST_TIME IS NOT NULL) THEN
      v_Count:=1;
  ELSIF(:new.FPT_FIRST_TIME IS NOT NULL AND :New.FPT_LAST_TIME IS NULL) THEN
      v_COUNT:=1;
  END IF;

  IF(v_Count=1) THEN
      UPDATE Attendance_Record
      SET NOT_FINGER_PRINT =v_Count
      WHERE SEQ = :New.SEQ;
  END IF;


end TRI_AFTER_INS_AR;
/

prompt
prompt Creating trigger TRI_GEN_ID_FOR_SOFTWAREINFO
prompt ============================================
prompt
create or replace trigger DUKEPU.tri_gen_id_for_SoftwareInfo
    before insert on SoftwareInfo  /*触发条件：当向表SoftwareInfo执行插入操作时触发此触发器*/
     for each row     /*对每一行都检测是否触发*/
    
begin   /*触发器开始*/
    select  seq_softwareinfo.nextval into :new.id from dual;
end;
/

prompt
prompt Creating trigger TRI_P_C_BAK_SEQ
prompt ================================
prompt
create or replace trigger DUKEPU.tri_P_C_bak_SEQ
  before insert on Products_Cost_bak
  for each row
declare
       nextseq number;
begin

     IF :new.SEQ IS NULL OR :new.SEQ = 0 THEN

        SELECT seq_p_c_bak.Nextval INTO nextseq
        FROM SYS.DUAL;

        :new.SEQ:= nextseq;

     END IF;


end;
/

prompt
prompt Creating trigger TRI_P_C_SEQ
prompt ============================
prompt
create or replace trigger DUKEPU.tri_P_C_SEQ
  before insert on Products_Cost
  for each row
declare
       nextseq number;
begin

     IF :new.SEQ IS NULL OR :new.SEQ = 0 THEN

        SELECT SEQ_PRODUCTS_COST.Nextval INTO nextseq
        FROM SYS.DUAL;

        :new.SEQ:= nextseq;

     END IF;


end;
/

prompt
prompt Creating trigger TRI_UPDATE_JN_AFT_INS_EMPS
prompt ===========================================
prompt
create or replace trigger DUKEPU.TRI_UPDATE_JN_AFT_INS_Emps
  after insert on employees
  for each row
declare
  V_JOB_NUMBER Employees.Job_Number%TYPE;
begin
     SELeCT get_job_number_f INTO V_JOB_NUMBER
     FROM DUAL;

     UPDATE EMPLOYEES
     SET JOB_NUMBER = V_JOB_NUMBER
     WHERE Rowid = :new.rowID;
end TRIGGER_AFTER_INSERT_Emps_T;
/


spool off
