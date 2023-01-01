const category = document.getElementsByName("category");
const jokeType = document.getElementsByName("type");
const customCategory = document.getElementsByName("custom-category");
const amount = document.getElementsByName("amount");
const customCat = document.getElementById("cat-cbr2");
const anyCat = document.getElementById('cat-cbr1');

let categories = [];
let customCategories = [];

customCategory.forEach(category => {
    if(anyCat.checked === true){
        category.disabled = true
    }else if(customCat.checked === false){
        category.disabled = false
    }
})
category.forEach(category=>{
    if(category.value === "any" && category.checked === true){
        customCategories.forEach(custom => {
            custom.disabled = true;
        })
    }else if(category.value === "custom" && category.checked === false){
        customCategories.forEach(custom => {
            custom.disabled = false;
        })
    }
})
customCategory.forEach(custom => {
    if(custom.checked === true){
        customCategories.push(custom.value);
    }else if(custom.checked === false){
        customCategories.pop();
    }
})


console.log(categories);
console.log(customCategories);