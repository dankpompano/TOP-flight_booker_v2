import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  add() {
    this.element.style.display = "none";
  }
}
