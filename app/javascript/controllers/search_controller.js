import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"
export default class extends Controller {

  connect() {
    console.log("search!!")
  }

  updateSearch(event){
    var data = {query: event.currentTarget.value}
    var list = document.getElementById("restaurants") 
    fetch("update_search", {
      method: "POST",
      headers: { 'Content-Type': 'application/json', "X-CSRF-Token": csrfToken() },
      body: JSON.stringify(data)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      list.innerHTML = data.form
    })
  }
  
}
