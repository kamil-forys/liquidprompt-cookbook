Liquid Prompt cookbook
======================
This cookbook will install and configure Liquid Prompt — a useful adaptive prompt for Bash & zsh.

Requirements
------------
Should work on any platform which can run bash or zsh.

Attributes
----------
`default['liquidprompt']['install_dir'] = '/opt/liquidprompt'`

Usage
-----
Simply add liquidprompt to your run list:
`knife node run_list add NODE "recipe[liquidprompt]"`

TODO
----
* Add possibility to configure liquidprompt.
* Add support for zsh.
* Install some dependencies (acpi, lm-sensors).
* Use /etc/skel and /etc/bashrc
* Install liquidprompt from packages (Ubuntu 15.10+ and Debian Unstable supports it).
* Rewrite that horrible ruby_block into something nicer.
* Tests.
