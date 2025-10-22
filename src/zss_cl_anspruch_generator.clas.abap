CLASS zss_cl_anspruch_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zss_cl_anspruch_generator IMPLEMENTATION.
Method if_oo_adt_classrun~main.
DATA ls_anspruch TYPE zss_urlaubsanspr.
DATA lt_anspruch TYPE TABLE OF zss_urlaubsanspr.

"Delete Urlaubsanspruch

DELETE FROM zss_urlaubsanspr.
 out->write( |Deleted Urlaubsansprüche: { sy-dbcnt }| ).


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
  ENDMETHOD.


ENDCLASS.
