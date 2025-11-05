@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Mitarbeiter'
@Metadata.allowExtensions: true

define view entity Zss_C_Antrag as projection on Zss_R_Antrag
{
    key IDUUID,
 AntragstellerUuid,
 GenehmigenderUuid,
  Startdatum,
  Enddatum,
  Urlaubstage,
  Kommentar,
  Status,
      
      

      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      _Mitarbeiter : redirected to parent Zss_C_Mitarbeiter
}
