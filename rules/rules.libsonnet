{
  prometheusRules+:: {
    groups+: [
      {
        name: 'ocs.rules',
        rules: [
        ],
      },
    ],
  },
}

//List of backup metrics which might be useful later
// {
//   record: 'job:ceph_osd_in:count',
//   expr: |||
//     count(ceph_osd_in{%(cephExporterSelector)s} == 1)
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_osd_up:count',
//   expr: |||
//     count(ceph_osd_up{%(cephExporterSelector)s} == 1)
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_osd_metadata:count_bluestore',
//   expr: |||
//     count(ceph_osd_metadata{%(cephExporterSelector)s, objectstore = 'bluestore'})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_osd_metadata:count_filestore',
//   expr: |||
//     count(ceph_osd_metadata{%(cephExporterSelector)s, objectstore = 'filestore'})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_osd_metadata:count_ssd',
//   expr: |||
//     count(ceph_osd_metadata{%(cephExporterSelector)s, device_class = 'ssd'})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_osd_metadata:count_hdd',
//   expr: |||
//     count(ceph_osd_metadata{%(cephExporterSelector)s, device_class = 'hdd'})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_pool_rd:total',
//   expr: |||
//     sum(ceph_pool_rd{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_pool_wr:total',
//   expr: |||
//     sum(ceph_pool_wr{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_pool_rd_bytes:total',
//   expr: |||
//     sum(ceph_pool_rd_bytes{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_pool_wr_bytes:total',
//   expr: |||
//     sum(ceph_pool_wr_bytes{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_mds_metadata:count',
//   expr: |||
//     count(ceph_mds_metadata{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_mon_metadata:count',
//   expr: |||
//     count(ceph_mon_metadata{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_mgr_metadata:count',
//   expr: |||
//     count(ceph_mgr_metadata{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_rgw_metadata:count',
//   expr: |||
//     count(ceph_rgw_metadata{%(cephExporterSelector)s})
//   ||| % $._config,
// },
// {
//   record: 'job:ceph_mon_metadata:distinct',
//   expr: |||
//     count(count(ceph_mon_metadata{%(cephExporterSelector)s}) by (ceph_version))
//   ||| % $._config,
// },
