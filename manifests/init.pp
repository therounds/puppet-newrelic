class newrelic( $enabled = 'true' ) {

  package { [ 'newrelic_rpm', 'newrelic_api', 'activeresource' ]:
    ensure   => $enabled ? {
      'true'  => 'present',
      'false' => 'absent',
      default => 'absent',
    },
    provider => gem,
  }

}
