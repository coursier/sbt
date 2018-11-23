#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

for i in sbt/src/sbt-test/*/*; do
  mkdir -p "$i/project" && \
    cp sbt-coursier.sbt "$i/project/sbt-coursier.sbt" &&
    git add "$i/project/sbt-coursier.sbt"
done
