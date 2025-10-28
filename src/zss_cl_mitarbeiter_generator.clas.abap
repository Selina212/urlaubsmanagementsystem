CLASS zss_cl_mitarbeiter_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zss_cl_mitarbeiter_generator IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
   DATA ls_mitarbeiter TYPE zss_mitarbeiter.
   DATA lt_mitarbeiter TYPE TABLE OF zss_mitarbeiter.
   DATA ls_anspruch TYPE zss_urlaubsanspr.
DATA lt_anspruch TYPE TABLE OF zss_urlaubsanspr.
 DATA ls_urlaubsantrag TYPE zss_urlaubsantr.
    DATA lt_urlaubsantrag TYPE TABLE OF zss_urlaubsantr.


    "Delete Mitarbeiter
    DELETE FROM Zss_mitarbeiter.
    out->write( |Deleted Mitarbeiter: { sy-dbcnt }| ).

    DELETE FROM zss_urlaubsanspr.
 out->write( |Deleted Urlaubsansprüche: { sy-dbcnt }| ).
  " Delete Urlaubsanträge
    DELETE FROM zss_urlaubsantr.
    out->write( |Deleted Urlaubsanträge: { sy-dbcnt }| ).

    "Create Mitarbeiter
    ls_mitarbeiter-mandant = sy-mandt.
    ls_mitarbeiter-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_mitarbeiter-mitarbeiternummer = 1.
    ls_mitarbeiter-vorname        = 'Hans'.
    ls_mitarbeiter-nachname          = 'Maier'.
    ls_mitarbeiter-eintrittsdatum  ='20000501'.
    ls_mitarbeiter-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_mitarbeiter-created_at.
    ls_mitarbeiter-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_mitarbeiter-last_changed_at.
    APPEND ls_mitarbeiter TO lt_mitarbeiter.

    ls_mitarbeiter-mandant = sy-mandt.
    ls_mitarbeiter-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_mitarbeiter-mitarbeiternummer = 2.
    ls_mitarbeiter-vorname        = 'Lisa'.
    ls_mitarbeiter-nachname          = 'Müller'.
    ls_mitarbeiter-eintrittsdatum  ='20100701'.
    ls_mitarbeiter-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_mitarbeiter-created_at.
    ls_mitarbeiter-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_mitarbeiter-last_changed_at.
    APPEND ls_mitarbeiter TO lt_mitarbeiter.

    ls_mitarbeiter-mandant = sy-mandt.
    ls_mitarbeiter-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
 ls_mitarbeiter-mitarbeiternummer = 3.
  ls_mitarbeiter-vorname        = 'Petra'.
  ls_mitarbeiter-nachname          = 'Schmid'.
  ls_mitarbeiter-eintrittsdatum  ='20231001'.
  ls_mitarbeiter-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_mitarbeiter-created_at.
    ls_mitarbeiter-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_mitarbeiter-last_changed_at.
    APPEND ls_mitarbeiter to lt_mitarbeiter.

    "Insert Mitarbeiter
    INSERT zss_mitarbeiter from table @lt_mitarbeiter.
    out->write( |Inserted Mitarbeiter: { sy-dbcnt }| ).

     "Create Urlaubsansprüche
 ls_anspruch-mandant = sy-mandt.
    ls_anspruch-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_anspruch-mitarbeiter_uuid ='Hans Maier'.
    ls_anspruch-jahr = 2022.
    ls_anspruch-urlaubstage = 30.
    ls_anspruch-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-created_at.
    ls_anspruch-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-last_changed_at.
    APPEND ls_anspruch to lt_anspruch.

     ls_anspruch-mandant = sy-mandt.
    ls_anspruch-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_anspruch-mitarbeiter_uuid ='Hans Maier'.
    ls_anspruch-jahr = 2023.
    ls_anspruch-urlaubstage = 30.
    ls_anspruch-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-created_at.
    ls_anspruch-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-last_changed_at.
    APPEND ls_anspruch to lt_anspruch.

     ls_anspruch-mandant = sy-mandt.
    ls_anspruch-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_anspruch-mitarbeiter_uuid ='Lisa Müller'.
    ls_anspruch-jahr = 2023.
    ls_anspruch-urlaubstage = 30.
    ls_anspruch-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-created_at.
    ls_anspruch-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-last_changed_at.
    APPEND ls_anspruch to lt_anspruch.

     ls_anspruch-mandant = sy-mandt.
    ls_anspruch-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_anspruch-mitarbeiter_uuid ='Petra Schmid'.
    ls_anspruch-jahr = 2023.
    ls_anspruch-urlaubstage = 7.
    ls_anspruch-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-created_at.
    ls_anspruch-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_anspruch-last_changed_at.
    APPEND ls_anspruch to lt_anspruch.

     "Insert Urlaubsansprüche

    insert zss_urlaubsanspr from TABLE @lt_anspruch.
    out->write( |Inserted Urlaubsansprüche: { sy-dbcnt }| ).

     " Create Urlaubsanträge
    ls_urlaubsantrag-mandant = sy-mandt.
    ls_urlaubsantrag-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_urlaubsantrag-antragsteller_uuid = 'Hans Maier'.
    ls_urlaubsantrag-genehmigender_uuid = 'Lisa Müller'.
    ls_urlaubsantrag-startdatum         = '20220701'.
    ls_urlaubsantrag-enddatum           ='20220710'.
    ls_urlaubsantrag-urlaubstage        = 8.
    ls_urlaubsantrag-kommentar          = 'Sommerurlaub'.
    ls_urlaubsantrag-status = 'G'.
    ls_urlaubsantrag-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-created_at.
    ls_urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-last_changed_at.
    APPEND ls_urlaubsantrag to lt_urlaubsantrag.

    ls_urlaubsantrag-mandant = sy-mandt.
    ls_urlaubsantrag-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_urlaubsantrag-antragsteller_uuid = 'Hans Maier'.
    ls_urlaubsantrag-genehmigender_uuid = 'Lisa Müller'.
    ls_urlaubsantrag-startdatum         = '20221227'.
    ls_urlaubsantrag-enddatum           ='20221230'.
    ls_urlaubsantrag-urlaubstage        = 4.
    ls_urlaubsantrag-kommentar          = 'Weihnachtsurlaub'.
    ls_urlaubsantrag-status = 'A'.
    ls_urlaubsantrag-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-created_at.
    ls_urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-last_changed_at.
    APPEND ls_urlaubsantrag to lt_urlaubsantrag.

    ls_urlaubsantrag-mandant = sy-mandt.
    ls_urlaubsantrag-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_urlaubsantrag-antragsteller_uuid = 'Hans Maier'.
    ls_urlaubsantrag-genehmigender_uuid = 'Lisa Müller'.
    ls_urlaubsantrag-startdatum         = '20221228'.
    ls_urlaubsantrag-enddatum           ='20221230'.
    ls_urlaubsantrag-urlaubstage        = 3.
    ls_urlaubsantrag-kommentar          = 'Weihnachtsurlaub (2. Versuch)'.
    ls_urlaubsantrag-status = 'G'.
    ls_urlaubsantrag-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-created_at.
    ls_urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-last_changed_at.
    APPEND ls_urlaubsantrag to lt_urlaubsantrag.

    ls_urlaubsantrag-mandant = sy-mandt.
    ls_urlaubsantrag-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_urlaubsantrag-antragsteller_uuid = 'Hans Maier'.
    ls_urlaubsantrag-genehmigender_uuid = 'Lisa Müller'.
    ls_urlaubsantrag-startdatum         = '20230527'.
    ls_urlaubsantrag-enddatum           ='20230614'.
    ls_urlaubsantrag-urlaubstage        = 14.
    ls_urlaubsantrag-kommentar          = ''.
    ls_urlaubsantrag-status = 'G'.
    ls_urlaubsantrag-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-created_at.
    ls_urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-last_changed_at.
    APPEND ls_urlaubsantrag to lt_urlaubsantrag.

    ls_urlaubsantrag-mandant = sy-mandt.
    ls_urlaubsantrag-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_urlaubsantrag-antragsteller_uuid = 'Hans Maier'.
    ls_urlaubsantrag-genehmigender_uuid = 'Lisa Müller'.
    ls_urlaubsantrag-startdatum         = '20231220'.
    ls_urlaubsantrag-enddatum           ='20231231'.
    ls_urlaubsantrag-urlaubstage        = 8.
    ls_urlaubsantrag-kommentar          = 'Winterurlaub'.
    ls_urlaubsantrag-status = 'B'.
    ls_urlaubsantrag-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-created_at.
    ls_urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-last_changed_at.
    APPEND ls_urlaubsantrag to lt_urlaubsantrag.

    ls_urlaubsantrag-mandant = sy-mandt.
    ls_urlaubsantrag-id_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    ls_urlaubsantrag-antragsteller_uuid = 'Petra Schmid'.
    ls_urlaubsantrag-genehmigender_uuid = 'Hans Maier'.
    ls_urlaubsantrag-startdatum         = '20231227'.
    ls_urlaubsantrag-enddatum           ='20231231'.
    ls_urlaubsantrag-urlaubstage        = 3.
    ls_urlaubsantrag-kommentar          = 'Weihnachtsurlaub'.
    ls_urlaubsantrag-status = 'B'.
    ls_urlaubsantrag-created_by     = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-created_at.
    ls_urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD ls_urlaubsantrag-last_changed_at.
    APPEND ls_urlaubsantrag to lt_urlaubsantrag.

    " Insert Travels
    INSERT zss_urlaubsantr from Table @lt_urlaubsantrag.
    out->write( |Inserted Urlaubsanträge: { sy-dbcnt }| ).

  ENDMETHOD.
ENDCLASS.
