@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'user projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_ATI_USER
provider contract transactional_query
  as projection on ZI_ATI_USER
{
  key EmpId,
  key DevId,
      DevDescription,
      @Semantics.largeObject : {
      mimeType: 'Mimetype',
      fileName: 'Filename',
      acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
      contentDispositionPreference: #ATTACHMENT
      }
      Attachment,
      @Semantics.mimeType: true
      Mimetype,
      Filename,
      FileStatus,
      Criticality,
      TemplateStatus,
      TemplateCrticality,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _UserDev       : redirected to composition child ZC_ati_USER_DEV
}
