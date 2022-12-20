document.querySelectorAll("[alert-close]").forEach((e) => {
    e.addEventListener("click", () => {
        console.log("Alert Close", e);
        e.parentElement.remove();
    })
});
