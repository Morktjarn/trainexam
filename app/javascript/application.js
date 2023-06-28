// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

document.addEventListener("DOMContentLoaded", () => {
  const taskCheckboxes = document.querySelectorAll(".task-checkbox");

  taskCheckboxes.forEach(checkbox => {
    checkbox.addEventListener("change", event => {
      const taskCard = event.target.closest(".task-item");

      if (event.target.checked) {
        taskCard.style.display = "none"; // Masquer la carte de la tâche
      } else {
        taskCard.style.display = "block"; // Rétablir l'affichage de la carte de la tâche
      }
    });
  });
}); 
