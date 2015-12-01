Description
===========
Installs Liquid Prompt — a useful adaptive prompt for Bash & zsh.

Requirements
============
Should work on any platform which can run bash or zsh.

Attributes
==========
default['liquidprompt']['install_dir'] = '/opt/liquidprompt'

Usage
=====
Simply add liquidprompt to your run list.

TODO
====
Add possibility to configure liquidprompt.
Add support for zsh.
Install some dependencies (acpi, lm-sensors).
Use /etc/skel
Install liquidprompt from packages (Ubuntu 15.10+ and Debian Unstable supports it).
Rewrite that horrible ruby_block into something nicer.
Tests.
