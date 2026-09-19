@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumbtion view Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZMK_C_ITEM_01
  as projection on ZMK_R_ITEM_01
{
  key HeadId,
  key ItemId,
      Material,
      Matdes,
      Qty,
      Batch,
      /* Associations */
      _head : redirected to parent ZMK_c_HEAD_01
}
