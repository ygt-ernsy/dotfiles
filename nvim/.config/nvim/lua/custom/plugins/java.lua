return {
  'nvim-java/nvim-java',
  ft = { 'java' },
  config = function()
    require('java').setup({
      jdtls = {
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = 'JavaSE-21',
                  path = '/usr/lib/jvm/java-21-openjdk',
                  default = true,
                },
              },
            },
            eclipse = {
              downloadSources = true,
            },
            maven = {
              downloadSources = true,
            },
            references = {
              includeDecompiledSources = true,
            },
            implementationsCodeLens = {
              enabled = true,
            },
            referenceCodeLens = {
              enabled = true,
            },
            signatureHelp = {
              enabled = true,
            },
            compile = {
              nullAnalysis = {
                nonnull = {
                  'lombok.NonNull',
                  'javax.annotation.Nonnull',
                  'org.eclipse.jdt.annotation.NonNull',
                  'org.springframework.lang.NonNull',
                },
              },
            },
          },
        },
      },
    })
    vim.lsp.config('jdtls', {})
    vim.lsp.enable('jdtls')
  end,
}
