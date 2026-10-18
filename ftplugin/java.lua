local jdtls = require("jdtls")

local home = os.getenv("HOME")

local workspace_dir = home
    .. "/.cache/jdtls/"
    .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local config = {
    cmd = {
        "jdtls",
        "-data",
        workspace_dir,
    },

    root_dir = require("jdtls.setup").find_root({
        ".git",
        "mvnw",
        "gradlew",
        "pom.xml",
        "build.gradle",
    }),

    settings = {
        java = {
            configuration = {
                updateBuildConfiguration = "interactive",
            },

            format = {
                enabled = true,
            },
        },
    },
}

jdtls.start_or_attach(config)
