-- Repository creation/upgrade DDL: 
--
-- Nothing was created nor modified in the target repository database.
-- Hit the OK button to execute the generated SQL or Close to reject the changes.
-- Please note that it is possible to change/edit the generated SQL before execution.
--
CREATE TABLE R_REPOSITORY_LOG
(
  ID_REPOSITORY_LOG BIGINT NOT NULL PRIMARY KEY
, REP_VERSION VARCHAR(255)
, LOG_DATE DATETIME
, LOG_USER VARCHAR(255)
, OPERATION_DESC MEDIUMTEXT
)
;

CREATE TABLE R_VERSION
(
  ID_VERSION BIGINT NOT NULL PRIMARY KEY
, MAJOR_VERSION INT
, MINOR_VERSION INT
, UPGRADE_DATE DATETIME
, IS_UPGRADE CHAR(1)
)
;

INSERT INTO R_VERSION(ID_VERSION, MAJOR_VERSION, MINOR_VERSION, UPGRADE_DATE, IS_UPGRADE) VALUES (1,5,0,'2016/11/12 22:16:00.338','N');

CREATE TABLE R_DATABASE_TYPE
(
  ID_DATABASE_TYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (1,'ORACLERDB','Oracle RDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (2,'INFINIDB','Calpont InfiniDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (3,'INFOBRIGHT','Infobright');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (4,'KettleThin','Pentaho Data Services');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (5,'PALO','Palo MOLAP Server');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (6,'GENERIC','Generic database');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (7,'AS/400','AS/400');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (8,'SYBASEIQ','SybaseIQ');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (9,'HIVE2','Hadoop Hive 2');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (10,'SQLITE','SQLite');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (11,'DERBY','Apache Derby');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (12,'INFORMIX','Informix');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (13,'INGRES','Ingres');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (14,'HIVE','Hadoop Hive');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (15,'IMPALASIMBA','Cloudera Impala');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (16,'REMEDY-AR-SYSTEM','Remedy Action Request System');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (17,'POSTGRESQL','PostgreSQL');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (18,'SAPR3','SAP ERP System');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (19,'REDSHIFT','Redshift');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (20,'CACHE','Intersystems Cache');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (21,'MSSQL','MS SQL Server');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (22,'TERADATA','Teradata');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (23,'DB2','IBM DB2');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (24,'SQLBASE','Gupta SQL Base');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (25,'MYSQL','MySQL');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (26,'FIREBIRD','Firebird SQL');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (27,'HYPERSONIC','Hypersonic');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (28,'MSACCESS','MS Access');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (29,'KINGBASEES','KingbaseES');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (30,'INTERBASE','Borland Interbase');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (31,'VERTICA5','Vertica 5+');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (32,'MSSQLNATIVE','MS SQL Server (Native)');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (33,'EXASOL4','Exasol 4');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (34,'EXTENDB','ExtenDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (35,'OpenERPDatabaseMeta','OpenERP Server');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (36,'UNIVERSE','UniVerse database');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (37,'NEOVIEW','Neoview');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (38,'LucidDB','LucidDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (39,'SAPDB','MaxDB (SAP DB)');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (40,'VERTICA','Vertica');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (41,'DBASE','dBase III, IV or 5');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (42,'H2','H2');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (43,'VECTORWISE','Ingres VectorWise');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (44,'SYBASE','Sybase');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (45,'ORACLE','Oracle');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (46,'MONDRIAN','Native Mondrian');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (47,'NETEZZA','Netezza');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (48,'IMPALA','Impala');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (49,'GREENPLUM','Greenplum');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (50,'MONETDB','MonetDB');

CREATE TABLE R_DATABASE_CONTYPE
(
  ID_DATABASE_CONTYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (1,'Native','Native (JDBC)');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (2,'ODBC','ODBC');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (3,'OCI','OCI');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (4,'Plugin','Plugin specific access method');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (5,'JNDI','JNDI');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (6,',','Custom');

CREATE TABLE R_NOTE
(
  ID_NOTE BIGINT NOT NULL PRIMARY KEY
, VALUE_STR MEDIUMTEXT
, GUI_LOCATION_X INT
, GUI_LOCATION_Y INT
, GUI_LOCATION_WIDTH INT
, GUI_LOCATION_HEIGHT INT
, FONT_NAME MEDIUMTEXT
, FONT_SIZE INT
, FONT_BOLD CHAR(1)
, FONT_ITALIC CHAR(1)
, FONT_COLOR_RED INT
, FONT_COLOR_GREEN INT
, FONT_COLOR_BLUE INT
, FONT_BACK_GROUND_COLOR_RED INT
, FONT_BACK_GROUND_COLOR_GREEN INT
, FONT_BACK_GROUND_COLOR_BLUE INT
, FONT_BORDER_COLOR_RED INT
, FONT_BORDER_COLOR_GREEN INT
, FONT_BORDER_COLOR_BLUE INT
, DRAW_SHADOW CHAR(1)
)
;

CREATE TABLE R_DATABASE
(
  ID_DATABASE BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, ID_DATABASE_TYPE INT
, ID_DATABASE_CONTYPE INT
, HOST_NAME VARCHAR(255)
, DATABASE_NAME MEDIUMTEXT
, PORT INT
, USERNAME VARCHAR(255)
, PASSWORD VARCHAR(255)
, SERVERNAME VARCHAR(255)
, DATA_TBS VARCHAR(255)
, INDEX_TBS VARCHAR(255)
)
;

CREATE TABLE R_DATABASE_ATTRIBUTE
(
  ID_DATABASE_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_DATABASE INT
, CODE VARCHAR(255)
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_RDAT ON R_DATABASE_ATTRIBUTE(ID_DATABASE, CODE)
;

CREATE TABLE R_DIRECTORY
(
  ID_DIRECTORY BIGINT NOT NULL PRIMARY KEY
, ID_DIRECTORY_PARENT INT
, DIRECTORY_NAME VARCHAR(255)
)
;

CREATE UNIQUE INDEX IDX_RDIR ON R_DIRECTORY(ID_DIRECTORY_PARENT, DIRECTORY_NAME)
;

CREATE TABLE R_TRANSFORMATION
(
  ID_TRANSFORMATION BIGINT NOT NULL PRIMARY KEY
, ID_DIRECTORY INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
, EXTENDED_DESCRIPTION MEDIUMTEXT
, TRANS_VERSION VARCHAR(255)
, TRANS_STATUS INT
, ID_STEP_READ INT
, ID_STEP_WRITE INT
, ID_STEP_INPUT INT
, ID_STEP_OUTPUT INT
, ID_STEP_UPDATE INT
, ID_DATABASE_LOG INT
, TABLE_NAME_LOG VARCHAR(255)
, USE_BATCHID CHAR(1)
, USE_LOGFIELD CHAR(1)
, ID_DATABASE_MAXDATE INT
, TABLE_NAME_MAXDATE VARCHAR(255)
, FIELD_NAME_MAXDATE VARCHAR(255)
, OFFSET_MAXDATE DOUBLE
, DIFF_MAXDATE DOUBLE
, CREATED_USER VARCHAR(255)
, CREATED_DATE DATETIME
, MODIFIED_USER VARCHAR(255)
, MODIFIED_DATE DATETIME
, SIZE_ROWSET INT
)
;

CREATE TABLE R_TRANS_ATTRIBUTE
(
  ID_TRANS_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM BIGINT
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_TATT ON R_TRANS_ATTRIBUTE(ID_TRANSFORMATION, CODE, NR)
;

CREATE TABLE R_JOB_ATTRIBUTE
(
  ID_JOB_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM BIGINT
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_JATT ON R_JOB_ATTRIBUTE(ID_JOB, CODE, NR)
;

CREATE TABLE R_DEPENDENCY
(
  ID_DEPENDENCY BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_DATABASE INT
, TABLE_NAME VARCHAR(255)
, FIELD_NAME VARCHAR(255)
)
;

CREATE TABLE R_PARTITION_SCHEMA
(
  ID_PARTITION_SCHEMA BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, DYNAMIC_DEFINITION CHAR(1)
, PARTITIONS_PER_SLAVE VARCHAR(255)
)
;

CREATE TABLE R_PARTITION
(
  ID_PARTITION BIGINT NOT NULL PRIMARY KEY
, ID_PARTITION_SCHEMA INT
, PARTITION_ID VARCHAR(255)
)
;

CREATE TABLE R_TRANS_PARTITION_SCHEMA
(
  ID_TRANS_PARTITION_SCHEMA BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_PARTITION_SCHEMA INT
)
;

CREATE TABLE R_CLUSTER
(
  ID_CLUSTER BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, BASE_PORT VARCHAR(255)
, SOCKETS_BUFFER_SIZE VARCHAR(255)
, SOCKETS_FLUSH_INTERVAL VARCHAR(255)
, SOCKETS_COMPRESSED CHAR(1)
, DYNAMIC_CLUSTER CHAR(1)
)
;

CREATE TABLE R_SLAVE
(
  ID_SLAVE BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, HOST_NAME VARCHAR(255)
, PORT VARCHAR(255)
, WEB_APP_NAME VARCHAR(255)
, USERNAME VARCHAR(255)
, PASSWORD VARCHAR(255)
, PROXY_HOST_NAME VARCHAR(255)
, PROXY_PORT VARCHAR(255)
, NON_PROXY_HOSTS VARCHAR(255)
, MASTER CHAR(1)
)
;

CREATE TABLE R_CLUSTER_SLAVE
(
  ID_CLUSTER_SLAVE BIGINT NOT NULL PRIMARY KEY
, ID_CLUSTER INT
, ID_SLAVE INT
)
;

CREATE TABLE R_TRANS_SLAVE
(
  ID_TRANS_SLAVE BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_SLAVE INT
)
;

CREATE TABLE R_TRANS_CLUSTER
(
  ID_TRANS_CLUSTER BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_CLUSTER INT
)
;

CREATE TABLE R_TRANS_HOP
(
  ID_TRANS_HOP BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_STEP_FROM INT
, ID_STEP_TO INT
, ENABLED CHAR(1)
)
;

CREATE TABLE R_TRANS_STEP_CONDITION
(
  ID_TRANSFORMATION INT
, ID_STEP INT
, ID_CONDITION INT
)
;

CREATE TABLE R_CONDITION
(
  ID_CONDITION BIGINT NOT NULL PRIMARY KEY
, ID_CONDITION_PARENT INT
, NEGATED CHAR(1)
, OPERATOR VARCHAR(255)
, LEFT_NAME VARCHAR(255)
, CONDITION_FUNCTION VARCHAR(255)
, RIGHT_NAME VARCHAR(255)
, ID_VALUE_RIGHT INT
)
;

CREATE TABLE R_VALUE
(
  ID_VALUE BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, VALUE_TYPE VARCHAR(255)
, VALUE_STR VARCHAR(255)
, IS_NULL CHAR(1)
)
;

CREATE TABLE R_STEP_TYPE
(
  ID_STEP_TYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
, HELPTEXT VARCHAR(255)
)
;

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (1,'MappingInput','ӳ������淶','ָ��һ��ӳ����ֶ�����');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (2,'SystemInfo','��ȡϵͳ��Ϣ','��ȡϵͳ��Ϣ������ʱ�䡢����.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (3,'OpenERPObjectOutputImport','OpenERP Object Output','Writes data into OpenERP objects using the object import procedure');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (4,'SASInput','SAS ����','This step reads files in sas7bdat (SAS) native format');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (5,'GPBulkLoader','Greenplum Bulk Loader','Greenplum Bulk Loader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (6,'MergeJoin','��¼������','Joins two streams on a given key and outputs a joined set. The input streams must be sorted on the join key');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (7,'ExecSQLRow','ִ��SQL�ű�(�ֶ����滻)','Execute SQL script extracted from a field\ncreated in a previous step.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (8,'TableExists','�����Ƿ����','Check if a table exists on a specified connection');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (9,'GetFileNames','��ȡ�ļ���','Get file names from the operating system and send them to the next step.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (10,'SocketWriter','Socket д','Socket writer.  A socket server that can send rows of data to a socket reader.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (11,'Injector','��¼ע��','Injector step to allow to inject rows into the transformation through the java API');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (12,'SingleThreader','Single Threader','Executes a transformation snippet in a single thread.  You need a standard mapping or a transformation with an Injector step where data from the parent transformation will arive in blocks.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (13,'MailValidator','�����ʼ���ַ','Check if an email address is valid.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (14,'AutoDoc','�Զ��ĵ����','This step automatically generates documentation based on input in the form of a list of transformations and jobs');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (15,'PropertyOutput','�����ļ����','Write data to properties file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (16,'UniqueRowsByHashSet','Ψһ�� (��ϣֵ)','Remove double rows and leave only unique occurrences by using a HashSet.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (17,'CheckSum','����У����','Add a checksum column for each input row');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (18,'FilesFromResult','�ӽ����ȡ�ļ�','This step allows you to read filenames used or generated in a previous entry in a job.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (19,'OraBulkLoader','Oracle ��������','Use Oracle Bulk Loader to load data');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (20,'GetTableNames','��ȡ����','Get table names from database connection and send them to the next step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (21,'SocketReader','Socket ��','Socket reader.  A socket client that connects to a server (Socket Writer step).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (22,'DataGrid','�Զ��峣������','Enter rows of static data in a grid, usually for testing, reference or demo purpose');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (23,'HadoopFileOutputPlugin','Hadoop File Output','Create files in an HDFS location ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (24,'XBaseInput','XBase����','��һ��XBase���͵��ļ�(DBF)��ȡ��¼');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (25,'SyslogMessage','������Ϣ��Syslog','Send message to Syslog server');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (26,'ExcelInput','Excel����','��һ��΢���Excel�ļ����ȡ����. ����Excel 95, 97 and 2000.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (27,'SapInput','SAP ����','Read data from SAP ERP, optionally with parameters');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (28,'InfobrightOutput','Infobright ��������','Load data to an Infobright database table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (29,'CassandraInput','Cassandra Input','Reads data from a Cassandra table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (30,'SelectValues','�ֶ�ѡ��','ѡ����Ƴ���¼����֡�{0}���⣬���������ֶε�Ԫ����: ����, ���Ⱥ;���.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (31,'MongoDbOutput','MongoDB Output','Writes to a Mongo DB collection');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (32,'MonetDBAgileMart','MonetDB Agile Mart','Load data into MonetDB for Agile BI use cases');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (33,'ChangeFileEncoding','�ı��ļ�����','Change file encoding and create a new file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (34,'Script','Script','Calculate values by scripting in Ruby, Python, Groovy, JavaScript, ... (JSR-223)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (35,'PrioritizeStreams','���������ȼ�����','Prioritize streams in an order way.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (36,'TextFileOutput','�ı��ļ����','д��¼��һ���ı��ļ�.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (37,'FixedInput','�̶�����ļ�����','Fixed file input');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (38,'CouchDbInput','CouchDb Input','Reads from a Couch DB view');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (39,'XSDValidator','ʹ�� XSD ���� XML �ļ�','Validate XML source (files or streams) against XML Schema Definition.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (40,'XMLOutput','XML���','д���ݵ�һ��XML�ļ�');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (41,'HTTP','HTTP client','Call a web service over HTTP by supplying a base URL by allowing parameters to be set dynamically');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (42,'Unique','ȥ���ظ���¼','ȥ���ظ��ļ�¼�У����ּ�¼Ψһ{0}�����������һ���Ѿ��ź��������.{1}�������û������, �������������ļ�¼�б���ȷ����.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (43,'PGPDecryptStream','PGP Decrypt stream','Decrypt data stream with PGP');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (44,'SortedMerge','����ϲ�','Sorted Merge');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (45,'OpenERPObjectInput','OpenERP Object Input','Reads data from OpenERP objects');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (46,'StringCut','�����ַ���','Strings cut (substring).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (47,'SampleRows','������','Filter rows based on the line number.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (48,'ExecProcess','����һ������','Execute a process and return the result');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (49,'XMLInputStream','XML �ļ����� (StAX����)','This step is capable of processing very large and complex XML files very fast.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (50,'StreamLookup','����ѯ','��ת���е����������ѯֵ.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (51,'Sequence','��������','�����л�ȡ��һ��ֵ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (52,'YamlInput','Yaml ����','Read YAML source (file or stream) parse them and convert them to rows and writes these to one or more output. ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (53,'TableInput','������','�����ݿ�����ȡ��Ϣ.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (54,'SetSessionVariableStep','Set session variables','Set session variables in the current user session.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (55,'RowsToResult','���Ƽ�¼�����','ʹ���������Ѽ�¼д������ִ�е�����.{0}��Ϣ���ᱻ���ݸ�ͬһ�����������һ����Ŀ.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (56,'JsonInput','Json ����','Extract relevant portions out of JSON structures (file or incoming field) and output rows');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (57,'SymmetricCryptoTrans','�ԳƼ���','Encrypt or decrypt a string using symmetric encryption.\nAvailable algorithms are DES, AES, TripleDES.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (58,'SSTableOutput','SSTable Output','Writes to a filesystem directory as a Cassandra SSTable');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (59,'SalesforceUpdate','Salesforce Update','Update records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (60,'MetaInject','ETLԪ����ע��','This step allows you to inject metadata into an existing transformation prior to execution.  This allows for the creation of dynamic and highly flexible data integration solutions.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (61,'MondrianInput','Mondrian ����','Execute and retrieve data using an MDX query against a Pentaho Analyses OLAP server (Mondrian)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (62,'RandomValue','���������','Generate random value');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (63,'PGPEncryptStream','PGP Encrypt stream','Encrypt data stream with PGP');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (64,'LDAPOutput','LDAP ���','Perform Insert, upsert, update, add or delete operations on records based on their DN (Distinguished  Name).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (65,'TextFileInput','�ı��ļ�����','��һ���ı��ļ������ָ�ʽ�����ȡ����{0}��Щ���ݿ��Ա����ݵ���һ��������...');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (66,'HBaseRowDecoder','HBase Row Decoder','Decodes an incoming key and HBase result object according to a mapping ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (67,'Update','����','���ڹؼ��ָ��¼�¼�����ݿ�');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (68,'SwitchCase','Switch / Case','Switch a row to a certain target step based on the case value in a field.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (69,'SFTPPut','SFTP Put','Upload a file or a stream file to remote host via SFTP');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (70,'HBaseOutput','HBase Output','Writes data to an HBase table according to a mapping');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (71,'HBaseInput','HBase Input','Reads data from a HBase table according to a mapping ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (72,'ValueMapper','ֵӳ��','Maps values of a certain field from one value to another');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (73,'GetVariable','��ȡ����','Determine the values of certain (environment or Kettle) variables and put them in field values.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (74,'DynamicSQLRow','ִ��Dynamic SQL','Execute dynamic SQL statement build in a previous field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (75,'TypeExitExcelWriterStep','Microsoft Excel ���','Writes or appends data to an Excel file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (76,'AvroInput','Avro Input','Reads data from an Avro file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (77,'MergeRows','�ϲ���¼','�ϲ�����������, ������ĳ���ؼ�������.  ���������������Ƚϣ��Ա�ʶ��ȵġ�����ġ�ɾ���ĺ��½��ļ�¼.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (78,'PaloDimInput','Palo Dim Input','Reads data from a defined Palo Dimension');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (79,'Rest','REST Client','Consume RESTfull services.\nREpresentational State Transfer (REST) is a key design idiom that embraces a stateless client-server\narchitecture in which the web services are viewed as resources and can be identified by their URLs');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (80,'NumberRange','��ֵ��Χ','Create ranges based on numeric field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (81,'Mapping','ӳ�� (��ת��)','����һ��ӳ�� (��ת��), ʹ��MappingInput��MappingOutput��ָ���ӿڵ��ֶ�');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (82,'ExcelOutput','Excel���','Stores records into an Excel (XLS) document with formatting information.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (83,'AnalyticQuery','������ѯ','Execute analytic queries over a sorted dataset (LEAD/LAG/FIRST/LAST)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (84,'Mail','�����ʼ�','Send eMail.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (85,'ProcessFiles','�����ļ�','Process one file per row (copy or move or delete).\nThis step only accept filename in input.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (86,'ColumnExists','����������Ƿ����','Check if a column exists in a table on a specified connection.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (87,'GPLoad','Greenplum Load','Greenplum Load');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (88,'RegexEval','������ʽ','Regular expression Evaluation\nThis step uses a regular expression to evaluate a field. It can also extract new fields out of an existing field with capturing groups.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (89,'FuzzyMatch','ģ��ƥ��','Finding approximate matches to a string using matching algorithms.\nRead a field from a main stream and output approximative value from lookup stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (90,'SplitFieldToRows3','�в��Ϊ����','Splits a single string field by delimiter and creates a new row for each split term');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (91,'ReplaceString','�ַ����滻','Replace all occurences a word in a string with another word.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (92,'TableAgileMart','Table Agile Mart','Load data into a table for Agile BI use cases');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (93,'MemoryGroupBy','���ڴ��з���','Builds aggregates in a group by fashion.\nThis step doesn\'t require sorted input.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (94,'WriteToLog','д��־','Write data to log');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (95,'IfNull','�滻NULLֵ','Sets a field value to a constant if it is null.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (96,'TeraFast','Teradata Fastload ��������','The Teradata Fastload Bulk loader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (97,'FilterRows','���˼�¼','ʹ�ü򵥵���������˼�¼');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (98,'GetSlaveSequence','Get ID from slave server','Retrieves unique IDs in blocks from a slave server.  The referenced sequence needs to be configured on the slave server in the XML configuration file.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (99,'GetRepositoryNames','��ȡ��Դ������','Lists detailed information about transformations and/or jobs in a repository');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (100,'MongoDbInput','MongoDB Input','Reads from a Mongo DB collection');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (101,'Denormaliser','��ת��','Denormalises rows by looking up key-value pairs and by assigning them to new fields in the��� rows.{0}This method aggregates and needs the���� rows to be sorted on the grouping fields');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (102,'PaloCellInput','Palo Cell Input','Reads data from a defined Palo Cube ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (103,'XMLJoin','XML ����','Joins a stream of XML-Tags into a target XML string');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (104,'Dummy','�ղ��� (ʲôҲ����)','�����������ʲô������.{0} ��������Ի�����������ʱ������.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (105,'ZipFile','Zip �ļ�','Zip a file.\nFilename will be extracted from incoming stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (106,'SecretKeyGenerator','������Կ','Generate secret key for algorithms such as DES, AES, TripleDES.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (107,'SetValueField','�����ֶ�ֵ','Set value of a field with another value field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (108,'HL7Input','HL7 Input','Reads and parses HL7 messages and outputs a series of values from the messages');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (109,'Delay','�ӳ���','Output each input row after a delay');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (110,'S3FileOutputPlugin','S3 File Output','Create files in an S3 location');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (111,'OpenERPObjectDelete','OpenERP Object Delete','Deletes OpenERP objects');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (112,'UserDefinedJavaClass','Java ����','This step allows you to program a step using Java code');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (113,'RssInput','RSS ����','Read RSS feeds');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (114,'SQLFileOutput','SQL �ļ����','Output SQL INSERT statements to file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (115,'DetectLastRow','ʶ���������һ��','Last row will be marked');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (116,'OldTextFileInput','Old Text file input','��һ���ı��ļ������ָ�ʽ�����ȡ����{0}��Щ���ݿ��Ա����ݵ���һ��������...');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (117,'SetValueConstant','���ֶ�ֵ����Ϊ����','Set value of a field to a constant');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (118,'PGBulkLoader','PostgreSQL ��������','PostgreSQL Bulk Loader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (119,'OlapInput','OLAP ����','Execute and retrieve data using an MDX query against any XML/A OLAP datasource using olap4j');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (120,'InsertUpdate','���� / ����','���ڹؼ��ָ��»�����¼�����ݿ�.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (121,'CreditCardValidator','�������ÿ������Ƿ���Ч','The Credit card validator step will help you tell:\n(1) if a credit card number is valid (uses LUHN10 (MOD-10) algorithm)\n(2) which credit card vendor handles that number\n(VISA, MasterCard, Diners Club, EnRoute, American Express (AMEX),...)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (122,'TransExecutor','Transformation Executor','This step executes a Pentaho Data Integration transformation, sets parameters and passes rows.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (123,'Calculator','������','ͨ��ִ�м򵥵ļ��㴴��һ�����ֶ�');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (124,'JavaFilter','����Java������˼�¼','Filter rows using java code');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (125,'TypeExitEdi2XmlStep','Edi to XML','Converts Edi text to generic XML');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (126,'CloneRow','��¡��','Clone a row as many times as needed');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (127,'Normaliser','��ת��','De-normalised information can be normalised using this step type.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (128,'DetectEmptyStream','������','This step will output one empty row if input stream is empty\n(ie when input stream does not contain any row)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (129,'LDAPInput','LDAP ����','Read data from LDAP host');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (130,'TableOutput','�����','д��Ϣ��һ�����ݿ��');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (131,'FieldSplitter','����ֶ�','�������һ���ֶβ�ֳɶ��ʱ��ʹ���������.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (132,'MonetDBBulkLoader','MonetDB ��������','Load data into MonetDB by using their bulk load command in streaming mode.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (133,'CubeOutput','Cube���','������д��һ��cube');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (134,'Janino','����Janino����Java���ʽ','Calculate the result of a Java Expression using Janino');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (135,'SynchronizeAfterMerge','����ͬ��','This step perform insert/update/delete in one go based on the value of a field. ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (136,'BlockUntilStepsFinish','��������ֱ�����趼���','Block this step until selected steps finish.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (137,'JsonOutput','Json ���','Create Json bloc and output it in a field ou a file.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (138,'SortRows','�����¼','�����ֶ�ֵ�Ѽ�¼����(�������)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (139,'LucidDBStreamingLoader','LucidDB Streaming Loader','Load data into LucidDB by using Remote Rows UDX.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (140,'VectorWiseBulkLoader','Ingres VectorWise ��������','This step interfaces with the Ingres VectorWise Bulk Loader "COPY TABLE" command.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (141,'TableCompare','�Ƚϱ�','Compares 2 tables and gives back a list of differences');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (142,'PentahoReportingOutput','Pentaho �������','Executes an existing report (PRPT)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (143,'SSH','����SSH����','Run SSH commands and returns result.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (144,'S3CSVINPUT','S3 CSV Input','Is capable of reading CSV data stored on Amazon S3 in parallel');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (145,'TypeExitGoogleAnalyticsInputStep','Google Analytics','Fetches data from google analytics account');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (146,'Formula','��ʽ','ʹ�� Pentaho �Ĺ�ʽ�������㹫ʽ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (147,'SetVariable','���ñ���','Set environment variables based on a single input row.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (148,'EFileInput','E�ļ�����','!!');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (149,'CassandraOutput','Cassandra Output','Writes to a Cassandra table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (150,'JoinRows','��¼���� (�ѿ������)','��������������������ĵѿ����Ľ��.{0} �������ļ�¼������������¼֮��ĳ˻�.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (151,'DBJoin','���ݿ�����','ʹ�����������ֵ��Ϊ����ִ��һ�����ݿ��ѯ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (152,'ReservoirSampling','���ݲ���','[Transform] Samples a fixed number of rows from the incoming stream');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (153,'RandomCCNumberGenerator','������������ÿ���','Generate random valide (luhn check) credit card numbers');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (154,'MailInput','�ʼ���Ϣ����','Read POP3/IMAP server and retrieve messages');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (155,'GetFilesRowsCount','��ȡ�ļ�����','Returns rows count for text files.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (156,'LDIFInput','LDIF ����','Read data from LDIF files');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (157,'DBLookup','���ݿ��ѯ','ʹ���ֶ�ֵ�����ݿ����ѯֵ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (158,'SimpleMapping','Simple Mapping (sub-transformation)','Run a mapping (sub-transformation), use MappingInput and MappingOutput to specify the fields interface.  This is the simplified version only allowing one input and one output data set.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (159,'WebServiceAvailable','���web�����Ƿ����','Check if a webservice is available');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (160,'SalesforceDelete','Salesforce Delete','Delete records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (161,'WebServiceLookup','Web �����ѯ','ʹ�� Web �����ѯ��Ϣ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (162,'ClosureGenerator','Closure Generator','This step allows you to generates a closure table using parent-child relationships.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (163,'UnivariateStats','������ͳ��','This step computes some simple stats based on a single input field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (164,'VerticaBulkLoader','Vertica Bulk Loader','Bulk load data into a Vertica database table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (165,'MySQLBulkLoader','MySQL ��������','MySQL bulk loader step, loading data over a named pipe (not available on MS Windows)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (166,'RowGenerator','���ɼ�¼','����һЩ�ռ�¼����ȵ���.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (167,'GroupBy','����','�Է������ʽ�����ۺ�.{0}���������һ���Ѿ��ź����������Ч.{1}�������û������, �������������ļ�¼�б���ȷ����.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (168,'HadoopFileInputPlugin','Hadoop File Input','Process files from an HDFS location');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (169,'Constant','���ӳ���','����¼����һ���������');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (170,'StringOperations','�ַ�������','Apply certain operations like trimming, padding and others to string value.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (171,'Validator','���ݼ���','Validates passing data based on a set of rules');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (172,'CombinationLookup','���ϲ�ѯ/����','�������ݲֿ����һ��junkά {0} ��ѡ��, ���в�ѯά�����Ϣ.{1}junkά�����������е��ֶ�.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (173,'PaloCellOutput','Palo Cell Output','Writes data to a defined Palo Cube');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (174,'EFileOutput','E�ļ����','!!');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (175,'Delete','ɾ��','���ڹؼ���ɾ����¼');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (176,'DummyStep','Example Step','This is a plugin example step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (177,'NullIf','����ֵΪNULL','���һ���ֶ�ֵ����ĳ���̶�ֵ����ô������ֶ�ֵ���ó�null');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (178,'SalesforceInput','Salesforce Input','Extract data from Salesforce');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (179,'CallEndpointStep','Call endpoint','Call an endpoint of the BA Server.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (180,'StepMetastructure','����Ԫ����','This is a step to read the metadata of the incoming stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (181,'Append','׷����','Append 2 streams in an ordered way');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (182,'RowsFromResult','�ӽ����ȡ��¼','����������ͬһ�������ǰһ����Ŀ���ȡ��¼.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (183,'DBProc','����DB�洢����','ͨ���������ݿ�洢���̻�÷���ֵ.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (184,'Flattener','�б�ƽ��','Flattens consequetive rows based on the order in which they appear in the���� stream');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (185,'PropertyInput','�����ļ�����','Read data (key, value) from properties files.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (186,'FilesToResult','�����ļ������','This step allows you to set filenames in the result of this transformation.\nSubsequent job entries can then use this information.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (187,'ExecSQL','ִ��SQL�ű�','ִ��һ��SQL�ű�, ���⣬����ʹ������ļ�¼��Ϊ����');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (188,'getXMLData','XML �ļ�����','Get data from XML file by using XPath.\n This step also allows you to parse XML defined in a previous field.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (189,'DimensionLookup','ά�Ȳ�ѯ/����','��һ�����ݲֿ������һ������ά {0} ���������ά���ѯ��Ϣ.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (190,'FieldsChangeSequence','�����ֶ�ֵ���ı�����','Add sequence depending of fields value change.\nEach time value of at least one field change, PDI will reset sequence. ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (191,'FileLocked','����ļ��Ƿ��ѱ�����','Check if a file is locked by another process');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (192,'GetSubFolders','��ȡ��Ŀ¼��','Read a parent folder and return all subfolders');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (193,'SalesforceUpsert','Salesforce Upsert','Insert or update records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (194,'CsvInput','CSV�ļ�����','Simple CSV file input');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (195,'RssOutput','RSS ���','Read RSS stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (196,'LoadFileInput','�ļ����ݼ������ڴ�','Load file content in memory');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (197,'AccessOutput','Access ���','Stores records into an MS-Access database table.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (198,'AccessInput','Access ����','Read data from a Microsoft Access file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (199,'StepsMetrics','ת��������Ϣͳ��','Return metrics for one or several steps');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (200,'MappingOutput','ӳ������淶','ָ��һ��ӳ����ֶ����');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (201,'MultiwayMergeJoin','Multiway Merge Join','Multiway Merge Join');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (202,'AddXML','����XML��','Encode several fields into an XML fragment');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (203,'ParallelGzipCsvInput','GZIP CSV Input','Parallel GZIP CSV file input reader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (204,'RuleExecutor','Rules Executor','Rules Executor Step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (205,'RuleAccumulator','Rules Accumulator','Rules Accumulator Step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (206,'SalesforceInsert','Salesforce Insert','Insert records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (207,'CubeInput','Cube �ļ�����','��һ��cube��ȡ��¼.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (208,'ScriptValueMod','JavaScript����','This is a modified plugin for the Scripting Values with improved interface and performance.\nWritten & donated to open source by Martin Lange, Proconis : http://www.proconis.de');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (209,'Abort','��ֹ','Abort a transformation');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (210,'XSLT','XSL ת��','Transform XML stream using XSL (eXtensible Stylesheet Language).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (211,'TeraDataBulkLoader','Teradata TPT Bulk Loader','Teradata TPT bulkloader, using tbuild command');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (212,'ElasticSearchBulk','ElasticSearch Bulk Insert','Performs bulk inserts into ElasticSearch');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (213,'HTTPPOST','HTTP Post','Call a web service request over HTTP by supplying a base URL by allowing parameters to be set dynamically');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (214,'GetSessionVariableStep','Get session variables','Get session variables from the current user session.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (215,'HadoopEnterPlugin','MapReduce Input','Enter a Hadoop Mapper or Reducer transformation');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (216,'PaloDimOutput','Palo Dim Output','Writes data to defined Palo Dimension');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (217,'JobExecutor','ִ����ҵ','This step executes a Pentaho Data Integration job, sets parameters and passes rows.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (218,'FileExists','����ļ��Ƿ����','Check if a file exists');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (219,'BlockingStep','��������','This step blocks until all incoming rows have been processed.  Subsequent steps only recieve the last input row to this step.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (220,'ShapeFileReader','ESRI Shapefile Reader','Reads shape file data from an ESRI shape file and linked DBF file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (221,'ConcatFields','Concat Fields','Concat fields together into a new field (similar to the Text File Output step)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (222,'HadoopExitPlugin','MapReduce Output','Exit a Hadoop Mapper or Reducer transformation ');

CREATE TABLE R_STEP
(
  ID_STEP BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
, ID_STEP_TYPE INT
, DISTRIBUTE CHAR(1)
, COPIES INT
, GUI_LOCATION_X INT
, GUI_LOCATION_Y INT
, GUI_DRAW CHAR(1)
, COPIES_STRING VARCHAR(255)
)
;

CREATE TABLE R_STEP_ATTRIBUTE
(
  ID_STEP_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_STEP INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM BIGINT
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_RSAT ON R_STEP_ATTRIBUTE(ID_STEP, CODE, NR)
;

CREATE TABLE R_STEP_DATABASE
(
  ID_TRANSFORMATION INT
, ID_STEP INT
, ID_DATABASE INT
)
;

CREATE INDEX IDX_RSD1 ON R_STEP_DATABASE(ID_TRANSFORMATION)
;

CREATE INDEX IDX_RSD2 ON R_STEP_DATABASE(ID_DATABASE)
;

CREATE TABLE R_TRANS_NOTE
(
  ID_TRANSFORMATION INT
, ID_NOTE INT
)
;

CREATE TABLE R_LOGLEVEL
(
  ID_LOGLEVEL BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (1,'Error','������־');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (2,'Minimal','��С��־');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (3,'Basic','������־');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (4,'Detailed','��ϸ��־');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (5,'Debug','����');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (6,'Rowlevel','�м���־(�ǳ���ϸ)');

CREATE TABLE R_LOG
(
  ID_LOG BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, ID_LOGLEVEL INT
, LOGTYPE VARCHAR(255)
, FILENAME VARCHAR(255)
, FILEEXTENTION VARCHAR(255)
, ADD_DATE CHAR(1)
, ADD_TIME CHAR(1)
, ID_DATABASE_LOG INT
, TABLE_NAME_LOG VARCHAR(255)
)
;

CREATE TABLE R_JOB
(
  ID_JOB BIGINT NOT NULL PRIMARY KEY
, ID_DIRECTORY INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
, EXTENDED_DESCRIPTION MEDIUMTEXT
, JOB_VERSION VARCHAR(255)
, JOB_STATUS INT
, ID_DATABASE_LOG INT
, TABLE_NAME_LOG VARCHAR(255)
, CREATED_USER VARCHAR(255)
, CREATED_DATE DATETIME
, MODIFIED_USER VARCHAR(255)
, MODIFIED_DATE DATETIME
, USE_BATCH_ID CHAR(1)
, PASS_BATCH_ID CHAR(1)
, USE_LOGFIELD CHAR(1)
, SHARED_FILE VARCHAR(255)
)
;

CREATE TABLE R_JOBENTRY_DATABASE
(
  ID_JOB INT
, ID_JOBENTRY INT
, ID_DATABASE INT
)
;

CREATE INDEX IDX_RJD1 ON R_JOBENTRY_DATABASE(ID_JOB)
;

CREATE INDEX IDX_RJD2 ON R_JOBENTRY_DATABASE(ID_DATABASE)
;

CREATE TABLE R_JOBENTRY_TYPE
(
  ID_JOBENTRY_TYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (1,'DELAY','�ȴ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (2,'HTTP','HTTP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (3,'UNZIP','��ѹ���ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (4,'FILES_EXIST','������ļ��Ƿ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (5,'HL7MLLPInput','HL7 MLLP Input');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (6,'GET_POP','POP ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (7,'MAIL','�����ʼ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (8,'EMRJobExecutorPlugin','Amazon EMR Job Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (9,'HadoopCopyFilesPlugin','Hadoop Copy Files');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (10,'WRITE_TO_FILE','д���ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (11,'EVAL_FILES_METRICS','�����ļ���С�����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (12,'FILE_EXISTS','���һ���ļ��Ƿ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (13,'WAIT_FOR_SQL','�ȴ�SQL');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (14,'SFTP','SFTP ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (15,'SET_VARIABLES','���ñ���');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (16,'MS_ACCESS_BULK_LOAD','MS Access Bulk Load');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (17,'TRANS','ת��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (18,'XML_WELL_FORMED','��� XML �ļ���ʽ');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (19,'SEND_NAGIOS_PASSIVE_CHECK','����Nagios �������');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (20,'SUCCESS','�ɹ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (21,'FTP_DELETE','FTP ɾ��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (22,'SQL','SQL');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (23,'HiveJobExecutorPlugin','Amazon Hive Job Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (24,'EVAL_TABLE_CONTENT','������еļ�¼��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (25,'PALO_CUBE_CREATE','Palo Cube Create');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (26,'COPY_FILES','�����ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (27,'DELETE_FILE','ɾ��һ���ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (28,'MOVE_FILES','�ƶ��ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (29,'CONNECTED_TO_REPOSITORY','����Ƿ����ӵ���Դ��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (30,'MSGBOX_INFO','��ʾ��Ϣ�Ի���');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (31,'PALO_CUBE_DELETE','Palo Cube Delete');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (32,'FTPS_GET','FTPS ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (33,'EXPORT_REPOSITORY','������Դ�⵽XML�ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (34,'PGP_VERIFY_FILES','��PGP��֤�ļ�ǩ��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (35,'TELNET','Զ�̵�¼һ̨����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (36,'ABORT','��ֹ��ҵ');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (37,'DELETE_RESULT_FILENAMES','�ӽ���ļ���ɾ���ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (38,'CHECK_FILES_LOCKED','����ļ��Ƿ���');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (39,'DELETE_FOLDERS','ɾ��Ŀ¼');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (40,'FILE_COMPARE','�Ƚ��ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (41,'HadoopJobExecutorPlugin','Hadoop Job Executor ');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (42,'SIMPLE_EVAL','�����ֶε�ֵ');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (43,'WRITE_TO_LOG','д��־');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (44,'WAIT_FOR_FILE','�ȴ��ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (45,'TRUNCATE_TABLES','��ձ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (46,'CHECK_DB_CONNECTIONS','������ݿ�����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (47,'OozieJobExecutor','Oozie Job Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (48,'SparkSubmit','Spark Submit');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (49,'ZIP_FILE','Zip ѹ���ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (50,'COPY_MOVE_RESULT_FILENAMES','����/�ƶ�����ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (51,'FTP_PUT','FTP �ϴ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (52,'JOB','��ҵ');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (53,'WEBSERVICE_AVAILABLE','���web�����Ƿ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (54,'DummyJob','Example Job');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (55,'TALEND_JOB_EXEC','Talend ��ҵִ��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (56,'MSSQL_BULK_LOAD','SQLServer ��������');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (57,'FOLDER_IS_EMPTY','���Ŀ¼�Ƿ�Ϊ��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (58,'HadoopTransJobExecutorPlugin','Pentaho MapReduce');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (59,'HadoopPigScriptExecutorPlugin','Pig Script Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (60,'MAIL_VALIDATOR','�ʼ���֤');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (61,'HL7MLLPAcknowledge','HL7 MLLP Acknowledge');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (62,'SqoopImport','Sqoop Import');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (63,'CREATE_FOLDER','����һ��Ŀ¼');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (64,'SHELL','Shell');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (65,'DELETE_FILES','ɾ������ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (66,'ADD_RESULT_FILENAMES','����ļ�������ļ���');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (67,'XSD_VALIDATOR','XSD ��֤��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (68,'PING','Ping һ̨����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (69,'FTP','FTP ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (70,'MYSQL_BULK_FILE','�� Mysql �����������ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (71,'XSLT','XSL ת��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (72,'SPECIAL','������ҵ��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (73,'EVAL','ʹ�� JavaScript �ű���֤');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (74,'COLUMNS_EXIST','������Ƿ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (75,'DOS_UNIX_CONVERTER','DOS��UNIX֮����ı�ת��');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (76,'CREATE_FILE','�����ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (77,'SqoopExport','Sqoop Export');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (78,'PGP_DECRYPT_FILES','��PGP�����ļ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (79,'SYSLOG','�� Syslog ������Ϣ');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (80,'FOLDERS_COMPARE','�Ƚ�Ŀ¼');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (81,'FTPS_PUT','FTPS �ϴ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (82,'SFTPPUT','SFTP �ϴ�');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (83,'DTD_VALIDATOR','DTD ��֤');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (84,'SNMP_TRAP','���� SNMP ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (85,'TABLE_EXISTS','�����Ƿ����');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (86,'MYSQL_BULK_LOAD','Mysql ��������');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (87,'PGP_ENCRYPT_FILES','��PGP�����ļ�');

CREATE TABLE R_JOBENTRY
(
  ID_JOBENTRY BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_JOBENTRY_TYPE INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
)
;

CREATE TABLE R_JOBENTRY_COPY
(
  ID_JOBENTRY_COPY BIGINT NOT NULL PRIMARY KEY
, ID_JOBENTRY INT
, ID_JOB INT
, ID_JOBENTRY_TYPE INT
, NR INT
, GUI_LOCATION_X INT
, GUI_LOCATION_Y INT
, GUI_DRAW CHAR(1)
, PARALLEL CHAR(1)
)
;

CREATE TABLE R_JOBENTRY_ATTRIBUTE
(
  ID_JOBENTRY_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_JOBENTRY INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM DOUBLE
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_RJEA ON R_JOBENTRY_ATTRIBUTE(ID_JOBENTRY_ATTRIBUTE, CODE, NR)
;

CREATE TABLE R_JOB_HOP
(
  ID_JOB_HOP BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_JOBENTRY_COPY_FROM INT
, ID_JOBENTRY_COPY_TO INT
, ENABLED CHAR(1)
, EVALUATION CHAR(1)
, UNCONDITIONAL CHAR(1)
)
;

CREATE TABLE R_JOB_NOTE
(
  ID_JOB INT
, ID_NOTE INT
)
;

CREATE TABLE R_TRANS_LOCK
(
  ID_TRANS_LOCK BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_USER INT
, LOCK_MESSAGE MEDIUMTEXT
, LOCK_DATE DATETIME
)
;

CREATE TABLE R_JOB_LOCK
(
  ID_JOB_LOCK BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_USER INT
, LOCK_MESSAGE MEDIUMTEXT
, LOCK_DATE DATETIME
)
;

CREATE TABLE R_NAMESPACE
(
  ID_NAMESPACE BIGINT NOT NULL PRIMARY KEY
, NAME MEDIUMTEXT
)
;

CREATE TABLE R_ELEMENT_TYPE
(
  ID_ELEMENT_TYPE BIGINT NOT NULL PRIMARY KEY
, ID_NAMESPACE INT
, NAME MEDIUMTEXT
, DESCRIPTION MEDIUMTEXT
)
;

CREATE TABLE R_ELEMENT
(
  ID_ELEMENT BIGINT NOT NULL PRIMARY KEY
, ID_ELEMENT_TYPE INT
, NAME MEDIUMTEXT
)
;

CREATE TABLE R_ELEMENT_ATTRIBUTE
(
  ID_ELEMENT_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_ELEMENT INT
, ID_ELEMENT_ATTRIBUTE_PARENT INT
, ATTR_KEY VARCHAR(255)
, ATTR_VALUE MEDIUMTEXT
)
;

CREATE TABLE R_USER
(
  ID_USER BIGINT NOT NULL PRIMARY KEY
, LOGIN VARCHAR(255)
, PASSWORD VARCHAR(255)
, NAME VARCHAR(255)
, DESCRIPTION VARCHAR(255)
, ENABLED CHAR(1)
)
;

INSERT INTO R_USER(ID_USER, LOGIN, PASSWORD, NAME, DESCRIPTION, ENABLED) VALUES (1,'admin','2be98afc86aa7f2e4cb79ce71da9fa6d4','Administrator','User manager','Y');

INSERT INTO R_USER(ID_USER, LOGIN, PASSWORD, NAME, DESCRIPTION, ENABLED) VALUES (2,'guest','2be98afc86aa7f2e4cb79ce77cb97bcce','Guest account','Read-only guest account','Y');

