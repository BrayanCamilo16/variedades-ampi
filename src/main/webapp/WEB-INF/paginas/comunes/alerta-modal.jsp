<%
    if (request.getAttribute("tituloError") != null || request.getAttribute("tituloExito") != null) {
%>
<div class="modal fade" id="alertaMensaje">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title fw-bold lead">${tituloExito} ${tituloError}</h5>
                    <button type="button" class="text-white bg-transparent border-0" id="closeModal" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>
            </div>
            <div class="modal-body">
                <p>${mensajeDescriptivo}</p>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="close" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<script>
    window.$('#alertaMensaje').modal('show');
    $(document).on('click', '#close', function () {
        $('#alertaMensaje').modal('hide');
        $('#alertaMensaje').css('display', 'none');
        $('.modal-backdrop').css('display', 'none');
    });
    $(document).on('click', '#closeModal', function () {
        $('#alertaMensaje').modal('hide');
        $('#alertaMensaje').css('display', 'none');
        $('.modal-backdrop').css('display', 'none');
    });
</script>
<%
    }
%>