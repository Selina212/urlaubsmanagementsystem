@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Mitarbeiter'

define root view entity Zss_C_Anspruch as projection on Zss_R_Anspruch
{
    key IDUUID,
 MitarbeiterUuid,
  Jahr,
  Urlaubstage,
      
      

      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
