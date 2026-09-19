@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'R view head'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZMK_R_HEAD_01
  as select from ZMK_I_HEAD_01
  composition[0..*] of ZMK_R_ITEM_01 as _ITEM
{
  key HeadId,
      Name,
      Description,
      Price,
      StatusCode,
      @Semantics.user.createdBy: true
      LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,
      @Semantics.user.createdBy: true
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
     _ITEM
}
