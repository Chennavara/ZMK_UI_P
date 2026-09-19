@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view head'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZMK_I_HEAD_01
  as select from zmk_head_01
{
  key head_id               as HeadId,
      name                  as Name,
      description           as Description,
      price                 as Price,
      status_code           as StatusCode,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt
}
