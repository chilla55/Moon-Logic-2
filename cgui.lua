local cguis = {}
local function create_copy_gui(player)
	local dw, dh, dsf = player.display_resolution.width, player.display_resolution.height, 1 / player.display_scale
    local gui = player.gui.screen.add({type='frame', name='mlc-copy', caption='Copy Code', direction='vertical'})
    gui.style.top_padding = 1
    gui.style.right_padding = 4
    gui.style.bottom_padding = 4
    gui.style.left_padding = 4
    gui.location = {20 * dsf, 150 * dsf}
    local tb = gui.add({type='text-box', name='mlc-copy-text', text=''})
    tb.style.width = 200
    tb.style.height = 25
    local close_btn = gui.add({type='button', name='mlc-copy-close', caption='Close'})
    close_btn.style.minimal_width = 50
    return {gui=gui, tb=tb, close_btn=close_btn}
end

function cguis.open(player,sig)
    if (not storage.cgui) then
        local gui = create_copy_gui(player)
        storage.cgui = gui
    else
        storage.cgui.gui.focus()
    end
    cguis.insert(sig)
end

function cguis.close()
    if storage.cgui then
        storage.cgui.gui.destroy()
    end
    storage.cgui = nil
end

function cguis.insert(text)
    if storage.cgui then
        storage.cgui.tb.text = text
    end
end

return cguis