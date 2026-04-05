// ================= MENU RESPONSIVE =================
document.addEventListener("DOMContentLoaded", function () {

    const menuBtn = document.getElementById("menuBtn");
    const menuDropdown = document.getElementById("menuDropdown");

    if (menuBtn) {
        menuBtn.addEventListener("click", function () {
            if (menuDropdown.style.display === "flex") {
                menuDropdown.style.display = "none";
            } else {
                menuDropdown.style.display = "flex";
            }
        });
    }

});


// ================= PAIEMENT =================
function selectPayment(type, element) { 
    // Enregistrer le mode de paiement choisi dans le HiddenField 
    document.getElementById('<%= hfModePaiement.ClientID %>').value = type; 

    // Cacher tous les formulaires de paiement 
    var form = document.querySelectorAll('.payment-form'); 
    form.forEach(f => f.style.display = 'aucun'); 

    // Afficher le formulaire correspondant au mode choisi 
    if(type === 'MonCash') document.getElementById('formMonCash').style.display = 'block'; 
    sinon if(type === 'NatCash') document.getElementById('formNatCash').style.display = 'block'; 
    sinon if(type === 'Carte') document.getElementById('formCarte').style.display = 'block'; 
    else if(type === 'Virement') document.getElementById('formVirement').style.display = 'block'; 

    // Ajouter un effet de sélection visuelle 
    document.querySelectorAll('.payment-method').forEach(pm => pm.classList.remove('selected')); 
    element.classList.add('selected'); 
} 

// ================= RADIO FLOTTANTE =================
let isPlaying = false;

function toggleRadio() {

    const radio = document.getElementById("radioPlayer");
    const button = document.getElementById("radioFloat");

    if (!radio) return;

    if (!isPlaying) {
        radio.play();
        isPlaying = true;
        button.innerText = "⏸ Pause Radio";
    } else {
        radio.pause();
        isPlaying = false;
        button.innerText = "🔴 Radio EDEN";
    }
}