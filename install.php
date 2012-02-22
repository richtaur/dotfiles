#!/usr/bin/php
<?php

$arg = count($argv) > 1 ? $argv[1] : null;
if ($arg) {
	// Get contents of both profiles
	$bash_profile_sh = file_get_contents('bash_profile.sh');
	$env_bash_profile_sh = file_get_contents("$arg/bash_profile.sh");

	// Combine them into local .bash_profile (order matters)
	$contents = $env_bash_profile_sh . $bash_profile_sh;
	file_put_contents('.bash_profile', $contents);

	// Get the current directory for BASH
	exec('pwd', $output);
	$wd = $output[0];
} else {
	die("Pass in an install target: './install.php belmont|lakitu'\n");
}

$bash = <<<BASH
cd ~/

rm .bash_profile
ln -s $wd/.bash_profile .bash_profile

rm .ackrc
ln -s $wd/ack.rc .ackrc

rm .gitconfig
ln -s $wd/git.config .gitconfig

rm .gvimrc
ln -s $wd/gvim.rc .gvimrc

rm -rf .vim
ln -s $wd/vim .vim

rm .vimrc
ln -s $wd/vim.rc .vimrc

cd $wd
source ~/.bash_profile
BASH;

#echo $bash;
exec($bash);
