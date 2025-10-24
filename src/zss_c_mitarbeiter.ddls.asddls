
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Mitarbeiter'

define root view entity Zss_C_Mitarbeiter as projection on Zss_R_Mitarbeiter
{
    key IDUUID,
  Mitarbeiternummer,
  Vorname,
  Nachname,
  Eintrittsdatum,
  
      

      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
