#compdef anvil

autoload -U is-at-least

_anvil() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" : \
'-p+[Port number to listen on]:NUM: ' \
'--port=[Port number to listen on]:NUM: ' \
'-a+[Number of dev accounts to generate and configure]:NUM: ' \
'--accounts=[Number of dev accounts to generate and configure]:NUM: ' \
'--balance=[The balance of every dev account in Ether]:NUM: ' \
'--timestamp=[The timestamp of the genesis block]:NUM: ' \
'(--mnemonic-seed-unsafe --mnemonic-random)-m+[BIP39 mnemonic phrase used for generating accounts. Cannot be used if \`mnemonic_random\` or \`mnemonic_seed\` are used]:MNEMONIC: ' \
'(--mnemonic-seed-unsafe --mnemonic-random)--mnemonic=[BIP39 mnemonic phrase used for generating accounts. Cannot be used if \`mnemonic_random\` or \`mnemonic_seed\` are used]:MNEMONIC: ' \
'(-m --mnemonic --mnemonic-seed-unsafe)--mnemonic-random=[Automatically generates a BIP39 mnemonic phrase, and derives accounts from it. Cannot be used with other \`mnemonic\` options. You can specify the number of words you want in the mnemonic. \[default\: 12\]]' \
'(-m --mnemonic --mnemonic-random)--mnemonic-seed-unsafe=[Generates a BIP39 mnemonic phrase from a given seed Cannot be used with other \`mnemonic\` options]:MNEMONIC_SEED: ' \
'--derivation-path=[Sets the derivation path of the child key to be derived]:DERIVATION_PATH: ' \
'--hardfork=[The EVM hardfork to use]:HARDFORK: ' \
'-b+[Block time in seconds for interval mining]:SECONDS: ' \
'--block-time=[Block time in seconds for interval mining]:SECONDS: ' \
'--blockTime=[Block time in seconds for interval mining]:SECONDS: ' \
'--slots-in-an-epoch=[Slots in an epoch]:SLOTS_IN_AN_EPOCH: ' \
'--config-out=[Writes output of \`anvil\` as json to user-specified file]:OUT_FILE: ' \
'*--host=[The hosts the server will listen on]:IP_ADDR: ' \
'--order=[How transactions are sorted in the mempool]:ORDER: ' \
'--init=[Initialize the genesis block with the given \`genesis.json\` file]:PATH: ' \
'(--init --dump-state --load-state)--state=[This is an alias for both --load-state and --dump-state]:PATH: ' \
'-s+[Interval in seconds at which the state and block environment is to be dumped to disk]:SECONDS: ' \
'--state-interval=[Interval in seconds at which the state and block environment is to be dumped to disk]:SECONDS: ' \
'(--init)--dump-state=[Dump the state and block environment of chain on exit to the given file]:PATH:_files' \
'(--init)--load-state=[Initialize the chain from a previously saved state snapshot]:PATH: ' \
'--ipc=[Launch an ipc server at the given path or default path = \`/tmp/anvil.ipc\`]' \
'--ipcpath=[Launch an ipc server at the given path or default path = \`/tmp/anvil.ipc\`]' \
'--prune-history=[Don'\''t keep full chain history. If a number argument is specified, at most this number of states is kept in memory]' \
'--max-persisted-states=[Max number of states to persist on disk]:MAX_PERSISTED_STATES: ' \
'--transaction-block-keeper=[Number of blocks with transactions to keep in memory]:TRANSACTION_BLOCK_KEEPER: ' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL: ' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL: ' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL: ' \
'*--fork-header=[Headers to use for the rpc client, e.g. "User-Agent\: test-agent"]:HEADERS: ' \
'--timeout=[Timeout in ms for requests sent to remote JSON-RPC server in forking mode]:timeout: ' \
'--retries=[Number of retry requests for spurious networks (timed out requests)]:retries: ' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK: ' \
'(--fork-block-number)--fork-transaction-hash=[Fetch state from a specific transaction hash over a remote endpoint]:TRANSACTION: ' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF: ' \
'--fork-chain-id=[Specify chain id to skip fetching it from remote endpoint. This enables offline-start mode]:CHAIN: ' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS: ' \
'--gas-limit=[The block gas limit]:GAS_LIMIT: ' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. To disable entirely, use \`--disable-code-size-limit\`. By default, it is 0x6000 (~25kb)]:CODE_SIZE: ' \
'--gas-price=[The gas price]:GAS_PRICE: ' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE: ' \
'--base-fee=[The base fee in a block]:FEE: ' \
'--chain-id=[The chain ID]:CHAIN_ID: ' \
'--memory-limit=[The memory limit per EVM execution in bytes]:MEMORY_LIMIT: ' \
'--allow-origin=[The cors \`allow_origin\` header]:ALLOW_ORIGIN: ' \
'--silent[Don'\''t print anything on startup and don'\''t print logs]' \
'(-b --block-time)--no-mining[Disable auto and interval mining, and mine on demand instead]' \
'(-b --block-time)--no-mine[Disable auto and interval mining, and mine on demand instead]' \
'--mixed-mining[]' \
'--mixed-mining[]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'(--gas-limit)--disable-block-gas-limit[Disable the \`call.gas_limit <= block.gas_limit\` constraint]' \
'(--code-size-limit)--disable-code-size-limit[Disable EIP-170\: Contract code size limit]' \
'--steps-tracing[Enable steps tracing used for debug calls returning geth-style traces]' \
'--tracing[Enable steps tracing used for debug calls returning geth-style traces]' \
'--disable-console-log[Disable printing of \`console.log\` invocations to stdout]' \
'--no-console-log[Disable printing of \`console.log\` invocations to stdout]' \
'--auto-impersonate[Enable autoImpersonate on startup]' \
'--auto-impersonate[Enable autoImpersonate on startup]' \
'--optimism[Run an Optimism chain]' \
'--optimism[Run an Optimism chain]' \
'--disable-default-create2-deployer[Disable the default create2 deployer]' \
'--no-create2[Disable the default create2 deployer]' \
'--alphanet[Enable Alphanet features]' \
'--alphanet[Enable Alphanet features]' \
'(--allow-origin)--no-cors[Disable CORS]' \
'--no-request-size-limit[Disable the default request body size limit. At time of writing the default limit is 2MB]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_anvil_commands" \
"*::: :->anvil" \
&& ret=0
    case $state in
    (anvil)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:anvil-command-$line[1]:"
        case $line[1] in
            (completions)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':shell:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(com)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':shell:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(generate-fig-spec)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(fig)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_anvil__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:anvil-help-command-$line[1]:"
        case $line[1] in
            (completions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(generate-fig-spec)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_anvil_commands] )) ||
_anvil_commands() {
    local commands; commands=(
'completions:Generate shell completions script' \
'com:Generate shell completions script' \
'generate-fig-spec:Generate Fig autocompletion spec' \
'fig:Generate Fig autocompletion spec' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'anvil commands' commands "$@"
}
(( $+functions[_anvil__completions_commands] )) ||
_anvil__completions_commands() {
    local commands; commands=()
    _describe -t commands 'anvil completions commands' commands "$@"
}
(( $+functions[_anvil__generate-fig-spec_commands] )) ||
_anvil__generate-fig-spec_commands() {
    local commands; commands=()
    _describe -t commands 'anvil generate-fig-spec commands' commands "$@"
}
(( $+functions[_anvil__help_commands] )) ||
_anvil__help_commands() {
    local commands; commands=(
'completions:Generate shell completions script' \
'generate-fig-spec:Generate Fig autocompletion spec' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'anvil help commands' commands "$@"
}
(( $+functions[_anvil__help__completions_commands] )) ||
_anvil__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'anvil help completions commands' commands "$@"
}
(( $+functions[_anvil__help__generate-fig-spec_commands] )) ||
_anvil__help__generate-fig-spec_commands() {
    local commands; commands=()
    _describe -t commands 'anvil help generate-fig-spec commands' commands "$@"
}
(( $+functions[_anvil__help__help_commands] )) ||
_anvil__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'anvil help help commands' commands "$@"
}

if [ "$funcstack[1]" = "_anvil" ]; then
    _anvil "$@"
else
    compdef _anvil anvil
fi
