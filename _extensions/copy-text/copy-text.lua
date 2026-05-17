-- copy-text.lua
local deps_added = false

local function ensure_deps()
  if deps_added then return end
  deps_added = true
  quarto.doc.add_html_dependency({
    name = "copy-text",
    version = "1.0.0",
    stylesheets = { "copy-text.css" },
    scripts = {
      { path = "copy-text.js", afterBody = true }
    }
  })
end

function Div(el)
  if not el.classes:includes("copy") then return nil end
  if not quarto.doc.is_format("html:js") then return nil end

  ensure_deps()

  local id = "copy-block-" .. tostring(math.random(100000))
  el.identifier = id

  local button_html = string.format(
    '<button class="copy-btn" onclick="copyDivToClipboard(\'%s\')">Copy</button>',
    id
  )

  table.insert(el.content, 1, pandoc.RawBlock("html", button_html))
  return el
end
