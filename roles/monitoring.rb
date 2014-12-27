name "monitoring"
description "new relic server monitoring"
run_list "recipe[newrelic::repository]", "recipe[newrelic::server_monitor_agent]"
override_attributes({
  :newrelic => {
    :server_monitoring => {
      :license => 'your server monitor keys'
    }
  }
})