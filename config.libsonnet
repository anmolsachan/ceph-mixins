{
  _config+:: {
    // Selectors are inserted between {} in Prometheus queries.
    cephExporterSelector: 'job="rook-ceph-mgr"',

    // Duration to raise various Alerts
    clusterUtilizationAlertTime: '5m',
    clusterStateAlertTime: '10m',
    monQuorumAlertTime: '15m',
    networkErrorAlertTime: '1m',
    networkInterfaceErrorAlertTime: '30s',

    // Constants
    storageType: 'ceph',

    // For links between grafana dashboards, you need to tell us if your grafana
    // servers under some non-root path.
    grafanaPrefix: '',

    // We build alerts for the presence of all these jobs.
    jobs: {
      CephExporter: $._config.cephExporterSelector,
    },
  },
}
