#compdef cast

autoload -U is-at-least

_cast() {
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
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_cast_commands" \
"*::: :->cast" \
&& ret=0
    case $state in
    (cast)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-command-$line[1]:"
        case $line[1] in
            (max-int)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The integer type to get the maximum value of:' \
&& ret=0
;;
(--max-int)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The integer type to get the maximum value of:' \
&& ret=0
;;
(maxi)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The integer type to get the maximum value of:' \
&& ret=0
;;
(min-int)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The integer type to get the minimum value of:' \
&& ret=0
;;
(--min-int)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The integer type to get the minimum value of:' \
&& ret=0
;;
(mini)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The integer type to get the minimum value of:' \
&& ret=0
;;
(max-uint)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The unsigned integer type to get the maximum value of:' \
&& ret=0
;;
(--max-uint)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The unsigned integer type to get the maximum value of:' \
&& ret=0
;;
(maxu)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::type -- The unsigned integer type to get the maximum value of:' \
&& ret=0
;;
(address-zero)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(--address-zero)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(az)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(hash-zero)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(--hash-zero)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(hz)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(from-utf8)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::text -- The text to convert:' \
&& ret=0
;;
(--from-ascii)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::text -- The text to convert:' \
&& ret=0
;;
(--from-utf8)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::text -- The text to convert:' \
&& ret=0
;;
(from-ascii)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::text -- The text to convert:' \
&& ret=0
;;
(fu)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::text -- The text to convert:' \
&& ret=0
;;
(fa)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::text -- The text to convert:' \
&& ret=0
;;
(concat-hex)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'*::data -- The data to concatenate:' \
&& ret=0
;;
(--concat-hex)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'*::data -- The data to concatenate:' \
&& ret=0
;;
(ch)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'*::data -- The data to concatenate:' \
&& ret=0
;;
(from-bin)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(--from-bin)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(from-binx)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(fb)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(to-hexdata)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::input -- The input to normalize:' \
&& ret=0
;;
(--to-hexdata)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::input -- The input to normalize:' \
&& ret=0
;;
(thd)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::input -- The input to normalize:' \
&& ret=0
;;
(2hd)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::input -- The input to normalize:' \
&& ret=0
;;
(to-check-sum-address)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::address -- The address to convert:' \
&& ret=0
;;
(--to-checksum-address)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::address -- The address to convert:' \
&& ret=0
;;
(--to-checksum)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::address -- The address to convert:' \
&& ret=0
;;
(to-checksum)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::address -- The address to convert:' \
&& ret=0
;;
(ta)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::address -- The address to convert:' \
&& ret=0
;;
(2a)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::address -- The address to convert:' \
&& ret=0
;;
(to-ascii)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(--to-ascii)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(tas)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(2as)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(to-utf8)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(--to-utf8)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(tu8)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(2u8)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::hexdata -- The hex data to convert:' \
&& ret=0
;;
(from-fixed-point)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::decimals -- The number of decimals to use:' \
'::value -- The value to convert:' \
&& ret=0
;;
(--from-fix)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::decimals -- The number of decimals to use:' \
'::value -- The value to convert:' \
&& ret=0
;;
(ff)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::decimals -- The number of decimals to use:' \
'::value -- The value to convert:' \
&& ret=0
;;
(to-bytes32)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes -- The hex data to convert:' \
&& ret=0
;;
(--to-bytes32)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes -- The hex data to convert:' \
&& ret=0
;;
(tb)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes -- The hex data to convert:' \
&& ret=0
;;
(2b)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes -- The hex data to convert:' \
&& ret=0
;;
(to-fixed-point)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::decimals -- The number of decimals to use:' \
'::value -- The value to convert:' \
&& ret=0
;;
(--to-fix)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::decimals -- The number of decimals to use:' \
'::value -- The value to convert:' \
&& ret=0
;;
(tf)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::decimals -- The number of decimals to use:' \
'::value -- The value to convert:' \
&& ret=0
;;
(2f)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::decimals -- The number of decimals to use:' \
'::value -- The value to convert:' \
&& ret=0
;;
(to-uint256)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(--to-uint256)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(tu)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(2u)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(to-int256)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(--to-int256)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(ti)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(2i)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(shl)
_arguments "${_arguments_options[@]}" : \
'--base-in=[The input base]:BASE_IN: ' \
'--base-out=[The output base]:BASE_OUT: ' \
'-h[Print help]' \
'--help[Print help]' \
':value -- The value to shift:' \
':bits -- The number of bits to shift:' \
&& ret=0
;;
(shr)
_arguments "${_arguments_options[@]}" : \
'--base-in=[The input base,]:BASE_IN: ' \
'--base-out=[The output base,]:BASE_OUT: ' \
'-h[Print help]' \
'--help[Print help]' \
':value -- The value to shift:' \
':bits -- The number of bits to shift:' \
&& ret=0
;;
(to-unit)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert to (ether, gwei, wei):' \
&& ret=0
;;
(--to-unit)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert to (ether, gwei, wei):' \
&& ret=0
;;
(tun)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert to (ether, gwei, wei):' \
&& ret=0
;;
(2un)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert to (ether, gwei, wei):' \
&& ret=0
;;
(to-wei)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert from (ether, gwei, wei):' \
&& ret=0
;;
(--to-wei)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert from (ether, gwei, wei):' \
&& ret=0
;;
(tw)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert from (ether, gwei, wei):' \
&& ret=0
;;
(2w)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert from (ether, gwei, wei):' \
&& ret=0
;;
(from-wei)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert from (ether, gwei, wei):' \
&& ret=0
;;
(--from-wei)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert from (ether, gwei, wei):' \
&& ret=0
;;
(fw)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
'::unit -- The unit to convert from (ether, gwei, wei):' \
&& ret=0
;;
(to-rlp)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
&& ret=0
;;
(--to-rlp)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::value -- The value to convert:' \
&& ret=0
;;
(from-rlp)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The RLP hex-encoded data:' \
&& ret=0
;;
(--from-rlp)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The RLP hex-encoded data:' \
&& ret=0
;;
(to-hex)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(--to-hex)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(th)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(2h)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(to-dec)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(--to-dec)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(td)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(2d)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
&& ret=0
;;
(to-base)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
'::base_out -- The output base:' \
&& ret=0
;;
(--to-base)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
'::base_out -- The output base:' \
&& ret=0
;;
(--to-radix)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
'::base_out -- The output base:' \
&& ret=0
;;
(to-radix)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
'::base_out -- The output base:' \
&& ret=0
;;
(tr)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
'::base_out -- The output base:' \
&& ret=0
;;
(2r)
_arguments "${_arguments_options[@]}" : \
'-i+[The input base]:BASE_IN: ' \
'--base-in=[The input base]:BASE_IN: ' \
'-h[Print help]' \
'--help[Print help]' \
'::value -- The value to convert:' \
'::base_out -- The output base:' \
&& ret=0
;;
(access-list)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-j[Print the access list as JSON]' \
'--json[Print the access list as JSON]' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'*::args -- The arguments of the function to call:' \
&& ret=0
;;
(ac)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-j[Print the access list as JSON]' \
'--json[Print the access list as JSON]' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'*::args -- The arguments of the function to call:' \
&& ret=0
;;
(acl)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-j[Print the access list as JSON]' \
'--json[Print the access list as JSON]' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'*::args -- The arguments of the function to call:' \
&& ret=0
;;
(logs)
_arguments "${_arguments_options[@]}" : \
'--from-block=[The block height to start query at]:FROM_BLOCK: ' \
'--to-block=[The block height to stop query at]:TO_BLOCK: ' \
'--address=[The contract address to filter on]:ADDRESS: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--subscribe[If the RPC type and endpoints supports \`eth_subscribe\` stream logs instead of printing and exiting. Will continue until interrupted or TO_BLOCK is reached]' \
'-j[Print the logs as JSON.s]' \
'--json[Print the logs as JSON.s]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::sig_or_topic -- The signature of the event to filter logs by which will be converted to the first topic or a topic to filter on:' \
'*::topics_or_args -- If used with a signature, the indexed fields of the event to filter by. Otherwise, the remaining topics of the filter:' \
&& ret=0
;;
(l)
_arguments "${_arguments_options[@]}" : \
'--from-block=[The block height to start query at]:FROM_BLOCK: ' \
'--to-block=[The block height to stop query at]:TO_BLOCK: ' \
'--address=[The contract address to filter on]:ADDRESS: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--subscribe[If the RPC type and endpoints supports \`eth_subscribe\` stream logs instead of printing and exiting. Will continue until interrupted or TO_BLOCK is reached]' \
'-j[Print the logs as JSON.s]' \
'--json[Print the logs as JSON.s]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::sig_or_topic -- The signature of the event to filter logs by which will be converted to the first topic or a topic to filter on:' \
'*::topics_or_args -- If used with a signature, the indexed fields of the event to filter by. Otherwise, the remaining topics of the filter:' \
&& ret=0
;;
(block)
_arguments "${_arguments_options[@]}" : \
'-f+[If specified, only get the given field of the block]:FIELD: ' \
'--field=[If specified, only get the given field of the block]:FIELD: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--full[]' \
'-j[Print the block as JSON]' \
'--json[Print the block as JSON]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(bl)
_arguments "${_arguments_options[@]}" : \
'-f+[If specified, only get the given field of the block]:FIELD: ' \
'--field=[If specified, only get the given field of the block]:FIELD: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--full[]' \
'-j[Print the block as JSON]' \
'--json[Print the block as JSON]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(block-number)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The hash or tag to query. If not specified, the latest number is returned:' \
&& ret=0
;;
(bn)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The hash or tag to query. If not specified, the latest number is returned:' \
&& ret=0
;;
(call)
_arguments "${_arguments_options[@]}" : \
'()--data=[Data for the transaction]:DATA: ' \
'*--labels=[Labels to apply to the traces; format\: \`address\:label\`. Can only be used with \`--trace\`]:LABELS: ' \
'--evm-version=[The EVM Version to use. Can only be used with \`--trace\`]:EVM_VERSION: ' \
'-b+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--trace[Forks the remote rpc, executes the transaction locally and prints a trace]' \
'--debug[Opens an interactive debugger. Can only be used with \`--trace\`]' \
'--decode-internal[]' \
'-j[Print the decoded output as JSON]' \
'--json[Print the decoded output as JSON]' \
'--alphanet[Enable Alphanet features]' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__call_commands" \
"*::: :->call" \
&& ret=0

    case $state in
    (call)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-call-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'--value=[Ether to send in the transaction]:VALUE: ' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':code -- Bytecode of contract:' \
'::sig -- The signature of the constructor:' \
'*::args -- The arguments of the constructor:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__call__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-call-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(c)
_arguments "${_arguments_options[@]}" : \
'()--data=[Data for the transaction]:DATA: ' \
'*--labels=[Labels to apply to the traces; format\: \`address\:label\`. Can only be used with \`--trace\`]:LABELS: ' \
'--evm-version=[The EVM Version to use. Can only be used with \`--trace\`]:EVM_VERSION: ' \
'-b+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--trace[Forks the remote rpc, executes the transaction locally and prints a trace]' \
'--debug[Opens an interactive debugger. Can only be used with \`--trace\`]' \
'--decode-internal[]' \
'-j[Print the decoded output as JSON]' \
'--json[Print the decoded output as JSON]' \
'--alphanet[Enable Alphanet features]' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__call_commands" \
"*::: :->call" \
&& ret=0

    case $state in
    (call)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-call-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'--value=[Ether to send in the transaction]:VALUE: ' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':code -- Bytecode of contract:' \
'::sig -- The signature of the constructor:' \
'*::args -- The arguments of the constructor:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__call__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-call-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(calldata)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
'*::args -- The arguments to encode:' \
&& ret=0
;;
(cd)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
'*::args -- The arguments to encode:' \
&& ret=0
;;
(chain)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(chain-id)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(ci)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(cid)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(client)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(cl)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(compute-address)
_arguments "${_arguments_options[@]}" : \
'--nonce=[The nonce of the deployer address]:NONCE: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::address -- The deployer address:' \
&& ret=0
;;
(ca)
_arguments "${_arguments_options[@]}" : \
'--nonce=[The nonce of the deployer address]:NONCE: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::address -- The deployer address:' \
&& ret=0
;;
(disassemble)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':bytecode -- The hex encoded bytecode:' \
&& ret=0
;;
(da)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':bytecode -- The hex encoded bytecode:' \
&& ret=0
;;
(mktx)
_arguments "${_arguments_options[@]}" : \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'(--legacy)--path=[The path of blob data to be sent]:BLOB_DATA_PATH:_files' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__mktx_commands" \
"*::: :->mktx" \
&& ret=0

    case $state in
    (mktx)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-mktx-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':code -- The initialization bytecode of the contract to deploy:' \
'::sig -- The signature of the constructor:' \
'*::args -- The constructor arguments:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__mktx__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-mktx-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(m)
_arguments "${_arguments_options[@]}" : \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'(--legacy)--path=[The path of blob data to be sent]:BLOB_DATA_PATH:_files' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__mktx_commands" \
"*::: :->mktx" \
&& ret=0

    case $state in
    (mktx)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-mktx-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':code -- The initialization bytecode of the contract to deploy:' \
'::sig -- The signature of the constructor:' \
'*::args -- The constructor arguments:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__mktx__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-mktx-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(namehash)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::name:' \
&& ret=0
;;
(na)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::name:' \
&& ret=0
;;
(nh)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::name:' \
&& ret=0
;;
(tx)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'()--raw[Print the raw RLP encoded transaction]' \
'-j[Print as JSON]' \
'--json[Print as JSON]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':tx_hash -- The transaction hash:' \
'::field -- If specified, only get the given field of the transaction. If "raw", the RLP encoded transaction will be printed:' \
&& ret=0
;;
(t)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'()--raw[Print the raw RLP encoded transaction]' \
'-j[Print as JSON]' \
'--json[Print as JSON]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':tx_hash -- The transaction hash:' \
'::field -- If specified, only get the given field of the transaction. If "raw", the RLP encoded transaction will be printed:' \
&& ret=0
;;
(receipt)
_arguments "${_arguments_options[@]}" : \
'--confirmations=[The number of confirmations until the receipt is fetched]:CONFIRMATIONS: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--async[Exit immediately if the transaction was not found]' \
'-j[Print as JSON]' \
'--json[Print as JSON]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':tx_hash -- The transaction hash:' \
'::field -- If specified, only get the given field of the transaction:' \
&& ret=0
;;
(re)
_arguments "${_arguments_options[@]}" : \
'--confirmations=[The number of confirmations until the receipt is fetched]:CONFIRMATIONS: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--async[Exit immediately if the transaction was not found]' \
'-j[Print as JSON]' \
'--json[Print as JSON]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':tx_hash -- The transaction hash:' \
'::field -- If specified, only get the given field of the transaction:' \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
'--confirmations=[The number of confirmations until the receipt is fetched]:CONFIRMATIONS: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'(--legacy)--path=[The path of blob data to be sent]:BLOB_DATA_PATH:_files' \
'--async[Only print the transaction hash and exit immediately]' \
'-j[Print the transaction receipt as JSON]' \
'--json[Print the transaction receipt as JSON]' \
'--unlocked[Send via \`eth_sendTransaction using the \`--from\` argument or \$ETH_FROM as sender]' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__send_commands" \
"*::: :->send" \
&& ret=0

    case $state in
    (send)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-send-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':code -- The bytecode of the contract to deploy:' \
'::sig -- The signature of the function to call:' \
'*::args -- The arguments of the function to call:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__send__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-send-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(s)
_arguments "${_arguments_options[@]}" : \
'--confirmations=[The number of confirmations until the receipt is fetched]:CONFIRMATIONS: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'(--legacy)--path=[The path of blob data to be sent]:BLOB_DATA_PATH:_files' \
'--async[Only print the transaction hash and exit immediately]' \
'-j[Print the transaction receipt as JSON]' \
'--json[Print the transaction receipt as JSON]' \
'--unlocked[Send via \`eth_sendTransaction using the \`--from\` argument or \$ETH_FROM as sender]' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__send_commands" \
"*::: :->send" \
&& ret=0

    case $state in
    (send)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-send-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':code -- The bytecode of the contract to deploy:' \
'::sig -- The signature of the function to call:' \
'*::args -- The arguments of the function to call:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__send__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-send-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(publish)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--async[Only print the transaction hash and exit immediately]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':raw_tx -- The raw transaction:' \
&& ret=0
;;
(p)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--async[Only print the transaction hash and exit immediately]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':raw_tx -- The raw transaction:' \
&& ret=0
;;
(estimate)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__estimate_commands" \
"*::: :->estimate" \
&& ret=0

    case $state in
    (estimate)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-estimate-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'--value=[Ether to send in the transaction]:VALUE: ' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':code -- The bytecode of contract:' \
'::sig -- The signature of the constructor:' \
'*::args -- Constructor arguments:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__estimate__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-estimate-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(e)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'--gas-limit=[Gas limit for the transaction]:GAS_LIMIT: ' \
'--gas-price=[Gas price for legacy transactions, or max fee per gas for EIP1559 transactions, either specified in wei, or as a string with a unit type]:PRICE: ' \
'--priority-gas-price=[Max priority fee per gas for EIP1559 transactions]:PRICE: ' \
'--value=[Ether to send in the transaction, either specified in wei, or as a string with a unit type]:VALUE: ' \
'--nonce=[Nonce for the transaction]:NONCE: ' \
'(--legacy)--blob-gas-price=[Gas price for EIP-4844 blob transaction]:BLOB_PRICE: ' \
'(--legacy --blob)--auth=[EIP-7702 authorization list]:AUTH: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
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
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::to -- The destination of the transaction:' \
'::sig -- The signature of the function to call:' \
'::args -- The arguments of the function to call:' \
":: :_cast__estimate_commands" \
"*::: :->estimate" \
&& ret=0

    case $state in
    (estimate)
        words=($line[4] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-estimate-command-$line[4]:"
        case $line[4] in
            (--create)
_arguments "${_arguments_options[@]}" : \
'--value=[Ether to send in the transaction]:VALUE: ' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':code -- The bytecode of contract:' \
'::sig -- The signature of the constructor:' \
'*::args -- Constructor arguments:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__estimate__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-estimate-help-command-$line[1]:"
        case $line[1] in
            (--create)
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
(calldata-decode)
_arguments "${_arguments_options[@]}" : \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
':calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(--calldata-decode)
_arguments "${_arguments_options[@]}" : \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
':calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(cdd)
_arguments "${_arguments_options[@]}" : \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
':calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(abi-decode)
_arguments "${_arguments_options[@]}" : \
'-i[Whether to decode the input or output data]' \
'--input[Whether to decode the input or output data]' \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
':calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(ad)
_arguments "${_arguments_options[@]}" : \
'-i[Whether to decode the input or output data]' \
'--input[Whether to decode the input or output data]' \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
':calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(--abi-decode)
_arguments "${_arguments_options[@]}" : \
'-i[Whether to decode the input or output data]' \
'--input[Whether to decode the input or output data]' \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':sig -- The function signature in the format `<name>(<in-types>)(<out-types>)`:' \
':calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(abi-encode)
_arguments "${_arguments_options[@]}" : \
'--packed[Whether to use packed encoding]' \
'-h[Print help]' \
'--help[Print help]' \
':sig -- The function signature:' \
'*::args -- The arguments of the function:' \
&& ret=0
;;
(ae)
_arguments "${_arguments_options[@]}" : \
'--packed[Whether to use packed encoding]' \
'-h[Print help]' \
'--help[Print help]' \
':sig -- The function signature:' \
'*::args -- The arguments of the function:' \
&& ret=0
;;
(index)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':key_type -- The mapping key type:' \
':key -- The mapping key:' \
':slot_number -- The storage slot of the mapping:' \
&& ret=0
;;
(in)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':key_type -- The mapping key type:' \
':key -- The mapping key:' \
':slot_number -- The storage slot of the mapping:' \
&& ret=0
;;
(index-erc7201)
_arguments "${_arguments_options[@]}" : \
'--formula-id=[The formula ID. Currently the only supported formula is \`erc7201\`]:FORMULA_ID: ' \
'-h[Print help]' \
'--help[Print help]' \
'::id -- The arbitrary identifier:' \
&& ret=0
;;
(index7201)
_arguments "${_arguments_options[@]}" : \
'--formula-id=[The formula ID. Currently the only supported formula is \`erc7201\`]:FORMULA_ID: ' \
'-h[Print help]' \
'--help[Print help]' \
'::id -- The arbitrary identifier:' \
&& ret=0
;;
(in7201)
_arguments "${_arguments_options[@]}" : \
'--formula-id=[The formula ID. Currently the only supported formula is \`erc7201\`]:FORMULA_ID: ' \
'-h[Print help]' \
'--help[Print help]' \
'::id -- The arbitrary identifier:' \
&& ret=0
;;
(implementation)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The address to get the nonce for:' \
&& ret=0
;;
(impl)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The address to get the nonce for:' \
&& ret=0
;;
(admin)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The address to get the nonce for:' \
&& ret=0
;;
(adm)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The address to get the nonce for:' \
&& ret=0
;;
(4byte)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::selector -- The function selector:' \
&& ret=0
;;
(4)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::selector -- The function selector:' \
&& ret=0
;;
(4b)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::selector -- The function selector:' \
&& ret=0
;;
(4byte-decode)
_arguments "${_arguments_options[@]}" : \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help]' \
'--help[Print help]' \
'::calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(4d)
_arguments "${_arguments_options[@]}" : \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help]' \
'--help[Print help]' \
'::calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(4bd)
_arguments "${_arguments_options[@]}" : \
'-j[Print the decoded calldata as JSON]' \
'--json[Print the decoded calldata as JSON]' \
'-h[Print help]' \
'--help[Print help]' \
'::calldata -- The ABI-encoded calldata:' \
&& ret=0
;;
(4byte-event)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::topic -- Topic 0:' \
&& ret=0
;;
(4e)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::topic -- Topic 0:' \
&& ret=0
;;
(4be)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::topic -- Topic 0:' \
&& ret=0
;;
(topic0-event)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::topic -- Topic 0:' \
&& ret=0
;;
(t0e)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::topic -- Topic 0:' \
&& ret=0
;;
(upload-signature)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::signatures -- The signatures to upload:' \
&& ret=0
;;
(ups)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::signatures -- The signatures to upload:' \
&& ret=0
;;
(pretty-calldata)
_arguments "${_arguments_options[@]}" : \
'-o[Skip the https\://openchain.xyz lookup]' \
'--offline[Skip the https\://openchain.xyz lookup]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::calldata -- The calldata:' \
&& ret=0
;;
(pc)
_arguments "${_arguments_options[@]}" : \
'-o[Skip the https\://openchain.xyz lookup]' \
'--offline[Skip the https\://openchain.xyz lookup]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::calldata -- The calldata:' \
&& ret=0
;;
(age)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(a)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(balance)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--erc20=[erc20 address to query, with the method \`balanceOf(address) return (uint256)\`, alias with '\''--erc721'\'']:ERC20: ' \
'-e[Format the balance in ether]' \
'--ether[Format the balance in ether]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The account to query:' \
&& ret=0
;;
(b)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--erc20=[erc20 address to query, with the method \`balanceOf(address) return (uint256)\`, alias with '\''--erc721'\'']:ERC20: ' \
'-e[Format the balance in ether]' \
'--ether[Format the balance in ether]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The account to query:' \
&& ret=0
;;
(base-fee)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(ba)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(fee)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(basefee)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::block -- The block height to query at:' \
&& ret=0
;;
(code)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-d[Disassemble bytecodes into individual opcodes]' \
'--disassemble[Disassemble bytecodes into individual opcodes]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The contract address:' \
&& ret=0
;;
(co)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-d[Disassemble bytecodes into individual opcodes]' \
'--disassemble[Disassemble bytecodes into individual opcodes]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The contract address:' \
&& ret=0
;;
(codesize)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The contract address:' \
&& ret=0
;;
(cs)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The contract address:' \
&& ret=0
;;
(gas-price)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(g)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(sig-event)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::event_string -- The event string:' \
&& ret=0
;;
(se)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::event_string -- The event string:' \
&& ret=0
;;
(keccak)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::data -- The data to hash:' \
&& ret=0
;;
(k)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::data -- The data to hash:' \
&& ret=0
;;
(keccak256)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::data -- The data to hash:' \
&& ret=0
;;
(resolve-name)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-v[Perform a reverse lookup to verify that the name is correct]' \
'--verify[Perform a reverse lookup to verify that the name is correct]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::who -- The name to lookup:' \
&& ret=0
;;
(rn)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-v[Perform a reverse lookup to verify that the name is correct]' \
'--verify[Perform a reverse lookup to verify that the name is correct]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::who -- The name to lookup:' \
&& ret=0
;;
(lookup-address)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-v[Perform a normal lookup to verify that the address is correct]' \
'--verify[Perform a normal lookup to verify that the address is correct]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::who -- The account to perform the lookup for:' \
&& ret=0
;;
(la)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-v[Perform a normal lookup to verify that the address is correct]' \
'--verify[Perform a normal lookup to verify that the address is correct]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::who -- The account to perform the lookup for:' \
&& ret=0
;;
(storage)
_arguments "${_arguments_options[@]}" : \
'-b+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES: ' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES: ' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION: ' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT: ' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP: ' \
'--evm-version=[The target EVM version]:VERSION: ' \
'--optimizer-runs=[The number of optimizer runs]:RUNS: ' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR: ' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR: ' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS: ' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS: ' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV: ' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--silent[Don'\''t print anything on startup]' \
'--build-info[Generate build info files]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'--optimize[Activate the Solidity optimizer]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The contract address:' \
'::slot -- The storage slot number:' \
&& ret=0
;;
(st)
_arguments "${_arguments_options[@]}" : \
'-b+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'*--libraries=[Set pre-linked libraries]:LIBRARIES: ' \
'*--ignored-error-codes=[Ignore solc warnings by error code]:ERROR_CODES: ' \
'--use=[Specify the solc version, or a path to a local solc, to build with]:SOLC_VERSION: ' \
'-o+[The path to the contract artifacts folder]:PATH:_files -/' \
'--out=[The path to the contract artifacts folder]:PATH:_files -/' \
'--revert-strings=[Revert string configuration]:REVERT: ' \
'--build-info-path=[Output path to directory that build info files will be written to]:PATH:_files -/' \
'*--skip=[Skip building files whose names contain the given filter]:SKIP: ' \
'--evm-version=[The target EVM version]:VERSION: ' \
'--optimizer-runs=[The number of optimizer runs]:RUNS: ' \
'*--extra-output=[Extra output to include in the contract'\''s artifact]:SELECTOR: ' \
'*--extra-output-files=[Extra output to write to separate files]:SELECTOR: ' \
'--root=[The project'\''s root path]:PATH:_files -/' \
'-C+[The contracts source directory]:PATH:_files -/' \
'--contracts=[The contracts source directory]:PATH:_files -/' \
'*-R+[The project'\''s remappings]:REMAPPINGS: ' \
'*--remappings=[The project'\''s remappings]:REMAPPINGS: ' \
'--remappings-env=[The project'\''s remappings from the environment]:ENV: ' \
'--cache-path=[The path to the compiler cache]:PATH:_files -/' \
'*--lib-paths=[The path to the library folder]:PATH:_files -/' \
'--config-path=[Path to the config file]:FILE:_files' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'--force[Clear the cache and artifacts folder and recompile]' \
'--no-cache[Disable the cache]' \
'--deny-warnings[Warnings will trigger a compiler error]' \
'--no-auto-detect[Do not auto-detect the \`solc\` version]' \
'--offline[Do not access the network]' \
'--via-ir[Use the Yul intermediate representation compilation pipeline]' \
'--no-metadata[Do not append any metadata to the bytecode]' \
'--silent[Don'\''t print anything on startup]' \
'--build-info[Generate build info files]' \
'--ast[Includes the AST as JSON in the compiler output]' \
'--optimize[Activate the Solidity optimizer]' \
'(-C --contracts)--hardhat[Use the Hardhat-style project layout]' \
'(-C --contracts)--hh[Use the Hardhat-style project layout]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The contract address:' \
'::slot -- The storage slot number:' \
&& ret=0
;;
(proof)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The contract address:' \
'*::slots -- The storage slot numbers (hex or decimal):' \
&& ret=0
;;
(pr)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- The contract address:' \
'*::slots -- The storage slot numbers (hex or decimal):' \
&& ret=0
;;
(nonce)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The address to get the nonce for:' \
&& ret=0
;;
(n)
_arguments "${_arguments_options[@]}" : \
'-B+[The block height to query at]:BLOCK: ' \
'--block=[The block height to query at]:BLOCK: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':who -- The address to get the nonce for:' \
&& ret=0
;;
(etherscan-source)
_arguments "${_arguments_options[@]}" : \
'-d+[The output directory/file to expand source tree into]:DIRECTORY:_files -/' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f[Whether to flatten the source code]' \
'--flatten[Whether to flatten the source code]' \
'-h[Print help]' \
'--help[Print help]' \
':address -- The contract'\''s address:' \
&& ret=0
;;
(et)
_arguments "${_arguments_options[@]}" : \
'-d+[The output directory/file to expand source tree into]:DIRECTORY:_files -/' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f[Whether to flatten the source code]' \
'--flatten[Whether to flatten the source code]' \
'-h[Print help]' \
'--help[Print help]' \
':address -- The contract'\''s address:' \
&& ret=0
;;
(src)
_arguments "${_arguments_options[@]}" : \
'-d+[The output directory/file to expand source tree into]:DIRECTORY:_files -/' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-f[Whether to flatten the source code]' \
'--flatten[Whether to flatten the source code]' \
'-h[Print help]' \
'--help[Print help]' \
':address -- The contract'\''s address:' \
&& ret=0
;;
(wallet)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_cast__wallet_commands" \
"*::: :->wallet" \
&& ret=0

    case $state in
    (wallet)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-wallet-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
'--unsafe-password=[Password for the JSON keystore in cleartext]:PASSWORD: ' \
'-n+[Number of wallets to generate]:NUMBER: ' \
'--number=[Number of wallets to generate]:NUMBER: ' \
'(--unsafe-password)-p[Triggers a hidden password prompt for the JSON keystore]' \
'(--unsafe-password)--password[Triggers a hidden password prompt for the JSON keystore]' \
'-j[Output generated wallets as JSON]' \
'--json[Output generated wallets as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- If provided, then keypair will be written to an encrypted JSON keystore:' \
&& ret=0
;;
(n)
_arguments "${_arguments_options[@]}" : \
'--unsafe-password=[Password for the JSON keystore in cleartext]:PASSWORD: ' \
'-n+[Number of wallets to generate]:NUMBER: ' \
'--number=[Number of wallets to generate]:NUMBER: ' \
'(--unsafe-password)-p[Triggers a hidden password prompt for the JSON keystore]' \
'(--unsafe-password)--password[Triggers a hidden password prompt for the JSON keystore]' \
'-j[Output generated wallets as JSON]' \
'--json[Output generated wallets as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- If provided, then keypair will be written to an encrypted JSON keystore:' \
&& ret=0
;;
(new-mnemonic)
_arguments "${_arguments_options[@]}" : \
'-w+[Number of words for the mnemonic]:WORDS: ' \
'--words=[Number of words for the mnemonic]:WORDS: ' \
'-a+[Number of accounts to display]:ACCOUNTS: ' \
'--accounts=[Number of accounts to display]:ACCOUNTS: ' \
'(-w --words)-e+[Entropy to use for the mnemonic]:ENTROPY: ' \
'(-w --words)--entropy=[Entropy to use for the mnemonic]:ENTROPY: ' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(nm)
_arguments "${_arguments_options[@]}" : \
'-w+[Number of words for the mnemonic]:WORDS: ' \
'--words=[Number of words for the mnemonic]:WORDS: ' \
'-a+[Number of accounts to display]:ACCOUNTS: ' \
'--accounts=[Number of accounts to display]:ACCOUNTS: ' \
'(-w --words)-e+[Entropy to use for the mnemonic]:ENTROPY: ' \
'(-w --words)--entropy=[Entropy to use for the mnemonic]:ENTROPY: ' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(vanity)
_arguments "${_arguments_options[@]}" : \
'--starts-with=[Prefix regex pattern or hex string]:PATTERN: ' \
'--ends-with=[Suffix regex pattern or hex string]:PATTERN: ' \
'--nonce=[Generate a vanity contract address created by the generated keypair with the specified nonce]:NONCE: ' \
'--save-path=[Path to save the generated vanity contract address to]:PATH:_files' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(va)
_arguments "${_arguments_options[@]}" : \
'--starts-with=[Prefix regex pattern or hex string]:PATTERN: ' \
'--ends-with=[Suffix regex pattern or hex string]:PATTERN: ' \
'--nonce=[Generate a vanity contract address created by the generated keypair with the specified nonce]:NONCE: ' \
'--save-path=[Path to save the generated vanity contract address to]:PATH:_files' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(address)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::private_key_override -- If provided, the address will be derived from the specified private key:' \
&& ret=0
;;
(a)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::private_key_override -- If provided, the address will be derived from the specified private key:' \
&& ret=0
;;
(addr)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::private_key_override -- If provided, the address will be derived from the specified private key:' \
&& ret=0
;;
(sign)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--data[Treat the message as JSON typed data]' \
'--from-file[Treat the message as a file containing JSON typed data. Requires \`--data\`]' \
'(--data)--no-hash[Treat the message as a raw 32-byte hash and sign it directly without hashing it again]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':message -- The message, typed data, or hash to sign:' \
&& ret=0
;;
(s)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--data[Treat the message as JSON typed data]' \
'--from-file[Treat the message as a file containing JSON typed data. Requires \`--data\`]' \
'(--data)--no-hash[Treat the message as a raw 32-byte hash and sign it directly without hashing it again]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':message -- The message, typed data, or hash to sign:' \
&& ret=0
;;
(sign-auth)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--nonce=[]:NONCE: ' \
'--chain=[]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- Address to sign authorization for:' \
&& ret=0
;;
(sa)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--nonce=[]:NONCE: ' \
'--chain=[]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- Address to sign authorization for:' \
&& ret=0
;;
(verify)
_arguments "${_arguments_options[@]}" : \
'-a+[The address of the message signer]:ADDRESS: ' \
'--address=[The address of the message signer]:ADDRESS: ' \
'-h[Print help]' \
'--help[Print help]' \
':message -- The original message:' \
':signature -- The signature to verify:' \
&& ret=0
;;
(v)
_arguments "${_arguments_options[@]}" : \
'-a+[The address of the message signer]:ADDRESS: ' \
'--address=[The address of the message signer]:ADDRESS: ' \
'-h[Print help]' \
'--help[Print help]' \
':message -- The original message:' \
':signature -- The signature to verify:' \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
'-k+[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(i)
_arguments "${_arguments_options[@]}" : \
'-k+[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'--dir=[List all the accounts in the keystore directory. Default keystore directory is used if no path provided]' \
'-m+[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'--max-senders=[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'-l[List accounts from a Ledger hardware wallet]' \
'--ledger[List accounts from a Ledger hardware wallet]' \
'-t[List accounts from a Trezor hardware wallet]' \
'--trezor[List accounts from a Trezor hardware wallet]' \
'--aws[List accounts from AWS KMS]' \
'--all[List all configured accounts]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" : \
'--dir=[List all the accounts in the keystore directory. Default keystore directory is used if no path provided]' \
'-m+[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'--max-senders=[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'-l[List accounts from a Ledger hardware wallet]' \
'--ledger[List accounts from a Ledger hardware wallet]' \
'-t[List accounts from a Trezor hardware wallet]' \
'--trezor[List accounts from a Trezor hardware wallet]' \
'--aws[List accounts from AWS KMS]' \
'--all[List all configured accounts]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(private-key)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-v[Verbose mode, print the address and private key]' \
'--verbose[Verbose mode, print the address and private key]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::mnemonic_override -- If provided, the private key will be derived from the specified menomonic phrase:' \
'::mnemonic_index_or_derivation_path_override -- If provided, the private key will be derived using the specified mnemonic index (if integer) or derivation path:' \
&& ret=0
;;
(pk)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-v[Verbose mode, print the address and private key]' \
'--verbose[Verbose mode, print the address and private key]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::mnemonic_override -- If provided, the private key will be derived from the specified menomonic phrase:' \
'::mnemonic_index_or_derivation_path_override -- If provided, the private key will be derived using the specified mnemonic index (if integer) or derivation path:' \
&& ret=0
;;
(decrypt-keystore)
_arguments "${_arguments_options[@]}" : \
'-k+[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'-h[Print help]' \
'--help[Print help]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(dk)
_arguments "${_arguments_options[@]}" : \
'-k+[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'-h[Print help]' \
'--help[Print help]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__wallet__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-wallet-help-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(new-mnemonic)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vanity)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(address)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sign-auth)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(private-key)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(decrypt-keystore)
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
(w)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_cast__wallet_commands" \
"*::: :->wallet" \
&& ret=0

    case $state in
    (wallet)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-wallet-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
'--unsafe-password=[Password for the JSON keystore in cleartext]:PASSWORD: ' \
'-n+[Number of wallets to generate]:NUMBER: ' \
'--number=[Number of wallets to generate]:NUMBER: ' \
'(--unsafe-password)-p[Triggers a hidden password prompt for the JSON keystore]' \
'(--unsafe-password)--password[Triggers a hidden password prompt for the JSON keystore]' \
'-j[Output generated wallets as JSON]' \
'--json[Output generated wallets as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- If provided, then keypair will be written to an encrypted JSON keystore:' \
&& ret=0
;;
(n)
_arguments "${_arguments_options[@]}" : \
'--unsafe-password=[Password for the JSON keystore in cleartext]:PASSWORD: ' \
'-n+[Number of wallets to generate]:NUMBER: ' \
'--number=[Number of wallets to generate]:NUMBER: ' \
'(--unsafe-password)-p[Triggers a hidden password prompt for the JSON keystore]' \
'(--unsafe-password)--password[Triggers a hidden password prompt for the JSON keystore]' \
'-j[Output generated wallets as JSON]' \
'--json[Output generated wallets as JSON]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::path -- If provided, then keypair will be written to an encrypted JSON keystore:' \
&& ret=0
;;
(new-mnemonic)
_arguments "${_arguments_options[@]}" : \
'-w+[Number of words for the mnemonic]:WORDS: ' \
'--words=[Number of words for the mnemonic]:WORDS: ' \
'-a+[Number of accounts to display]:ACCOUNTS: ' \
'--accounts=[Number of accounts to display]:ACCOUNTS: ' \
'(-w --words)-e+[Entropy to use for the mnemonic]:ENTROPY: ' \
'(-w --words)--entropy=[Entropy to use for the mnemonic]:ENTROPY: ' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(nm)
_arguments "${_arguments_options[@]}" : \
'-w+[Number of words for the mnemonic]:WORDS: ' \
'--words=[Number of words for the mnemonic]:WORDS: ' \
'-a+[Number of accounts to display]:ACCOUNTS: ' \
'--accounts=[Number of accounts to display]:ACCOUNTS: ' \
'(-w --words)-e+[Entropy to use for the mnemonic]:ENTROPY: ' \
'(-w --words)--entropy=[Entropy to use for the mnemonic]:ENTROPY: ' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(vanity)
_arguments "${_arguments_options[@]}" : \
'--starts-with=[Prefix regex pattern or hex string]:PATTERN: ' \
'--ends-with=[Suffix regex pattern or hex string]:PATTERN: ' \
'--nonce=[Generate a vanity contract address created by the generated keypair with the specified nonce]:NONCE: ' \
'--save-path=[Path to save the generated vanity contract address to]:PATH:_files' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(va)
_arguments "${_arguments_options[@]}" : \
'--starts-with=[Prefix regex pattern or hex string]:PATTERN: ' \
'--ends-with=[Suffix regex pattern or hex string]:PATTERN: ' \
'--nonce=[Generate a vanity contract address created by the generated keypair with the specified nonce]:NONCE: ' \
'--save-path=[Path to save the generated vanity contract address to]:PATH:_files' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(address)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::private_key_override -- If provided, the address will be derived from the specified private key:' \
&& ret=0
;;
(a)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::private_key_override -- If provided, the address will be derived from the specified private key:' \
&& ret=0
;;
(addr)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::private_key_override -- If provided, the address will be derived from the specified private key:' \
&& ret=0
;;
(sign)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--data[Treat the message as JSON typed data]' \
'--from-file[Treat the message as a file containing JSON typed data. Requires \`--data\`]' \
'(--data)--no-hash[Treat the message as a raw 32-byte hash and sign it directly without hashing it again]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':message -- The message, typed data, or hash to sign:' \
&& ret=0
;;
(s)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--data[Treat the message as JSON typed data]' \
'--from-file[Treat the message as a file containing JSON typed data. Requires \`--data\`]' \
'(--data)--no-hash[Treat the message as a raw 32-byte hash and sign it directly without hashing it again]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':message -- The message, typed data, or hash to sign:' \
&& ret=0
;;
(sign-auth)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--nonce=[]:NONCE: ' \
'--chain=[]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- Address to sign authorization for:' \
&& ret=0
;;
(sa)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--nonce=[]:NONCE: ' \
'--chain=[]:CHAIN: ' \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':address -- Address to sign authorization for:' \
&& ret=0
;;
(verify)
_arguments "${_arguments_options[@]}" : \
'-a+[The address of the message signer]:ADDRESS: ' \
'--address=[The address of the message signer]:ADDRESS: ' \
'-h[Print help]' \
'--help[Print help]' \
':message -- The original message:' \
':signature -- The signature to verify:' \
&& ret=0
;;
(v)
_arguments "${_arguments_options[@]}" : \
'-a+[The address of the message signer]:ADDRESS: ' \
'--address=[The address of the message signer]:ADDRESS: ' \
'-h[Print help]' \
'--help[Print help]' \
':message -- The original message:' \
':signature -- The signature to verify:' \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
'-k+[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(i)
_arguments "${_arguments_options[@]}" : \
'-k+[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If provided, keystore will be saved here instead of the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'--dir=[List all the accounts in the keystore directory. Default keystore directory is used if no path provided]' \
'-m+[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'--max-senders=[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'-l[List accounts from a Ledger hardware wallet]' \
'--ledger[List accounts from a Ledger hardware wallet]' \
'-t[List accounts from a Trezor hardware wallet]' \
'--trezor[List accounts from a Trezor hardware wallet]' \
'--aws[List accounts from AWS KMS]' \
'--all[List all configured accounts]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" : \
'--dir=[List all the accounts in the keystore directory. Default keystore directory is used if no path provided]' \
'-m+[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'--max-senders=[Max number of addresses to display from hardware wallets]:MAX_SENDERS: ' \
'-l[List accounts from a Ledger hardware wallet]' \
'--ledger[List accounts from a Ledger hardware wallet]' \
'-t[List accounts from a Trezor hardware wallet]' \
'--trezor[List accounts from a Trezor hardware wallet]' \
'--aws[List accounts from AWS KMS]' \
'--all[List all configured accounts]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(private-key)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-v[Verbose mode, print the address and private key]' \
'--verbose[Verbose mode, print the address and private key]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::mnemonic_override -- If provided, the private key will be derived from the specified menomonic phrase:' \
'::mnemonic_index_or_derivation_path_override -- If provided, the private key will be derived using the specified mnemonic index (if integer) or derivation path:' \
&& ret=0
;;
(pk)
_arguments "${_arguments_options[@]}" : \
'-f+[The sender account]:ADDRESS: ' \
'--from=[The sender account]:ADDRESS: ' \
'--private-key=[Use the provided private key]:RAW_PRIVATE_KEY: ' \
'--mnemonic=[Use the mnemonic phrase of mnemonic file at the specified path]:MNEMONIC: ' \
'--mnemonic-passphrase=[Use a BIP39 passphrase for the mnemonic]:PASSPHRASE: ' \
'--mnemonic-derivation-path=[The wallet derivation path]:PATH: ' \
'(--mnemonic-derivation-path)--mnemonic-index=[Use the private key from the given mnemonic index]:INDEX: ' \
'--keystore=[Use the keystore in the given folder or file]:PATH: ' \
'(--keystore)--account=[Use a keystore from the default keystores folder (~/.foundry/keystores) by its filename]:ACCOUNT_NAME: ' \
'--password=[The keystore password]:PASSWORD: ' \
'--password-file=[The keystore password file path]:PASSWORD_FILE: ' \
'-v[Verbose mode, print the address and private key]' \
'--verbose[Verbose mode, print the address and private key]' \
'-i[Open an interactive prompt to enter your private key]' \
'--interactive[Open an interactive prompt to enter your private key]' \
'-l[Use a Ledger hardware wallet]' \
'--ledger[Use a Ledger hardware wallet]' \
'-t[Use a Trezor hardware wallet]' \
'--trezor[Use a Trezor hardware wallet]' \
'--aws[Use AWS Key Management Service]' \
'--gcp[Use Google Cloud Key Management Service]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::mnemonic_override -- If provided, the private key will be derived from the specified menomonic phrase:' \
'::mnemonic_index_or_derivation_path_override -- If provided, the private key will be derived using the specified mnemonic index (if integer) or derivation path:' \
&& ret=0
;;
(decrypt-keystore)
_arguments "${_arguments_options[@]}" : \
'-k+[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'-h[Print help]' \
'--help[Print help]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(dk)
_arguments "${_arguments_options[@]}" : \
'-k+[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--keystore-dir=[If not provided, keystore will try to be located at the default keystores directory (~/.foundry/keystores)]:KEYSTORE_DIR: ' \
'--unsafe-password=[Password for the JSON keystore in cleartext This is unsafe, we recommend using the default hidden password prompt]:PASSWORD: ' \
'-h[Print help]' \
'--help[Print help]' \
':account_name -- The name for the account in the keystore:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__wallet__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-wallet-help-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(new-mnemonic)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vanity)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(address)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sign-auth)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(private-key)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(decrypt-keystore)
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
(interface)
_arguments "${_arguments_options[@]}" : \
'-n+[The name to use for the generated interface]:NAME: ' \
'--name=[The name to use for the generated interface]:NAME: ' \
'-p+[Solidity pragma version]:VERSION: ' \
'--pragma=[Solidity pragma version]:VERSION: ' \
'-o+[The path to the output file]:PATH:_files' \
'--output=[The path to the output file]:PATH:_files' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-j[If specified, the interface will be output as JSON rather than Solidity]' \
'--json[If specified, the interface will be output as JSON rather than Solidity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':contract -- The target contract, which can be one of\: - A file path to an ABI JSON file. - A contract identifier in the form `<path>\:<contractname>` or just `<contractname>`. - An Ethereum address, for which the ABI will be fetched from Etherscan:' \
&& ret=0
;;
(i)
_arguments "${_arguments_options[@]}" : \
'-n+[The name to use for the generated interface]:NAME: ' \
'--name=[The name to use for the generated interface]:NAME: ' \
'-p+[Solidity pragma version]:VERSION: ' \
'--pragma=[Solidity pragma version]:VERSION: ' \
'-o+[The path to the output file]:PATH:_files' \
'--output=[The path to the output file]:PATH:_files' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'-j[If specified, the interface will be output as JSON rather than Solidity]' \
'--json[If specified, the interface will be output as JSON rather than Solidity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':contract -- The target contract, which can be one of\: - A file path to an ABI JSON file. - A contract identifier in the form `<path>\:<contractname>` or just `<contractname>`. - An Ethereum address, for which the ABI will be fetched from Etherscan:' \
&& ret=0
;;
(bind)
_arguments "${_arguments_options[@]}" : \
'-o+[Path to where bindings will be stored]:PATH:_files -/' \
'--output-dir=[Path to where bindings will be stored]:PATH:_files -/' \
'--crate-name=[The name of the Rust crate to generate]:NAME: ' \
'--crate-version=[The version of the Rust crate to generate]:VERSION: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--separate-files[Generate bindings as separate files]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':path_or_address -- The contract address, or the path to an ABI Directory:' \
&& ret=0
;;
(bi)
_arguments "${_arguments_options[@]}" : \
'-o+[Path to where bindings will be stored]:PATH:_files -/' \
'--output-dir=[Path to where bindings will be stored]:PATH:_files -/' \
'--crate-name=[The name of the Rust crate to generate]:NAME: ' \
'--crate-version=[The version of the Rust crate to generate]:VERSION: ' \
'-e+[The Etherscan (or equivalent) API key]:KEY: ' \
'--etherscan-api-key=[The Etherscan (or equivalent) API key]:KEY: ' \
'-c+[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--chain=[The chain name or EIP-155 chain ID]:CHAIN: ' \
'--separate-files[Generate bindings as separate files]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':path_or_address -- The contract address, or the path to an ABI Directory:' \
&& ret=0
;;
(sig)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::sig -- The function signature, e.g. transfer(address,uint256):' \
'::optimize -- Optimize signature to contain provided amount of leading zeroes in selector:' \
&& ret=0
;;
(si)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::sig -- The function signature, e.g. transfer(address,uint256):' \
'::optimize -- Optimize signature to contain provided amount of leading zeroes in selector:' \
&& ret=0
;;
(create2)
_arguments "${_arguments_options[@]}" : \
'-s+[Prefix for the contract address]:HEX: ' \
'--starts-with=[Prefix for the contract address]:HEX: ' \
'-e+[Suffix for the contract address]:HEX: ' \
'--ends-with=[Suffix for the contract address]:HEX: ' \
'-m+[Sequence that the address has to match]:HEX: ' \
'--matching=[Sequence that the address has to match]:HEX: ' \
'-d+[Address of the contract deployer]:ADDRESS: ' \
'--deployer=[Address of the contract deployer]:ADDRESS: ' \
'-i+[Init code of the contract to be deployed]:HEX: ' \
'--init-code=[Init code of the contract to be deployed]:HEX: ' \
'--init-code-hash=[Init code hash of the contract to be deployed]:HASH: ' \
'-j+[Number of threads to use. Defaults to and caps at the number of logical cores]:JOBS: ' \
'--jobs=[Number of threads to use. Defaults to and caps at the number of logical cores]:JOBS: ' \
'--caller=[Address of the caller. Used for the first 20 bytes of the salt]:ADDRESS: ' \
'--seed=[The random number generator'\''s seed, used to initialize the salt]:HEX: ' \
'-c[Case sensitive matching]' \
'--case-sensitive[Case sensitive matching]' \
'(--seed)--no-random[Don'\''t initialize the salt with a random value, and instead use the default value of 0]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(c2)
_arguments "${_arguments_options[@]}" : \
'-s+[Prefix for the contract address]:HEX: ' \
'--starts-with=[Prefix for the contract address]:HEX: ' \
'-e+[Suffix for the contract address]:HEX: ' \
'--ends-with=[Suffix for the contract address]:HEX: ' \
'-m+[Sequence that the address has to match]:HEX: ' \
'--matching=[Sequence that the address has to match]:HEX: ' \
'-d+[Address of the contract deployer]:ADDRESS: ' \
'--deployer=[Address of the contract deployer]:ADDRESS: ' \
'-i+[Init code of the contract to be deployed]:HEX: ' \
'--init-code=[Init code of the contract to be deployed]:HEX: ' \
'--init-code-hash=[Init code hash of the contract to be deployed]:HASH: ' \
'-j+[Number of threads to use. Defaults to and caps at the number of logical cores]:JOBS: ' \
'--jobs=[Number of threads to use. Defaults to and caps at the number of logical cores]:JOBS: ' \
'--caller=[Address of the caller. Used for the first 20 bytes of the salt]:ADDRESS: ' \
'--seed=[The random number generator'\''s seed, used to initialize the salt]:HEX: ' \
'-c[Case sensitive matching]' \
'--case-sensitive[Case sensitive matching]' \
'(--seed)--no-random[Don'\''t initialize the salt with a random value, and instead use the default value of 0]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(find-block)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':timestamp -- The UNIX timestamp to search for, in seconds:' \
&& ret=0
;;
(f)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':timestamp -- The UNIX timestamp to search for, in seconds:' \
&& ret=0
;;
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
(run)
_arguments "${_arguments_options[@]}" : \
'*-l+[Label addresses in the trace]:LABEL: ' \
'*--label=[Label addresses in the trace]:LABEL: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The EVM version to use]:EVM_VERSION: ' \
'--evm-version=[The EVM version to use]:EVM_VERSION: ' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS: ' \
'-d[Opens the transaction in the debugger]' \
'--debug[Opens the transaction in the debugger]' \
'--decode-internal[Whether to identify internal functions in traces]' \
'-t[Print out opcode traces]' \
'--trace-printer[Print out opcode traces]' \
'-q[Executes the transaction only with the state from the previous block]' \
'--quick[Executes the transaction only with the state from the previous block]' \
'-v[Prints the full address of the contract]' \
'--verbose[Prints the full address of the contract]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--alphanet[Enables Alphanet features]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':tx_hash -- The transaction hash:' \
&& ret=0
;;
(r)
_arguments "${_arguments_options[@]}" : \
'*-l+[Label addresses in the trace]:LABEL: ' \
'*--label=[Label addresses in the trace]:LABEL: ' \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-e+[The EVM version to use]:EVM_VERSION: ' \
'--evm-version=[The EVM version to use]:EVM_VERSION: ' \
'--compute-units-per-second=[Sets the number of assumed available compute units per second for this provider]:CUPS: ' \
'-d[Opens the transaction in the debugger]' \
'--debug[Opens the transaction in the debugger]' \
'--decode-internal[Whether to identify internal functions in traces]' \
'-t[Print out opcode traces]' \
'--trace-printer[Print out opcode traces]' \
'-q[Executes the transaction only with the state from the previous block]' \
'--quick[Executes the transaction only with the state from the previous block]' \
'-v[Prints the full address of the contract]' \
'--verbose[Prints the full address of the contract]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'--no-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--no-rpc-rate-limit[Disables rate limiting for this node'\''s provider]' \
'--alphanet[Enables Alphanet features]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':tx_hash -- The transaction hash:' \
&& ret=0
;;
(rpc)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-w[Send raw JSON parameters]' \
'--raw[Send raw JSON parameters]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':method -- RPC method name:' \
'*::params -- RPC parameters:' \
&& ret=0
;;
(rp)
_arguments "${_arguments_options[@]}" : \
'-r+[The RPC endpoint]:URL: ' \
'--rpc-url=[The RPC endpoint]:URL: ' \
'--jwt-secret=[JWT Secret for the RPC endpoint]:JWT_SECRET: ' \
'-w[Send raw JSON parameters]' \
'--raw[Send raw JSON parameters]' \
'--flashbots[Use the Flashbots RPC URL with fast mode (<https\://rpc.flashbots.net/fast>)]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':method -- RPC method name:' \
'*::params -- RPC parameters:' \
&& ret=0
;;
(format-bytes32-string)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::string -- The string to format:' \
&& ret=0
;;
(--format-bytes32-string)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::string -- The string to format:' \
&& ret=0
;;
(parse-bytes32-string)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes -- The string to parse:' \
&& ret=0
;;
(--parse-bytes32-string)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes -- The string to parse:' \
&& ret=0
;;
(parse-bytes32-address)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes:' \
&& ret=0
;;
(--parse-bytes32-address)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::bytes:' \
&& ret=0
;;
(decode-transaction)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::tx:' \
&& ret=0
;;
(dt)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::tx:' \
&& ret=0
;;
(decode-tx)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::tx:' \
&& ret=0
;;
(selectors)
_arguments "${_arguments_options[@]}" : \
'-r[Resolve the function signatures for the extracted selectors using https\://openchain.xyz]' \
'--resolve[Resolve the function signatures for the extracted selectors using https\://openchain.xyz]' \
'-h[Print help]' \
'--help[Print help]' \
':bytecode -- The hex encoded bytecode:' \
&& ret=0
;;
(sel)
_arguments "${_arguments_options[@]}" : \
'-r[Resolve the function signatures for the extracted selectors using https\://openchain.xyz]' \
'--resolve[Resolve the function signatures for the extracted selectors using https\://openchain.xyz]' \
'-h[Print help]' \
'--help[Print help]' \
':bytecode -- The hex encoded bytecode:' \
&& ret=0
;;
(decode-eof)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'::eof:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_cast__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-help-command-$line[1]:"
        case $line[1] in
            (max-int)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(min-int)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(max-uint)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(address-zero)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(hash-zero)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(from-utf8)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(concat-hex)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(from-bin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-hexdata)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-check-sum-address)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-ascii)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-utf8)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(from-fixed-point)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-bytes32)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-fixed-point)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-uint256)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-int256)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(shl)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(shr)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-unit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-wei)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(from-wei)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-rlp)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(from-rlp)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-hex)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-dec)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(to-base)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(access-list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(logs)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(block)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(block-number)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(call)
_arguments "${_arguments_options[@]}" : \
":: :_cast__help__call_commands" \
"*::: :->call" \
&& ret=0

    case $state in
    (call)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-help-call-command-$line[1]:"
        case $line[1] in
            (--create)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(calldata)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(chain)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(chain-id)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(client)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(compute-address)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(disassemble)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(mktx)
_arguments "${_arguments_options[@]}" : \
":: :_cast__help__mktx_commands" \
"*::: :->mktx" \
&& ret=0

    case $state in
    (mktx)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-help-mktx-command-$line[1]:"
        case $line[1] in
            (--create)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(namehash)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(tx)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(receipt)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
":: :_cast__help__send_commands" \
"*::: :->send" \
&& ret=0

    case $state in
    (send)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-help-send-command-$line[1]:"
        case $line[1] in
            (--create)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(publish)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(estimate)
_arguments "${_arguments_options[@]}" : \
":: :_cast__help__estimate_commands" \
"*::: :->estimate" \
&& ret=0

    case $state in
    (estimate)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-help-estimate-command-$line[1]:"
        case $line[1] in
            (--create)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(calldata-decode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(abi-decode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(abi-encode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(index-erc7201)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(implementation)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(admin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(4byte)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(4byte-decode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(4byte-event)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(upload-signature)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pretty-calldata)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(age)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(balance)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(base-fee)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(code)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(codesize)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gas-price)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sig-event)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(keccak)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(resolve-name)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(lookup-address)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(storage)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(proof)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(nonce)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(etherscan-source)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(wallet)
_arguments "${_arguments_options[@]}" : \
":: :_cast__help__wallet_commands" \
"*::: :->wallet" \
&& ret=0

    case $state in
    (wallet)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:cast-help-wallet-command-$line[1]:"
        case $line[1] in
            (new)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(new-mnemonic)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vanity)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(address)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sign-auth)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(private-key)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(decrypt-keystore)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(interface)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(bind)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sig)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(create2)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(find-block)
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
(run)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(rpc)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(format-bytes32-string)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(parse-bytes32-string)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(parse-bytes32-address)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(decode-transaction)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(selectors)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(decode-eof)
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

(( $+functions[_cast_commands] )) ||
_cast_commands() {
    local commands; commands=(
'max-int:Prints the maximum value of the given integer type' \
'--max-int:Prints the maximum value of the given integer type' \
'maxi:Prints the maximum value of the given integer type' \
'min-int:Prints the minimum value of the given integer type' \
'--min-int:Prints the minimum value of the given integer type' \
'mini:Prints the minimum value of the given integer type' \
'max-uint:Prints the maximum value of the given integer type' \
'--max-uint:Prints the maximum value of the given integer type' \
'maxu:Prints the maximum value of the given integer type' \
'address-zero:Prints the zero address' \
'--address-zero:Prints the zero address' \
'az:Prints the zero address' \
'hash-zero:Prints the zero hash' \
'--hash-zero:Prints the zero hash' \
'hz:Prints the zero hash' \
'from-utf8:Convert UTF8 text to hex' \
'--from-ascii:Convert UTF8 text to hex' \
'--from-utf8:Convert UTF8 text to hex' \
'from-ascii:Convert UTF8 text to hex' \
'fu:Convert UTF8 text to hex' \
'fa:Convert UTF8 text to hex' \
'concat-hex:Concatenate hex strings' \
'--concat-hex:Concatenate hex strings' \
'ch:Concatenate hex strings' \
'from-bin:Convert binary data into hex data' \
'--from-bin:Convert binary data into hex data' \
'from-binx:Convert binary data into hex data' \
'fb:Convert binary data into hex data' \
'to-hexdata:Normalize the input to lowercase, 0x-prefixed hex' \
'--to-hexdata:Normalize the input to lowercase, 0x-prefixed hex' \
'thd:Normalize the input to lowercase, 0x-prefixed hex' \
'2hd:Normalize the input to lowercase, 0x-prefixed hex' \
'to-check-sum-address:Convert an address to a checksummed format (EIP-55)' \
'--to-checksum-address:Convert an address to a checksummed format (EIP-55)' \
'--to-checksum:Convert an address to a checksummed format (EIP-55)' \
'to-checksum:Convert an address to a checksummed format (EIP-55)' \
'ta:Convert an address to a checksummed format (EIP-55)' \
'2a:Convert an address to a checksummed format (EIP-55)' \
'to-ascii:Convert hex data to an ASCII string' \
'--to-ascii:Convert hex data to an ASCII string' \
'tas:Convert hex data to an ASCII string' \
'2as:Convert hex data to an ASCII string' \
'to-utf8:Convert hex data to a utf-8 string' \
'--to-utf8:Convert hex data to a utf-8 string' \
'tu8:Convert hex data to a utf-8 string' \
'2u8:Convert hex data to a utf-8 string' \
'from-fixed-point:Convert a fixed point number into an integer' \
'--from-fix:Convert a fixed point number into an integer' \
'ff:Convert a fixed point number into an integer' \
'to-bytes32:Right-pads hex data to 32 bytes' \
'--to-bytes32:Right-pads hex data to 32 bytes' \
'tb:Right-pads hex data to 32 bytes' \
'2b:Right-pads hex data to 32 bytes' \
'to-fixed-point:Convert an integer into a fixed point number' \
'--to-fix:Convert an integer into a fixed point number' \
'tf:Convert an integer into a fixed point number' \
'2f:Convert an integer into a fixed point number' \
'to-uint256:Convert a number to a hex-encoded uint256' \
'--to-uint256:Convert a number to a hex-encoded uint256' \
'tu:Convert a number to a hex-encoded uint256' \
'2u:Convert a number to a hex-encoded uint256' \
'to-int256:Convert a number to a hex-encoded int256' \
'--to-int256:Convert a number to a hex-encoded int256' \
'ti:Convert a number to a hex-encoded int256' \
'2i:Convert a number to a hex-encoded int256' \
'shl:Perform a left shifting operation' \
'shr:Perform a right shifting operation' \
'to-unit:Convert an ETH amount into another unit (ether, gwei or wei)' \
'--to-unit:Convert an ETH amount into another unit (ether, gwei or wei)' \
'tun:Convert an ETH amount into another unit (ether, gwei or wei)' \
'2un:Convert an ETH amount into another unit (ether, gwei or wei)' \
'to-wei:Convert an ETH amount to wei' \
'--to-wei:Convert an ETH amount to wei' \
'tw:Convert an ETH amount to wei' \
'2w:Convert an ETH amount to wei' \
'from-wei:Convert wei into an ETH amount' \
'--from-wei:Convert wei into an ETH amount' \
'fw:Convert wei into an ETH amount' \
'to-rlp:RLP encodes hex data, or an array of hex data' \
'--to-rlp:RLP encodes hex data, or an array of hex data' \
'from-rlp:Decodes RLP hex-encoded data' \
'--from-rlp:Decodes RLP hex-encoded data' \
'to-hex:Converts a number of one base to another' \
'--to-hex:Converts a number of one base to another' \
'th:Converts a number of one base to another' \
'2h:Converts a number of one base to another' \
'to-dec:Converts a number of one base to decimal' \
'--to-dec:Converts a number of one base to decimal' \
'td:Converts a number of one base to decimal' \
'2d:Converts a number of one base to decimal' \
'to-base:Converts a number of one base to another' \
'--to-base:Converts a number of one base to another' \
'--to-radix:Converts a number of one base to another' \
'to-radix:Converts a number of one base to another' \
'tr:Converts a number of one base to another' \
'2r:Converts a number of one base to another' \
'access-list:Create an access list for a transaction' \
'ac:Create an access list for a transaction' \
'acl:Create an access list for a transaction' \
'logs:Get logs by signature or topic' \
'l:Get logs by signature or topic' \
'block:Get information about a block' \
'bl:Get information about a block' \
'block-number:Get the latest block number' \
'bn:Get the latest block number' \
'call:Perform a call on an account without publishing a transaction' \
'c:Perform a call on an account without publishing a transaction' \
'calldata:ABI-encode a function with arguments' \
'cd:ABI-encode a function with arguments' \
'chain:Get the symbolic name of the current chain' \
'chain-id:Get the Ethereum chain ID' \
'ci:Get the Ethereum chain ID' \
'cid:Get the Ethereum chain ID' \
'client:Get the current client version' \
'cl:Get the current client version' \
'compute-address:Compute the contract address from a given nonce and deployer address' \
'ca:Compute the contract address from a given nonce and deployer address' \
'disassemble:Disassembles hex encoded bytecode into individual / human readable opcodes' \
'da:Disassembles hex encoded bytecode into individual / human readable opcodes' \
'mktx:Build and sign a transaction' \
'm:Build and sign a transaction' \
'namehash:Calculate the ENS namehash of a name' \
'na:Calculate the ENS namehash of a name' \
'nh:Calculate the ENS namehash of a name' \
'tx:Get information about a transaction' \
't:Get information about a transaction' \
'receipt:Get the transaction receipt for a transaction' \
're:Get the transaction receipt for a transaction' \
'send:Sign and publish a transaction' \
's:Sign and publish a transaction' \
'publish:Publish a raw transaction to the network' \
'p:Publish a raw transaction to the network' \
'estimate:Estimate the gas cost of a transaction' \
'e:Estimate the gas cost of a transaction' \
'calldata-decode:Decode ABI-encoded input data' \
'--calldata-decode:Decode ABI-encoded input data' \
'cdd:Decode ABI-encoded input data' \
'abi-decode:Decode ABI-encoded input or output data' \
'ad:Decode ABI-encoded input or output data' \
'--abi-decode:Decode ABI-encoded input or output data' \
'abi-encode:ABI encode the given function argument, excluding the selector' \
'ae:ABI encode the given function argument, excluding the selector' \
'index:Compute the storage slot for an entry in a mapping' \
'in:Compute the storage slot for an entry in a mapping' \
'index-erc7201:Compute storage slots as specified by \`ERC-7201\: Namespaced Storage Layout\`' \
'index7201:Compute storage slots as specified by \`ERC-7201\: Namespaced Storage Layout\`' \
'in7201:Compute storage slots as specified by \`ERC-7201\: Namespaced Storage Layout\`' \
'implementation:Fetch the EIP-1967 implementation account' \
'impl:Fetch the EIP-1967 implementation account' \
'admin:Fetch the EIP-1967 admin account' \
'adm:Fetch the EIP-1967 admin account' \
'4byte:Get the function signatures for the given selector from https\://openchain.xyz' \
'4:Get the function signatures for the given selector from https\://openchain.xyz' \
'4b:Get the function signatures for the given selector from https\://openchain.xyz' \
'4byte-decode:Decode ABI-encoded calldata using https\://openchain.xyz' \
'4d:Decode ABI-encoded calldata using https\://openchain.xyz' \
'4bd:Decode ABI-encoded calldata using https\://openchain.xyz' \
'4byte-event:Get the event signature for a given topic 0 from https\://openchain.xyz' \
'4e:Get the event signature for a given topic 0 from https\://openchain.xyz' \
'4be:Get the event signature for a given topic 0 from https\://openchain.xyz' \
'topic0-event:Get the event signature for a given topic 0 from https\://openchain.xyz' \
't0e:Get the event signature for a given topic 0 from https\://openchain.xyz' \
'upload-signature:Upload the given signatures to https\://openchain.xyz' \
'ups:Upload the given signatures to https\://openchain.xyz' \
'pretty-calldata:Pretty print calldata' \
'pc:Pretty print calldata' \
'age:Get the timestamp of a block' \
'a:Get the timestamp of a block' \
'balance:Get the balance of an account in wei' \
'b:Get the balance of an account in wei' \
'base-fee:Get the basefee of a block' \
'ba:Get the basefee of a block' \
'fee:Get the basefee of a block' \
'basefee:Get the basefee of a block' \
'code:Get the runtime bytecode of a contract' \
'co:Get the runtime bytecode of a contract' \
'codesize:Get the runtime bytecode size of a contract' \
'cs:Get the runtime bytecode size of a contract' \
'gas-price:Get the current gas price' \
'g:Get the current gas price' \
'sig-event:Generate event signatures from event string' \
'se:Generate event signatures from event string' \
'keccak:Hash arbitrary data using Keccak-256' \
'k:Hash arbitrary data using Keccak-256' \
'keccak256:Hash arbitrary data using Keccak-256' \
'resolve-name:Perform an ENS lookup' \
'rn:Perform an ENS lookup' \
'lookup-address:Perform an ENS reverse lookup' \
'la:Perform an ENS reverse lookup' \
'storage:Get the raw value of a contract'\''s storage slot' \
'st:Get the raw value of a contract'\''s storage slot' \
'proof:Generate a storage proof for a given storage slot' \
'pr:Generate a storage proof for a given storage slot' \
'nonce:Get the nonce for an account' \
'n:Get the nonce for an account' \
'etherscan-source:Get the source code of a contract from Etherscan' \
'et:Get the source code of a contract from Etherscan' \
'src:Get the source code of a contract from Etherscan' \
'wallet:Wallet management utilities' \
'w:Wallet management utilities' \
'interface:Generate a Solidity interface from a given ABI' \
'i:Generate a Solidity interface from a given ABI' \
'bind:Generate a rust binding from a given ABI' \
'bi:Generate a rust binding from a given ABI' \
'sig:Get the selector for a function' \
'si:Get the selector for a function' \
'create2:Generate a deterministic contract address using CREATE2' \
'c2:Generate a deterministic contract address using CREATE2' \
'find-block:Get the block number closest to the provided timestamp' \
'f:Get the block number closest to the provided timestamp' \
'completions:Generate shell completions script' \
'com:Generate shell completions script' \
'generate-fig-spec:Generate Fig autocompletion spec' \
'fig:Generate Fig autocompletion spec' \
'run:Runs a published transaction in a local environment and prints the trace' \
'r:Runs a published transaction in a local environment and prints the trace' \
'rpc:Perform a raw JSON-RPC request' \
'rp:Perform a raw JSON-RPC request' \
'format-bytes32-string:Formats a string into bytes32 encoding' \
'--format-bytes32-string:Formats a string into bytes32 encoding' \
'parse-bytes32-string:Parses a string from bytes32 encoding' \
'--parse-bytes32-string:Parses a string from bytes32 encoding' \
'parse-bytes32-address:Parses a checksummed address from bytes32 encoding.' \
'--parse-bytes32-address:Parses a checksummed address from bytes32 encoding.' \
'decode-transaction:Decodes a raw signed EIP 2718 typed transaction' \
'dt:Decodes a raw signed EIP 2718 typed transaction' \
'decode-tx:Decodes a raw signed EIP 2718 typed transaction' \
'selectors:Extracts function selectors and arguments from bytecode' \
'sel:Extracts function selectors and arguments from bytecode' \
'decode-eof:Decodes EOF container bytes' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast commands' commands "$@"
}
(( $+functions[_cast__4byte_commands] )) ||
_cast__4byte_commands() {
    local commands; commands=()
    _describe -t commands 'cast 4byte commands' commands "$@"
}
(( $+functions[_cast__4byte-decode_commands] )) ||
_cast__4byte-decode_commands() {
    local commands; commands=()
    _describe -t commands 'cast 4byte-decode commands' commands "$@"
}
(( $+functions[_cast__4byte-event_commands] )) ||
_cast__4byte-event_commands() {
    local commands; commands=()
    _describe -t commands 'cast 4byte-event commands' commands "$@"
}
(( $+functions[_cast__abi-decode_commands] )) ||
_cast__abi-decode_commands() {
    local commands; commands=()
    _describe -t commands 'cast abi-decode commands' commands "$@"
}
(( $+functions[_cast__abi-encode_commands] )) ||
_cast__abi-encode_commands() {
    local commands; commands=()
    _describe -t commands 'cast abi-encode commands' commands "$@"
}
(( $+functions[_cast__access-list_commands] )) ||
_cast__access-list_commands() {
    local commands; commands=()
    _describe -t commands 'cast access-list commands' commands "$@"
}
(( $+functions[_cast__address-zero_commands] )) ||
_cast__address-zero_commands() {
    local commands; commands=()
    _describe -t commands 'cast address-zero commands' commands "$@"
}
(( $+functions[_cast__admin_commands] )) ||
_cast__admin_commands() {
    local commands; commands=()
    _describe -t commands 'cast admin commands' commands "$@"
}
(( $+functions[_cast__age_commands] )) ||
_cast__age_commands() {
    local commands; commands=()
    _describe -t commands 'cast age commands' commands "$@"
}
(( $+functions[_cast__balance_commands] )) ||
_cast__balance_commands() {
    local commands; commands=()
    _describe -t commands 'cast balance commands' commands "$@"
}
(( $+functions[_cast__base-fee_commands] )) ||
_cast__base-fee_commands() {
    local commands; commands=()
    _describe -t commands 'cast base-fee commands' commands "$@"
}
(( $+functions[_cast__bind_commands] )) ||
_cast__bind_commands() {
    local commands; commands=()
    _describe -t commands 'cast bind commands' commands "$@"
}
(( $+functions[_cast__block_commands] )) ||
_cast__block_commands() {
    local commands; commands=()
    _describe -t commands 'cast block commands' commands "$@"
}
(( $+functions[_cast__block-number_commands] )) ||
_cast__block-number_commands() {
    local commands; commands=()
    _describe -t commands 'cast block-number commands' commands "$@"
}
(( $+functions[_cast__call_commands] )) ||
_cast__call_commands() {
    local commands; commands=(
'--create:ignores the address field and simulates creating a contract' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast call commands' commands "$@"
}
(( $+functions[_cast__call__--create_commands] )) ||
_cast__call__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast call --create commands' commands "$@"
}
(( $+functions[_cast__call__help_commands] )) ||
_cast__call__help_commands() {
    local commands; commands=(
'--create:ignores the address field and simulates creating a contract' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast call help commands' commands "$@"
}
(( $+functions[_cast__call__help__--create_commands] )) ||
_cast__call__help__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast call help --create commands' commands "$@"
}
(( $+functions[_cast__call__help__help_commands] )) ||
_cast__call__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'cast call help help commands' commands "$@"
}
(( $+functions[_cast__calldata_commands] )) ||
_cast__calldata_commands() {
    local commands; commands=()
    _describe -t commands 'cast calldata commands' commands "$@"
}
(( $+functions[_cast__calldata-decode_commands] )) ||
_cast__calldata-decode_commands() {
    local commands; commands=()
    _describe -t commands 'cast calldata-decode commands' commands "$@"
}
(( $+functions[_cast__chain_commands] )) ||
_cast__chain_commands() {
    local commands; commands=()
    _describe -t commands 'cast chain commands' commands "$@"
}
(( $+functions[_cast__chain-id_commands] )) ||
_cast__chain-id_commands() {
    local commands; commands=()
    _describe -t commands 'cast chain-id commands' commands "$@"
}
(( $+functions[_cast__client_commands] )) ||
_cast__client_commands() {
    local commands; commands=()
    _describe -t commands 'cast client commands' commands "$@"
}
(( $+functions[_cast__code_commands] )) ||
_cast__code_commands() {
    local commands; commands=()
    _describe -t commands 'cast code commands' commands "$@"
}
(( $+functions[_cast__codesize_commands] )) ||
_cast__codesize_commands() {
    local commands; commands=()
    _describe -t commands 'cast codesize commands' commands "$@"
}
(( $+functions[_cast__completions_commands] )) ||
_cast__completions_commands() {
    local commands; commands=()
    _describe -t commands 'cast completions commands' commands "$@"
}
(( $+functions[_cast__compute-address_commands] )) ||
_cast__compute-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast compute-address commands' commands "$@"
}
(( $+functions[_cast__concat-hex_commands] )) ||
_cast__concat-hex_commands() {
    local commands; commands=()
    _describe -t commands 'cast concat-hex commands' commands "$@"
}
(( $+functions[_cast__create2_commands] )) ||
_cast__create2_commands() {
    local commands; commands=()
    _describe -t commands 'cast create2 commands' commands "$@"
}
(( $+functions[_cast__decode-eof_commands] )) ||
_cast__decode-eof_commands() {
    local commands; commands=()
    _describe -t commands 'cast decode-eof commands' commands "$@"
}
(( $+functions[_cast__decode-transaction_commands] )) ||
_cast__decode-transaction_commands() {
    local commands; commands=()
    _describe -t commands 'cast decode-transaction commands' commands "$@"
}
(( $+functions[_cast__disassemble_commands] )) ||
_cast__disassemble_commands() {
    local commands; commands=()
    _describe -t commands 'cast disassemble commands' commands "$@"
}
(( $+functions[_cast__estimate_commands] )) ||
_cast__estimate_commands() {
    local commands; commands=(
'--create:Estimate gas cost to deploy a smart contract' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast estimate commands' commands "$@"
}
(( $+functions[_cast__estimate__--create_commands] )) ||
_cast__estimate__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast estimate --create commands' commands "$@"
}
(( $+functions[_cast__estimate__help_commands] )) ||
_cast__estimate__help_commands() {
    local commands; commands=(
'--create:Estimate gas cost to deploy a smart contract' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast estimate help commands' commands "$@"
}
(( $+functions[_cast__estimate__help__--create_commands] )) ||
_cast__estimate__help__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast estimate help --create commands' commands "$@"
}
(( $+functions[_cast__estimate__help__help_commands] )) ||
_cast__estimate__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'cast estimate help help commands' commands "$@"
}
(( $+functions[_cast__etherscan-source_commands] )) ||
_cast__etherscan-source_commands() {
    local commands; commands=()
    _describe -t commands 'cast etherscan-source commands' commands "$@"
}
(( $+functions[_cast__find-block_commands] )) ||
_cast__find-block_commands() {
    local commands; commands=()
    _describe -t commands 'cast find-block commands' commands "$@"
}
(( $+functions[_cast__format-bytes32-string_commands] )) ||
_cast__format-bytes32-string_commands() {
    local commands; commands=()
    _describe -t commands 'cast format-bytes32-string commands' commands "$@"
}
(( $+functions[_cast__from-bin_commands] )) ||
_cast__from-bin_commands() {
    local commands; commands=()
    _describe -t commands 'cast from-bin commands' commands "$@"
}
(( $+functions[_cast__from-fixed-point_commands] )) ||
_cast__from-fixed-point_commands() {
    local commands; commands=()
    _describe -t commands 'cast from-fixed-point commands' commands "$@"
}
(( $+functions[_cast__from-rlp_commands] )) ||
_cast__from-rlp_commands() {
    local commands; commands=()
    _describe -t commands 'cast from-rlp commands' commands "$@"
}
(( $+functions[_cast__from-utf8_commands] )) ||
_cast__from-utf8_commands() {
    local commands; commands=()
    _describe -t commands 'cast from-utf8 commands' commands "$@"
}
(( $+functions[_cast__from-wei_commands] )) ||
_cast__from-wei_commands() {
    local commands; commands=()
    _describe -t commands 'cast from-wei commands' commands "$@"
}
(( $+functions[_cast__gas-price_commands] )) ||
_cast__gas-price_commands() {
    local commands; commands=()
    _describe -t commands 'cast gas-price commands' commands "$@"
}
(( $+functions[_cast__generate-fig-spec_commands] )) ||
_cast__generate-fig-spec_commands() {
    local commands; commands=()
    _describe -t commands 'cast generate-fig-spec commands' commands "$@"
}
(( $+functions[_cast__hash-zero_commands] )) ||
_cast__hash-zero_commands() {
    local commands; commands=()
    _describe -t commands 'cast hash-zero commands' commands "$@"
}
(( $+functions[_cast__help_commands] )) ||
_cast__help_commands() {
    local commands; commands=(
'max-int:Prints the maximum value of the given integer type' \
'min-int:Prints the minimum value of the given integer type' \
'max-uint:Prints the maximum value of the given integer type' \
'address-zero:Prints the zero address' \
'hash-zero:Prints the zero hash' \
'from-utf8:Convert UTF8 text to hex' \
'concat-hex:Concatenate hex strings' \
'from-bin:Convert binary data into hex data' \
'to-hexdata:Normalize the input to lowercase, 0x-prefixed hex' \
'to-check-sum-address:Convert an address to a checksummed format (EIP-55)' \
'to-ascii:Convert hex data to an ASCII string' \
'to-utf8:Convert hex data to a utf-8 string' \
'from-fixed-point:Convert a fixed point number into an integer' \
'to-bytes32:Right-pads hex data to 32 bytes' \
'to-fixed-point:Convert an integer into a fixed point number' \
'to-uint256:Convert a number to a hex-encoded uint256' \
'to-int256:Convert a number to a hex-encoded int256' \
'shl:Perform a left shifting operation' \
'shr:Perform a right shifting operation' \
'to-unit:Convert an ETH amount into another unit (ether, gwei or wei)' \
'to-wei:Convert an ETH amount to wei' \
'from-wei:Convert wei into an ETH amount' \
'to-rlp:RLP encodes hex data, or an array of hex data' \
'from-rlp:Decodes RLP hex-encoded data' \
'to-hex:Converts a number of one base to another' \
'to-dec:Converts a number of one base to decimal' \
'to-base:Converts a number of one base to another' \
'access-list:Create an access list for a transaction' \
'logs:Get logs by signature or topic' \
'block:Get information about a block' \
'block-number:Get the latest block number' \
'call:Perform a call on an account without publishing a transaction' \
'calldata:ABI-encode a function with arguments' \
'chain:Get the symbolic name of the current chain' \
'chain-id:Get the Ethereum chain ID' \
'client:Get the current client version' \
'compute-address:Compute the contract address from a given nonce and deployer address' \
'disassemble:Disassembles hex encoded bytecode into individual / human readable opcodes' \
'mktx:Build and sign a transaction' \
'namehash:Calculate the ENS namehash of a name' \
'tx:Get information about a transaction' \
'receipt:Get the transaction receipt for a transaction' \
'send:Sign and publish a transaction' \
'publish:Publish a raw transaction to the network' \
'estimate:Estimate the gas cost of a transaction' \
'calldata-decode:Decode ABI-encoded input data' \
'abi-decode:Decode ABI-encoded input or output data' \
'abi-encode:ABI encode the given function argument, excluding the selector' \
'index:Compute the storage slot for an entry in a mapping' \
'index-erc7201:Compute storage slots as specified by \`ERC-7201\: Namespaced Storage Layout\`' \
'implementation:Fetch the EIP-1967 implementation account' \
'admin:Fetch the EIP-1967 admin account' \
'4byte:Get the function signatures for the given selector from https\://openchain.xyz' \
'4byte-decode:Decode ABI-encoded calldata using https\://openchain.xyz' \
'4byte-event:Get the event signature for a given topic 0 from https\://openchain.xyz' \
'upload-signature:Upload the given signatures to https\://openchain.xyz' \
'pretty-calldata:Pretty print calldata' \
'age:Get the timestamp of a block' \
'balance:Get the balance of an account in wei' \
'base-fee:Get the basefee of a block' \
'code:Get the runtime bytecode of a contract' \
'codesize:Get the runtime bytecode size of a contract' \
'gas-price:Get the current gas price' \
'sig-event:Generate event signatures from event string' \
'keccak:Hash arbitrary data using Keccak-256' \
'resolve-name:Perform an ENS lookup' \
'lookup-address:Perform an ENS reverse lookup' \
'storage:Get the raw value of a contract'\''s storage slot' \
'proof:Generate a storage proof for a given storage slot' \
'nonce:Get the nonce for an account' \
'etherscan-source:Get the source code of a contract from Etherscan' \
'wallet:Wallet management utilities' \
'interface:Generate a Solidity interface from a given ABI' \
'bind:Generate a rust binding from a given ABI' \
'sig:Get the selector for a function' \
'create2:Generate a deterministic contract address using CREATE2' \
'find-block:Get the block number closest to the provided timestamp' \
'completions:Generate shell completions script' \
'generate-fig-spec:Generate Fig autocompletion spec' \
'run:Runs a published transaction in a local environment and prints the trace' \
'rpc:Perform a raw JSON-RPC request' \
'format-bytes32-string:Formats a string into bytes32 encoding' \
'parse-bytes32-string:Parses a string from bytes32 encoding' \
'parse-bytes32-address:Parses a checksummed address from bytes32 encoding.' \
'decode-transaction:Decodes a raw signed EIP 2718 typed transaction' \
'selectors:Extracts function selectors and arguments from bytecode' \
'decode-eof:Decodes EOF container bytes' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast help commands' commands "$@"
}
(( $+functions[_cast__help__4byte_commands] )) ||
_cast__help__4byte_commands() {
    local commands; commands=()
    _describe -t commands 'cast help 4byte commands' commands "$@"
}
(( $+functions[_cast__help__4byte-decode_commands] )) ||
_cast__help__4byte-decode_commands() {
    local commands; commands=()
    _describe -t commands 'cast help 4byte-decode commands' commands "$@"
}
(( $+functions[_cast__help__4byte-event_commands] )) ||
_cast__help__4byte-event_commands() {
    local commands; commands=()
    _describe -t commands 'cast help 4byte-event commands' commands "$@"
}
(( $+functions[_cast__help__abi-decode_commands] )) ||
_cast__help__abi-decode_commands() {
    local commands; commands=()
    _describe -t commands 'cast help abi-decode commands' commands "$@"
}
(( $+functions[_cast__help__abi-encode_commands] )) ||
_cast__help__abi-encode_commands() {
    local commands; commands=()
    _describe -t commands 'cast help abi-encode commands' commands "$@"
}
(( $+functions[_cast__help__access-list_commands] )) ||
_cast__help__access-list_commands() {
    local commands; commands=()
    _describe -t commands 'cast help access-list commands' commands "$@"
}
(( $+functions[_cast__help__address-zero_commands] )) ||
_cast__help__address-zero_commands() {
    local commands; commands=()
    _describe -t commands 'cast help address-zero commands' commands "$@"
}
(( $+functions[_cast__help__admin_commands] )) ||
_cast__help__admin_commands() {
    local commands; commands=()
    _describe -t commands 'cast help admin commands' commands "$@"
}
(( $+functions[_cast__help__age_commands] )) ||
_cast__help__age_commands() {
    local commands; commands=()
    _describe -t commands 'cast help age commands' commands "$@"
}
(( $+functions[_cast__help__balance_commands] )) ||
_cast__help__balance_commands() {
    local commands; commands=()
    _describe -t commands 'cast help balance commands' commands "$@"
}
(( $+functions[_cast__help__base-fee_commands] )) ||
_cast__help__base-fee_commands() {
    local commands; commands=()
    _describe -t commands 'cast help base-fee commands' commands "$@"
}
(( $+functions[_cast__help__bind_commands] )) ||
_cast__help__bind_commands() {
    local commands; commands=()
    _describe -t commands 'cast help bind commands' commands "$@"
}
(( $+functions[_cast__help__block_commands] )) ||
_cast__help__block_commands() {
    local commands; commands=()
    _describe -t commands 'cast help block commands' commands "$@"
}
(( $+functions[_cast__help__block-number_commands] )) ||
_cast__help__block-number_commands() {
    local commands; commands=()
    _describe -t commands 'cast help block-number commands' commands "$@"
}
(( $+functions[_cast__help__call_commands] )) ||
_cast__help__call_commands() {
    local commands; commands=(
'--create:ignores the address field and simulates creating a contract' \
    )
    _describe -t commands 'cast help call commands' commands "$@"
}
(( $+functions[_cast__help__call__--create_commands] )) ||
_cast__help__call__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast help call --create commands' commands "$@"
}
(( $+functions[_cast__help__calldata_commands] )) ||
_cast__help__calldata_commands() {
    local commands; commands=()
    _describe -t commands 'cast help calldata commands' commands "$@"
}
(( $+functions[_cast__help__calldata-decode_commands] )) ||
_cast__help__calldata-decode_commands() {
    local commands; commands=()
    _describe -t commands 'cast help calldata-decode commands' commands "$@"
}
(( $+functions[_cast__help__chain_commands] )) ||
_cast__help__chain_commands() {
    local commands; commands=()
    _describe -t commands 'cast help chain commands' commands "$@"
}
(( $+functions[_cast__help__chain-id_commands] )) ||
_cast__help__chain-id_commands() {
    local commands; commands=()
    _describe -t commands 'cast help chain-id commands' commands "$@"
}
(( $+functions[_cast__help__client_commands] )) ||
_cast__help__client_commands() {
    local commands; commands=()
    _describe -t commands 'cast help client commands' commands "$@"
}
(( $+functions[_cast__help__code_commands] )) ||
_cast__help__code_commands() {
    local commands; commands=()
    _describe -t commands 'cast help code commands' commands "$@"
}
(( $+functions[_cast__help__codesize_commands] )) ||
_cast__help__codesize_commands() {
    local commands; commands=()
    _describe -t commands 'cast help codesize commands' commands "$@"
}
(( $+functions[_cast__help__completions_commands] )) ||
_cast__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'cast help completions commands' commands "$@"
}
(( $+functions[_cast__help__compute-address_commands] )) ||
_cast__help__compute-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast help compute-address commands' commands "$@"
}
(( $+functions[_cast__help__concat-hex_commands] )) ||
_cast__help__concat-hex_commands() {
    local commands; commands=()
    _describe -t commands 'cast help concat-hex commands' commands "$@"
}
(( $+functions[_cast__help__create2_commands] )) ||
_cast__help__create2_commands() {
    local commands; commands=()
    _describe -t commands 'cast help create2 commands' commands "$@"
}
(( $+functions[_cast__help__decode-eof_commands] )) ||
_cast__help__decode-eof_commands() {
    local commands; commands=()
    _describe -t commands 'cast help decode-eof commands' commands "$@"
}
(( $+functions[_cast__help__decode-transaction_commands] )) ||
_cast__help__decode-transaction_commands() {
    local commands; commands=()
    _describe -t commands 'cast help decode-transaction commands' commands "$@"
}
(( $+functions[_cast__help__disassemble_commands] )) ||
_cast__help__disassemble_commands() {
    local commands; commands=()
    _describe -t commands 'cast help disassemble commands' commands "$@"
}
(( $+functions[_cast__help__estimate_commands] )) ||
_cast__help__estimate_commands() {
    local commands; commands=(
'--create:Estimate gas cost to deploy a smart contract' \
    )
    _describe -t commands 'cast help estimate commands' commands "$@"
}
(( $+functions[_cast__help__estimate__--create_commands] )) ||
_cast__help__estimate__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast help estimate --create commands' commands "$@"
}
(( $+functions[_cast__help__etherscan-source_commands] )) ||
_cast__help__etherscan-source_commands() {
    local commands; commands=()
    _describe -t commands 'cast help etherscan-source commands' commands "$@"
}
(( $+functions[_cast__help__find-block_commands] )) ||
_cast__help__find-block_commands() {
    local commands; commands=()
    _describe -t commands 'cast help find-block commands' commands "$@"
}
(( $+functions[_cast__help__format-bytes32-string_commands] )) ||
_cast__help__format-bytes32-string_commands() {
    local commands; commands=()
    _describe -t commands 'cast help format-bytes32-string commands' commands "$@"
}
(( $+functions[_cast__help__from-bin_commands] )) ||
_cast__help__from-bin_commands() {
    local commands; commands=()
    _describe -t commands 'cast help from-bin commands' commands "$@"
}
(( $+functions[_cast__help__from-fixed-point_commands] )) ||
_cast__help__from-fixed-point_commands() {
    local commands; commands=()
    _describe -t commands 'cast help from-fixed-point commands' commands "$@"
}
(( $+functions[_cast__help__from-rlp_commands] )) ||
_cast__help__from-rlp_commands() {
    local commands; commands=()
    _describe -t commands 'cast help from-rlp commands' commands "$@"
}
(( $+functions[_cast__help__from-utf8_commands] )) ||
_cast__help__from-utf8_commands() {
    local commands; commands=()
    _describe -t commands 'cast help from-utf8 commands' commands "$@"
}
(( $+functions[_cast__help__from-wei_commands] )) ||
_cast__help__from-wei_commands() {
    local commands; commands=()
    _describe -t commands 'cast help from-wei commands' commands "$@"
}
(( $+functions[_cast__help__gas-price_commands] )) ||
_cast__help__gas-price_commands() {
    local commands; commands=()
    _describe -t commands 'cast help gas-price commands' commands "$@"
}
(( $+functions[_cast__help__generate-fig-spec_commands] )) ||
_cast__help__generate-fig-spec_commands() {
    local commands; commands=()
    _describe -t commands 'cast help generate-fig-spec commands' commands "$@"
}
(( $+functions[_cast__help__hash-zero_commands] )) ||
_cast__help__hash-zero_commands() {
    local commands; commands=()
    _describe -t commands 'cast help hash-zero commands' commands "$@"
}
(( $+functions[_cast__help__help_commands] )) ||
_cast__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'cast help help commands' commands "$@"
}
(( $+functions[_cast__help__implementation_commands] )) ||
_cast__help__implementation_commands() {
    local commands; commands=()
    _describe -t commands 'cast help implementation commands' commands "$@"
}
(( $+functions[_cast__help__index_commands] )) ||
_cast__help__index_commands() {
    local commands; commands=()
    _describe -t commands 'cast help index commands' commands "$@"
}
(( $+functions[_cast__help__index-erc7201_commands] )) ||
_cast__help__index-erc7201_commands() {
    local commands; commands=()
    _describe -t commands 'cast help index-erc7201 commands' commands "$@"
}
(( $+functions[_cast__help__interface_commands] )) ||
_cast__help__interface_commands() {
    local commands; commands=()
    _describe -t commands 'cast help interface commands' commands "$@"
}
(( $+functions[_cast__help__keccak_commands] )) ||
_cast__help__keccak_commands() {
    local commands; commands=()
    _describe -t commands 'cast help keccak commands' commands "$@"
}
(( $+functions[_cast__help__logs_commands] )) ||
_cast__help__logs_commands() {
    local commands; commands=()
    _describe -t commands 'cast help logs commands' commands "$@"
}
(( $+functions[_cast__help__lookup-address_commands] )) ||
_cast__help__lookup-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast help lookup-address commands' commands "$@"
}
(( $+functions[_cast__help__max-int_commands] )) ||
_cast__help__max-int_commands() {
    local commands; commands=()
    _describe -t commands 'cast help max-int commands' commands "$@"
}
(( $+functions[_cast__help__max-uint_commands] )) ||
_cast__help__max-uint_commands() {
    local commands; commands=()
    _describe -t commands 'cast help max-uint commands' commands "$@"
}
(( $+functions[_cast__help__min-int_commands] )) ||
_cast__help__min-int_commands() {
    local commands; commands=()
    _describe -t commands 'cast help min-int commands' commands "$@"
}
(( $+functions[_cast__help__mktx_commands] )) ||
_cast__help__mktx_commands() {
    local commands; commands=(
'--create:Use to deploy raw contract bytecode' \
    )
    _describe -t commands 'cast help mktx commands' commands "$@"
}
(( $+functions[_cast__help__mktx__--create_commands] )) ||
_cast__help__mktx__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast help mktx --create commands' commands "$@"
}
(( $+functions[_cast__help__namehash_commands] )) ||
_cast__help__namehash_commands() {
    local commands; commands=()
    _describe -t commands 'cast help namehash commands' commands "$@"
}
(( $+functions[_cast__help__nonce_commands] )) ||
_cast__help__nonce_commands() {
    local commands; commands=()
    _describe -t commands 'cast help nonce commands' commands "$@"
}
(( $+functions[_cast__help__parse-bytes32-address_commands] )) ||
_cast__help__parse-bytes32-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast help parse-bytes32-address commands' commands "$@"
}
(( $+functions[_cast__help__parse-bytes32-string_commands] )) ||
_cast__help__parse-bytes32-string_commands() {
    local commands; commands=()
    _describe -t commands 'cast help parse-bytes32-string commands' commands "$@"
}
(( $+functions[_cast__help__pretty-calldata_commands] )) ||
_cast__help__pretty-calldata_commands() {
    local commands; commands=()
    _describe -t commands 'cast help pretty-calldata commands' commands "$@"
}
(( $+functions[_cast__help__proof_commands] )) ||
_cast__help__proof_commands() {
    local commands; commands=()
    _describe -t commands 'cast help proof commands' commands "$@"
}
(( $+functions[_cast__help__publish_commands] )) ||
_cast__help__publish_commands() {
    local commands; commands=()
    _describe -t commands 'cast help publish commands' commands "$@"
}
(( $+functions[_cast__help__receipt_commands] )) ||
_cast__help__receipt_commands() {
    local commands; commands=()
    _describe -t commands 'cast help receipt commands' commands "$@"
}
(( $+functions[_cast__help__resolve-name_commands] )) ||
_cast__help__resolve-name_commands() {
    local commands; commands=()
    _describe -t commands 'cast help resolve-name commands' commands "$@"
}
(( $+functions[_cast__help__rpc_commands] )) ||
_cast__help__rpc_commands() {
    local commands; commands=()
    _describe -t commands 'cast help rpc commands' commands "$@"
}
(( $+functions[_cast__help__run_commands] )) ||
_cast__help__run_commands() {
    local commands; commands=()
    _describe -t commands 'cast help run commands' commands "$@"
}
(( $+functions[_cast__help__selectors_commands] )) ||
_cast__help__selectors_commands() {
    local commands; commands=()
    _describe -t commands 'cast help selectors commands' commands "$@"
}
(( $+functions[_cast__help__send_commands] )) ||
_cast__help__send_commands() {
    local commands; commands=(
'--create:Use to deploy raw contract bytecode' \
    )
    _describe -t commands 'cast help send commands' commands "$@"
}
(( $+functions[_cast__help__send__--create_commands] )) ||
_cast__help__send__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast help send --create commands' commands "$@"
}
(( $+functions[_cast__help__shl_commands] )) ||
_cast__help__shl_commands() {
    local commands; commands=()
    _describe -t commands 'cast help shl commands' commands "$@"
}
(( $+functions[_cast__help__shr_commands] )) ||
_cast__help__shr_commands() {
    local commands; commands=()
    _describe -t commands 'cast help shr commands' commands "$@"
}
(( $+functions[_cast__help__sig_commands] )) ||
_cast__help__sig_commands() {
    local commands; commands=()
    _describe -t commands 'cast help sig commands' commands "$@"
}
(( $+functions[_cast__help__sig-event_commands] )) ||
_cast__help__sig-event_commands() {
    local commands; commands=()
    _describe -t commands 'cast help sig-event commands' commands "$@"
}
(( $+functions[_cast__help__storage_commands] )) ||
_cast__help__storage_commands() {
    local commands; commands=()
    _describe -t commands 'cast help storage commands' commands "$@"
}
(( $+functions[_cast__help__to-ascii_commands] )) ||
_cast__help__to-ascii_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-ascii commands' commands "$@"
}
(( $+functions[_cast__help__to-base_commands] )) ||
_cast__help__to-base_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-base commands' commands "$@"
}
(( $+functions[_cast__help__to-bytes32_commands] )) ||
_cast__help__to-bytes32_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-bytes32 commands' commands "$@"
}
(( $+functions[_cast__help__to-check-sum-address_commands] )) ||
_cast__help__to-check-sum-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-check-sum-address commands' commands "$@"
}
(( $+functions[_cast__help__to-dec_commands] )) ||
_cast__help__to-dec_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-dec commands' commands "$@"
}
(( $+functions[_cast__help__to-fixed-point_commands] )) ||
_cast__help__to-fixed-point_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-fixed-point commands' commands "$@"
}
(( $+functions[_cast__help__to-hex_commands] )) ||
_cast__help__to-hex_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-hex commands' commands "$@"
}
(( $+functions[_cast__help__to-hexdata_commands] )) ||
_cast__help__to-hexdata_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-hexdata commands' commands "$@"
}
(( $+functions[_cast__help__to-int256_commands] )) ||
_cast__help__to-int256_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-int256 commands' commands "$@"
}
(( $+functions[_cast__help__to-rlp_commands] )) ||
_cast__help__to-rlp_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-rlp commands' commands "$@"
}
(( $+functions[_cast__help__to-uint256_commands] )) ||
_cast__help__to-uint256_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-uint256 commands' commands "$@"
}
(( $+functions[_cast__help__to-unit_commands] )) ||
_cast__help__to-unit_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-unit commands' commands "$@"
}
(( $+functions[_cast__help__to-utf8_commands] )) ||
_cast__help__to-utf8_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-utf8 commands' commands "$@"
}
(( $+functions[_cast__help__to-wei_commands] )) ||
_cast__help__to-wei_commands() {
    local commands; commands=()
    _describe -t commands 'cast help to-wei commands' commands "$@"
}
(( $+functions[_cast__help__tx_commands] )) ||
_cast__help__tx_commands() {
    local commands; commands=()
    _describe -t commands 'cast help tx commands' commands "$@"
}
(( $+functions[_cast__help__upload-signature_commands] )) ||
_cast__help__upload-signature_commands() {
    local commands; commands=()
    _describe -t commands 'cast help upload-signature commands' commands "$@"
}
(( $+functions[_cast__help__wallet_commands] )) ||
_cast__help__wallet_commands() {
    local commands; commands=(
'new:Create a new random keypair' \
'new-mnemonic:Generates a random BIP39 mnemonic phrase' \
'vanity:Generate a vanity address' \
'address:Convert a private key to an address' \
'sign:Sign a message or typed data' \
'sign-auth:EIP-7702 sign authorization' \
'verify:Verify the signature of a message' \
'import:Import a private key into an encrypted keystore' \
'list:List all the accounts in the keystore default directory' \
'private-key:Derives private key from mnemonic' \
'decrypt-keystore:Decrypt a keystore file to get the private key' \
    )
    _describe -t commands 'cast help wallet commands' commands "$@"
}
(( $+functions[_cast__help__wallet__address_commands] )) ||
_cast__help__wallet__address_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet address commands' commands "$@"
}
(( $+functions[_cast__help__wallet__decrypt-keystore_commands] )) ||
_cast__help__wallet__decrypt-keystore_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet decrypt-keystore commands' commands "$@"
}
(( $+functions[_cast__help__wallet__import_commands] )) ||
_cast__help__wallet__import_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet import commands' commands "$@"
}
(( $+functions[_cast__help__wallet__list_commands] )) ||
_cast__help__wallet__list_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet list commands' commands "$@"
}
(( $+functions[_cast__help__wallet__new_commands] )) ||
_cast__help__wallet__new_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet new commands' commands "$@"
}
(( $+functions[_cast__help__wallet__new-mnemonic_commands] )) ||
_cast__help__wallet__new-mnemonic_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet new-mnemonic commands' commands "$@"
}
(( $+functions[_cast__help__wallet__private-key_commands] )) ||
_cast__help__wallet__private-key_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet private-key commands' commands "$@"
}
(( $+functions[_cast__help__wallet__sign_commands] )) ||
_cast__help__wallet__sign_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet sign commands' commands "$@"
}
(( $+functions[_cast__help__wallet__sign-auth_commands] )) ||
_cast__help__wallet__sign-auth_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet sign-auth commands' commands "$@"
}
(( $+functions[_cast__help__wallet__vanity_commands] )) ||
_cast__help__wallet__vanity_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet vanity commands' commands "$@"
}
(( $+functions[_cast__help__wallet__verify_commands] )) ||
_cast__help__wallet__verify_commands() {
    local commands; commands=()
    _describe -t commands 'cast help wallet verify commands' commands "$@"
}
(( $+functions[_cast__implementation_commands] )) ||
_cast__implementation_commands() {
    local commands; commands=()
    _describe -t commands 'cast implementation commands' commands "$@"
}
(( $+functions[_cast__index_commands] )) ||
_cast__index_commands() {
    local commands; commands=()
    _describe -t commands 'cast index commands' commands "$@"
}
(( $+functions[_cast__index-erc7201_commands] )) ||
_cast__index-erc7201_commands() {
    local commands; commands=()
    _describe -t commands 'cast index-erc7201 commands' commands "$@"
}
(( $+functions[_cast__interface_commands] )) ||
_cast__interface_commands() {
    local commands; commands=()
    _describe -t commands 'cast interface commands' commands "$@"
}
(( $+functions[_cast__keccak_commands] )) ||
_cast__keccak_commands() {
    local commands; commands=()
    _describe -t commands 'cast keccak commands' commands "$@"
}
(( $+functions[_cast__logs_commands] )) ||
_cast__logs_commands() {
    local commands; commands=()
    _describe -t commands 'cast logs commands' commands "$@"
}
(( $+functions[_cast__lookup-address_commands] )) ||
_cast__lookup-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast lookup-address commands' commands "$@"
}
(( $+functions[_cast__max-int_commands] )) ||
_cast__max-int_commands() {
    local commands; commands=()
    _describe -t commands 'cast max-int commands' commands "$@"
}
(( $+functions[_cast__max-uint_commands] )) ||
_cast__max-uint_commands() {
    local commands; commands=()
    _describe -t commands 'cast max-uint commands' commands "$@"
}
(( $+functions[_cast__min-int_commands] )) ||
_cast__min-int_commands() {
    local commands; commands=()
    _describe -t commands 'cast min-int commands' commands "$@"
}
(( $+functions[_cast__mktx_commands] )) ||
_cast__mktx_commands() {
    local commands; commands=(
'--create:Use to deploy raw contract bytecode' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast mktx commands' commands "$@"
}
(( $+functions[_cast__mktx__--create_commands] )) ||
_cast__mktx__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast mktx --create commands' commands "$@"
}
(( $+functions[_cast__mktx__help_commands] )) ||
_cast__mktx__help_commands() {
    local commands; commands=(
'--create:Use to deploy raw contract bytecode' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast mktx help commands' commands "$@"
}
(( $+functions[_cast__mktx__help__--create_commands] )) ||
_cast__mktx__help__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast mktx help --create commands' commands "$@"
}
(( $+functions[_cast__mktx__help__help_commands] )) ||
_cast__mktx__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'cast mktx help help commands' commands "$@"
}
(( $+functions[_cast__namehash_commands] )) ||
_cast__namehash_commands() {
    local commands; commands=()
    _describe -t commands 'cast namehash commands' commands "$@"
}
(( $+functions[_cast__nonce_commands] )) ||
_cast__nonce_commands() {
    local commands; commands=()
    _describe -t commands 'cast nonce commands' commands "$@"
}
(( $+functions[_cast__parse-bytes32-address_commands] )) ||
_cast__parse-bytes32-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast parse-bytes32-address commands' commands "$@"
}
(( $+functions[_cast__parse-bytes32-string_commands] )) ||
_cast__parse-bytes32-string_commands() {
    local commands; commands=()
    _describe -t commands 'cast parse-bytes32-string commands' commands "$@"
}
(( $+functions[_cast__pretty-calldata_commands] )) ||
_cast__pretty-calldata_commands() {
    local commands; commands=()
    _describe -t commands 'cast pretty-calldata commands' commands "$@"
}
(( $+functions[_cast__proof_commands] )) ||
_cast__proof_commands() {
    local commands; commands=()
    _describe -t commands 'cast proof commands' commands "$@"
}
(( $+functions[_cast__publish_commands] )) ||
_cast__publish_commands() {
    local commands; commands=()
    _describe -t commands 'cast publish commands' commands "$@"
}
(( $+functions[_cast__receipt_commands] )) ||
_cast__receipt_commands() {
    local commands; commands=()
    _describe -t commands 'cast receipt commands' commands "$@"
}
(( $+functions[_cast__resolve-name_commands] )) ||
_cast__resolve-name_commands() {
    local commands; commands=()
    _describe -t commands 'cast resolve-name commands' commands "$@"
}
(( $+functions[_cast__rpc_commands] )) ||
_cast__rpc_commands() {
    local commands; commands=()
    _describe -t commands 'cast rpc commands' commands "$@"
}
(( $+functions[_cast__run_commands] )) ||
_cast__run_commands() {
    local commands; commands=()
    _describe -t commands 'cast run commands' commands "$@"
}
(( $+functions[_cast__selectors_commands] )) ||
_cast__selectors_commands() {
    local commands; commands=()
    _describe -t commands 'cast selectors commands' commands "$@"
}
(( $+functions[_cast__send_commands] )) ||
_cast__send_commands() {
    local commands; commands=(
'--create:Use to deploy raw contract bytecode' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast send commands' commands "$@"
}
(( $+functions[_cast__send__--create_commands] )) ||
_cast__send__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast send --create commands' commands "$@"
}
(( $+functions[_cast__send__help_commands] )) ||
_cast__send__help_commands() {
    local commands; commands=(
'--create:Use to deploy raw contract bytecode' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast send help commands' commands "$@"
}
(( $+functions[_cast__send__help__--create_commands] )) ||
_cast__send__help__--create_commands() {
    local commands; commands=()
    _describe -t commands 'cast send help --create commands' commands "$@"
}
(( $+functions[_cast__send__help__help_commands] )) ||
_cast__send__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'cast send help help commands' commands "$@"
}
(( $+functions[_cast__shl_commands] )) ||
_cast__shl_commands() {
    local commands; commands=()
    _describe -t commands 'cast shl commands' commands "$@"
}
(( $+functions[_cast__shr_commands] )) ||
_cast__shr_commands() {
    local commands; commands=()
    _describe -t commands 'cast shr commands' commands "$@"
}
(( $+functions[_cast__sig_commands] )) ||
_cast__sig_commands() {
    local commands; commands=()
    _describe -t commands 'cast sig commands' commands "$@"
}
(( $+functions[_cast__sig-event_commands] )) ||
_cast__sig-event_commands() {
    local commands; commands=()
    _describe -t commands 'cast sig-event commands' commands "$@"
}
(( $+functions[_cast__storage_commands] )) ||
_cast__storage_commands() {
    local commands; commands=()
    _describe -t commands 'cast storage commands' commands "$@"
}
(( $+functions[_cast__to-ascii_commands] )) ||
_cast__to-ascii_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-ascii commands' commands "$@"
}
(( $+functions[_cast__to-base_commands] )) ||
_cast__to-base_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-base commands' commands "$@"
}
(( $+functions[_cast__to-bytes32_commands] )) ||
_cast__to-bytes32_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-bytes32 commands' commands "$@"
}
(( $+functions[_cast__to-check-sum-address_commands] )) ||
_cast__to-check-sum-address_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-check-sum-address commands' commands "$@"
}
(( $+functions[_cast__to-dec_commands] )) ||
_cast__to-dec_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-dec commands' commands "$@"
}
(( $+functions[_cast__to-fixed-point_commands] )) ||
_cast__to-fixed-point_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-fixed-point commands' commands "$@"
}
(( $+functions[_cast__to-hex_commands] )) ||
_cast__to-hex_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-hex commands' commands "$@"
}
(( $+functions[_cast__to-hexdata_commands] )) ||
_cast__to-hexdata_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-hexdata commands' commands "$@"
}
(( $+functions[_cast__to-int256_commands] )) ||
_cast__to-int256_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-int256 commands' commands "$@"
}
(( $+functions[_cast__to-rlp_commands] )) ||
_cast__to-rlp_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-rlp commands' commands "$@"
}
(( $+functions[_cast__to-uint256_commands] )) ||
_cast__to-uint256_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-uint256 commands' commands "$@"
}
(( $+functions[_cast__to-unit_commands] )) ||
_cast__to-unit_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-unit commands' commands "$@"
}
(( $+functions[_cast__to-utf8_commands] )) ||
_cast__to-utf8_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-utf8 commands' commands "$@"
}
(( $+functions[_cast__to-wei_commands] )) ||
_cast__to-wei_commands() {
    local commands; commands=()
    _describe -t commands 'cast to-wei commands' commands "$@"
}
(( $+functions[_cast__tx_commands] )) ||
_cast__tx_commands() {
    local commands; commands=()
    _describe -t commands 'cast tx commands' commands "$@"
}
(( $+functions[_cast__upload-signature_commands] )) ||
_cast__upload-signature_commands() {
    local commands; commands=()
    _describe -t commands 'cast upload-signature commands' commands "$@"
}
(( $+functions[_cast__wallet_commands] )) ||
_cast__wallet_commands() {
    local commands; commands=(
'new:Create a new random keypair' \
'n:Create a new random keypair' \
'new-mnemonic:Generates a random BIP39 mnemonic phrase' \
'nm:Generates a random BIP39 mnemonic phrase' \
'vanity:Generate a vanity address' \
'va:Generate a vanity address' \
'address:Convert a private key to an address' \
'a:Convert a private key to an address' \
'addr:Convert a private key to an address' \
'sign:Sign a message or typed data' \
's:Sign a message or typed data' \
'sign-auth:EIP-7702 sign authorization' \
'sa:EIP-7702 sign authorization' \
'verify:Verify the signature of a message' \
'v:Verify the signature of a message' \
'import:Import a private key into an encrypted keystore' \
'i:Import a private key into an encrypted keystore' \
'list:List all the accounts in the keystore default directory' \
'ls:List all the accounts in the keystore default directory' \
'private-key:Derives private key from mnemonic' \
'pk:Derives private key from mnemonic' \
'decrypt-keystore:Decrypt a keystore file to get the private key' \
'dk:Decrypt a keystore file to get the private key' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast wallet commands' commands "$@"
}
(( $+functions[_cast__wallet__address_commands] )) ||
_cast__wallet__address_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet address commands' commands "$@"
}
(( $+functions[_cast__wallet__decrypt-keystore_commands] )) ||
_cast__wallet__decrypt-keystore_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet decrypt-keystore commands' commands "$@"
}
(( $+functions[_cast__wallet__help_commands] )) ||
_cast__wallet__help_commands() {
    local commands; commands=(
'new:Create a new random keypair' \
'new-mnemonic:Generates a random BIP39 mnemonic phrase' \
'vanity:Generate a vanity address' \
'address:Convert a private key to an address' \
'sign:Sign a message or typed data' \
'sign-auth:EIP-7702 sign authorization' \
'verify:Verify the signature of a message' \
'import:Import a private key into an encrypted keystore' \
'list:List all the accounts in the keystore default directory' \
'private-key:Derives private key from mnemonic' \
'decrypt-keystore:Decrypt a keystore file to get the private key' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'cast wallet help commands' commands "$@"
}
(( $+functions[_cast__wallet__help__address_commands] )) ||
_cast__wallet__help__address_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help address commands' commands "$@"
}
(( $+functions[_cast__wallet__help__decrypt-keystore_commands] )) ||
_cast__wallet__help__decrypt-keystore_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help decrypt-keystore commands' commands "$@"
}
(( $+functions[_cast__wallet__help__help_commands] )) ||
_cast__wallet__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help help commands' commands "$@"
}
(( $+functions[_cast__wallet__help__import_commands] )) ||
_cast__wallet__help__import_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help import commands' commands "$@"
}
(( $+functions[_cast__wallet__help__list_commands] )) ||
_cast__wallet__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help list commands' commands "$@"
}
(( $+functions[_cast__wallet__help__new_commands] )) ||
_cast__wallet__help__new_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help new commands' commands "$@"
}
(( $+functions[_cast__wallet__help__new-mnemonic_commands] )) ||
_cast__wallet__help__new-mnemonic_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help new-mnemonic commands' commands "$@"
}
(( $+functions[_cast__wallet__help__private-key_commands] )) ||
_cast__wallet__help__private-key_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help private-key commands' commands "$@"
}
(( $+functions[_cast__wallet__help__sign_commands] )) ||
_cast__wallet__help__sign_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help sign commands' commands "$@"
}
(( $+functions[_cast__wallet__help__sign-auth_commands] )) ||
_cast__wallet__help__sign-auth_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help sign-auth commands' commands "$@"
}
(( $+functions[_cast__wallet__help__vanity_commands] )) ||
_cast__wallet__help__vanity_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help vanity commands' commands "$@"
}
(( $+functions[_cast__wallet__help__verify_commands] )) ||
_cast__wallet__help__verify_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet help verify commands' commands "$@"
}
(( $+functions[_cast__wallet__import_commands] )) ||
_cast__wallet__import_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet import commands' commands "$@"
}
(( $+functions[_cast__wallet__list_commands] )) ||
_cast__wallet__list_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet list commands' commands "$@"
}
(( $+functions[_cast__wallet__new_commands] )) ||
_cast__wallet__new_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet new commands' commands "$@"
}
(( $+functions[_cast__wallet__new-mnemonic_commands] )) ||
_cast__wallet__new-mnemonic_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet new-mnemonic commands' commands "$@"
}
(( $+functions[_cast__wallet__private-key_commands] )) ||
_cast__wallet__private-key_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet private-key commands' commands "$@"
}
(( $+functions[_cast__wallet__sign_commands] )) ||
_cast__wallet__sign_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet sign commands' commands "$@"
}
(( $+functions[_cast__wallet__sign-auth_commands] )) ||
_cast__wallet__sign-auth_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet sign-auth commands' commands "$@"
}
(( $+functions[_cast__wallet__vanity_commands] )) ||
_cast__wallet__vanity_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet vanity commands' commands "$@"
}
(( $+functions[_cast__wallet__verify_commands] )) ||
_cast__wallet__verify_commands() {
    local commands; commands=()
    _describe -t commands 'cast wallet verify commands' commands "$@"
}

if [ "$funcstack[1]" = "_cast" ]; then
    _cast "$@"
else
    compdef _cast cast
fi
