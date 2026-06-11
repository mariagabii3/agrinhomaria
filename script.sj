JavaScript
// Aguarda o carregamento do documento
document.addEventListener('DOMContentLoaded', () => {
    const btnCalcular = document.getElementById('btn-calcular');
    const inputPlantas = document.getElementById('plantas');
    const divResultado = document.getElementById('resultado');

    btnCalcular.addEventListener('click', () => {
        const quantidadePlantas = parseInt(inputPlantas.value);

        if (isNaN(quantidadePlantas) || quantidadePlantas <= 0) {
            divResultado.textContent = "Por favor, insira um número válido de plantas.";
            divResultado.style.backgroundColor = "#ffebee";
            divResultado.style.color = "#c62828";
            divResultado.style.borderColor = "#ffcdd2";
            return;
        }

        // Estimativa aproximada de economia: ~15 litros por planta ao mês usando gotejamento eficiente
        const economiaPorPlanta = 15; 
        const economiaTotal = quantidadePlantas * economiaPorPlanta;

        // Estilo de sucesso
        divResultado.style.backgroundColor = "#e8f5e9";
        divResultado.style.color = "#1b5e20";
        divResultado.style.borderColor = "#c8e6c9";

        // Exibe o resultado na tela
        divResultado.textContent = `Cultivando ${quantidadePlantas} pés de alface com gotejamento, você economiza cerca de ${economiaTotal} litros de água por mês! 💧`;
    });
});
