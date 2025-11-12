CLASS lhc_Zss_R_Mitarbeiter DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Zss_R_Mitarbeiter RESULT result.

METHODS UeberschritteneUrlaubstage FOR MODIFY
      IMPORTING keys FOR ACTION ZSS_R_Mitarbeiter~UeberschritteneUrlaubstage.

ENDCLASS.

CLASS lhc_Zss_R_Mitarbeiter IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD UeberschritteneUrlaubstage.
    DATA message TYPE REF TO ZSS_cm_Mitarbeiter.

    message = NEW ZSS_cm_Mitarbeiter( severity  = if_abap_behv_message=>severity-success
                              textid    = ZSS_cm_Mitarbeiter=>Fehlermeldung001
                              user_name = sy-uname ).

    APPEND message TO reported-%other.
  ENDMETHOD.


ENDCLASS.
