@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel'
define root view entity Zss_R_Antrag
  as select from zss_urlaubsantr
  
{

  key id_uuid       as IDUUID,
  antragsteller_uuid as AntragstellerUuid,
  genehmigender_uuid as GenehmigenderUuid,
  startdatum         as Startdatum,
  enddatum           as Enddatum,
  urlaubstage        as Urlaubstage,
  kommentar          as Kommentar,
  status  as Status,
      

      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt
      
    
}
