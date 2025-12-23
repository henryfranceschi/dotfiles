---@module "lazy"
---@type LazyPluginSpecHandlers[]
return {
    {
        "saghen/blink.cmp",
        version = "1.*",
        ---@module "blink.cmp"
        ---@type blink.cmp.Config
        opts = {
            fuzzy = { implementation = "prefer_rust_with_warning" },
        },
    },
}
