CLASS zss_cm_antrag DEFINITION PUBLIC
  INHERITING FROM cx_static_check FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    " Interfaces
    INTERFACES if_abap_behv_message.
    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    " Message Constants
    CONSTANTS:
      BEGIN OF Fehlermeldung001,
        msgid TYPE symsgid      VALUE 'ZSS_Antrag',
        msgno TYPE symsgno      VALUE '001',
        attr1 TYPE scx_attrname VALUE 'Urlaubstage',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF Fehlermeldung001.

    " Attributs
    DATA urlaubstage TYPE i.

    " Constructor
    METHODS constructor
      IMPORTING
        severity  TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-error
        textid    LIKE if_t100_message=>t100key         DEFAULT if_t100_message=>default_textid
        !previous LIKE previous                         OPTIONAL
        Urlaubstage TYPE    i                   OPTIONAL.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.

CLASS zss_cm_antrag IMPLEMENTATION.
  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor( previous = previous ).

    if_t100_message~t100key = textid.
    if_abap_behv_message~m_severity = severity.
    me->urlaubstage = Urlaubstage.
  ENDMETHOD.
ENDCLASS.
