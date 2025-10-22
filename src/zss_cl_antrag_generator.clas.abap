CLASS zss_cl_antrag_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS zss_cl_antrag_generator IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA ls_urlaubsantrag TYPE zss_urlaubsantr.
    DATA lt_urlaubsantrag TYPE TABLE OF zss_urlaubsantr.

    " Delete Urlaubsanträge
    DELETE FROM zss_urlaubsantr.
    out->write( |Deleted Urlaubsanträge: { sy-dbcnt }| ).

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
