@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumbtion view header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZMK_c_HEAD_01
  provider contract transactional_query
  as projection on ZMK_R_HEAD_01
{
  key HeadId,
      Name,
      Description,
      Price,
      StatusCode,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _item : redirected to composition child ZMK_C_ITEM_01
}
