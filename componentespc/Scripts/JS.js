////Validadores en sweetalert2.js

//primer ejemplo de confirmacion de boton aceptar y cancelar
//function Confirmacion2(mensaje) {

//    var salida;
//    salida = confirm(mensaje);
//    ASPxGridView1.UpdateEdit();

//    return salida;

//}

function Confirmacion(mensaje) {

    Swal.fire({
        text: mensaje,
        icon: 'question',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        allowOutsideClick: false,
        confirmButtonText: 'Aceptar'
    }).then((result) => {
        if (result.isConfirmed) {
            ASPxGridView1.UpdateEdit();

        } else {
            ASPxGridView1.CancelEdit();
        }
    })

}

function toolbarclickdelete(s, e) {

    if (e.item.name == 'Delete') {
        function dato(values) {

            if (values != null) {

                Swal.fire({
                    title: '¿Desea eliminar?',
                    text: "no podra revertir esto!",
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    allowOutsideClick: false,
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        s.DeleteRow(s.GetFocusedRowIndex());
                    }
                })

            } else {
                Swal.fire(
                    'no existe contenido en la grilla',
                    'agrege contenido!',
                    'info'
                )
            }
        }

        s.GetRowValues(s.GetFocusedRowIndex(), "Idcomponente", dato);
    }
}
//function toolbarclickinsert(s, e) {

//    if (e.item.name == 'Insert') {
//        function dato(values) {

//            if (values === null || values != null) {

//                Swal.fire({
//                    title: 'desea ingresar nuevo componente?',
//                    icon: 'question',
//                    showCancelButton: true,
//                    confirmButtonColor: '#3085d6',
//                    cancelButtonColor: '#d33',
//                    confirmButtonText: 'Si! , Agregar'
//                }).then((result) => {
//                    if (result.isConfirmed) {
//                        s.AddNewRow(s.GetFocusedRowIndex());
//                    }
//                })
//            }
//        }

//        s.GetRowValues(s.GetFocusedRowIndex(), "Idcomponente", dato);
//    }


//}

//function toolbarclickupdate(s, e) {

//    function dato(values) {


//        if (values != null) {

//            Swal.fire({
//                title: 'desea editar el componente?',
//                icon: 'question',
//                showCancelButton: true,
//                confirmButtonColor: '#3085d6',
//                cancelButtonColor: '#d33',
//                confirmButtonText: 'Si! , Agregar'
//            }).then((result) => {
//                if (result.isConfirmed) {
//                    s.StartEditRow(e.visibleIndex)
//                }
//            })

//        }
//    }
//    s.GetRowValues(s.GetFocusedRowIndex(), "Idcomponente", dato);
//}


/*final de la llamada del gridview. ClientSideEvents en alert toastr.js*/

function Endcallback(s, ) {


    if (s.cpMensaje != undefined && s.cpMensaje != null && s.cpCodigo === -1 && s.cpCodigo != null) {

        Command: toastr["error"](s.cpMensaje)

        toastr.options = {
          "closeButton": true,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-bottom-right",
            "preventDuplicates": false,
            "onclick": null,
            "timeOut": "10000"
        }

    } if (s.cpMensaje != undefined && s.cpMensaje != null && s.cpCodigo === 0 && s.cpCodigo != null) {
        Command: toastr["info"](s.cpMensaje)
        }
    } if (s.cpMensaje != undefined && s.cpMensaje != null && s.cpCodigo >= 1 && s.cpCodigo != null) {

        Command: toastr["success"](s.cpMensaje)


    }

delete s.cpMensaje;
delete s.cpMensaje;
}

function calcularTotal() {
    totalEdit.SetValue(cantidadEdit.GetValue() * precioEdit.GetValue());
}

