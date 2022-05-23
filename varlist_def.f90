interface
    function varlist_create_c(str) bind(C, name="varlist_create")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr) :: varlist_create_c
        character(len=1, kind=C_CHAR), intent(in) :: str(*)
    end function varlist_create_c

    subroutine varlist_delete_c(varlist) bind(C, name="varlist_delete")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), value :: varlist
    end subroutine varlist_delete_c

    ! TODO: use generic variable_type
    ! TODO: this should be a subroutine, right?
    subroutine varlist_append_c(varlist, name, val) bind(C, name="varlist_append")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), value :: varlist
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
        real(c_double) :: val(:)
    end subroutine varlist_append_c

    subroutine varlist_append_2D_c(varlist, name, val) bind(C, name="varlist_append")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), value :: varlist
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
        real(c_double) :: val(:,:)
    end subroutine varlist_append_2D_c

    subroutine varlist_append_3D_c(varlist, name, val) bind(C, name="varlist_append")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), value :: varlist
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
        real(c_double) :: val(:,:,:)
    end subroutine varlist_append_3D_c

    subroutine varlist_append_4D_c(varlist, name, val) bind(C, name="varlist_append")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), value :: varlist
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
        real(c_double) :: val(:,:,:,:)
    end subroutine varlist_append_4D_c

    subroutine varlist_append_scalar_c(varlist, name, val) bind(C, name="varlist_append")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), value :: varlist
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
        real(c_double) :: val
    end subroutine varlist_append_scalar_c

    subroutine varlist_search_c(varlist, name, variable) bind(C, name="varlist_search")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), intent(in), value :: varlist
        real(c_double) :: variable(:)
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
    end subroutine varlist_search_c

    subroutine varlist_search_2D_c(varlist, name, variable) bind(C, name="varlist_search")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), intent(in), value :: varlist
        real(c_double) :: variable(:,:)
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
    end subroutine varlist_search_2D_c

    subroutine varlist_search_3D_c(varlist, name, variable) bind(C, name="varlist_search")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), intent(in), value :: varlist
        real(c_double) :: variable(:,:,:)
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
    end subroutine varlist_search_3D_c

    subroutine varlist_search_4D_c(varlist, name, variable) bind(C, name="varlist_search")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), intent(in), value :: varlist
        real(c_double) :: variable(:,:,:,:)
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
    end subroutine varlist_search_4D_c

    subroutine varlist_search_scalar_c(varlist, name, variable) bind(C, name="varlist_search")
        use, intrinsic :: iso_c_binding
        implicit none
        type(c_ptr), intent(in), value :: varlist
        real(c_double) :: variable
        character(len=1, kind=C_CHAR), intent(in) :: name(*)
    end subroutine varlist_search_scalar_c

    function varlist_getId_c(varlist) bind(C, name="varlist_getId")
        use, intrinsic :: iso_c_binding
        implicit none
        integer(c_int) :: varlist_getId_c
        type(c_ptr), intent(in), value :: varlist
    end function varlist_getId_c

    subroutine varlist_getName_c(varlist, varlist_name, varlist_name_length) bind(C, name="varlist_getName") ! TODO: I'm not sure of signature and implementation
        use, intrinsic :: iso_c_binding
        implicit none
        character(len=1, kind=C_CHAR) :: varlist_name
        integer(c_int) :: varlist_name_length
        type(c_ptr), intent(in), value :: varlist
    end subroutine varlist_getName_c

    function varlist_getListLength_c(varlist) bind(C, name="varlist_getListLength")
        use, intrinsic :: iso_c_binding
        implicit none
        integer(c_int) :: varlist_getListLength_c
        type(c_ptr), intent(in), value :: varlist
    end function varlist_getListLength_c

 end interface
