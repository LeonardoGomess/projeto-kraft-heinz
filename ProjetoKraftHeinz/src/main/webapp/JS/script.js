const exampleModal = document.getElementById('exampleModal')
if (exampleModal) {
  exampleModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    const recipient = button.getAttribute('data-bs-whatever')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle = exampleModal.querySelector('.modal-title')
    const modalBodyInput = exampleModal.querySelector('.modal-body input')

    modalTitle.textContent = `Sua opinião conta. Avalie nosso serviço e nos ajude a crescer!`
    modalBodyInput.value = recipient
  })
}

const exampleModal2 = document.getElementById('exampleModal2')
if (exampleModal2) {
  exampleModal2.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button2 = event.relatedTarget
    // Extract info from data-bs-* attributes
    const recipient2 = button2.getAttribute('data-bs-whatever')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle2 = exampleModal2.querySelector('.modal-title-2')
    const modalBodyInput2 = exampleModal2.querySelector('.modal-body-2 input')

    modalTitle2.textContent = `Compartilhe sua opinião conosco!`
    modalBodyInput2.value = recipient2
  })
}