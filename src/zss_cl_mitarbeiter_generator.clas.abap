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

    "Delete Mitarbeiter
    DELETE FROM Zss_mitarbeiter.
    out->write( |Deleted Mitarbeiter: { sy-dbcnt }| ).

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

  ENDMETHOD.
ENDCLASS.
