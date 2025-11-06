
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Mitarbeiter'

define root view entity Zss_R_Mitarbeiter
  as select from zss_mitarbeiter
  composition [0..*] of Zss_R_Anspruch as _Anspruch
  composition [0..*] of Zss_R_Antrag as _Antrag
  association [1..1] to ZSS_I_GENEHMIGENDERText as _GENEHMIGENDERText on $projection.IDUUID = _GENEHMIGENDERText.IDUUID
{
@ObjectModel.text.element: ['GenehmigenderName']
  key id_uuid       as IDUUID,
  mitarbeiternummer as Mitarbeiternummer,
  vorname           as Vorname,
  nachname         as Nachname,
  eintrittsdatum    as Eintrittsdatum,
  
      

      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
      _GENEHMIGENDERText.Nachname as GenehmigenderName,
      
     // _ANTRAG.Startdatum as startdatum,
      
    //  case when dats_days_between($session.user_date,_Antrag.Startdatum  ) >= 14 then 3
     //      when dats_days_between($session.user_date, begin_date) >= 7 then 2
     //      when dats_days_between($session.user_date, begin_date) >= 0 then 1
     //      else 0
    //  end                as BeginDateCriticality,
      
      
      _Anspruch, 
      _Antrag
    
}
