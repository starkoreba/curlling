// Entry point for the build script in your package.json
//= require sweetalert2
//= require local-time
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import LocalTime from "local-time"
LocalTime.start()
