@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMK_I_ITEM_01
  as select from zmk_item_01
{
  key head_id  as HeadId,
  key item_id  as ItemId,
      material as Material,
      matdes   as Matdes,
      qty      as Qty,
      batch    as Batch
}
