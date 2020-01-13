{
  prometheusAlerts+:: {
    groups+: [
      {
        name: 'quorum-alert.rules',
        rules: [
          {
            alert: 'CephMonQuorumAtRisk',
            expr: |||
              count(ceph_mon_quorum_status{%s} == 1) <= ((count(ceph_mon_metadata{%s}) %s 2) + 1)
            ||| % [$._config.cephExporterSelector, $._config.cephExporterSelector, '%'],
            'for': $._config.monQuorumAlertTime,
            labels: {
              severity: 'critical',
            },
            annotations: {
              message: 'Storage quorum at risk',
              description: 'Storage cluster quorum is low. Contact Support.',
              storage_type: $._config.storageType,
              severity_level: 'error',
            },
          },
          {
            alert: 'CephMonHighNumberOfLeaderChanges',
            expr: |||
              (ceph_mon_metadata{%(cephExporterSelector)s} * on (ceph_daemon) group_left() (rate(ceph_mon_num_elections{%(cephExporterSelector)s}[5m]) * 60)) > 0.95
            ||| % $._config,
            'for': $._config.monQuorumLeaderChangesAlertTime,
            labels: {
              severity: 'warning',
            },
            annotations: {
              message: 'Storage Cluster has seen many leader changes recently.',
              description: 'Ceph Monitor {{ $labels.ceph_daemon }} on host {{ $labels.hostname }} has seen {{ $value | printf "%.2f" }} leader changes per minute recently.',
              storage_type: $._config.storageType,
              severity_level: 'warning',
            },
          },
        ],
      },
    ],
  },
}
