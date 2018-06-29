rem Script to ordsenable the user
rem log on as schmea owner, ie. ordslab
DECLARE
  PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN

    ORDS.ENABLE_SCHEMA(p_enabled => TRUE,
                       p_schema => 'ORDSLAB',
                       p_url_mapping_type => 'BASE_PATH',
                       p_url_mapping_pattern => 'ordslab',
                       p_auto_rest_auth => FALSE);

    commit;

END


DECLARE
  PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    ORDS.ENABLE_OBJECT(p_enabled => TRUE,
                       p_schema => 'ORDSLAB',
                       p_object => 'EMP',
                       p_object_type => 'TABLE',
                       p_object_alias => 'emp',
                       p_auto_rest_auth => FALSE);
    commit;
END;
/
DECLARE
  PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    ORDS.ENABLE_OBJECT(p_enabled => TRUE,
                       p_schema => 'ORDSLAB',
                       p_object => 'DEPT',
                       p_object_type => 'TABLE',
                       p_object_alias => 'dept',
                       p_auto_rest_auth => FALSE);
    commit;
END;
/
DECLARE
  PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    ORDS.ENABLE_OBJECT(p_enabled => TRUE,
                       p_schema => 'ORDSLAB',
                       p_object => 'V_EMPLOYEES',
                       p_object_type => 'VIEW',
                       p_object_alias => 'employees',
                       p_auto_rest_auth => FALSE);
    commit;
END;
/
