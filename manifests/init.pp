# == Class: gdebi
#
# Install hub.
#
# === Examples
#
#  include hub
#
# === Authors
#
# Chris Pick <puppethub@chrispick.com>
#
# === Copyright
#
# Copyright 2015 Chris Pick
# Licensed under the Apache License, Version 2.0
#

class hub {
    include apt
    apt::ppa { 'ppa:cpick/hub': } ->
    package { 'hub':
        require => Exec['apt_update'],
    }
}
