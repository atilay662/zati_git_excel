@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'user development details'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_ATI_USER_DEV
  as projection on ZI_ATI_USER_DEV
{
      @EndUserText.label: 'User Id'
  key EmpId,
      @EndUserText.label: 'Devlopment Id'
  key DevId,
  key SerialNo,
      ObjectType,
      ObjectName,
      _User : redirected to parent ZC_ati_USER
     
}
