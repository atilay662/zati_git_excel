CLASS zbp_i_ati_user DEFINITION PUBLIC ABSTRACT FINAL FOR BEHAVIOR OF zi_ati_user.
  PUBLIC SECTION.
    TYPES: BEGIN OF ty_exl_file,
             emp_id    TYPE string,
             dev_id    TYPE string,
             dev_desc  TYPE string,
             obj_type  TYPE string,
             obj_name  TYPE string,
             serial_no TYPE string,
           END OF ty_exl_file.

ENDCLASS.



CLASS ZBP_I_ATI_USER IMPLEMENTATION.
ENDCLASS.
