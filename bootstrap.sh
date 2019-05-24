#!/bin/sh
mkdir -p ~/.chef
cp cookbooks/default/files/default/solo.rb ~/.chef
cp cookbooks/default/files/default/node.json ~/.chef
chef-solo -c ~/.chef/solo.rb -j ~/.chef/node.json
