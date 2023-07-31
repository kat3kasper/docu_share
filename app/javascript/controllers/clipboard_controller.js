// src/controllers/clipboard_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "source", "button" ]

  copy() {
    navigator.clipboard.writeText(this.sourceTarget.innerHTML)
    this.buttonTarget.innerHTML = "Copied"
  }
}