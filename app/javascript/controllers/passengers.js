import RailsNestedForm from "@stimulus-components/rails-nested-form";

import { Controller } from "@hotwired/stimulus";
const controller = Application.start();
controller.register("nested-form", RailsNestedForm);

export default class extends Controller {
  static targets = ["container"];

  add() {}

  remove() {}
}
