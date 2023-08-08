$envSTARSHIP_SHELL = "nu"
$envSTARSHIP_SESSION_KEY = (random chars -l 16)
$envPROMPT_MULTILINE_INDICATOR = (^/usr/local/bin/starship prompt --continuation)

# Does not play well with default character module.
# TODO: Also Use starship vi mode indicators?
$envPROMPT_INDICATOR = ""

$envPROMPT_COMMAND = { ||
    # jobs are not supported
    let width = (term size).columns
    ^/usr/local/bin/starship prompt $"--cmd-duration=($env.CMD_DURATION_MS)" $"--status=($env.LAST_EXIT_CODE)" $"--terminal-width=($width)"
}

# Whether we have config items
let has_config_items = (not ($env | get -i config | is-empty))

$envconfig = if $has_config_items {
    $env.config | upsert render_right_prompt_on_last_line true
} else {
    {render_right_prompt_on_last_line: true}
}

$envPROMPT_COMMAND_RIGHT = { ||
    let width = (term size).columns
    ^/usr/local/bin/starship prompt --right $"--cmd-duration=($env.CMD_DURATION_MS)" $"--status=($env.LAST_EXIT_CODE)" $"--terminal-width=($width)"
}
