// Validação simples do formulário de contato
const form = document.getElementById("form-contato");
const status = document.getElementById("form-status");

form.addEventListener("submit", (event) => {
  event.preventDefault();

  const campos = [form.nome, form.email, form.mensagem];
  let valido = true;

  campos.forEach((campo) => {
    const vazio = campo.value.trim() === "";
    campo.classList.toggle("invalid", vazio);
    if (vazio) valido = false;
  });

  const emailOk = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(form.email.value);
  if (form.email.value && !emailOk) {
    form.email.classList.add("invalid");
    valido = false;
  }

  if (!valido) {
    status.textContent = "Preencha todos os campos corretamente.";
    status.className = "erro";
    return;
  }

  status.textContent = `Obrigado, ${form.nome.value.trim()}! Entraremos em contato em breve.`;
  status.className = "ok";
  form.reset();
});
