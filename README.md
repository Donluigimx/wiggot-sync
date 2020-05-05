Simple script to sync local files to Wiggot development servers without the pain of deleting files by mistake

## Installation

To install it you have to run

```sh
curl -s https://raw.githubusercontent.com/Donluigimx/wiggot-sync/master/installer.sh | bash
```

## Usage

If the target subdomain is `example`, in order to sync your project files you have to run
```sh
wiggot-sync -s 'example'
```