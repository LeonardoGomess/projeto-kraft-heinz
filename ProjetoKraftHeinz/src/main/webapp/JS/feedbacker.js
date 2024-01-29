document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("feedbackForm");
    const container = document.querySelector(".container");

    form.addEventListener("submit", function (e) {
        e.preventDefault();
        const inputs = form.querySelectorAll("input[type='text'], select, textarea");
        let allFieldsFilled = true;

        inputs.forEach(input => {
            if (!input.value) {
                allFieldsFilled = false;
                return;
            }
        });

        if (allFieldsFilled) {
            container.style.display = "block";
        } else {
            alert("Por favor, preencha todos os campos antes de prosseguir.");
        }
    });
});