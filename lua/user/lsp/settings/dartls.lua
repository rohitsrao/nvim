local lspconfig = require("lspconfig")

local find_dart_sdk_root_path = function()
    if vim.fn["executable"]("dart") == 1 then
       return vim.fn["resolve"](vim.fn["exepath"]("dart"))
    elseif vim.fn["executable"]("flutter") == 1 then
        local flutter_path = vim.fn['resolve'](vim.fn["exepath"]("flutter"))
        local flutter_bin = vim.fn["fnamemodify"](flutter_path,":h")
        local dart_sdk_root_path = flutter_bin.."/cache/dart-sdk/bin/dart"
        if vim.fn["executable"](dart_sdk_root_path) == 1 then
            return dart_sdk_root_path
        end
   end
    error("[LSP] Could not find Dart SDK root path")
end

local analysis_server_snapshot_path = function()
    local dart_sdk_root_path = vim.fn["fnamemodify"](find_dart_sdk_root_path(), ":h")
    local snapshot = dart_sdk_root_path.."/snapshots/analysis_server.dart.snapshot"

    if vim.fn["has"]("win32") == 1 or vim.fn["has"]("win64") == 1 then
        snapshot = snapshot:gsub("/","\\")
    end

    if vim.fn["filereadable"](snapshot) == 1 then
       return snapshot
    else
        error("[LSP] Could not find analysis_server snapshot")
    end

end
return {
    cmd = { "dart", analysis_server_snapshot_path(), "--lsp"},
    filetypes = { "dart" },
    init_options = {
      closingLabels = true,
      flutterOutline = false,
      onlyAnalyzeProjectsWithOpenFiles = false,
      outline = true,
      suggestFromUnimportedLibraries = true
    },
    root_dir = lspconfig.util.root_pattern("pubspec.yaml"),
    settings = {
      dart = {
        completeFunctionCalls = true,
        showTodos = true
      }
    }
}
