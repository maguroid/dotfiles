#compdef deno

autoload -U is-at-least

_deno() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_deno_commands" \
"*::: :->deno" \
&& ret=0
    case $state in
    (deno)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:deno-command-$line[1]:"
        case $line[1] in
            (run)
_arguments "${_arguments_options[@]}" \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--allow-read=[Allow file system read access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-read
  --allow-read="/etc,/var/log.txt"]' \
'--deny-read=[Deny file system read access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-read
  --deny-read="/etc,/var/log.txt"]' \
'--allow-write=[Allow file system write access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-write
  --allow-write="/etc,/var/log.txt"]' \
'--deny-write=[Deny file system write access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-write
  --deny-write="/etc,/var/log.txt"]' \
'--allow-net=[Allow network access. Optionally specify allowed IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-net
  --allow-net="localhost\:8080,deno.land"]' \
'--deny-net=[Deny network access. Optionally specify denied IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-net
  --deny-net="localhost\:8080,deno.land"]' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--allow-env=[Allow access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-env
  --allow-env="PORT,HOME,PATH"]' \
'--deny-env=[Deny access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-env
  --deny-env="PORT,HOME,PATH"]' \
'--allow-sys=[Allow access to OS information. Optionally allow specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-sys
  --allow-sys="systemMemoryInfo,osRelease"]' \
'--deny-sys=[Deny access to OS information. Optionally deny specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-sys
  --deny-sys="systemMemoryInfo,osRelease"]' \
'--allow-run=[Allow running subprocesses. Optionally specify allowed runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-run
  --allow-run="whoami,ps"]' \
'--deny-run=[Deny running subprocesses. Optionally specify denied runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-run
  --deny-run="whoami,ps"]' \
'--allow-ffi=[(Unstable) Allow loading dynamic libraries. Optionally specify allowed directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-ffi
  --allow-ffi="./libfoo.so"]' \
'--deny-ffi=[(Unstable) Deny loading dynamic libraries. Optionally specify denied directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-ffi
  --deny-ffi="./libfoo.so"]' \
'--inspect=[Activate inspector on host\:port (default\: 127.0.0.1\:9229)]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'--location=[Value of '\''globalThis.location'\'' used by some web APIs]:HREF:_urls' \
'--v8-flags=[Set V8 command line options]' \
'--seed=[Set the random number generator seed]:NUMBER: ' \
'--strace-ops=[Trace low-level op calls]' \
'(--no-check)--check=[Type-check modules]' \
'--watch=[Watch for file changes and restart automatically]' \
'(--watch)--unstable-hmr=[UNSTABLE\: Watch for file changes and hot replace modules]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx)' \
'--env=[Load .env file]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--allow-hrtime[Allow high-resolution time measurement. Note\: this can enable timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--deny-hrtime[Deny high-resolution time measurement. Note\: this can prevent timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'-A[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--allow-all[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--no-prompt[Always throw if required permission wasn'\''t passed]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::script_arg -- Script arg:_files' \
&& ret=0
;;
(add)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::packages -- List of packages to add:' \
&& ret=0
;;
(bench)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--allow-read=[Allow file system read access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-read
  --allow-read="/etc,/var/log.txt"]' \
'--deny-read=[Deny file system read access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-read
  --deny-read="/etc,/var/log.txt"]' \
'--allow-write=[Allow file system write access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-write
  --allow-write="/etc,/var/log.txt"]' \
'--deny-write=[Deny file system write access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-write
  --deny-write="/etc,/var/log.txt"]' \
'--allow-net=[Allow network access. Optionally specify allowed IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-net
  --allow-net="localhost\:8080,deno.land"]' \
'--deny-net=[Deny network access. Optionally specify denied IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-net
  --deny-net="localhost\:8080,deno.land"]' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--allow-env=[Allow access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-env
  --allow-env="PORT,HOME,PATH"]' \
'--deny-env=[Deny access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-env
  --deny-env="PORT,HOME,PATH"]' \
'--allow-sys=[Allow access to OS information. Optionally allow specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-sys
  --allow-sys="systemMemoryInfo,osRelease"]' \
'--deny-sys=[Deny access to OS information. Optionally deny specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-sys
  --deny-sys="systemMemoryInfo,osRelease"]' \
'--allow-run=[Allow running subprocesses. Optionally specify allowed runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-run
  --allow-run="whoami,ps"]' \
'--deny-run=[Deny running subprocesses. Optionally specify denied runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-run
  --deny-run="whoami,ps"]' \
'--allow-ffi=[(Unstable) Allow loading dynamic libraries. Optionally specify allowed directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-ffi
  --allow-ffi="./libfoo.so"]' \
'--deny-ffi=[(Unstable) Deny loading dynamic libraries. Optionally specify denied directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-ffi
  --deny-ffi="./libfoo.so"]' \
'--location=[Value of '\''globalThis.location'\'' used by some web APIs]:HREF:_urls' \
'--v8-flags=[Set V8 command line options]' \
'--seed=[Set the random number generator seed]:NUMBER: ' \
'--strace-ops=[Trace low-level op calls]' \
'(--no-check)--check=[Type-check modules]' \
'--ignore=[Ignore files]: : ' \
'--filter=[Run benchmarks with this string or pattern in the bench name]: : ' \
'--env=[Load .env file]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--allow-hrtime[Allow high-resolution time measurement. Note\: this can enable timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--deny-hrtime[Deny high-resolution time measurement. Note\: this can prevent timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'-A[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--allow-all[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--no-prompt[Always throw if required permission wasn'\''t passed]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--json[UNSTABLE\: Output benchmark result in JSON format]' \
'--no-run[Cache bench modules, but don'\''t run benchmarks]' \
'--watch[Watch for file changes and restart automatically]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::files -- List of file names to run:' \
&& ret=0
;;
(bundle)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'(--no-check)--check=[Type-check modules]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx)' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--watch[Watch for file changes and restart automatically]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':source_file:_files' \
'::out_file:_files' \
&& ret=0
;;
(cache)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'(--no-check)--check=[Type-check modules]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::file:_files' \
&& ret=0
;;
(check)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'(--no-remote)--all[Type-check all code, including remote modules and npm packages]' \
'(--no-remote)--remote[Type-check all modules, including remote]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::file:_files' \
&& ret=0
;;
(compile)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--allow-read=[Allow file system read access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-read
  --allow-read="/etc,/var/log.txt"]' \
'--deny-read=[Deny file system read access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-read
  --deny-read="/etc,/var/log.txt"]' \
'--allow-write=[Allow file system write access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-write
  --allow-write="/etc,/var/log.txt"]' \
'--deny-write=[Deny file system write access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-write
  --deny-write="/etc,/var/log.txt"]' \
'--allow-net=[Allow network access. Optionally specify allowed IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-net
  --allow-net="localhost\:8080,deno.land"]' \
'--deny-net=[Deny network access. Optionally specify denied IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-net
  --deny-net="localhost\:8080,deno.land"]' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--allow-env=[Allow access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-env
  --allow-env="PORT,HOME,PATH"]' \
'--deny-env=[Deny access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-env
  --deny-env="PORT,HOME,PATH"]' \
'--allow-sys=[Allow access to OS information. Optionally allow specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-sys
  --allow-sys="systemMemoryInfo,osRelease"]' \
'--deny-sys=[Deny access to OS information. Optionally deny specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-sys
  --deny-sys="systemMemoryInfo,osRelease"]' \
'--allow-run=[Allow running subprocesses. Optionally specify allowed runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-run
  --allow-run="whoami,ps"]' \
'--deny-run=[Deny running subprocesses. Optionally specify denied runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-run
  --deny-run="whoami,ps"]' \
'--allow-ffi=[(Unstable) Allow loading dynamic libraries. Optionally specify allowed directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-ffi
  --allow-ffi="./libfoo.so"]' \
'--deny-ffi=[(Unstable) Deny loading dynamic libraries. Optionally specify denied directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-ffi
  --deny-ffi="./libfoo.so"]' \
'--location=[Value of '\''globalThis.location'\'' used by some web APIs]:HREF:_urls' \
'--v8-flags=[Set V8 command line options]' \
'--seed=[Set the random number generator seed]:NUMBER: ' \
'--strace-ops=[Trace low-level op calls]' \
'(--no-check)--check=[Type-check modules]' \
'*--include=[Additional module to include in the module graph]: :_files' \
'-o+[Output file (defaults to \$PWD/<inferred-name>)]: :_files' \
'--output=[Output file (defaults to \$PWD/<inferred-name>)]: :_files' \
'--target=[Target OS architecture]: :(x86_64-unknown-linux-gnu aarch64-unknown-linux-gnu x86_64-pc-windows-msvc x86_64-apple-darwin aarch64-apple-darwin)' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx)' \
'--env=[Load .env file]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--allow-hrtime[Allow high-resolution time measurement. Note\: this can enable timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--deny-hrtime[Deny high-resolution time measurement. Note\: this can prevent timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'-A[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--allow-all[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--no-prompt[Always throw if required permission wasn'\''t passed]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--no-terminal[Hide terminal on Windows]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::script_arg -- Script arg:_files' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':shell:(bash fish powershell zsh fig)' \
&& ret=0
;;
(coverage)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--ignore=[Ignore coverage files]: :_files' \
'*--include=[Include source files in the report]:regex: ' \
'*--exclude=[Exclude source files from the report]:regex: ' \
'--output=[Output file (defaults to stdout) for lcov]: :_files' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--lcov[Output coverage report in lcov format]' \
'--html[Output coverage report in HTML format in the given directory]' \
'--detailed[Output coverage report in detailed format in the terminal.]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::files:_files' \
&& ret=0
;;
(doc)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--import-map=[Load import map file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--name=[The name that will be displayed in the docs]: : ' \
'--output=[Directory for HTML documentation output]: :_files -/' \
'(--json --lint --html)--filter=[Dot separated path to symbol]: : ' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--no-npm[Do not resolve npm modules]' \
'--no-remote[Do not resolve remote modules]' \
'--json[Output documentation in JSON format]' \
'(--json)--html[Output documentation in HTML format]' \
'--private[Output private documentation]' \
'--lint[Output documentation diagnostics.]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::source_file:_files' \
&& ret=0
;;
(eval)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--inspect=[Activate inspector on host\:port (default\: 127.0.0.1\:9229)]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'--location=[Value of '\''globalThis.location'\'' used by some web APIs]:HREF:_urls' \
'--v8-flags=[Set V8 command line options]' \
'--seed=[Set the random number generator seed]:NUMBER: ' \
'--strace-ops=[Trace low-level op calls]' \
'(--no-check)--check=[Type-check modules]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx)' \
'--env=[Load .env file]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'(--ext)-T[deprecated\: Use \`--ext=ts\` instead. The \`--ts\` and \`-T\` flags are deprecated and will be removed in Deno 2.0.]' \
'(--ext)--ts[deprecated\: Use \`--ext=ts\` instead. The \`--ts\` and \`-T\` flags are deprecated and will be removed in Deno 2.0.]' \
'-p[print result to stdout]' \
'--print[print result to stdout]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::code_arg -- Code arg:' \
&& ret=0
;;
(fmt)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx md json jsonc ipynb)' \
'--ignore=[Ignore formatting particular source files]: :_files' \
'--use-tabs=[Use tabs instead of spaces for indentation. Defaults to false.]' \
'--line-width=[Define maximum line width. Defaults to 80.]: : ' \
'--indent-width=[Define indentation width. Defaults to 2.]: : ' \
'--single-quote=[Use single quotes. Defaults to false.]' \
'--prose-wrap=[Define how prose should be wrapped. Defaults to always.]: :(always never preserve)' \
'--no-semicolons=[Don'\''t use semicolons except where necessary. Defaults to false.]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'--check[Check if the source files are formatted]' \
'--watch[Watch for file changes and restart automatically]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::files:_files' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help]' \
'--help[Print help]' \
'::dir:_files -/' \
&& ret=0
;;
(info)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'()--location=[Show files used for origin bound APIs like the Web Storage API when running a script with '\''--location=<HREF>'\'']:HREF:_urls' \
'--no-check=[Skip type-checking modules]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--json[UNSTABLE\: Outputs the information in JSON format]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::file:_files' \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" \
'--env=[Load .env file]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--allow-read=[Allow file system read access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-read
  --allow-read="/etc,/var/log.txt"]' \
'--deny-read=[Deny file system read access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-read
  --deny-read="/etc,/var/log.txt"]' \
'--allow-write=[Allow file system write access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-write
  --allow-write="/etc,/var/log.txt"]' \
'--deny-write=[Deny file system write access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-write
  --deny-write="/etc,/var/log.txt"]' \
'--allow-net=[Allow network access. Optionally specify allowed IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-net
  --allow-net="localhost\:8080,deno.land"]' \
'--deny-net=[Deny network access. Optionally specify denied IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-net
  --deny-net="localhost\:8080,deno.land"]' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--allow-env=[Allow access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-env
  --allow-env="PORT,HOME,PATH"]' \
'--deny-env=[Deny access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-env
  --deny-env="PORT,HOME,PATH"]' \
'--allow-sys=[Allow access to OS information. Optionally allow specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-sys
  --allow-sys="systemMemoryInfo,osRelease"]' \
'--deny-sys=[Deny access to OS information. Optionally deny specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-sys
  --deny-sys="systemMemoryInfo,osRelease"]' \
'--allow-run=[Allow running subprocesses. Optionally specify allowed runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-run
  --allow-run="whoami,ps"]' \
'--deny-run=[Deny running subprocesses. Optionally specify denied runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-run
  --deny-run="whoami,ps"]' \
'--allow-ffi=[(Unstable) Allow loading dynamic libraries. Optionally specify allowed directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-ffi
  --allow-ffi="./libfoo.so"]' \
'--deny-ffi=[(Unstable) Deny loading dynamic libraries. Optionally specify denied directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-ffi
  --deny-ffi="./libfoo.so"]' \
'--inspect=[Activate inspector on host\:port (default\: 127.0.0.1\:9229)]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'--location=[Value of '\''globalThis.location'\'' used by some web APIs]:HREF:_urls' \
'--v8-flags=[Set V8 command line options]' \
'--seed=[Set the random number generator seed]:NUMBER: ' \
'--strace-ops=[Trace low-level op calls]' \
'(--no-check)--check=[Type-check modules]' \
'-n+[Executable file name]: : ' \
'--name=[Executable file name]: : ' \
'--root=[Installation root]: :_files -/' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--allow-hrtime[Allow high-resolution time measurement. Note\: this can enable timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--deny-hrtime[Deny high-resolution time measurement. Note\: this can prevent timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'-A[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--allow-all[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--no-prompt[Always throw if required permission wasn'\''t passed]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'-f[Forcefully overwrite existing installation]' \
'--force[Forcefully overwrite existing installation]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::cmd:_files' \
&& ret=0
;;
(jupyter)
_arguments "${_arguments_options[@]}" \
'(--install)--conn=[Path to JSON file describing connection parameters, provided by Jupyter]: :_files' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'(--kernel)--install[Installs kernelspec, requires '\''jupyter'\'' command to be available.]' \
'(--install)--kernel[Start the kernel]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--root=[Installation root]: :_files -/' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':name:' \
&& ret=0
;;
(lsp)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(lint)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'*--rules-tags=[Use set of rules with a tag]: : ' \
'(--rules)--rules-include=[Include lint rules]: : ' \
'(--rules)--rules-exclude=[Exclude lint rules]: : ' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'--ignore=[Ignore linting particular source files]: :_files' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--rules[List available rules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'--json[Output lint result in JSON format]' \
'(--json)--compact[Output lint result in compact format]' \
'--watch[Watch for file changes and restart automatically]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::files:_files' \
&& ret=0
;;
(publish)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--token=[The API token to use when publishing. If unset, interactive authentication is be used]: : ' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'(--no-check)--check=[Type-check modules]' \
'--no-check=[Skip type-checking modules]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'--dry-run[Prepare the package for publishing performing all checks and validations without uploading]' \
'--allow-slow-types[Allow publishing with slow types]' \
'--allow-dirty[Allow publishing if the repository has uncommited changed]' \
'--no-provenance[Disable provenance attestation. Enabled by default on Github actions, publicly links the package to where it was built and published from.]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(repl)
_arguments "${_arguments_options[@]}" \
'--env=[Load .env file]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--allow-read=[Allow file system read access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-read
  --allow-read="/etc,/var/log.txt"]' \
'--deny-read=[Deny file system read access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-read
  --deny-read="/etc,/var/log.txt"]' \
'--allow-write=[Allow file system write access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-write
  --allow-write="/etc,/var/log.txt"]' \
'--deny-write=[Deny file system write access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-write
  --deny-write="/etc,/var/log.txt"]' \
'--allow-net=[Allow network access. Optionally specify allowed IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-net
  --allow-net="localhost\:8080,deno.land"]' \
'--deny-net=[Deny network access. Optionally specify denied IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-net
  --deny-net="localhost\:8080,deno.land"]' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--allow-env=[Allow access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-env
  --allow-env="PORT,HOME,PATH"]' \
'--deny-env=[Deny access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-env
  --deny-env="PORT,HOME,PATH"]' \
'--allow-sys=[Allow access to OS information. Optionally allow specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-sys
  --allow-sys="systemMemoryInfo,osRelease"]' \
'--deny-sys=[Deny access to OS information. Optionally deny specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-sys
  --deny-sys="systemMemoryInfo,osRelease"]' \
'--allow-run=[Allow running subprocesses. Optionally specify allowed runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-run
  --allow-run="whoami,ps"]' \
'--deny-run=[Deny running subprocesses. Optionally specify denied runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-run
  --deny-run="whoami,ps"]' \
'--allow-ffi=[(Unstable) Allow loading dynamic libraries. Optionally specify allowed directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-ffi
  --allow-ffi="./libfoo.so"]' \
'--deny-ffi=[(Unstable) Deny loading dynamic libraries. Optionally specify denied directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-ffi
  --deny-ffi="./libfoo.so"]' \
'--inspect=[Activate inspector on host\:port (default\: 127.0.0.1\:9229)]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'--location=[Value of '\''globalThis.location'\'' used by some web APIs]:HREF:_urls' \
'--v8-flags=[Set V8 command line options]' \
'--seed=[Set the random number generator seed]:NUMBER: ' \
'--strace-ops=[Trace low-level op calls]' \
'(--no-check)--check=[Type-check modules]' \
'--eval-file=[Evaluates the provided file(s) as scripts when the REPL starts. Accepts file paths and URLs.]: :_files' \
'--eval=[Evaluates the provided code when the REPL starts.]:code: ' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--allow-hrtime[Allow high-resolution time measurement. Note\: this can enable timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--deny-hrtime[Deny high-resolution time measurement. Note\: this can prevent timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'-A[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--allow-all[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--no-prompt[Always throw if required permission wasn'\''t passed]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(task)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'--cwd=[Specify the directory to run the task in]:DIR:_files -/' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking modules]' \
'--import-map=[Load import map file]:FILE:_files' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--allow-read=[Allow file system read access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-read
  --allow-read="/etc,/var/log.txt"]' \
'--deny-read=[Deny file system read access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-read
  --deny-read="/etc,/var/log.txt"]' \
'--allow-write=[Allow file system write access. Optionally specify allowed paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-write
  --allow-write="/etc,/var/log.txt"]' \
'--deny-write=[Deny file system write access. Optionally specify denied paths.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-write
  --deny-write="/etc,/var/log.txt"]' \
'--allow-net=[Allow network access. Optionally specify allowed IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-net
  --allow-net="localhost\:8080,deno.land"]' \
'--deny-net=[Deny network access. Optionally specify denied IP addresses and host names, with ports as necessary.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-net
  --deny-net="localhost\:8080,deno.land"]' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--allow-env=[Allow access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-env
  --allow-env="PORT,HOME,PATH"]' \
'--deny-env=[Deny access to system environment information. Optionally specify accessible environment variables.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-env
  --deny-env="PORT,HOME,PATH"]' \
'--allow-sys=[Allow access to OS information. Optionally allow specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-sys
  --allow-sys="systemMemoryInfo,osRelease"]' \
'--deny-sys=[Deny access to OS information. Optionally deny specific APIs by function name.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-sys
  --deny-sys="systemMemoryInfo,osRelease"]' \
'--allow-run=[Allow running subprocesses. Optionally specify allowed runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-run
  --allow-run="whoami,ps"]' \
'--deny-run=[Deny running subprocesses. Optionally specify denied runnable program names.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-run
  --deny-run="whoami,ps"]' \
'--allow-ffi=[(Unstable) Allow loading dynamic libraries. Optionally specify allowed directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --allow-ffi
  --allow-ffi="./libfoo.so"]' \
'--deny-ffi=[(Unstable) Deny loading dynamic libraries. Optionally specify denied directories or files.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
Examples\:
  --deny-ffi
  --deny-ffi="./libfoo.so"]' \
'--inspect=[Activate inspector on host\:port (default\: 127.0.0.1\:9229)]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'--location=[Value of '\''globalThis.location'\'' used by some web APIs]:HREF:_urls' \
'--v8-flags=[Set V8 command line options]' \
'--seed=[Set the random number generator seed]:NUMBER: ' \
'--strace-ops=[Trace low-level op calls]' \
'(--no-check)--check=[Type-check modules]' \
'--ignore=[Ignore files]: :_files' \
'--fail-fast=[Stop after N errors. Defaults to stopping after first failure.]' \
'--filter=[Run tests with this string or pattern in the test name]: : ' \
'--shuffle=[Shuffle the order in which the tests are run]' \
'(--inspect --inspect-wait --inspect-brk)--coverage=[Collect coverage profile data into DIR. If DIR is not specified, it uses '\''coverage/'\''.]' \
'-j+[deprecated\: The \`--jobs\` flag is deprecated and will be removed in Deno 2.0. Use the \`--parallel\` flag with possibly the \`DENO_JOBS\` environment variable instead.]' \
'--jobs=[deprecated\: The \`--jobs\` flag is deprecated and will be removed in Deno 2.0. Use the \`--parallel\` flag with possibly the \`DENO_JOBS\` environment variable instead.]' \
'--junit-path=[Write a JUnit XML test report to PATH. Use '\''-'\'' to write to stdout which is the default when PATH is not provided.]:PATH:_files' \
'--reporter=[Select reporter to use. Default to '\''pretty'\''.]: :(pretty dot junit tap)' \
'--env=[Load .env file]' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'(--no-lock)--lock-write[Force overwriting the lock file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file.]' \
'--allow-hrtime[Allow high-resolution time measurement. Note\: this can enable timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--deny-hrtime[Deny high-resolution time measurement. Note\: this can prevent timing attacks and fingerprinting.
Docs\: https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'-A[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--allow-all[Allow all permissions. Learn more about permissions in Deno\:
https\://deno.land/manual@v1.41.2/basics/permissions
]' \
'--no-prompt[Always throw if required permission wasn'\''t passed]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--no-run[Cache test modules, but don'\''t run tests]' \
'--trace-ops[Deprecated alias for --trace-leaks.]' \
'--trace-leaks[Enable tracing of leaks. Useful when debugging leaking ops in test, but impacts test execution time.]' \
'--doc[Type-check code blocks in JSDoc and Markdown]' \
'--allow-none[Don'\''t return error code if no test files are found]' \
'(-j --jobs)--parallel[Run test modules in parallel. Parallelism defaults to the number of available CPUs or the value in the DENO_JOBS environment variable.]' \
'(--no-run --coverage)--watch[Watch for file changes and restart automatically]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::files -- List of file names to run:_files' \
&& ret=0
;;
(types)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(upgrade)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--version=[The version to upgrade to]: : ' \
'--output=[The path to output the updated version to]: :_files' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--dry-run[Perform all checks without replacing old exe]' \
'-f[Replace current exe even if not out-of-date]' \
'--force[Replace current exe even if not out-of-date]' \
'--canary[Upgrade to canary builds]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(vendor)
_arguments "${_arguments_options[@]}" \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--output=[The directory to output the vendored modules to]: :_files -/' \
'-c+[Specify the configuration file]:FILE:_files' \
'--config=[Specify the configuration file]:FILE:_files' \
'--import-map=[Load import map file]:FILE:_files' \
'--lock=[Check the specified lock file.

If value is not provided, defaults to "deno.lock" in the current working directory.]' \
'--node-modules-dir=[Enables or disables the use of a local node_modules folder for npm packages]' \
'--vendor=[UNSTABLE\: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages]' \
'-r+[Reload source code cache (recompile TypeScript)]' \
'--reload=[Reload source code cache (recompile TypeScript)]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unstable[Enable unstable features and APIs]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-byonm[Enable unstable '\''bring your own node_modules'\'' feature]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-cron[Enable unstable Deno.cron API]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable Key-Value store APIs]' \
'--unstable-net[Enable unstable net APIs]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-webgpu[Enable unstable \`WebGPU\` API]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-f[Forcefully overwrite conflicting files in existing output directory]' \
'--force[Forcefully overwrite conflicting files in existing output directory]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file.]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::specifiers:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- Print help for the subcommand(s):' \
&& ret=0
;;
        esac
    ;;
esac
}

(( $+functions[_deno_commands] )) ||
_deno_commands() {
    local commands; commands=(
'run:Run a JavaScript or TypeScript program' \
'add:Add dependencies' \
'bench:Run benchmarks' \
'bundle:Bundle module and dependencies into single file' \
'cache:Cache the dependencies' \
'check:Type-check the dependencies' \
'compile:Compile the script into a self contained executable' \
'completions:Generate shell completions' \
'coverage:Print coverage reports' \
'doc:Show documentation for a module' \
'eval:Eval script' \
'fmt:Format source files' \
'init:Initialize a new project' \
'info:Show info about cache or info related to source file' \
'install:Install script as an executable' \
'jupyter:Deno kernel for Jupyter notebooks' \
'uninstall:Uninstall a script previously installed with deno install' \
'lsp:Start the language server' \
'lint:Lint source files' \
'publish:Unstable preview feature\: Publish the current working directory'\''s package or workspace' \
'repl:Read Eval Print Loop' \
'task:Run a task defined in the configuration file' \
'test:Run tests' \
'types:Print runtime TypeScript declarations' \
'upgrade:Upgrade deno executable to given version' \
'vendor:Vendor remote modules into a local directory' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'deno commands' commands "$@"
}
(( $+functions[_deno__add_commands] )) ||
_deno__add_commands() {
    local commands; commands=()
    _describe -t commands 'deno add commands' commands "$@"
}
(( $+functions[_deno__bench_commands] )) ||
_deno__bench_commands() {
    local commands; commands=()
    _describe -t commands 'deno bench commands' commands "$@"
}
(( $+functions[_deno__bundle_commands] )) ||
_deno__bundle_commands() {
    local commands; commands=()
    _describe -t commands 'deno bundle commands' commands "$@"
}
(( $+functions[_deno__cache_commands] )) ||
_deno__cache_commands() {
    local commands; commands=()
    _describe -t commands 'deno cache commands' commands "$@"
}
(( $+functions[_deno__check_commands] )) ||
_deno__check_commands() {
    local commands; commands=()
    _describe -t commands 'deno check commands' commands "$@"
}
(( $+functions[_deno__compile_commands] )) ||
_deno__compile_commands() {
    local commands; commands=()
    _describe -t commands 'deno compile commands' commands "$@"
}
(( $+functions[_deno__completions_commands] )) ||
_deno__completions_commands() {
    local commands; commands=()
    _describe -t commands 'deno completions commands' commands "$@"
}
(( $+functions[_deno__coverage_commands] )) ||
_deno__coverage_commands() {
    local commands; commands=()
    _describe -t commands 'deno coverage commands' commands "$@"
}
(( $+functions[_deno__doc_commands] )) ||
_deno__doc_commands() {
    local commands; commands=()
    _describe -t commands 'deno doc commands' commands "$@"
}
(( $+functions[_deno__eval_commands] )) ||
_deno__eval_commands() {
    local commands; commands=()
    _describe -t commands 'deno eval commands' commands "$@"
}
(( $+functions[_deno__fmt_commands] )) ||
_deno__fmt_commands() {
    local commands; commands=()
    _describe -t commands 'deno fmt commands' commands "$@"
}
(( $+functions[_deno__help_commands] )) ||
_deno__help_commands() {
    local commands; commands=()
    _describe -t commands 'deno help commands' commands "$@"
}
(( $+functions[_deno__info_commands] )) ||
_deno__info_commands() {
    local commands; commands=()
    _describe -t commands 'deno info commands' commands "$@"
}
(( $+functions[_deno__init_commands] )) ||
_deno__init_commands() {
    local commands; commands=()
    _describe -t commands 'deno init commands' commands "$@"
}
(( $+functions[_deno__install_commands] )) ||
_deno__install_commands() {
    local commands; commands=()
    _describe -t commands 'deno install commands' commands "$@"
}
(( $+functions[_deno__jupyter_commands] )) ||
_deno__jupyter_commands() {
    local commands; commands=()
    _describe -t commands 'deno jupyter commands' commands "$@"
}
(( $+functions[_deno__lint_commands] )) ||
_deno__lint_commands() {
    local commands; commands=()
    _describe -t commands 'deno lint commands' commands "$@"
}
(( $+functions[_deno__lsp_commands] )) ||
_deno__lsp_commands() {
    local commands; commands=()
    _describe -t commands 'deno lsp commands' commands "$@"
}
(( $+functions[_deno__publish_commands] )) ||
_deno__publish_commands() {
    local commands; commands=()
    _describe -t commands 'deno publish commands' commands "$@"
}
(( $+functions[_deno__repl_commands] )) ||
_deno__repl_commands() {
    local commands; commands=()
    _describe -t commands 'deno repl commands' commands "$@"
}
(( $+functions[_deno__run_commands] )) ||
_deno__run_commands() {
    local commands; commands=()
    _describe -t commands 'deno run commands' commands "$@"
}
(( $+functions[_deno__task_commands] )) ||
_deno__task_commands() {
    local commands; commands=()
    _describe -t commands 'deno task commands' commands "$@"
}
(( $+functions[_deno__test_commands] )) ||
_deno__test_commands() {
    local commands; commands=()
    _describe -t commands 'deno test commands' commands "$@"
}
(( $+functions[_deno__types_commands] )) ||
_deno__types_commands() {
    local commands; commands=()
    _describe -t commands 'deno types commands' commands "$@"
}
(( $+functions[_deno__uninstall_commands] )) ||
_deno__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'deno uninstall commands' commands "$@"
}
(( $+functions[_deno__upgrade_commands] )) ||
_deno__upgrade_commands() {
    local commands; commands=()
    _describe -t commands 'deno upgrade commands' commands "$@"
}
(( $+functions[_deno__vendor_commands] )) ||
_deno__vendor_commands() {
    local commands; commands=()
    _describe -t commands 'deno vendor commands' commands "$@"
}

if [ "$funcstack[1]" = "_deno" ]; then
    _deno "$@"
else
    compdef _deno deno
fi
