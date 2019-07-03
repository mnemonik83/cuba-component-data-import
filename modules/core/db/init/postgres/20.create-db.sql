-- begin DDCDI_IMPORT_CONFIGURATION
alter table DDCDI_IMPORT_CONFIGURATION add constraint FK_DDCDI_IMPORT_CONFIGURATION_TEMPLATE foreign key (TEMPLATE_ID) references SYS_FILE(ID)^
create index IDX_DDCDI_IMPORT_CONFIGURATION_TEMPLATE on DDCDI_IMPORT_CONFIGURATION (TEMPLATE_ID)^
-- end DDCDI_IMPORT_CONFIGURATION
-- begin DDCDI_IMPORT_ATTRIBUTE_MAPPER
alter table DDCDI_IMPORT_ATTRIBUTE_MAPPER add constraint FK_DDCDI_IMPORT_ATTRIBUTE_MAPPER_ON_CONFIGURATION foreign key (CONFIGURATION_ID) references DDCDI_IMPORT_CONFIGURATION(ID)^
create index IDX_DDCDI_IMPORT_ATTRIBUTE_MAPPER_ON_CONFIGURATION on DDCDI_IMPORT_ATTRIBUTE_MAPPER (CONFIGURATION_ID)^
-- end DDCDI_IMPORT_ATTRIBUTE_MAPPER
-- begin DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE
alter table DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE add constraint FK_DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE_UNIQUE_CONFIGURATION foreign key (UNIQUE_CONFIGURATION_ID) references DDCDI_UNIQUE_CONFIGURATION(ID)^
create index IDX_DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE_UNIQUE_CONFIGURATION on DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE (UNIQUE_CONFIGURATION_ID)^
-- end DDCDI_UNIQUE_CONFIGURATION_ATTRIBUTE
-- begin DDCDI_UNIQUE_CONFIGURATION
alter table DDCDI_UNIQUE_CONFIGURATION add constraint FK_DDCDI_UNIQUE_CONFIGURATION_IMPORT_CONFIGURATION foreign key (IMPORT_CONFIGURATION_ID) references DDCDI_IMPORT_CONFIGURATION(ID)^
create index IDX_DDCDI_UNIQUE_CONFIGURATION_IMPORT_CONFIGURATION on DDCDI_UNIQUE_CONFIGURATION (IMPORT_CONFIGURATION_ID)^
-- end DDCDI_UNIQUE_CONFIGURATION
-- begin DDCDI_IMPORT_EXEC_DETAIL
alter table DDCDI_IMPORT_EXEC_DETAIL add constraint FK_DDCDI_IMPORT_EXEC_DETAIL_IMPORT_EXEC foreign key (IMPORT_EXEC_ID) references DDCDI_IMPORT_EXEC(ID)^
create index IDX_DDCDI_IMPORT_EXEC_DETAIL_IMPORT_EXEC on DDCDI_IMPORT_EXEC_DETAIL (IMPORT_EXEC_ID)^
-- end DDCDI_IMPORT_EXEC_DETAIL
-- begin DDCDI_IMPORT_EXEC
alter table DDCDI_IMPORT_EXEC add constraint FK_DDCDI_IMPORT_EXEC_FILE foreign key (FILE_ID) references SYS_FILE(ID)^
alter table DDCDI_IMPORT_EXEC add constraint FK_DDCDI_IMPORT_EXEC_CONFIGURATION foreign key (CONFIGURATION_ID) references DDCDI_IMPORT_CONFIGURATION(ID)^
create index IDX_DDCDI_IMPORT_EXEC_FILE on DDCDI_IMPORT_EXEC (FILE_ID)^
create index IDX_DDCDI_IMPORT_EXEC_CONFIGURATION on DDCDI_IMPORT_EXEC (CONFIGURATION_ID)^
-- end DDCDI_IMPORT_EXEC
