function priceBuy(){
  const quantity = document.getElementById("quantity");
  quantity.addEventListener("keyup", () => {
    const price = document.getElementById("pricebuy");
    document.getElementById("totalprice").value = Math.floor(price.textContent * quantity.value);
  });
};
window.addEventListener('load', priceBuy);
