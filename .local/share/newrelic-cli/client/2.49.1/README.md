# nr1

Newrelic One CLI

[![oclif](https://img.shields.io/badge/cli-oclif-brightgreen.svg)](https://oclif.io)
[![Version](https://img.shields.io/npm/v/nr1.svg)](https://npmjs.org/package/nr1)
[![Downloads/week](https://img.shields.io/npm/dw/nr1.svg)](https://npmjs.org/package/nr1)
[![License](https://img.shields.io/npm/l/nr1.svg)](https://github.com/wanda/cli/blob/master/package.json)

<!-- toc -->
* [nr1](#nr1)
* [Usage](#usage)
* [Commands](#commands)
<!-- tocstop -->

# Usage

<!-- usage -->
```sh-session
$ npm install -g @datanerd/nr1-internal
$ nr1 COMMAND
running command...
$ nr1 (-v|--version|version)
@datanerd/nr1-internal/2.49.1 darwin-x64 node-v14.15.1
$ nr1 --help [COMMAND]
USAGE
  $ nr1 COMMAND
...
```
<!-- usagestop -->

# Commands

<!-- commands -->
* [`nr1 autocomplete [SHELL]`](#nr1-autocomplete-shell)
* [`nr1 catalog:info`](#nr1-cataloginfo)
* [`nr1 catalog:submit`](#nr1-catalogsubmit)
* [`nr1 certs:generate`](#nr1-certsgenerate)
* [`nr1 certs:remove`](#nr1-certsremove)
* [`nr1 config:delete`](#nr1-configdelete)
* [`nr1 config:get`](#nr1-configget)
* [`nr1 config:list`](#nr1-configlist)
* [`nr1 config:set`](#nr1-configset)
* [`nr1 create`](#nr1-create)
* [`nr1 help [COMMAND]`](#nr1-help-command)
* [`nr1 nerdpack:build`](#nr1-nerdpackbuild)
* [`nr1 nerdpack:clean`](#nr1-nerdpackclean)
* [`nr1 nerdpack:clone`](#nr1-nerdpackclone)
* [`nr1 nerdpack:grandcentral:build`](#nr1-nerdpackgrandcentralbuild)
* [`nr1 nerdpack:grandcentral:metadata`](#nr1-nerdpackgrandcentralmetadata)
* [`nr1 nerdpack:grandcentral:publish`](#nr1-nerdpackgrandcentralpublish)
* [`nr1 nerdpack:info`](#nr1-nerdpackinfo)
* [`nr1 nerdpack:lint:commit`](#nr1-nerdpacklintcommit)
* [`nr1 nerdpack:lint:js`](#nr1-nerdpacklintjs)
* [`nr1 nerdpack:lint:style`](#nr1-nerdpacklintstyle)
* [`nr1 nerdpack:migrate`](#nr1-nerdpackmigrate)
* [`nr1 nerdpack:publish`](#nr1-nerdpackpublish)
* [`nr1 nerdpack:serve`](#nr1-nerdpackserve)
* [`nr1 nerdpack:setup-editor:vscode`](#nr1-nerdpacksetup-editorvscode)
* [`nr1 nerdpack:subscription-model`](#nr1-nerdpacksubscription-model)
* [`nr1 nerdpack:tag`](#nr1-nerdpacktag)
* [`nr1 nerdpack:test:unit`](#nr1-nerdpacktestunit)
* [`nr1 nerdpack:untag`](#nr1-nerdpackuntag)
* [`nr1 nerdpack:uuid`](#nr1-nerdpackuuid)
* [`nr1 nerdpack:validate`](#nr1-nerdpackvalidate)
* [`nr1 nerdpack:version`](#nr1-nerdpackversion)
* [`nr1 nrql`](#nr1-nrql)
* [`nr1 plugins`](#nr1-plugins)
* [`nr1 plugins:inspect PLUGIN...`](#nr1-pluginsinspect-plugin)
* [`nr1 plugins:install PLUGIN...`](#nr1-pluginsinstall-plugin)
* [`nr1 plugins:link PLUGIN`](#nr1-pluginslink-plugin)
* [`nr1 plugins:uninstall PLUGIN...`](#nr1-pluginsuninstall-plugin)
* [`nr1 plugins:update`](#nr1-pluginsupdate)
* [`nr1 profiles:add`](#nr1-profilesadd)
* [`nr1 profiles:default`](#nr1-profilesdefault)
* [`nr1 profiles:list`](#nr1-profileslist)
* [`nr1 profiles:remove NAME`](#nr1-profilesremove-name)
* [`nr1 profiles:whoami`](#nr1-profileswhoami)
* [`nr1 subscription:list`](#nr1-subscriptionlist)
* [`nr1 subscription:set`](#nr1-subscriptionset)
* [`nr1 subscription:unset`](#nr1-subscriptionunset)
* [`nr1 update [CHANNEL]`](#nr1-update-channel)

## `nr1 autocomplete [SHELL]`

display autocomplete installation instructions

```
USAGE
  $ nr1 autocomplete [SHELL]

ARGUMENTS
  SHELL  shell type

OPTIONS
  -r, --refresh-cache  Refresh cache (ignores displaying instructions)

EXAMPLES
  $ nr1 autocomplete
  $ nr1 autocomplete bash
  $ nr1 autocomplete zsh
  $ nr1 autocomplete --refresh-cache
```

_See code: [@oclif/plugin-autocomplete](https://github.com/oclif/plugin-autocomplete/blob/v0.1.5/src/commands/autocomplete/index.ts)_

## `nr1 catalog:info`

shows the info of your Nerdpack stored in the catalog

```
USAGE
  $ nr1 catalog:info

OPTIONS
  -f, --field=field              get the info from only one field. ie: --field details
  -i, --nerdpack-id=nerdpack-id  get info from the specified Nerdpack instead of local one
  --profile=profile              the authentication profile you want to use
  --verbose                      adds extra information to the output

DESCRIPTION
  If run on a Nerdpack folder, info from that Nerdpack will be shown. You can pass
  the --nerdpack-id XXXX flag to query from a specific nerdpack
```

## `nr1 catalog:submit`

gathers and submits the catalog info on the current folder

```
USAGE
  $ nr1 catalog:submit

OPTIONS
  -P, --skip-screenshots  skip upload of screenshot assets
  --profile=profile       the authentication profile you want to use
  --verbose               adds extra information to the output

DESCRIPTION
  This command must be run on a Nerdpack folder. The command will search for specific files
  using convention names.
```

## `nr1 certs:generate`

download a valid SSL certificate from New Relic servers 

```
USAGE
  $ nr1 certs:generate

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  Run this command to download a valid SSL certificate for the current profile.

  Each certificate is only valid for one API key, so you will need a certificate for each profile configured on your 
  machine.

  Certificates will be stored on "~/.newrelic/certs". 
  Run "nr1 certs:delete" to remove all the files.

ALIASES
  $ nr1 certs:create
```

_See code: [@datanerd/3pp-cli-nerdpack-serve](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/certs/generate.js)_

## `nr1 certs:remove`

removes all previously generated certificates

```
USAGE
  $ nr1 certs:remove

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

ALIASES
  $ nr1 certs:delete
  $ nr1 certs:clean
  $ nr1 certs:rm
```

_See code: [@datanerd/3pp-cli-nerdpack-serve](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/certs/remove.js)_

## `nr1 config:delete`

removes the value of a specific configuration

```
USAGE
  $ nr1 config:delete

OPTIONS
  -k, --key=key            (required) key of the config
  -t, --this-profile-only  if present, this configuration will only apply while running with the specified profile
  --profile=profile        the authentication profile you want to use
  --verbose                adds extra information to the output

ALIASES
  $ nr1 config:remove
  $ nr1 config:rm
```

_See code: [@datanerd/cli-plugin-config](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/config/delete.js)_

## `nr1 config:get`

show a specific configuration

```
USAGE
  $ nr1 config:get

OPTIONS
  -k, --key=key      (required) key of the config
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output
```

_See code: [@datanerd/cli-plugin-config](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/config/get.js)_

## `nr1 config:list`

list your configuration choices

```
USAGE
  $ nr1 config:list

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

ALIASES
  $ nr1 config:ls
```

_See code: [@datanerd/cli-plugin-config](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/config/list.js)_

## `nr1 config:set`

set a specific configuration value

```
USAGE
  $ nr1 config:set

OPTIONS
  -V, --value=value        value of the config
  -k, --key=key            (required) key of the config
  -t, --this-profile-only  if present, this configuration will only apply while running with the specified profile
  --profile=profile        the authentication profile you want to use
  --verbose                adds extra information to the output
```

_See code: [@datanerd/cli-plugin-config](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/config/set.js)_

## `nr1 create`

creates a new component from a template list

```
USAGE
  $ nr1 create

OPTIONS
  -Q, --skip-questions  do not ask any questions, use defaults instead. Useful for scripts
  -f, --force           if present, it will override existing files without asking
  -n, --name=name       name of the component
  -t, --type=type       type of component
  --path=path           route to the component
  --profile=profile     the authentication profile you want to use
  --verbose             adds extra information to the output
```

_See code: [@datanerd/3pp-cli-create](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/create.js)_

## `nr1 help [COMMAND]`

display help for nr1

```
USAGE
  $ nr1 help [COMMAND]

ARGUMENTS
  COMMAND  command to show help for

OPTIONS
  --all  see all commands in CLI
```

_See code: [@oclif/plugin-help](https://github.com/oclif/plugin-help/blob/v2.2.3/src/commands/help.ts)_

## `nr1 nerdpack:build`

builds a Nerdpack

```
USAGE
  $ nr1 nerdpack:build

OPTIONS
  --extra-metadata-path=extra-metadata-path  [default: extra-metadata.json] specify a json file path with extra metadata

  --prerelease=prerelease                    if specified, the value will be appended to the current version of
                                             generated files. ie: --prerelease=abc. Then the version will be
                                             "1.2.3-abc".

  --profile=profile                          the authentication profile you want to use

  --verbose                                  adds extra information to the output

DESCRIPTION
  Runs a webpack process to assemble your Nerdpack into javascript and css 
  bundles. As many other CLI commands, it should be run at the package.json level of your Nerdpack. It 
  will search for nr1.json files in your subdirectories, validate them, and try to build them. 
  This also runs nr1 nerdpack:validate before starting the build process.
```

_See code: [@datanerd/3pp-cli-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/build.js)_

## `nr1 nerdpack:clean`

removes all built artifacts

```
USAGE
  $ nr1 nerdpack:clean

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  Cleans and removes the content and the development folders (dist/, tmp/)
```

_See code: [@datanerd/3pp-cli-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/clean.js)_

## `nr1 nerdpack:clone`

clones a Nerdpack from a git repository

```
USAGE
  $ nr1 nerdpack:clone

OPTIONS
  -f, --force        Replace destination folder if it exists
  -p, --path=path    Directory where to clone (defaults to the repository name)
  -r, --repo=repo    (required) Repository location (either an HTTPS or SSH path)
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  Given a git repository, it performs all the actions so that you can start using it. This includes, in order:
       1. Clone the repository
       2. Set the repository as remote upstream
       3. Install all of its dependencies (using npm)
       4. Generate a new UUID using your profile, and commit it
```

## `nr1 nerdpack:grandcentral:build`

[NR] install dependencies, run linters and unit tests

```
USAGE
  $ nr1 nerdpack:grandcentral:build

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/grandcentral/build.js)_

## `nr1 nerdpack:grandcentral:metadata`

[NR] fetches the metadata for the build process

```
USAGE
  $ nr1 nerdpack:grandcentral:metadata

OPTIONS
  -o, --output=output  filename to output the metadata to
  --profile=profile    the authentication profile you want to use
  --verbose            adds extra information to the output

DESCRIPTION
  This command will automatically be called when you run "nr1 nerdpack:grandcentral:publish".

  By default it will print the information, you can pass the "--output" flag
  to specify an output file.
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/grandcentral/metadata.js)_

## `nr1 nerdpack:grandcentral:publish`

[NR] publishes the nerdpack on a GrandCentral build

```
USAGE
  $ nr1 nerdpack:grandcentral:publish

OPTIONS
  --profile=profile                        the authentication profile you want to use
  --verbose                                adds extra information to the output
  --versioning=semantic|simple|no-version  [default: semantic] sets the versioning method of the master publish
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/grandcentral/publish.js)_

## `nr1 nerdpack:info`

shows the state of your Nerdpack in the New Relic's registry

```
USAGE
  $ nr1 nerdpack:info

OPTIONS
  -a, --all                      show all versions
  -i, --nerdpack-id=nerdpack-id  get info from the specified Nerdpack instead of local one
  --profile=profile              the authentication profile you want to use
  --verbose                      adds extra information to the output

DESCRIPTION
  The default amount of versions shown is 10 but all versions can be shown if the --all (or -a) flag is used
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/info.js)_

## `nr1 nerdpack:lint:commit`

[NR] lint your commit message

```
USAGE
  $ nr1 nerdpack:lint:commit

OPTIONS
  --edit=edit        read last commit message from the specified file or fallbacks to ./.git/COMMIT_EDITMSG
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/lint/commit.js)_

## `nr1 nerdpack:lint:js`

[NR] lint your js code

```
USAGE
  $ nr1 nerdpack:lint:js

OPTIONS
  --fix              apply automatic fix rules
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/lint/js.js)_

## `nr1 nerdpack:lint:style`

[NR] lint your css and sass files

```
USAGE
  $ nr1 nerdpack:lint:style

OPTIONS
  --fix              apply lint to files
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/lint/style.js)_

## `nr1 nerdpack:migrate`

[NR] migrates an old package made with the old CLI to the new nerdpacks

```
USAGE
  $ nr1 nerdpack:migrate

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/migrate.js)_

## `nr1 nerdpack:publish`

publish this Nerdpack

```
USAGE
  $ nr1 nerdpack:publish

OPTIONS
  -B, --skip-build                           skip the previous build process
  -T, --skip-tag                             do not tag the version
  -t, --tag=tag                              [default: STABLE]
  --dry-run                                  publish process without actually publishing anything.
  --extra-metadata-path=extra-metadata-path  [default: extra-metadata.json] specify a json file path with extra metadata

  --prerelease=prerelease                    if specified, the value will be appended to the current version of
                                             generated files. ie: --prerelease=abc. Then the version will be
                                             "1.2.3-abc".

  --profile=profile                          the authentication profile you want to use

  --verbose                                  adds extra information to the output

DESCRIPTION
  This command will build and upload your Nerdpack to the registry.

  If no additional parameters are passed in, this command will automatically tag the nerdpack version as STABLE. If you 
  want to disable this behavior, pass the --skip-tag flag to the command.

  See nr1 nerdpack:tag --help for more info on tags.
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/publish.js)_

## `nr1 nerdpack:serve`

serves your Nerdpack for testing and development purposes

```
USAGE
  $ nr1 nerdpack:serve

OPTIONS
  --mode=prod|dev    [default: dev] Mode to use for the compilation
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  Launches a server with your local code, ready to be tested live on the platform.
```

_See code: [@datanerd/3pp-cli-nerdpack-serve](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/serve.js)_

## `nr1 nerdpack:setup-editor:vscode`

[NR] setup a predefined set of settings in your nerdpack

```
USAGE
  $ nr1 nerdpack:setup-editor:vscode

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/setup-editor/vscode.js)_

## `nr1 nerdpack:subscription-model`

[NR] changes the subscription model of a nerdpack

```
USAGE
  $ nr1 nerdpack:subscription-model

OPTIONS
  -i, --nerdpack-id=nerdpack-id         choose which nerdpack to deploy (local by default)
  -m, --model=OWNER_AND_ALLOWED|GLOBAL  (required) choose which model to use
  --profile=profile                     the authentication profile you want to use
  --verbose                             adds extra information to the output

DESCRIPTION
  CHI VPN required.

  You can change the subscription model of a nerdpack, choose between:

  OWNER_AND_ALLOWED: Owner (creator) and allowed sibling accounts can subscribe to the nerdpack.

  GLOBAL: Everyone can subscribe to the nerdpack.
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/subscription-model.js)_

## `nr1 nerdpack:tag`

tags a specific Nerdpack version

```
USAGE
  $ nr1 nerdpack:tag

OPTIONS
  -V, --from-version=from-version  version to tag. If it's not provided will use the one in package.json
  -i, --nerdpack-id=nerdpack-id    nerdpack uuid to deploy. If it's not provided will use the one in nr1.json
  -t, --tag=tag                    [default: STABLE] tag name
  --profile=profile                the authentication profile you want to use
  --verbose                        adds extra information to the output

DESCRIPTION
  A single version may have several tags, but each tag can only be applied to one version.
  Tagging a different version with an existing tag will untag the previous one.

  We recommend using "STABLE" to tag the versions you want to show to your subscribers. See the command nr1 
  nerdpack:subscribe for more info.

ALIASES
  $ nr1 nerdpack:deploy
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/tag.js)_

## `nr1 nerdpack:test:unit`

[NR] Unit test your nerdpack (accepts all Jest CLI options)

```
USAGE
  $ nr1 nerdpack:test:unit

OPTIONS
  -u, ----updateSnapshot  use this flag to re-record every snapshot that fails during this test run
  ----watch               watch files for changes and rerun tests related to changed files
  --profile=profile       the authentication profile you want to use
  --verbose               adds extra information to the output
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/test/unit.js)_

## `nr1 nerdpack:untag`

removes a tag from the registry

```
USAGE
  $ nr1 nerdpack:untag

OPTIONS
  -i, --nerdpack-id=nerdpack-id  nerdpack uuid to deploy. If it's not provided will use the one in nr1.json
  -t, --tag=tag                  [default: STABLE] tag name
  --profile=profile              the authentication profile you want to use
  --verbose                      adds extra information to the output

DESCRIPTION
  Specified tag will be removed. No files will be actually deleted.

ALIASES
  $ nr1 nerdpack:undeploy
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/untag.js)_

## `nr1 nerdpack:uuid`

shows or regenerates the UUID of a Nerdpack

```
USAGE
  $ nr1 nerdpack:uuid

OPTIONS
  -f, --force        if present, it will override the existing UUID without asking
  -g, --generate     generates a new UUID if not available
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  By default, prints the Universal Unique ID of the specified package. It also enables generation (or regeneration) of 
  the UUID of your package, depending on the flags passed.
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/uuid.js)_

## `nr1 nerdpack:validate`

validates artifacts inside your Nerdpack

```
USAGE
  $ nr1 nerdpack:validate

OPTIONS
  -l, --force-local   do not download new schema files
  -r, --force-remote  force download of new schema files
  --profile=profile   the authentication profile you want to use
  --verbose           adds extra information to the output

ALIASES
  $ nr1 nerdpack:ls
  $ nr1 nerdpack:val
```

_See code: [@datanerd/3pp-cli-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/validate.js)_

## `nr1 nerdpack:version`

[NR] returns the current local version of the Nerdpack you are running this command into

```
USAGE
  $ nr1 nerdpack:version

OPTIONS
  --build                  perform a new prerelease using a hash
  --prerelease=prerelease  perform a new prerelease
  --profile=profile        the authentication profile you want to use
  --semantic               perform a new release using semantic versioning
  --simple                 perform a new release using simple versioning
  --verbose                adds extra information to the output

DESCRIPTION
  If you pass the "--simple" flag, this command will raise your patch by one number (ie: 1.0.0 -> 1.0.1)
  and push it using git.

  If you pass the "--semantic" flag, this command will parse your commit
  messages since the last tag and decides the new version for you.
  More info about this here: https://www.conventionalcommits.org/

  If you pass the "--prerelease XXXXXX" flag, this command will generate a new unique prerelease version
  (ie: '1.0.0-XXXXXXX'), this is useful to generate versions for PR builds.

  The "--build" flag, is identical to "--prerelease XXXXXX" but it generates a hash for XXXXXX. This is useful to 
  automate builds on CIs.
```

_See code: [@datanerd/cli-plugin-internal-nerdpack](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/nerdpack/version.js)_

## `nr1 nrql`

fetches data from New Relic databases using a NRQL (New Relic query language) query

```
USAGE
  $ nr1 nrql

OPTIONS
  -a, --account=account  (required) user account ID
  -q, --query=query      (required) NRQL query to run
  -u, --ugly             outputs the content without tabs or spaces
  --profile=profile      the authentication profile you want to use
  --verbose              adds extra information to the output

DESCRIPTION
  See https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language
```

_See code: [@datanerd/3pp-cli-nrql](https://github.com/newrelic/nr1-cli/blob/v2.49.1/src/commands/nrql.js)_

## `nr1 plugins`

list installed plugins

```
USAGE
  $ nr1 plugins

OPTIONS
  --core  show core plugins

EXAMPLE
  $ nr1 plugins
```

_See code: [@oclif/plugin-plugins](https://github.com/oclif/plugin-plugins/blob/v1.10.2/src/commands/plugins/index.ts)_

## `nr1 plugins:inspect PLUGIN...`

displays installation properties of a plugin

```
USAGE
  $ nr1 plugins:inspect PLUGIN...

ARGUMENTS
  PLUGIN  [default: .] plugin to inspect

OPTIONS
  -h, --help     show CLI help
  -v, --verbose

EXAMPLE
  $ nr1 plugins:inspect myplugin
```

_See code: [@oclif/plugin-plugins](https://github.com/oclif/plugin-plugins/blob/v1.10.2/src/commands/plugins/inspect.ts)_

## `nr1 plugins:install PLUGIN...`

installs a plugin into the CLI

```
USAGE
  $ nr1 plugins:install PLUGIN...

ARGUMENTS
  PLUGIN  plugin to install

OPTIONS
  -f, --force    yarn install with force flag
  -h, --help     show CLI help
  -v, --verbose

DESCRIPTION
  Can be installed from npm or a git url.

  Installation of a user-installed plugin will override a core plugin.

  e.g. If you have a core plugin that has a 'hello' command, installing a user-installed plugin with a 'hello' command 
  will override the core plugin implementation. This is useful if a user needs to update core plugin functionality in 
  the CLI without the need to patch and update the whole CLI.

ALIASES
  $ nr1 plugins:add

EXAMPLES
  $ nr1 plugins:install myplugin 
  $ nr1 plugins:install https://github.com/someuser/someplugin
  $ nr1 plugins:install someuser/someplugin
```

_See code: [@oclif/plugin-plugins](https://github.com/oclif/plugin-plugins/blob/v1.10.2/src/commands/plugins/install.ts)_

## `nr1 plugins:link PLUGIN`

links a plugin into the CLI for development

```
USAGE
  $ nr1 plugins:link PLUGIN

ARGUMENTS
  PATH  [default: .] path to plugin

OPTIONS
  -h, --help     show CLI help
  -v, --verbose

DESCRIPTION
  Installation of a linked plugin will override a user-installed or core plugin.

  e.g. If you have a user-installed or core plugin that has a 'hello' command, installing a linked plugin with a 'hello' 
  command will override the user-installed or core plugin implementation. This is useful for development work.

EXAMPLE
  $ nr1 plugins:link myplugin
```

_See code: [@oclif/plugin-plugins](https://github.com/oclif/plugin-plugins/blob/v1.10.2/src/commands/plugins/link.ts)_

## `nr1 plugins:uninstall PLUGIN...`

removes a plugin from the CLI

```
USAGE
  $ nr1 plugins:uninstall PLUGIN...

ARGUMENTS
  PLUGIN  plugin to uninstall

OPTIONS
  -h, --help     show CLI help
  -v, --verbose

ALIASES
  $ nr1 plugins:unlink
  $ nr1 plugins:remove
```

_See code: [@oclif/plugin-plugins](https://github.com/oclif/plugin-plugins/blob/v1.10.2/src/commands/plugins/uninstall.ts)_

## `nr1 plugins:update`

update installed plugins

```
USAGE
  $ nr1 plugins:update

OPTIONS
  -h, --help     show CLI help
  -v, --verbose
```

_See code: [@oclif/plugin-plugins](https://github.com/oclif/plugin-plugins/blob/v1.10.2/src/commands/plugins/update.ts)_

## `nr1 profiles:add`

adds a new profile to your profiles keychain

```
USAGE
  $ nr1 profiles:add

OPTIONS
  -f, --force
  -k, --api-key=api-key  (required)
  -n, --name=name        (required)
  -r, --region=region    (required)
  --profile=profile      the authentication profile you want to use
  --verbose              adds extra information to the output

DESCRIPTION
  Adds a new entry on your profiles keychain. Keychain file may be found at "~/.newrelic/credentials.json"
```

_See code: [@datanerd/3pp-cli-profiles](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/profiles/add.js)_

## `nr1 profiles:default`

choose which profile should be default

```
USAGE
  $ nr1 profiles:default

OPTIONS
  -n, --name=name
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  The default profile is the one that will be used by default, if you want to run a specific command with one specific 
  profile, you can add --profile profile-name to it.
```

_See code: [@datanerd/3pp-cli-profiles](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/profiles/default.js)_

## `nr1 profiles:list`

list the profiles on your keychain

```
USAGE
  $ nr1 profiles:list

OPTIONS
  -s, --show-keys    show the API keys value
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

ALIASES
  $ nr1 profiles:ls
```

_See code: [@datanerd/3pp-cli-profiles](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/profiles/list.js)_

## `nr1 profiles:remove NAME`

remove a profile from your keychain

```
USAGE
  $ nr1 profiles:remove NAME

ARGUMENTS
  NAME  profile to remove

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

ALIASES
  $ nr1 profiles:rm
  $ nr1 profiles:delete
```

_See code: [@datanerd/3pp-cli-profiles](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/profiles/remove.js)_

## `nr1 profiles:whoami`

shows who is the owner of the profile

```
USAGE
  $ nr1 profiles:whoami

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  Shows information about the profile running the command. Chose the profile to probe with --profile XXXXX, default 
  profile will be used otherwise.
```

_See code: [@datanerd/3pp-cli-profiles](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/profiles/whoami.js)_

## `nr1 subscription:list`

list all subscribed nerdpacks on your account

```
USAGE
  $ nr1 subscription:list

OPTIONS
  --profile=profile  the authentication profile you want to use
  --verbose          adds extra information to the output

DESCRIPTION
  List all subscribed Nerdpacks of the account linked to your API key.

ALIASES
  $ nr1 subscription:ls
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/subscription/list.js)_

## `nr1 subscription:set`

subscribe your account to a Nerdpack and channel

```
USAGE
  $ nr1 subscription:set

OPTIONS
  -c, --channel=DEV|BETA|STABLE  [default: STABLE] choose the channel you want to subscribe to

  -i, --nerdpack-id=nerdpack-id  choose the nerdpack id you want to subscribe to. If it's not provided, the one in the
                                 package.json file will be used

  --profile=profile              the authentication profile you want to use

  --verbose                      adds extra information to the output

DESCRIPTION
  Subscribe the account linked to your API key to a specific Nerdpack and channel (default: STABLE). When the subscribe 
  command is executed within a Nerdpack folder, the Nerdpack ID from the package.json file is used by default. An 
  account can only be subscribed 
  to one nerdpack and channel at any time. Subscriptions can be removed with the nr1 nerdpack:unsubscribe command.

ALIASES
  $ nr1 nerdpack:subscribe
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/subscription/set.js)_

## `nr1 subscription:unset`

unsubscribe your account from a Nerdpack

```
USAGE
  $ nr1 subscription:unset

OPTIONS
  -i, --nerdpack-id=nerdpack-id  choose the nerdpack id you want to unsubscribe from. If it's not provided, the one in
                                 the package.json file will be used

  --profile=profile              the authentication profile you want to use

  --verbose                      adds extra information to the output

DESCRIPTION
  Unsubscribe the account linked to your API key from a specific Nerdpack. When the unsubscribe command is executed 
  within a Nerdpack folder, the Nerdpack ID from the package.json file is used by default.

ALIASES
  $ nr1 nerdpack:unsubscribe
  $ nr1 subscription:delete
  $ nr1 subscription:remove
  $ nr1 subscription:rm
```

_See code: [@datanerd/3pp-cli-nerdpack-registry](https://github.com/newrelic/cli/blob/v2.49.1/src/commands/subscription/unset.js)_

## `nr1 update [CHANNEL]`

update the nr1 CLI

```
USAGE
  $ nr1 update [CHANNEL]

OPTIONS
  --from-local  interactively choose an already installed version
```

_See code: [@oclif/plugin-update](https://github.com/oclif/plugin-update/blob/v1.5.0/src/commands/update.ts)_
<!-- commandsstop -->
