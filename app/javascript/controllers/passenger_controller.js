import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  add() {
    console.log("printing");
    const tbody = document.querySelector("tbody");
    const template = document.querySelector("template");

    const clone = document.importNode(template.content, true);
    tbody.appendChild(clone);
  }

  remove() {}

  connect() {
    console.log("passengers controller connected");
  }
}
