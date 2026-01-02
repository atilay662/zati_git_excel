@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'user devlopment details'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_ATI_USER_DEV
  as select from zati_user_dev
  association         to parent ZI_ATI_USER  as _User          on  $projection.EmpId = _User.EmpId
                                                                and $projection.DevId = _User.DevId
{
  key emp_id      as EmpId,
  key dev_id      as DevId,
  key serial_no   as SerialNo,
      object_type as ObjectType,
      object_name as ObjectName,
      _User

}
