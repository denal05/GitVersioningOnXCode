#!/bin/sh

#  gitversioning.sh
#  
#
#  Created by sig on 28.10.13.
#

version=$(git rev-parse --verify HEAD | cut -c 1-7)
curdate=$(date +"%d.%m.%y")

filesource="//\n//  GitVersion.swift\n//\n//  Created by sig on $curdate.\n//\n\nlet GIT_SHA_VERSION = \"$version\"\n\n"

echo "$filesource" > Sources/GitVersion.swift
touch Sources/GitVersion.swift
