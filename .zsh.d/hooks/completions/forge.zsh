#compdef forge

autoload -U is-at-least

_forge() {
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
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_forge_commands" \
"*::: :->forge" \
&& ret=0
    case $state in
    (forge)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-command-$line[1]:"
        case $line[1] in
            (test)
_arguments "${_arguments_options[@]}" : \
'--debug=[Run a single test in the debugger]' \
'--decode-internal=[Identify internal functions in traces]' \
'--dump=[Dumps all debugger steps to file]:PATH:_files' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'--fuzz-seed=[Set seed used to generate randomness during your fuzz runs]:FUZZ_SEED:_default' \
'--fuzz-runs=[]:RUNS:_default' \
'--fuzz-input-file=[File to rerun fuzz failures from]:FUZZ_INPUT_FILE:_default' \
'-j+[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--threads=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--jobs=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--match-test=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--mt=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--no-match-test=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--nmt=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--match-contract=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--mc=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--no-match-contract=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--nmc=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--match-path=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--mp=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--no-match-path=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--nmp=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--no-match-coverage=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'--nmco=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--flamegraph[Generate a flamegraph for a single test. Implies \`--decode-internal\`]' \
'(--flamegraph)--flamechart[Generate a flamechart for a single test. Implies \`--decode-internal\`]' \
'--gas-report[Print a gas report]' \
'--allow-failure[Exit with code 0 even if a test fails]' \
'(-q --quiet --json --gas-report)--junit[Output test results as JUnit XML report]' \
'--fail-fast[Stop running tests after the first failure]' \
'-l[List tests instead of running them]' \
'--list[List tests instead of running them]' \
'--show-progress[Show test execution progress]' \
'--rerun[Re-run recorded test failures from last run. If no failure recorded then regular test run is performed]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'--summary[Print test summary table]' \
'--detailed[Print detailed test summary table]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- The contract file you want to test, it'\''s a shortcut for --match-path:_files' \
&& ret=0
;;
(t)
_arguments "${_arguments_options[@]}" : \
'--debug=[Run a single test in the debugger]' \
'--decode-internal=[Identify internal functions in traces]' \
'--dump=[Dumps all debugger steps to file]:PATH:_files' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'--fuzz-seed=[Set seed used to generate randomness during your fuzz runs]:FUZZ_SEED:_default' \
'--fuzz-runs=[]:RUNS:_default' \
'--fuzz-input-file=[File to rerun fuzz failures from]:FUZZ_INPUT_FILE:_default' \
'-j+[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--threads=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--jobs=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--match-test=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--mt=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--no-match-test=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--nmt=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--match-contract=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--mc=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--no-match-contract=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--nmc=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--match-path=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--mp=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--no-match-path=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--nmp=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--no-match-coverage=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'--nmco=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--flamegraph[Generate a flamegraph for a single test. Implies \`--decode-internal\`]' \
'(--flamegraph)--flamechart[Generate a flamechart for a single test. Implies \`--decode-internal\`]' \
'--gas-report[Print a gas report]' \
'--allow-failure[Exit with code 0 even if a test fails]' \
'(-q --quiet --json --gas-report)--junit[Output test results as JUnit XML report]' \
'--fail-fast[Stop running tests after the first failure]' \
'-l[List tests instead of running them]' \
'--list[List tests instead of running them]' \
'--show-progress[Show test execution progress]' \
'--rerun[Re-run recorded test failures from last run. If no failure recorded then regular test run is performed]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'--summary[Print test summary table]' \
'--detailed[Print detailed test summary table]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- The contract file you want to test, it'\''s a shortcut for --match-path:_files' \
&& ret=0
;;
(script)
_arguments "${_arguments_options[@]}" : \
'--target-contract=[The name of the contract you want to run]:CONTRACT_NAME:_default' \
'--tc=[The name of the contract you want to run]:CONTRACT_NAME:_default' \
'-s+[The signature of the function you want to call in the contract, or raw calldata]:SIG:_default' \
'--sig=[The signature of the function you want to call in the contract, or raw calldata]:SIG:_default' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE:_default' \
'--batch-size=[Batch size of transactions]:BATCH_SIZE:_default' \
'-g+[Relative percentage to multiply gas estimates by]:GAS_ESTIMATE_MULTIPLIER:_default' \
'--gas-estimate-multiplier=[Relative percentage to multiply gas estimates by]:GAS_ESTIMATE_MULTIPLIER:_default' \
'--dump=[Dumps all debugger steps to file]:PATH:_files' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'--with-gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE:_default' \
'--timeout=[Timeout to use for broadcasting transactions]:TIMEOUT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-a+[The sender accounts]' \
'*--froms=[The sender accounts]' \
'-i+[Open an interactive prompt to enter your private key]:NUM:_default' \
'--interactives=[Open an interactive prompt to enter your private key]:NUM:_default' \
'*--private-keys=[Use the provided private keys]:RAW_PRIVATE_KEYS:_default' \
'(--private-keys)--private-key=[Use the provided private key]:RAW_PRIVATE_KEY:_default' \
'*--mnemonics=[Use the mnemonic phrases of mnemonic files at the specified paths]:MNEMONICS:_default' \
'*--mnemonic-passphrases=[Use a BIP39 passphrases for the mnemonic]:PASSPHRASE:_default' \
'*--mnemonic-derivation-paths=[The wallet derivation path]:PATH:_default' \
'(--mnemonic-derivation-paths)*--mnemonic-indexes=[Use the private key from the given mnemonic index]:INDEXES:_default' \
'*--keystore=[Use the keystore by its filename in the given folder]:PATHS:_default' \
'*--keystores=[Use the keystore by its filename in the given folder]:PATHS:_default' \
'(--keystore)*--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAMES:_default' \
'(--keystore)*--accounts=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAMES:_default' \
'*--password=[The keystore password]:PASSWORDS:_default' \
'*--password-file=[The keystore password file path]:PATHS:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--retries=[Number of attempts for retrying verification]:RETRIES:_default' \
'--delay=[Optional delay to apply in between verification attempts, in seconds]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--legacy[Use legacy transactions instead of EIP1559 ones]' \
'--broadcast[Broadcasts the transactions]' \
'--skip-simulation[Skips on-chain simulation]' \
'(--private-key --private-keys -a --froms -l --ledger -t --trezor --aws)--unlocked[Send via \`eth_sendTransaction\` using the \`--from\` argument or \`\$ETH_FROM\` as sender]' \
'--resume[Resumes submitting transactions that failed or timed-out previously]' \
'--multi[If present, --resume or --verify will be assumed to be a multi chain deployment]' \
'--debug[Open the script in the debugger]' \
'--slow[Makes sure a transaction is sent, only after its previous one has been confirmed and succeeded]' \
'--non-interactive[Disables interactive prompts that might appear when deploying big contracts]' \
'--verify[Verifies all the contracts found in the receipts of a script, if any]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':path -- The contract you want to run. Either the file path or contract name:_files' \
'*::args -- Arguments to pass to the script function:_default' \
&& ret=0
;;
(coverage)
_arguments "${_arguments_options[@]}" : \
'*--report=[The report type to use for coverage]:REPORT:(summary lcov debug bytecode)' \
'-r+[The path to output the report]:PATH:_files' \
'--report-file=[The path to output the report]:PATH:_files' \
'--debug=[Run a single test in the debugger]' \
'--decode-internal=[Identify internal functions in traces]' \
'--dump=[Dumps all debugger steps to file]:PATH:_files' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'--fuzz-seed=[Set seed used to generate randomness during your fuzz runs]:FUZZ_SEED:_default' \
'--fuzz-runs=[]:RUNS:_default' \
'--fuzz-input-file=[File to rerun fuzz failures from]:FUZZ_INPUT_FILE:_default' \
'-j+[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--threads=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--jobs=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--match-test=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--mt=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--no-match-test=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--nmt=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--match-contract=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--mc=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--no-match-contract=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--nmc=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--match-path=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--mp=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--no-match-path=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--nmp=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--no-match-coverage=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'--nmco=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--ir-minimum[Enable viaIR with minimum optimization]' \
'--include-libs[Whether to include libraries in the coverage report]' \
'--flamegraph[Generate a flamegraph for a single test. Implies \`--decode-internal\`]' \
'(--flamegraph)--flamechart[Generate a flamechart for a single test. Implies \`--decode-internal\`]' \
'--gas-report[Print a gas report]' \
'--allow-failure[Exit with code 0 even if a test fails]' \
'(-q --quiet --json --gas-report)--junit[Output test results as JUnit XML report]' \
'--fail-fast[Stop running tests after the first failure]' \
'-l[List tests instead of running them]' \
'--list[List tests instead of running them]' \
'--show-progress[Show test execution progress]' \
'--rerun[Re-run recorded test failures from last run. If no failure recorded then regular test run is performed]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'--summary[Print test summary table]' \
'--detailed[Print detailed test summary table]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- The contract file you want to test, it'\''s a shortcut for --match-path:_files' \
&& ret=0
;;
(bind)
_arguments "${_arguments_options[@]}" : \
'-b+[Path to where the contract artifacts are stored]:PATH:_files -/' \
'--bindings-path=[Path to where the contract artifacts are stored]:PATH:_files -/' \
'*--select=[Create bindings only for contracts whose names match the specified filter(s)]:SELECT:_default' \
'--crate-name=[The name of the Rust crate to generate]:NAME:_default' \
'--crate-version=[The version of the Rust crate to generate]:VERSION:_default' \
'--alloy-version=[Specify the alloy version]:ALLOY_VERSION:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(--select --skip)--select-all[Explicitly generate bindings for all contracts]' \
'--module[Generate the bindings as a module instead of a crate]' \
'--overwrite[Overwrite existing generated bindings]' \
'--single-file[Generate bindings as a single file]' \
'--skip-cargo-toml[Skip Cargo.toml consistency checks]' \
'--skip-build[Skips running forge build before generating binding]' \
'--skip-extra-derives[Don'\''t add any additional derives to generated bindings]' \
'(--ethers)--alloy[Generate bindings for the \`alloy\` library, instead of \`ethers\`]' \
'--ethers[Generate bindings for the \`ethers\` library, instead of \`alloy\` (default, deprecated)]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(build)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--names[Print compiled contract names]' \
'--sizes[Print compiled contract sizes. Constructor argument length is not included in the calculation of initcode size]' \
'--ignore-eip-3860[Ignore initcode contract bytecode size limit introduced by EIP-3860]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- Build source files from specified paths:_files' \
&& ret=0
;;
(b)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--names[Print compiled contract names]' \
'--sizes[Print compiled contract sizes. Constructor argument length is not included in the calculation of initcode size]' \
'--ignore-eip-3860[Ignore initcode contract bytecode size limit introduced by EIP-3860]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- Build source files from specified paths:_files' \
&& ret=0
;;
(compile)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--names[Print compiled contract names]' \
'--sizes[Print compiled contract sizes. Constructor argument length is not included in the calculation of initcode size]' \
'--ignore-eip-3860[Ignore initcode contract bytecode size limit introduced by EIP-3860]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- Build source files from specified paths:_files' \
&& ret=0
;;
(clone)
_arguments "${_arguments_options[@]}" : \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--no-remappings-txt[Do not generate the remappings.txt file. Instead, keep the remappings in the configuration]' \
'--keep-directory-structure[Keep the original directory structure collected from Etherscan]' \
'--shallow[Perform shallow clones instead of deep ones]' \
'--no-git[Install without adding the dependency as a submodule]' \
'--no-commit[Do not create a commit]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The contract address to clone:_default' \
'::root -- The root directory of the cloned project:_files -/' \
&& ret=0
;;
(debug)
_arguments "${_arguments_options[@]}" : \
'--target-contract=[The name of the contract you want to run]:CONTRACT_NAME:_default' \
'--tc=[The name of the contract you want to run]:CONTRACT_NAME:_default' \
'-s+[The signature of the function you want to call in the contract, or raw calldata]:SIGNATURE:_default' \
'--sig=[The signature of the function you want to call in the contract, or raw calldata]:SIGNATURE:_default' \
'--dump=[File path to dump execution details as JSON]:PATH:_files' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--debug[Open the script in the debugger]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':path -- The contract you want to run. Either the file path or contract name:_files' \
'*::args -- Arguments to pass to the script function:_default' \
&& ret=0
;;
(d)
_arguments "${_arguments_options[@]}" : \
'--target-contract=[The name of the contract you want to run]:CONTRACT_NAME:_default' \
'--tc=[The name of the contract you want to run]:CONTRACT_NAME:_default' \
'-s+[The signature of the function you want to call in the contract, or raw calldata]:SIGNATURE:_default' \
'--sig=[The signature of the function you want to call in the contract, or raw calldata]:SIGNATURE:_default' \
'--dump=[File path to dump execution details as JSON]:PATH:_files' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--debug[Open the script in the debugger]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':path -- The contract you want to run. Either the file path or contract name:_files' \
'*::args -- Arguments to pass to the script function:_default' \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-f[Override the up-to-date check]' \
'--force[Override the up-to-date check]' \
'-r[Recursively update submodules]' \
'--recursive[Recursively update submodules]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::dependencies -- The dependencies you want to update:_default' \
&& ret=0
;;
(u)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-f[Override the up-to-date check]' \
'--force[Override the up-to-date check]' \
'-r[Recursively update submodules]' \
'--recursive[Recursively update submodules]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::dependencies -- The dependencies you want to update:_default' \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--shallow[Perform shallow clones instead of deep ones]' \
'--no-git[Install without adding the dependency as a submodule]' \
'--no-commit[Do not create a commit]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::dependencies -- The dependencies to install:_default' \
&& ret=0
;;
(i)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--shallow[Perform shallow clones instead of deep ones]' \
'--no-git[Install without adding the dependency as a submodule]' \
'--no-commit[Do not create a commit]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::dependencies -- The dependencies to install:_default' \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-f[Override the up-to-date check]' \
'--force[Override the up-to-date check]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::dependencies -- The dependencies you want to remove:_default' \
&& ret=0
;;
(rm)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-f[Override the up-to-date check]' \
'--force[Override the up-to-date check]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::dependencies -- The dependencies you want to remove:_default' \
&& ret=0
;;
(remappings)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--pretty[Pretty-print the remappings, grouping each of them by context]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(re)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--pretty[Pretty-print the remappings, grouping each of them by context]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(verify-contract)
_arguments "${_arguments_options[@]}" : \
'(--constructor-args-path)--constructor-args=[The ABI-encoded constructor arguments]:ARGS:_default' \
'(--constructor-args-path)--encoded-constructor-args=[The ABI-encoded constructor arguments]:ARGS:_default' \
'--constructor-args-path=[The path to a file containing the constructor arguments]:PATH:_files' \
'--compiler-version=[The \`solc\` version to use to build the smart contract]:VERSION:_default' \
'--num-of-optimizations=[The number of optimization runs used to build the smart contract]:NUM:_default' \
'--optimizer-runs=[The number of optimization runs used to build the smart contract]:NUM:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--evm-version=[The EVM version to use]:EVM_VERSION:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'-r+[The RPC endpoint]:URL:_default' \
'--rpc-url=[The RPC endpoint]:URL:_default' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET:_default' \
'--rpc-timeout=[Timeout for the RPC request in seconds]:RPC_TIMEOUT:_default' \
'--retries=[Number of attempts for retrying verification]:RETRIES:_default' \
'--delay=[Optional delay to apply in between verification attempts, in seconds]:DELAY:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--guess-constructor-args[Try to extract constructor arguments from on-chain creation code]' \
'--flatten[Flatten the source code before verifying]' \
'-f[Do not compile the flattened smart contract before verifying (if --flatten is passed)]' \
'--force[Do not compile the flattened smart contract before verifying (if --flatten is passed)]' \
'--skip-is-verified-check[Do not check if the contract is already verified before verifying]' \
'--watch[Wait for verification result after submission]' \
'(--flatten)--show-standard-json-input[Prints the standard json compiler input]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The address of the contract to verify:_default' \
'::contract -- The contract identifier in the form `<path>\:<contractname>`:_default' \
&& ret=0
;;
(v)
_arguments "${_arguments_options[@]}" : \
'(--constructor-args-path)--constructor-args=[The ABI-encoded constructor arguments]:ARGS:_default' \
'(--constructor-args-path)--encoded-constructor-args=[The ABI-encoded constructor arguments]:ARGS:_default' \
'--constructor-args-path=[The path to a file containing the constructor arguments]:PATH:_files' \
'--compiler-version=[The \`solc\` version to use to build the smart contract]:VERSION:_default' \
'--num-of-optimizations=[The number of optimization runs used to build the smart contract]:NUM:_default' \
'--optimizer-runs=[The number of optimization runs used to build the smart contract]:NUM:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--evm-version=[The EVM version to use]:EVM_VERSION:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'-r+[The RPC endpoint]:URL:_default' \
'--rpc-url=[The RPC endpoint]:URL:_default' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET:_default' \
'--rpc-timeout=[Timeout for the RPC request in seconds]:RPC_TIMEOUT:_default' \
'--retries=[Number of attempts for retrying verification]:RETRIES:_default' \
'--delay=[Optional delay to apply in between verification attempts, in seconds]:DELAY:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--guess-constructor-args[Try to extract constructor arguments from on-chain creation code]' \
'--flatten[Flatten the source code before verifying]' \
'-f[Do not compile the flattened smart contract before verifying (if --flatten is passed)]' \
'--force[Do not compile the flattened smart contract before verifying (if --flatten is passed)]' \
'--skip-is-verified-check[Do not check if the contract is already verified before verifying]' \
'--watch[Wait for verification result after submission]' \
'(--flatten)--show-standard-json-input[Prints the standard json compiler input]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The address of the contract to verify:_default' \
'::contract -- The contract identifier in the form `<path>\:<contractname>`:_default' \
&& ret=0
;;
(verify-check)
_arguments "${_arguments_options[@]}" : \
'--retries=[Number of attempts for retrying verification]:RETRIES:_default' \
'--delay=[Optional delay to apply in between verification attempts, in seconds]:DELAY:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':id -- The verification ID:_default' \
&& ret=0
;;
(vc)
_arguments "${_arguments_options[@]}" : \
'--retries=[Number of attempts for retrying verification]:RETRIES:_default' \
'--delay=[Optional delay to apply in between verification attempts, in seconds]:DELAY:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':id -- The verification ID:_default' \
&& ret=0
;;
(verify-bytecode)
_arguments "${_arguments_options[@]}" : \
'--block=[The block at which the bytecode should be verified]:BLOCK:_default' \
'(--constructor-args-path --encoded-constructor-args)*--constructor-args=[The constructor args to generate the creation code]:ARGS:_default' \
'(--constructor-args-path --constructor-args)--encoded-constructor-args=[The ABI-encoded constructor arguments]:HEX:_default' \
'(--constructor-args --encoded-constructor-args)--constructor-args-path=[The path to a file containing the constructor arguments]:PATH:_files' \
'-r+[The rpc url to use for verification]:RPC_URL:_default' \
'--rpc-url=[The rpc url to use for verification]:RPC_URL:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--ignore=[Ignore verification for creation or runtime bytecode]:BYTECODE_TYPE:(creation runtime)' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The address of the contract to verify:_default' \
':contract -- The contract identifier in the form `<path>\:<contractname>`:_default' \
&& ret=0
;;
(vb)
_arguments "${_arguments_options[@]}" : \
'--block=[The block at which the bytecode should be verified]:BLOCK:_default' \
'(--constructor-args-path --encoded-constructor-args)*--constructor-args=[The constructor args to generate the creation code]:ARGS:_default' \
'(--constructor-args-path --constructor-args)--encoded-constructor-args=[The ABI-encoded constructor arguments]:HEX:_default' \
'(--constructor-args --encoded-constructor-args)--constructor-args-path=[The path to a file containing the constructor arguments]:PATH:_files' \
'-r+[The rpc url to use for verification]:RPC_URL:_default' \
'--rpc-url=[The rpc url to use for verification]:RPC_URL:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--ignore=[Ignore verification for creation or runtime bytecode]:BYTECODE_TYPE:(creation runtime)' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The address of the contract to verify:_default' \
':contract -- The contract identifier in the form `<path>\:<contractname>`:_default' \
&& ret=0
;;
(create)
_arguments "${_arguments_options[@]}" : \
'(--constructor-args-path)*--constructor-args=[The constructor arguments]:ARGS:_default' \
'--constructor-args-path=[The path to a file containing the constructor arguments]:PATH:_files' \
'--timeout=[Timeout to use for broadcasting transactions]:TIMEOUT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT:_default' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE:_default' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE:_default' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE:_default' \
'--nonce=[Nonce for the transaction]:NONCE:_default' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE:_default' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH:_default' \
'--access-list=[EIP-2930 access list]' \
'-r+[The RPC endpoint]:URL:_default' \
'--rpc-url=[The RPC endpoint]:URL:_default' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET:_default' \
'--rpc-timeout=[Timeout for the RPC request in seconds]:RPC_TIMEOUT:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'-f+[The sender account]:ADDRESS:_default' \
'--from=[The sender account]:ADDRESS:_default' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY:_default' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC:_default' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE:_default' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH:_default' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX:_default' \
'--keystore=[Use the keystore in the given folder or file]:PATH:_default' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME:_default' \
'--password=[The keystore password]:PASSWORD:_default' \
'--password-file=[The keystore password file path]:PASSWORD_FILE:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--retries=[Number of attempts for retrying verification]:RETRIES:_default' \
'--delay=[Optional delay to apply in between verification attempts, in seconds]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--verify[Verify contract after creation]' \
'--unlocked[Send via \`eth_sendTransaction\` using the \`--from\` argument or \`\$ETH_FROM\` as sender]' \
'--show-standard-json-input[Prints the standard json compiler input if \`--verify\` is provided]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--legacy[Send a legacy transaction instead of an EIP1559 transaction]' \
'(--legacy)--blob[Send a EIP-4844 blob transaction]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':contract -- The contract identifier in the form `<path>\:<contractname>`:_default' \
&& ret=0
;;
(c)
_arguments "${_arguments_options[@]}" : \
'(--constructor-args-path)*--constructor-args=[The constructor arguments]:ARGS:_default' \
'--constructor-args-path=[The path to a file containing the constructor arguments]:PATH:_files' \
'--timeout=[Timeout to use for broadcasting transactions]:TIMEOUT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT:_default' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE:_default' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE:_default' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE:_default' \
'--nonce=[Nonce for the transaction]:NONCE:_default' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE:_default' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH:_default' \
'--access-list=[EIP-2930 access list]' \
'-r+[The RPC endpoint]:URL:_default' \
'--rpc-url=[The RPC endpoint]:URL:_default' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET:_default' \
'--rpc-timeout=[Timeout for the RPC request in seconds]:RPC_TIMEOUT:_default' \
'-e+[The Etherscan (or equivalent) API key]:KEY:_default' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'-f+[The sender account]:ADDRESS:_default' \
'--from=[The sender account]:ADDRESS:_default' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY:_default' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC:_default' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE:_default' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH:_default' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX:_default' \
'--keystore=[Use the keystore in the given folder or file]:PATH:_default' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME:_default' \
'--password=[The keystore password]:PASSWORD:_default' \
'--password-file=[The keystore password file path]:PASSWORD_FILE:_default' \
'--verifier=[The contract verification provider to use]:VERIFIER:(etherscan sourcify blockscout oklink)' \
'--verifier-url=[The verifier URL, if using a custom provider]:VERIFIER_URL:_default' \
'--retries=[Number of attempts for retrying verification]:RETRIES:_default' \
'--delay=[Optional delay to apply in between verification attempts, in seconds]:DELAY:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--verify[Verify contract after creation]' \
'--unlocked[Send via \`eth_sendTransaction\` using the \`--from\` argument or \`\$ETH_FROM\` as sender]' \
'--show-standard-json-input[Prints the standard json compiler input if \`--verify\` is provided]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--legacy[Send a legacy transaction instead of an EIP1559 transaction]' \
'(--legacy)--blob[Send a EIP-4844 blob transaction]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':contract -- The contract identifier in the form `<path>\:<contractname>`:_default' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
'-t+[The template to start from]:TEMPLATE:_default' \
'--template=[The template to start from]:TEMPLATE:_default' \
'-b+[Branch argument that can only be used with template option. If not specified, the default branch is used]:BRANCH:_default' \
'--branch=[Branch argument that can only be used with template option. If not specified, the default branch is used]:BRANCH:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-t --template)--offline[Do not install dependencies from the network]' \
'(-t --template)--no-deps[Do not install dependencies from the network]' \
'(-t --template)--force[Create the project even if the specified root directory is not empty]' \
'(-t --template)--vscode[Create a .vscode/settings.json file with Solidity settings, and generate a remappings.txt file]' \
'--shallow[Perform shallow clones instead of deep ones]' \
'--no-git[Install without adding the dependency as a submodule]' \
'--no-commit[Do not create a commit]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::root -- The root directory of the new project:_files -/' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':shell:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(com)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':shell:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(generate-fig-spec)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(fig)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(cl)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(cache)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_forge__cache_commands" \
"*::: :->cache" \
&& ret=0

    case $state in
    (cache)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-cache-command-$line[1]:"
        case $line[1] in
            (clean)
_arguments "${_arguments_options[@]}" : \
'*-b+[The blocks to clean the cache for]:BLOCKS:_default' \
'*--blocks=[The blocks to clean the cache for]:BLOCKS:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--etherscan[Whether to clean the Etherscan cache]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::chains -- The chains to clean the cache for:_default' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::chains -- The chains to list the cache for:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_forge__cache__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-cache-help-command-$line[1]:"
        case $line[1] in
            (clean)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ls)
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
;;
(snapshot)
_arguments "${_arguments_options[@]}" : \
'(--snap)--diff=[Output a diff against a pre-existing gas snapshot]' \
'(--diff)--check=[Compare against a pre-existing gas snapshot, exiting with code 1 if they do not match]' \
'--format=[How to format the output]:FORMAT:_default' \
'--snap=[Output file for the gas snapshot]:FILE:_files' \
'--tolerance=[Tolerates gas deviations up to the specified percentage]:SNAPSHOT_THRESHOLD:_default' \
'--debug=[Run a single test in the debugger]' \
'--decode-internal=[Identify internal functions in traces]' \
'--dump=[Dumps all debugger steps to file]:PATH:_files' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'--fuzz-seed=[Set seed used to generate randomness during your fuzz runs]:FUZZ_SEED:_default' \
'--fuzz-runs=[]:RUNS:_default' \
'--fuzz-input-file=[File to rerun fuzz failures from]:FUZZ_INPUT_FILE:_default' \
'-j+[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--threads=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--jobs=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--match-test=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--mt=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--no-match-test=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--nmt=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--match-contract=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--mc=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--no-match-contract=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--nmc=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--match-path=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--mp=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--no-match-path=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--nmp=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--no-match-coverage=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'--nmco=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--min=[Only include tests that used more gas that the given amount]:MIN_GAS:_default' \
'--max=[Only include tests that used less gas that the given amount]:MAX_GAS:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--flamegraph[Generate a flamegraph for a single test. Implies \`--decode-internal\`]' \
'(--flamegraph)--flamechart[Generate a flamechart for a single test. Implies \`--decode-internal\`]' \
'--gas-report[Print a gas report]' \
'--allow-failure[Exit with code 0 even if a test fails]' \
'(-q --quiet --json --gas-report)--junit[Output test results as JUnit XML report]' \
'--fail-fast[Stop running tests after the first failure]' \
'-l[List tests instead of running them]' \
'--list[List tests instead of running them]' \
'--show-progress[Show test execution progress]' \
'--rerun[Re-run recorded test failures from last run. If no failure recorded then regular test run is performed]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'--summary[Print test summary table]' \
'--detailed[Print detailed test summary table]' \
'--asc[Sort results by gas used (ascending)]' \
'(--asc)--desc[Sort results by gas used (descending)]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- The contract file you want to test, it'\''s a shortcut for --match-path:_files' \
&& ret=0
;;
(s)
_arguments "${_arguments_options[@]}" : \
'(--snap)--diff=[Output a diff against a pre-existing gas snapshot]' \
'(--diff)--check=[Compare against a pre-existing gas snapshot, exiting with code 1 if they do not match]' \
'--format=[How to format the output]:FORMAT:_default' \
'--snap=[Output file for the gas snapshot]:FILE:_files' \
'--tolerance=[Tolerates gas deviations up to the specified percentage]:SNAPSHOT_THRESHOLD:_default' \
'--debug=[Run a single test in the debugger]' \
'--decode-internal=[Identify internal functions in traces]' \
'--dump=[Dumps all debugger steps to file]:PATH:_files' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY:_default' \
'--fuzz-seed=[Set seed used to generate randomness during your fuzz runs]:FUZZ_SEED:_default' \
'--fuzz-runs=[]:RUNS:_default' \
'--fuzz-input-file=[File to rerun fuzz failures from]:FUZZ_INPUT_FILE:_default' \
'-j+[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--threads=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--jobs=[Max concurrent threads to use. Default value is the number of available CPUs]:THREADS:_default' \
'--match-test=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--mt=[Only run test functions matching the specified regex pattern]:REGEX:_default' \
'--no-match-test=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--nmt=[Only run test functions that do not match the specified regex pattern]:REGEX:_default' \
'--match-contract=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--mc=[Only run tests in contracts matching the specified regex pattern]:REGEX:_default' \
'--no-match-contract=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--nmc=[Only run tests in contracts that do not match the specified regex pattern]:REGEX:_default' \
'--match-path=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--mp=[Only run tests in source files matching the specified glob pattern]:GLOB:_default' \
'--no-match-path=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--nmp=[Only run tests in source files that do not match the specified glob pattern]:GLOB:_default' \
'--no-match-coverage=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'--nmco=[Only show coverage for files that do not match the specified regex pattern]:REGEX:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'--min=[Only include tests that used more gas that the given amount]:MIN_GAS:_default' \
'--max=[Only include tests that used less gas that the given amount]:MAX_GAS:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--flamegraph[Generate a flamegraph for a single test. Implies \`--decode-internal\`]' \
'(--flamegraph)--flamechart[Generate a flamechart for a single test. Implies \`--decode-internal\`]' \
'--gas-report[Print a gas report]' \
'--allow-failure[Exit with code 0 even if a test fails]' \
'(-q --quiet --json --gas-report)--junit[Output test results as JUnit XML report]' \
'--fail-fast[Stop running tests after the first failure]' \
'-l[List tests instead of running them]' \
'--list[List tests instead of running them]' \
'--show-progress[Show test execution progress]' \
'--rerun[Re-run recorded test failures from last run. If no failure recorded then regular test run is performed]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'--summary[Print test summary table]' \
'--detailed[Print detailed test summary table]' \
'--asc[Sort results by gas used (ascending)]' \
'(--asc)--desc[Sort results by gas used (descending)]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- The contract file you want to test, it'\''s a shortcut for --match-path:_files' \
&& ret=0
;;
(config)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--basic[Print only a basic set of the currently set config values]' \
'--json[Print currently set config values as JSON]' \
'--fix[Attempt to fix any configuration warnings]' \
'--names[Print compiled contract names]' \
'--sizes[Print compiled contract sizes. Constructor argument length is not included in the calculation of initcode size]' \
'--ignore-eip-3860[Ignore initcode contract bytecode size limit introduced by EIP-3860]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- Build source files from specified paths:_files' \
&& ret=0
;;
(co)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'-f+[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--rpc-url=[Fetch state over a remote endpoint instead of starting from an empty state]:URL:_default' \
'--fork-block-number=[Fetch state from a specific block number over a remote endpoint]:BLOCK:_default' \
'--fork-retries=[Number of retries]:RETRIES:_default' \
'--fork-retry-backoff=[Initial retry backoff on encountering errors]:BACKOFF:_default' \
'--initial-balance=[The initial balance of deployed test contracts]:BALANCE:_default' \
'--sender=[The address which will be executing tests/scripts]:ADDRESS:_default' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS:_default' \
'--gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--code-size-limit=[EIP-170\: Contract code size limit in bytes. Useful to increase this because of tests. By default, it is 0x6000 (~25kb)]:CODE_SIZE:_default' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--chain-id=[The chain name or EIP-155 chain ID]:CHAIN:_default' \
'--gas-price=[The gas price]:GAS_PRICE:_default' \
'--block-base-fee-per-gas=[The base fee in a block]:FEE:_default' \
'--base-fee=[The base fee in a block]:FEE:_default' \
'--tx-origin=[The transaction origin]:ADDRESS:_default' \
'--block-coinbase=[The coinbase of the block]:ADDRESS:_default' \
'--block-timestamp=[The timestamp of the block]:TIMESTAMP:_default' \
'--block-number=[The block number]:BLOCK:_default' \
'--block-difficulty=[The block difficulty]:DIFFICULTY:_default' \
'--block-prevrandao=[The block prevrandao value. NOTE\: Before merge this field was mix_hash]:PREVRANDAO:_default' \
'--block-gas-limit=[The block gas limit]:GAS_LIMIT:_default' \
'--memory-limit=[The memory limit per EVM execution in bytes. If this limit is exceeded, a \`MemoryLimitOOG\` result is thrown]:MEMORY_LIMIT:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--basic[Print only a basic set of the currently set config values]' \
'--json[Print currently set config values as JSON]' \
'--fix[Attempt to fix any configuration warnings]' \
'--names[Print compiled contract names]' \
'--sizes[Print compiled contract sizes. Constructor argument length is not included in the calculation of initcode size]' \
'--ignore-eip-3860[Ignore initcode contract bytecode size limit introduced by EIP-3860]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'--no-storage-caching[Explicitly disables the use of RPC caching]' \
'--ffi[Enable the FFI cheatcode]' \
'--always-use-create-2-factory[Use the create 2 factory in all cases including tests and non-broadcasting scripts]' \
'*-v[Verbosity of the EVM.]' \
'*--verbosity[Verbosity of the EVM.]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--disable-block-gas-limit[Whether to disable the block gas limit checks]' \
'--no-gas-limit[Whether to disable the block gas limit checks]' \
'--isolate[Whether to enable isolation of calls. In isolation mode all top-level calls are executed as a separate transaction in a separate EVM context, enabling more precise gas accounting and transaction state changes]' \
'--alphanet[Whether to enable Alphanet features]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- Build source files from specified paths:_files' \
&& ret=0
;;
(flatten)
_arguments "${_arguments_options[@]}" : \
'-o+[The path to output the flattened contract]:PATH:_files' \
'--output=[The path to output the flattened contract]:PATH:_files' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':target_path -- The path to the contract to flatten:_files' \
&& ret=0
;;
(f)
_arguments "${_arguments_options[@]}" : \
'-o+[The path to output the flattened contract]:PATH:_files' \
'--output=[The path to output the flattened contract]:PATH:_files' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':target_path -- The path to the contract to flatten:_files' \
&& ret=0
;;
(fmt)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--check[Run in '\''check'\'' mode]' \
'-r[In '\''check'\'' and stdin modes, outputs raw formatted code instead of the diff]' \
'--raw[In '\''check'\'' and stdin modes, outputs raw formatted code instead of the diff]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- Path to the file, directory or '\''-'\'' to read from stdin:_files' \
&& ret=0
;;
(inspect)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--pretty[Pretty print the selected field, if supported]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':contract -- The identifier of the contract to inspect in the form `(<path>\:)?<contractname>`:_default' \
':field -- The contract artifact field to inspect:(abi bytecode deployedBytecode assembly legacyAssembly assemblyOptimized methodIdentifiers gasEstimates storageLayout devdoc ir irOptimized metadata userdoc ewasm errors events eof eof-init)' \
&& ret=0
;;
(in)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--pretty[Pretty print the selected field, if supported]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':contract -- The identifier of the contract to inspect in the form `(<path>\:)?<contractname>`:_default' \
':field -- The contract artifact field to inspect:(abi bytecode deployedBytecode assembly legacyAssembly assemblyOptimized methodIdentifiers gasEstimates storageLayout devdoc ir irOptimized metadata userdoc ewasm errors events eof eof-init)' \
&& ret=0
;;
(tree)
_arguments "${_arguments_options[@]}" : \
'--charset=[Character set to use in output]:CHARSET:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--no-dedupe[Do not de-duplicate (repeats all shared dependencies)]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(tr)
_arguments "${_arguments_options[@]}" : \
'--charset=[Character set to use in output]:CHARSET:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--no-dedupe[Do not de-duplicate (repeats all shared dependencies)]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(geiger)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'*--ignore=[Globs to ignore]:PATH:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--check[Run in "check" mode]' \
'--full[Print a report of all files, even if no unsafe functions are found]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- Paths to files or directories to detect:_files' \
&& ret=0
;;
(doc)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-o+[The doc'\''s output path]:PATH:_files -/' \
'--out=[The doc'\''s output path]:PATH:_files -/' \
'--hostname=[Hostname for serving documentation]:HOSTNAME:_default' \
'*-w+[Watch the given files or directories for changes]' \
'*--watch=[Watch the given files or directories for changes]' \
'--watch-delay=[File update debounce delay]:DELAY:_default' \
'-p+[Port for serving documentation]:PORT:_default' \
'--port=[Port for serving documentation]:PORT:_default' \
'--deployments=[The relative path to the \`hardhat-deploy\` or \`forge-deploy\` artifact directory. Leave blank for default]' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-b[Build the \`mdbook\` from generated files]' \
'--build[Build the \`mdbook\` from generated files]' \
'-s[Serve the documentation]' \
'--serve[Serve the documentation]' \
'--open[Open the documentation in a browser after serving]' \
'--no-restart[Do not restart the command while it'\''s still running]' \
'--run-all[Explicitly re-run all tests when a change is made]' \
'-i[Whether to create docs for external libraries]' \
'--include-libraries[Whether to create docs for external libraries]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(selectors)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_forge__selectors_commands" \
"*::: :->selectors" \
&& ret=0

    case $state in
    (selectors)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-selectors-command-$line[1]:"
        case $line[1] in
            (collision)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':first_contract -- The first of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
':second_contract -- The second of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
&& ret=0
;;
(co)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':first_contract -- The first of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
':second_contract -- The second of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
&& ret=0
;;
(upload)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--all[Upload selectors for all contracts in the project]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to upload selectors for:_default' \
&& ret=0
;;
(up)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--all[Upload selectors for all contracts in the project]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to upload selectors for:_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to list selectors for.:_default' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to list selectors for.:_default' \
&& ret=0
;;
(find)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':selector -- The selector to search for (with or without 0x prefix):_default' \
&& ret=0
;;
(f)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':selector -- The selector to search for (with or without 0x prefix):_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_forge__selectors__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-selectors-help-command-$line[1]:"
        case $line[1] in
            (collision)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(upload)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(find)
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
;;
(se)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_forge__selectors_commands" \
"*::: :->selectors" \
&& ret=0

    case $state in
    (selectors)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-selectors-command-$line[1]:"
        case $line[1] in
            (collision)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':first_contract -- The first of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
':second_contract -- The second of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
&& ret=0
;;
(co)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':first_contract -- The first of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
':second_contract -- The second of the two contracts for which to look selector collisions for, in the form `(<path>\:)?<contractname>`:_default' \
&& ret=0
;;
(upload)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--all[Upload selectors for all contracts in the project]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to upload selectors for:_default' \
&& ret=0
;;
(up)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--all[Upload selectors for all contracts in the project]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to upload selectors for:_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to list selectors for.:_default' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::contract -- The name of the contract to list selectors for.:_default' \
&& ret=0
;;
(find)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':selector -- The selector to search for (with or without 0x prefix):_default' \
&& ret=0
;;
(f)
_arguments "${_arguments_options[@]}" : \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':selector -- The selector to search for (with or without 0x prefix):_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_forge__selectors__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-selectors-help-command-$line[1]:"
        case $line[1] in
            (collision)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(upload)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(find)
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
;;
(generate)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_forge__generate_commands" \
"*::: :->generate" \
&& ret=0

    case $state in
    (generate)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-generate-command-$line[1]:"
        case $line[1] in
            (test)
_arguments "${_arguments_options[@]}" : \
'-c+[Contract name for test generation]:CONTRACT_NAME:_default' \
'--contract-name=[Contract name for test generation]:CONTRACT_NAME:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_forge__generate__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-generate-help-command-$line[1]:"
        case $line[1] in
            (test)
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
;;
(compiler)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_forge__compiler_commands" \
"*::: :->compiler" \
&& ret=0

    case $state in
    (compiler)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-compiler-command-$line[1]:"
        case $line[1] in
            (resolve)
_arguments "${_arguments_options[@]}" : \
'-r+[The root directory]:PATH:_files -/' \
'--root=[The root directory]:PATH:_files -/' \
'-s+[Skip files that match the given regex pattern]:REGEX:_default' \
'--skip=[Skip files that match the given regex pattern]:REGEX:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'*-v[Verbosity of the output.]' \
'*--verbosity[Verbosity of the output.]' \
'-j[Print as JSON]' \
'--json[Print as JSON]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(r)
_arguments "${_arguments_options[@]}" : \
'-r+[The root directory]:PATH:_files -/' \
'--root=[The root directory]:PATH:_files -/' \
'-s+[Skip files that match the given regex pattern]:REGEX:_default' \
'--skip=[Skip files that match the given regex pattern]:REGEX:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'*-v[Verbosity of the output.]' \
'*--verbosity[Verbosity of the output.]' \
'-j[Print as JSON]' \
'--json[Print as JSON]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_forge__compiler__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-compiler-help-command-$line[1]:"
        case $line[1] in
            (resolve)
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
;;
(soldeer)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_forge__soldeer_commands" \
"*::: :->soldeer" \
&& ret=0

    case $state in
    (soldeer)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-soldeer-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--clean[Clean the Foundry project by removing .gitmodules and the lib directory]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
'--rev=[A Git commit hash]:REV:_default' \
'--tag=[A Git tag]:TAG:_default' \
'--branch=[A Git branch]:BRANCH:_default' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-g[If set, this command will delete the existing remappings and re-create them]' \
'--regenerate-remappings[If set, this command will delete the existing remappings and re-create them]' \
'-d[If set, this command will install dependencies recursively (via git submodules or via soldeer)]' \
'--recursive-deps[If set, this command will install dependencies recursively (via git submodules or via soldeer)]' \
'--clean[Perform a clean install by re-installing all dependencies]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::dependency -- The dependency name and version, separated by a tilde. The version is always required:_default' \
'::remote_url -- The URL to the dependency zip file:_default' \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-g[If set, this command will delete the existing remappings and re-create them]' \
'--regenerate-remappings[If set, this command will delete the existing remappings and re-create them]' \
'-d[If set, this command will install the dependencies recursively (via submodules or via soldeer)]' \
'--recursive-deps[If set, this command will install the dependencies recursively (via submodules or via soldeer)]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(login)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(push)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'-d[If set, does not publish the package but generates a zip file that can be inspected]' \
'--dry-run[If set, does not publish the package but generates a zip file that can be inspected]' \
'--skip-warnings[Use this if you want to skip the warnings that can be triggered when trying to push dotfiles like .env]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':dependency -- The dependency name and version, separated by a tilde:_default' \
'::path -- Use this if the package you want to push is not in the current directory:_files' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':dependency -- The dependency name. Specifying a version is not necessary:_default' \
&& ret=0
;;
(version)
_arguments "${_arguments_options[@]}" : \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_forge__soldeer__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-soldeer-help-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(login)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(push)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(version)
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
;;
(eip712)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':target_path -- The path to the file from which to read struct definitions:_files' \
&& ret=0
;;
(bind-json)
_arguments "${_arguments_options[@]}" : \
'*--libraries=[Set pre-linked libraries]:LIBRARIES:_default' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES:_default' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION:_default' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT:_default' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP:_default' \
'--evm-version=[The target EVM version]:VERSION:_default' \
'--optimize=[Activate the Solidity optimizer]' \
'--optimizer-runs=[The number of runs specifies roughly how often each opcode of the deployed code will be executed across the life-time of the contract. This means it is a trade-off parameter between code size (deploy cost) and code execution cost (cost after deployment). An \`optimizer_runs\` parameter of \`1\` will produce short but expensive code. In contrast, a larger \`optimizer_runs\` parameter will produce longer but more gas efficient code]:RUNS:_default' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR:_default' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR:_default' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS:_default' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS:_default' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV:_default' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--color=[Log messages coloring]:COLOR:((auto\:"Intelligently guess whether to use color output (default)"
always\:"Force color output"
never\:"Force disable color output"))' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--build-info[Generate build info files]' \
'--eof[Use EOF-enabled solc binary. Enables via-ir and sets EVM version to Prague. Requires Docker to be installed]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'(-q --quiet)--verbose[Use verbose output]' \
'(--verbose)-q[Do not print log messages]' \
'(--verbose)--quiet[Do not print log messages]' \
'(-q --quiet --color)--json[Format log messages as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::out -- The path to write bindings to:_files' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_forge__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-help-command-$line[1]:"
        case $line[1] in
            (test)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(script)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(coverage)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(bind)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(build)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(clone)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(debug)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(remappings)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify-contract)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify-check)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify-bytecode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(create)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(generate-fig-spec)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(cache)
_arguments "${_arguments_options[@]}" : \
":: :_forge__help__cache_commands" \
"*::: :->cache" \
&& ret=0

    case $state in
    (cache)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-help-cache-command-$line[1]:"
        case $line[1] in
            (clean)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(snapshot)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(config)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(flatten)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fmt)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(inspect)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(tree)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(geiger)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(doc)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(selectors)
_arguments "${_arguments_options[@]}" : \
":: :_forge__help__selectors_commands" \
"*::: :->selectors" \
&& ret=0

    case $state in
    (selectors)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-help-selectors-command-$line[1]:"
        case $line[1] in
            (collision)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(upload)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(find)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(generate)
_arguments "${_arguments_options[@]}" : \
":: :_forge__help__generate_commands" \
"*::: :->generate" \
&& ret=0

    case $state in
    (generate)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-help-generate-command-$line[1]:"
        case $line[1] in
            (test)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(compiler)
_arguments "${_arguments_options[@]}" : \
":: :_forge__help__compiler_commands" \
"*::: :->compiler" \
&& ret=0

    case $state in
    (compiler)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-help-compiler-command-$line[1]:"
        case $line[1] in
            (resolve)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(soldeer)
_arguments "${_arguments_options[@]}" : \
":: :_forge__help__soldeer_commands" \
"*::: :->soldeer" \
&& ret=0

    case $state in
    (soldeer)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:forge-help-soldeer-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(login)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(push)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(version)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(eip712)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(bind-json)
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

(( $+functions[_forge_commands] )) ||
_forge_commands() {
    local commands; commands=(
'test:Run the project'\''s tests' \
't:Run the project'\''s tests' \
'script:Run a smart contract as a script, building transactions that can be sent onchain' \
'coverage:Generate coverage reports' \
'bind:Generate Rust bindings for smart contracts' \
'build:Build the project'\''s smart contracts' \
'b:Build the project'\''s smart contracts' \
'compile:Build the project'\''s smart contracts' \
'clone:Clone a contract from Etherscan' \
'debug:Debugs a single smart contract as a script' \
'd:Debugs a single smart contract as a script' \
'update:Update one or multiple dependencies' \
'u:Update one or multiple dependencies' \
'install:Install one or multiple dependencies' \
'i:Install one or multiple dependencies' \
'remove:Remove one or multiple dependencies' \
'rm:Remove one or multiple dependencies' \
'remappings:Get the automatically inferred remappings for the project' \
're:Get the automatically inferred remappings for the project' \
'verify-contract:Verify smart contracts on Etherscan' \
'v:Verify smart contracts on Etherscan' \
'verify-check:Check verification status on Etherscan' \
'vc:Check verification status on Etherscan' \
'verify-bytecode:Verify the deployed bytecode against its source on Etherscan' \
'vb:Verify the deployed bytecode against its source on Etherscan' \
'create:Deploy a smart contract' \
'c:Deploy a smart contract' \
'init:Create a new Forge project' \
'completions:Generate shell completions script' \
'com:Generate shell completions script' \
'generate-fig-spec:Generate Fig autocompletion spec' \
'fig:Generate Fig autocompletion spec' \
'clean:Remove the build artifacts and cache directories' \
'cl:Remove the build artifacts and cache directories' \
'cache:Manage the Foundry cache' \
'snapshot:Create a gas snapshot of each test'\''s gas usage' \
's:Create a gas snapshot of each test'\''s gas usage' \
'config:Display the current config' \
'co:Display the current config' \
'flatten:Flatten a source file and all of its imports into one file' \
'f:Flatten a source file and all of its imports into one file' \
'fmt:Format Solidity source files' \
'inspect:Get specialized information about a smart contract' \
'in:Get specialized information about a smart contract' \
'tree:Display a tree visualization of the project'\''s dependency graph' \
'tr:Display a tree visualization of the project'\''s dependency graph' \
'geiger:Detects usage of unsafe cheat codes in a project and its dependencies' \
'doc:Generate documentation for the project' \
'selectors:Function selector utilities' \
'se:Function selector utilities' \
'generate:Generate scaffold files' \
'compiler:Compiler utilities' \
'soldeer:Soldeer dependency manager' \
'eip712:Generate EIP-712 struct encodings for structs from a given file' \
'bind-json:Generate bindings for serialization/deserialization of project structs via JSON cheatcodes' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge commands' commands "$@"
}
(( $+functions[_forge__bind_commands] )) ||
_forge__bind_commands() {
    local commands; commands=()
    _describe -t commands 'forge bind commands' commands "$@"
}
(( $+functions[_forge__bind-json_commands] )) ||
_forge__bind-json_commands() {
    local commands; commands=()
    _describe -t commands 'forge bind-json commands' commands "$@"
}
(( $+functions[_forge__build_commands] )) ||
_forge__build_commands() {
    local commands; commands=()
    _describe -t commands 'forge build commands' commands "$@"
}
(( $+functions[_forge__cache_commands] )) ||
_forge__cache_commands() {
    local commands; commands=(
'clean:Cleans cached data from the global foundry directory' \
'ls:Shows cached data from the global foundry directory' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge cache commands' commands "$@"
}
(( $+functions[_forge__cache__clean_commands] )) ||
_forge__cache__clean_commands() {
    local commands; commands=()
    _describe -t commands 'forge cache clean commands' commands "$@"
}
(( $+functions[_forge__cache__help_commands] )) ||
_forge__cache__help_commands() {
    local commands; commands=(
'clean:Cleans cached data from the global foundry directory' \
'ls:Shows cached data from the global foundry directory' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge cache help commands' commands "$@"
}
(( $+functions[_forge__cache__help__clean_commands] )) ||
_forge__cache__help__clean_commands() {
    local commands; commands=()
    _describe -t commands 'forge cache help clean commands' commands "$@"
}
(( $+functions[_forge__cache__help__help_commands] )) ||
_forge__cache__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'forge cache help help commands' commands "$@"
}
(( $+functions[_forge__cache__help__ls_commands] )) ||
_forge__cache__help__ls_commands() {
    local commands; commands=()
    _describe -t commands 'forge cache help ls commands' commands "$@"
}
(( $+functions[_forge__cache__ls_commands] )) ||
_forge__cache__ls_commands() {
    local commands; commands=()
    _describe -t commands 'forge cache ls commands' commands "$@"
}
(( $+functions[_forge__clean_commands] )) ||
_forge__clean_commands() {
    local commands; commands=()
    _describe -t commands 'forge clean commands' commands "$@"
}
(( $+functions[_forge__clone_commands] )) ||
_forge__clone_commands() {
    local commands; commands=()
    _describe -t commands 'forge clone commands' commands "$@"
}
(( $+functions[_forge__compiler_commands] )) ||
_forge__compiler_commands() {
    local commands; commands=(
'resolve:Retrieves the resolved version(s) of the compiler within the project' \
'r:Retrieves the resolved version(s) of the compiler within the project' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge compiler commands' commands "$@"
}
(( $+functions[_forge__compiler__help_commands] )) ||
_forge__compiler__help_commands() {
    local commands; commands=(
'resolve:Retrieves the resolved version(s) of the compiler within the project' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge compiler help commands' commands "$@"
}
(( $+functions[_forge__compiler__help__help_commands] )) ||
_forge__compiler__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'forge compiler help help commands' commands "$@"
}
(( $+functions[_forge__compiler__help__resolve_commands] )) ||
_forge__compiler__help__resolve_commands() {
    local commands; commands=()
    _describe -t commands 'forge compiler help resolve commands' commands "$@"
}
(( $+functions[_forge__compiler__resolve_commands] )) ||
_forge__compiler__resolve_commands() {
    local commands; commands=()
    _describe -t commands 'forge compiler resolve commands' commands "$@"
}
(( $+functions[_forge__completions_commands] )) ||
_forge__completions_commands() {
    local commands; commands=()
    _describe -t commands 'forge completions commands' commands "$@"
}
(( $+functions[_forge__config_commands] )) ||
_forge__config_commands() {
    local commands; commands=()
    _describe -t commands 'forge config commands' commands "$@"
}
(( $+functions[_forge__coverage_commands] )) ||
_forge__coverage_commands() {
    local commands; commands=()
    _describe -t commands 'forge coverage commands' commands "$@"
}
(( $+functions[_forge__create_commands] )) ||
_forge__create_commands() {
    local commands; commands=()
    _describe -t commands 'forge create commands' commands "$@"
}
(( $+functions[_forge__debug_commands] )) ||
_forge__debug_commands() {
    local commands; commands=()
    _describe -t commands 'forge debug commands' commands "$@"
}
(( $+functions[_forge__doc_commands] )) ||
_forge__doc_commands() {
    local commands; commands=()
    _describe -t commands 'forge doc commands' commands "$@"
}
(( $+functions[_forge__eip712_commands] )) ||
_forge__eip712_commands() {
    local commands; commands=()
    _describe -t commands 'forge eip712 commands' commands "$@"
}
(( $+functions[_forge__flatten_commands] )) ||
_forge__flatten_commands() {
    local commands; commands=()
    _describe -t commands 'forge flatten commands' commands "$@"
}
(( $+functions[_forge__fmt_commands] )) ||
_forge__fmt_commands() {
    local commands; commands=()
    _describe -t commands 'forge fmt commands' commands "$@"
}
(( $+functions[_forge__geiger_commands] )) ||
_forge__geiger_commands() {
    local commands; commands=()
    _describe -t commands 'forge geiger commands' commands "$@"
}
(( $+functions[_forge__generate_commands] )) ||
_forge__generate_commands() {
    local commands; commands=(
'test:Scaffolds test file for given contract' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge generate commands' commands "$@"
}
(( $+functions[_forge__generate__help_commands] )) ||
_forge__generate__help_commands() {
    local commands; commands=(
'test:Scaffolds test file for given contract' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge generate help commands' commands "$@"
}
(( $+functions[_forge__generate__help__help_commands] )) ||
_forge__generate__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'forge generate help help commands' commands "$@"
}
(( $+functions[_forge__generate__help__test_commands] )) ||
_forge__generate__help__test_commands() {
    local commands; commands=()
    _describe -t commands 'forge generate help test commands' commands "$@"
}
(( $+functions[_forge__generate__test_commands] )) ||
_forge__generate__test_commands() {
    local commands; commands=()
    _describe -t commands 'forge generate test commands' commands "$@"
}
(( $+functions[_forge__generate-fig-spec_commands] )) ||
_forge__generate-fig-spec_commands() {
    local commands; commands=()
    _describe -t commands 'forge generate-fig-spec commands' commands "$@"
}
(( $+functions[_forge__help_commands] )) ||
_forge__help_commands() {
    local commands; commands=(
'test:Run the project'\''s tests' \
'script:Run a smart contract as a script, building transactions that can be sent onchain' \
'coverage:Generate coverage reports' \
'bind:Generate Rust bindings for smart contracts' \
'build:Build the project'\''s smart contracts' \
'clone:Clone a contract from Etherscan' \
'debug:Debugs a single smart contract as a script' \
'update:Update one or multiple dependencies' \
'install:Install one or multiple dependencies' \
'remove:Remove one or multiple dependencies' \
'remappings:Get the automatically inferred remappings for the project' \
'verify-contract:Verify smart contracts on Etherscan' \
'verify-check:Check verification status on Etherscan' \
'verify-bytecode:Verify the deployed bytecode against its source on Etherscan' \
'create:Deploy a smart contract' \
'init:Create a new Forge project' \
'completions:Generate shell completions script' \
'generate-fig-spec:Generate Fig autocompletion spec' \
'clean:Remove the build artifacts and cache directories' \
'cache:Manage the Foundry cache' \
'snapshot:Create a gas snapshot of each test'\''s gas usage' \
'config:Display the current config' \
'flatten:Flatten a source file and all of its imports into one file' \
'fmt:Format Solidity source files' \
'inspect:Get specialized information about a smart contract' \
'tree:Display a tree visualization of the project'\''s dependency graph' \
'geiger:Detects usage of unsafe cheat codes in a project and its dependencies' \
'doc:Generate documentation for the project' \
'selectors:Function selector utilities' \
'generate:Generate scaffold files' \
'compiler:Compiler utilities' \
'soldeer:Soldeer dependency manager' \
'eip712:Generate EIP-712 struct encodings for structs from a given file' \
'bind-json:Generate bindings for serialization/deserialization of project structs via JSON cheatcodes' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge help commands' commands "$@"
}
(( $+functions[_forge__help__bind_commands] )) ||
_forge__help__bind_commands() {
    local commands; commands=()
    _describe -t commands 'forge help bind commands' commands "$@"
}
(( $+functions[_forge__help__bind-json_commands] )) ||
_forge__help__bind-json_commands() {
    local commands; commands=()
    _describe -t commands 'forge help bind-json commands' commands "$@"
}
(( $+functions[_forge__help__build_commands] )) ||
_forge__help__build_commands() {
    local commands; commands=()
    _describe -t commands 'forge help build commands' commands "$@"
}
(( $+functions[_forge__help__cache_commands] )) ||
_forge__help__cache_commands() {
    local commands; commands=(
'clean:Cleans cached data from the global foundry directory' \
'ls:Shows cached data from the global foundry directory' \
    )
    _describe -t commands 'forge help cache commands' commands "$@"
}
(( $+functions[_forge__help__cache__clean_commands] )) ||
_forge__help__cache__clean_commands() {
    local commands; commands=()
    _describe -t commands 'forge help cache clean commands' commands "$@"
}
(( $+functions[_forge__help__cache__ls_commands] )) ||
_forge__help__cache__ls_commands() {
    local commands; commands=()
    _describe -t commands 'forge help cache ls commands' commands "$@"
}
(( $+functions[_forge__help__clean_commands] )) ||
_forge__help__clean_commands() {
    local commands; commands=()
    _describe -t commands 'forge help clean commands' commands "$@"
}
(( $+functions[_forge__help__clone_commands] )) ||
_forge__help__clone_commands() {
    local commands; commands=()
    _describe -t commands 'forge help clone commands' commands "$@"
}
(( $+functions[_forge__help__compiler_commands] )) ||
_forge__help__compiler_commands() {
    local commands; commands=(
'resolve:Retrieves the resolved version(s) of the compiler within the project' \
    )
    _describe -t commands 'forge help compiler commands' commands "$@"
}
(( $+functions[_forge__help__compiler__resolve_commands] )) ||
_forge__help__compiler__resolve_commands() {
    local commands; commands=()
    _describe -t commands 'forge help compiler resolve commands' commands "$@"
}
(( $+functions[_forge__help__completions_commands] )) ||
_forge__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'forge help completions commands' commands "$@"
}
(( $+functions[_forge__help__config_commands] )) ||
_forge__help__config_commands() {
    local commands; commands=()
    _describe -t commands 'forge help config commands' commands "$@"
}
(( $+functions[_forge__help__coverage_commands] )) ||
_forge__help__coverage_commands() {
    local commands; commands=()
    _describe -t commands 'forge help coverage commands' commands "$@"
}
(( $+functions[_forge__help__create_commands] )) ||
_forge__help__create_commands() {
    local commands; commands=()
    _describe -t commands 'forge help create commands' commands "$@"
}
(( $+functions[_forge__help__debug_commands] )) ||
_forge__help__debug_commands() {
    local commands; commands=()
    _describe -t commands 'forge help debug commands' commands "$@"
}
(( $+functions[_forge__help__doc_commands] )) ||
_forge__help__doc_commands() {
    local commands; commands=()
    _describe -t commands 'forge help doc commands' commands "$@"
}
(( $+functions[_forge__help__eip712_commands] )) ||
_forge__help__eip712_commands() {
    local commands; commands=()
    _describe -t commands 'forge help eip712 commands' commands "$@"
}
(( $+functions[_forge__help__flatten_commands] )) ||
_forge__help__flatten_commands() {
    local commands; commands=()
    _describe -t commands 'forge help flatten commands' commands "$@"
}
(( $+functions[_forge__help__fmt_commands] )) ||
_forge__help__fmt_commands() {
    local commands; commands=()
    _describe -t commands 'forge help fmt commands' commands "$@"
}
(( $+functions[_forge__help__geiger_commands] )) ||
_forge__help__geiger_commands() {
    local commands; commands=()
    _describe -t commands 'forge help geiger commands' commands "$@"
}
(( $+functions[_forge__help__generate_commands] )) ||
_forge__help__generate_commands() {
    local commands; commands=(
'test:Scaffolds test file for given contract' \
    )
    _describe -t commands 'forge help generate commands' commands "$@"
}
(( $+functions[_forge__help__generate__test_commands] )) ||
_forge__help__generate__test_commands() {
    local commands; commands=()
    _describe -t commands 'forge help generate test commands' commands "$@"
}
(( $+functions[_forge__help__generate-fig-spec_commands] )) ||
_forge__help__generate-fig-spec_commands() {
    local commands; commands=()
    _describe -t commands 'forge help generate-fig-spec commands' commands "$@"
}
(( $+functions[_forge__help__help_commands] )) ||
_forge__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'forge help help commands' commands "$@"
}
(( $+functions[_forge__help__init_commands] )) ||
_forge__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'forge help init commands' commands "$@"
}
(( $+functions[_forge__help__inspect_commands] )) ||
_forge__help__inspect_commands() {
    local commands; commands=()
    _describe -t commands 'forge help inspect commands' commands "$@"
}
(( $+functions[_forge__help__install_commands] )) ||
_forge__help__install_commands() {
    local commands; commands=()
    _describe -t commands 'forge help install commands' commands "$@"
}
(( $+functions[_forge__help__remappings_commands] )) ||
_forge__help__remappings_commands() {
    local commands; commands=()
    _describe -t commands 'forge help remappings commands' commands "$@"
}
(( $+functions[_forge__help__remove_commands] )) ||
_forge__help__remove_commands() {
    local commands; commands=()
    _describe -t commands 'forge help remove commands' commands "$@"
}
(( $+functions[_forge__help__script_commands] )) ||
_forge__help__script_commands() {
    local commands; commands=()
    _describe -t commands 'forge help script commands' commands "$@"
}
(( $+functions[_forge__help__selectors_commands] )) ||
_forge__help__selectors_commands() {
    local commands; commands=(
'collision:Check for selector collisions between contracts' \
'upload:Upload selectors to registry' \
'list:List selectors from current workspace' \
'find:Find if a selector is present in the project' \
    )
    _describe -t commands 'forge help selectors commands' commands "$@"
}
(( $+functions[_forge__help__selectors__collision_commands] )) ||
_forge__help__selectors__collision_commands() {
    local commands; commands=()
    _describe -t commands 'forge help selectors collision commands' commands "$@"
}
(( $+functions[_forge__help__selectors__find_commands] )) ||
_forge__help__selectors__find_commands() {
    local commands; commands=()
    _describe -t commands 'forge help selectors find commands' commands "$@"
}
(( $+functions[_forge__help__selectors__list_commands] )) ||
_forge__help__selectors__list_commands() {
    local commands; commands=()
    _describe -t commands 'forge help selectors list commands' commands "$@"
}
(( $+functions[_forge__help__selectors__upload_commands] )) ||
_forge__help__selectors__upload_commands() {
    local commands; commands=()
    _describe -t commands 'forge help selectors upload commands' commands "$@"
}
(( $+functions[_forge__help__snapshot_commands] )) ||
_forge__help__snapshot_commands() {
    local commands; commands=()
    _describe -t commands 'forge help snapshot commands' commands "$@"
}
(( $+functions[_forge__help__soldeer_commands] )) ||
_forge__help__soldeer_commands() {
    local commands; commands=(
'init:Convert a Foundry project to use Soldeer' \
'install:Install a dependency' \
'update:Update dependencies by reading the config file' \
'login:Log into the central repository to push packages' \
'push:Push a dependency to the repository' \
'uninstall:Uninstall a dependency' \
'version:Display the version of Soldeer' \
    )
    _describe -t commands 'forge help soldeer commands' commands "$@"
}
(( $+functions[_forge__help__soldeer__init_commands] )) ||
_forge__help__soldeer__init_commands() {
    local commands; commands=()
    _describe -t commands 'forge help soldeer init commands' commands "$@"
}
(( $+functions[_forge__help__soldeer__install_commands] )) ||
_forge__help__soldeer__install_commands() {
    local commands; commands=()
    _describe -t commands 'forge help soldeer install commands' commands "$@"
}
(( $+functions[_forge__help__soldeer__login_commands] )) ||
_forge__help__soldeer__login_commands() {
    local commands; commands=()
    _describe -t commands 'forge help soldeer login commands' commands "$@"
}
(( $+functions[_forge__help__soldeer__push_commands] )) ||
_forge__help__soldeer__push_commands() {
    local commands; commands=()
    _describe -t commands 'forge help soldeer push commands' commands "$@"
}
(( $+functions[_forge__help__soldeer__uninstall_commands] )) ||
_forge__help__soldeer__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'forge help soldeer uninstall commands' commands "$@"
}
(( $+functions[_forge__help__soldeer__update_commands] )) ||
_forge__help__soldeer__update_commands() {
    local commands; commands=()
    _describe -t commands 'forge help soldeer update commands' commands "$@"
}
(( $+functions[_forge__help__soldeer__version_commands] )) ||
_forge__help__soldeer__version_commands() {
    local commands; commands=()
    _describe -t commands 'forge help soldeer version commands' commands "$@"
}
(( $+functions[_forge__help__test_commands] )) ||
_forge__help__test_commands() {
    local commands; commands=()
    _describe -t commands 'forge help test commands' commands "$@"
}
(( $+functions[_forge__help__tree_commands] )) ||
_forge__help__tree_commands() {
    local commands; commands=()
    _describe -t commands 'forge help tree commands' commands "$@"
}
(( $+functions[_forge__help__update_commands] )) ||
_forge__help__update_commands() {
    local commands; commands=()
    _describe -t commands 'forge help update commands' commands "$@"
}
(( $+functions[_forge__help__verify-bytecode_commands] )) ||
_forge__help__verify-bytecode_commands() {
    local commands; commands=()
    _describe -t commands 'forge help verify-bytecode commands' commands "$@"
}
(( $+functions[_forge__help__verify-check_commands] )) ||
_forge__help__verify-check_commands() {
    local commands; commands=()
    _describe -t commands 'forge help verify-check commands' commands "$@"
}
(( $+functions[_forge__help__verify-contract_commands] )) ||
_forge__help__verify-contract_commands() {
    local commands; commands=()
    _describe -t commands 'forge help verify-contract commands' commands "$@"
}
(( $+functions[_forge__init_commands] )) ||
_forge__init_commands() {
    local commands; commands=()
    _describe -t commands 'forge init commands' commands "$@"
}
(( $+functions[_forge__inspect_commands] )) ||
_forge__inspect_commands() {
    local commands; commands=()
    _describe -t commands 'forge inspect commands' commands "$@"
}
(( $+functions[_forge__install_commands] )) ||
_forge__install_commands() {
    local commands; commands=()
    _describe -t commands 'forge install commands' commands "$@"
}
(( $+functions[_forge__remappings_commands] )) ||
_forge__remappings_commands() {
    local commands; commands=()
    _describe -t commands 'forge remappings commands' commands "$@"
}
(( $+functions[_forge__remove_commands] )) ||
_forge__remove_commands() {
    local commands; commands=()
    _describe -t commands 'forge remove commands' commands "$@"
}
(( $+functions[_forge__script_commands] )) ||
_forge__script_commands() {
    local commands; commands=()
    _describe -t commands 'forge script commands' commands "$@"
}
(( $+functions[_forge__selectors_commands] )) ||
_forge__selectors_commands() {
    local commands; commands=(
'collision:Check for selector collisions between contracts' \
'co:Check for selector collisions between contracts' \
'upload:Upload selectors to registry' \
'up:Upload selectors to registry' \
'list:List selectors from current workspace' \
'ls:List selectors from current workspace' \
'find:Find if a selector is present in the project' \
'f:Find if a selector is present in the project' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge selectors commands' commands "$@"
}
(( $+functions[_forge__selectors__collision_commands] )) ||
_forge__selectors__collision_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors collision commands' commands "$@"
}
(( $+functions[_forge__selectors__find_commands] )) ||
_forge__selectors__find_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors find commands' commands "$@"
}
(( $+functions[_forge__selectors__help_commands] )) ||
_forge__selectors__help_commands() {
    local commands; commands=(
'collision:Check for selector collisions between contracts' \
'upload:Upload selectors to registry' \
'list:List selectors from current workspace' \
'find:Find if a selector is present in the project' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge selectors help commands' commands "$@"
}
(( $+functions[_forge__selectors__help__collision_commands] )) ||
_forge__selectors__help__collision_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors help collision commands' commands "$@"
}
(( $+functions[_forge__selectors__help__find_commands] )) ||
_forge__selectors__help__find_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors help find commands' commands "$@"
}
(( $+functions[_forge__selectors__help__help_commands] )) ||
_forge__selectors__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors help help commands' commands "$@"
}
(( $+functions[_forge__selectors__help__list_commands] )) ||
_forge__selectors__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors help list commands' commands "$@"
}
(( $+functions[_forge__selectors__help__upload_commands] )) ||
_forge__selectors__help__upload_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors help upload commands' commands "$@"
}
(( $+functions[_forge__selectors__list_commands] )) ||
_forge__selectors__list_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors list commands' commands "$@"
}
(( $+functions[_forge__selectors__upload_commands] )) ||
_forge__selectors__upload_commands() {
    local commands; commands=()
    _describe -t commands 'forge selectors upload commands' commands "$@"
}
(( $+functions[_forge__snapshot_commands] )) ||
_forge__snapshot_commands() {
    local commands; commands=()
    _describe -t commands 'forge snapshot commands' commands "$@"
}
(( $+functions[_forge__soldeer_commands] )) ||
_forge__soldeer_commands() {
    local commands; commands=(
'init:Convert a Foundry project to use Soldeer' \
'install:Install a dependency' \
'update:Update dependencies by reading the config file' \
'login:Log into the central repository to push packages' \
'push:Push a dependency to the repository' \
'uninstall:Uninstall a dependency' \
'version:Display the version of Soldeer' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge soldeer commands' commands "$@"
}
(( $+functions[_forge__soldeer__help_commands] )) ||
_forge__soldeer__help_commands() {
    local commands; commands=(
'init:Convert a Foundry project to use Soldeer' \
'install:Install a dependency' \
'update:Update dependencies by reading the config file' \
'login:Log into the central repository to push packages' \
'push:Push a dependency to the repository' \
'uninstall:Uninstall a dependency' \
'version:Display the version of Soldeer' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'forge soldeer help commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__help_commands] )) ||
_forge__soldeer__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help help commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__init_commands] )) ||
_forge__soldeer__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help init commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__install_commands] )) ||
_forge__soldeer__help__install_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help install commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__login_commands] )) ||
_forge__soldeer__help__login_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help login commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__push_commands] )) ||
_forge__soldeer__help__push_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help push commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__uninstall_commands] )) ||
_forge__soldeer__help__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help uninstall commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__update_commands] )) ||
_forge__soldeer__help__update_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help update commands' commands "$@"
}
(( $+functions[_forge__soldeer__help__version_commands] )) ||
_forge__soldeer__help__version_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer help version commands' commands "$@"
}
(( $+functions[_forge__soldeer__init_commands] )) ||
_forge__soldeer__init_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer init commands' commands "$@"
}
(( $+functions[_forge__soldeer__install_commands] )) ||
_forge__soldeer__install_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer install commands' commands "$@"
}
(( $+functions[_forge__soldeer__login_commands] )) ||
_forge__soldeer__login_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer login commands' commands "$@"
}
(( $+functions[_forge__soldeer__push_commands] )) ||
_forge__soldeer__push_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer push commands' commands "$@"
}
(( $+functions[_forge__soldeer__uninstall_commands] )) ||
_forge__soldeer__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer uninstall commands' commands "$@"
}
(( $+functions[_forge__soldeer__update_commands] )) ||
_forge__soldeer__update_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer update commands' commands "$@"
}
(( $+functions[_forge__soldeer__version_commands] )) ||
_forge__soldeer__version_commands() {
    local commands; commands=()
    _describe -t commands 'forge soldeer version commands' commands "$@"
}
(( $+functions[_forge__test_commands] )) ||
_forge__test_commands() {
    local commands; commands=()
    _describe -t commands 'forge test commands' commands "$@"
}
(( $+functions[_forge__tree_commands] )) ||
_forge__tree_commands() {
    local commands; commands=()
    _describe -t commands 'forge tree commands' commands "$@"
}
(( $+functions[_forge__update_commands] )) ||
_forge__update_commands() {
    local commands; commands=()
    _describe -t commands 'forge update commands' commands "$@"
}
(( $+functions[_forge__verify-bytecode_commands] )) ||
_forge__verify-bytecode_commands() {
    local commands; commands=()
    _describe -t commands 'forge verify-bytecode commands' commands "$@"
}
(( $+functions[_forge__verify-check_commands] )) ||
_forge__verify-check_commands() {
    local commands; commands=()
    _describe -t commands 'forge verify-check commands' commands "$@"
}
(( $+functions[_forge__verify-contract_commands] )) ||
_forge__verify-contract_commands() {
    local commands; commands=()
    _describe -t commands 'forge verify-contract commands' commands "$@"
}

if [ "$funcstack[1]" = "_forge" ]; then
    _forge "$@"
else
    compdef _forge forge
fi
