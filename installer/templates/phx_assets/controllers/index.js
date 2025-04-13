import { application } from "./application"

import CssController from "./core/css_controller"
application.register("css", CssController)

import ModalController from "./core/modal_controller"
application.register("modal", ModalController)
