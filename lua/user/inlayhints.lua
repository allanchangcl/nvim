-- Setup inlayhints.
local status_ok, inlayhints = pcall(require, "inlay-hints")
if not status_ok then
  return
end

inlayhints.setup()