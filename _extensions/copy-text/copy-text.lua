-- copy-text.lua
function Div(el)
  if el.classes:includes("copy") then
    -- We wrap the content in a div with a unique ID and add a button
    local id = "copy-block-" .. table.concat(el.classes, "-") .. math.random(1000)
    el.identifier = id

    local button_html = string.format(
      '<button class="copy-btn" onclick="copyDivToClipboard(\'%s\')">Copy</button>',
      id
    )

    -- Insert the button at the start of the div
    table.insert(el.content, 1, pandoc.RawBlock('html', button_html))
    return el
  end
end
