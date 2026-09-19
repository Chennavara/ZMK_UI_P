@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'R view item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMK_R_ITEM_01
  as select from ZMK_I_ITEM_01
  association to parent ZMK_R_HEAD_01 as _head on $projection.HeadId = _head.HeadId
{
  key HeadId,
  key ItemId,
      Material,
      Matdes,
      Qty,
      Batch,
      _head
}
