# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

opts =
  container: "epiceditor"
  textarea: null
  basePath: "/assets"
  clientSideStorage: true
  localStorageName: "epiceditor"
  useNativeFullscreen: true
  parser: marked
  file:
    name: "epiceditor"
    defaultContent: ""
    autoSave: 100

  theme:
    base: "/base/epiceditor.css"
    preview: "/preview/preview-grey.css"
    editor: "/editor/epic-dark.css"

  button:
    preview: true
    fullscreen: true
    bar: "auto"

  focusOnLoad: false
  shortcut:
    modifier: 18
    fullscreen: 70
    preview: 80

  string:
    togglePreview: "Toggle Preview Mode"
    toggleEdit: "Toggle Edit Mode"
    toggleFullscreen: "Enter Fullscreen"

  autogrow: false

$(document).ready ->
  editor = new EpicEditor(opts).load()
  return