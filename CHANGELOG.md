# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v8.2.0](https://github.com/voxpupuli/puppet-collectd/tree/v8.2.0) (2018-03-16)

[Full Changelog](https://github.com/voxpupuli/puppet-collectd/compare/v8.1.0...v8.2.0)

**Implemented enhancements:**

- Add intel\_pmu plugin [\#760](https://github.com/voxpupuli/puppet-collectd/pull/760) ([pllopis](https://github.com/pllopis))
- feat: add package\_keyserver parameter [\#746](https://github.com/voxpupuli/puppet-collectd/pull/746) ([marcdeop](https://github.com/marcdeop))
- Add class ovs\_events plugin [\#743](https://github.com/voxpupuli/puppet-collectd/pull/743) ([paramite](https://github.com/paramite))

**Fixed bugs:**

- Collectd fails to start when wsrepstats is enabled [\#757](https://github.com/voxpupuli/puppet-collectd/issues/757)
- Fix the MySQL plugin's WsrepStats parameter [\#758](https://github.com/voxpupuli/puppet-collectd/pull/758) ([steventwheeler](https://github.com/steventwheeler))

## [v8.1.0](https://github.com/voxpupuli/puppet-collectd/tree/v8.1.0) (2018-02-13)

[Full Changelog](https://github.com/voxpupuli/puppet-collectd/compare/v8.0.1...v8.1.0)

**Implemented enhancements:**

- update version for collectd package [\#752](https://github.com/voxpupuli/puppet-collectd/pull/752) ([vaclandic](https://github.com/vaclandic))

**Merged pull requests:**

- release 8.1.0 [\#755](https://github.com/voxpupuli/puppet-collectd/pull/755) ([bastelfreak](https://github.com/bastelfreak))
- generate acceptance tests by modulesync [\#754](https://github.com/voxpupuli/puppet-collectd/pull/754) ([bastelfreak](https://github.com/bastelfreak))
- add ruby 2.5.0 to the testmatrix [\#751](https://github.com/voxpupuli/puppet-collectd/pull/751) ([bastelfreak](https://github.com/bastelfreak))

## [v8.0.1](https://github.com/voxpupuli/puppet-collectd/tree/v8.0.1) (2018-01-26)

[Full Changelog](https://github.com/voxpupuli/puppet-collectd/compare/v8.0.0...v8.0.1)

**Merged pull requests:**

- Adds class ovs\_stats plugin [\#742](https://github.com/voxpupuli/puppet-collectd/pull/742) ([paramite](https://github.com/paramite))
- Remove duplicate 'include' [\#740](https://github.com/voxpupuli/puppet-collectd/pull/740) ([alexjfisher](https://github.com/alexjfisher))
- Release 8.0.0 [\#739](https://github.com/voxpupuli/puppet-collectd/pull/739) ([alexjfisher](https://github.com/alexjfisher))

## [v8.0.0](https://github.com/voxpupuli/puppet-collectd/tree/v8.0.0) (2017-12-08)

[Full Changelog](https://github.com/voxpupuli/puppet-collectd/compare/v7.0.0...v8.0.0)

**Breaking changes:**

- plugin::genericjmx::mbean - Use data types [\#726](https://github.com/voxpupuli/puppet-collectd/pull/726) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::genericjmx::connection - Use data types [\#725](https://github.com/voxpupuli/puppet-collectd/pull/725) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::filecount::directory - data type changes [\#718](https://github.com/voxpupuli/puppet-collectd/pull/718) ([juniorsysadmin](https://github.com/juniorsysadmin))
- Make it possible to add processes one by one [\#712](https://github.com/voxpupuli/puppet-collectd/pull/712) ([oscarkraemer](https://github.com/oscarkraemer))

**Implemented enhancements:**

- Escape json posts in curl\_json plugin [\#735](https://github.com/voxpupuli/puppet-collectd/pull/735) ([alexjfisher](https://github.com/alexjfisher))
- added: check params variable in query pg template [\#731](https://github.com/voxpupuli/puppet-collectd/pull/731) ([vaclandic](https://github.com/vaclandic))
- plugin/mysql: optional wsrepstats setting [\#710](https://github.com/voxpupuli/puppet-collectd/pull/710) ([martbhell](https://github.com/martbhell))

**Fixed bugs:**

- Process plugin silently breaks processmatch/process defines. [\#652](https://github.com/voxpupuli/puppet-collectd/issues/652)
- Processes plugin creates strange config [\#595](https://github.com/voxpupuli/puppet-collectd/issues/595)

**Merged pull requests:**

- Fix typos in README [\#737](https://github.com/voxpupuli/puppet-collectd/pull/737) ([alexjfisher](https://github.com/alexjfisher))
- replace topscope variables with facts hash [\#734](https://github.com/voxpupuli/puppet-collectd/pull/734) ([bastelfreak](https://github.com/bastelfreak))
- Remove EOL operatingsystems [\#733](https://github.com/voxpupuli/puppet-collectd/pull/733) ([ekohl](https://github.com/ekohl))
- plugin::mysql::database - Add data type [\#727](https://github.com/voxpupuli/puppet-collectd/pull/727) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::filter::target - Use data types [\#723](https://github.com/voxpupuli/puppet-collectd/pull/723) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::filter::rule - add data type [\#722](https://github.com/voxpupuli/puppet-collectd/pull/722) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::filter::match - Use data types [\#721](https://github.com/voxpupuli/puppet-collectd/pull/721) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::filter::chain - Use data types [\#720](https://github.com/voxpupuli/puppet-collectd/pull/720) ([juniorsysadmin](https://github.com/juniorsysadmin))
- collectd::plugin::exec::cmd clean up [\#717](https://github.com/voxpupuli/puppet-collectd/pull/717) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::apache::instance -don't assign from params [\#715](https://github.com/voxpupuli/puppet-collectd/pull/715) ([juniorsysadmin](https://github.com/juniorsysadmin))
- release 7.0.0 [\#714](https://github.com/voxpupuli/puppet-collectd/pull/714) ([bastelfreak](https://github.com/bastelfreak))

## [v7.0.0](https://github.com/voxpupuli/puppet-collectd/tree/v7.0.0) (2017-11-11)

[Full Changelog](https://github.com/voxpupuli/puppet-collectd/compare/v6.0.0...v7.0.0)

**Breaking changes:**

- Bump puppetlabs-stdlib to 4.13.1 [\#703](https://github.com/voxpupuli/puppet-collectd/pull/703) ([juniorsysadmin](https://github.com/juniorsysadmin))

**Implemented enhancements:**

- Add Zookeeper plugin [\#670](https://github.com/voxpupuli/puppet-collectd/pull/670) ([jamtur01](https://github.com/jamtur01))

**Fixed bugs:**

- Fix markup of headers [\#711](https://github.com/voxpupuli/puppet-collectd/pull/711) ([traylenator](https://github.com/traylenator))
- Fix strict variables error when facts are missing [\#708](https://github.com/voxpupuli/puppet-collectd/pull/708) ([alexjfisher](https://github.com/alexjfisher))
- Install 'collectd-python' package on Amazon Linux. [\#671](https://github.com/voxpupuli/puppet-collectd/pull/671) ([irgeek](https://github.com/irgeek))

**Closed issues:**

- Support the ZooKeeper plugin [\#654](https://github.com/voxpupuli/puppet-collectd/issues/654)
- Collectd::Plugin::Aggregation::Aggregator fails on 5.2 [\#596](https://github.com/voxpupuli/puppet-collectd/issues/596)

**Merged pull requests:**

- Use $facts hash instead of topscope variables [\#709](https://github.com/voxpupuli/puppet-collectd/pull/709) ([alexjfisher](https://github.com/alexjfisher))
- replace validate\_\* with datatypes [\#706](https://github.com/voxpupuli/puppet-collectd/pull/706) ([bastelfreak](https://github.com/bastelfreak))
- plugin::dbi - Use data types [\#705](https://github.com/voxpupuli/puppet-collectd/pull/705) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::curl - Use data types [\#704](https://github.com/voxpupuli/puppet-collectd/pull/704) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::aggregation - Use data types [\#702](https://github.com/voxpupuli/puppet-collectd/pull/702) ([juniorsysadmin](https://github.com/juniorsysadmin))
- plugin::apache - Use data types [\#701](https://github.com/voxpupuli/puppet-collectd/pull/701) ([juniorsysadmin](https://github.com/juniorsysadmin))
- Fix zookeeper tests [\#698](https://github.com/voxpupuli/puppet-collectd/pull/698) ([bastelfreak](https://github.com/bastelfreak))
- release 6.0.0 [\#697](https://github.com/voxpupuli/puppet-collectd/pull/697) ([bastelfreak](https://github.com/bastelfreak))

## [v6.0.0](https://github.com/voxpupuli/puppet-collectd/tree/v6.0.0) (2017-10-18)

[Full Changelog](https://github.com/voxpupuli/puppet-collectd/compare/v5.3.0...v6.0.0)

**Breaking changes:**

- Fix sensors plugin params [\#683](https://github.com/voxpupuli/puppet-collectd/pull/683) ([archii](https://github.com/archii))
- Fixes \#549: Unable to define a multi-value type [\#604](https://github.com/voxpupuli/puppet-collectd/pull/604) ([jkroepke](https://github.com/jkroepke))

**Implemented enhancements:**

- Add parameter to customize location of python plugin configuration [\#638](https://github.com/voxpupuli/puppet-collectd/issues/638)
- Support for snmp v3 [\#236](https://github.com/voxpupuli/puppet-collectd/issues/236)
- Add support for Chain6 directive [\#694](https://github.com/voxpupuli/puppet-collectd/pull/694) ([herver](https://github.com/herver))
- Change 'Redhat' to 'RedHat' when comparing against the osfamily fact [\#667](https://github.com/voxpupuli/puppet-collectd/pull/667) ([bodgit](https://github.com/bodgit))
- Add SNMPv3 support [\#665](https://github.com/voxpupuli/puppet-collectd/pull/665) ([bodgit](https://github.com/bodgit))
- Add tests for the AMQP plugin and fix broken StoreRates configuration when amqpformat = JSON [\#661](https://github.com/voxpupuli/puppet-collectd/pull/661) ([oranenj](https://github.com/oranenj))
- provide sane defaults for manage\_repo [\#658](https://github.com/voxpupuli/puppet-collectd/pull/658) ([bastelfreak](https://github.com/bastelfreak))
- openldap - add binddn and password parameters [\#657](https://github.com/voxpupuli/puppet-collectd/pull/657) ([leonkyneur](https://github.com/leonkyneur))
- Added ISC DHCP pool metrics plugin [\#650](https://github.com/voxpupuli/puppet-collectd/pull/650) ([Yuav](https://github.com/Yuav))
- df: add devices parameter [\#646](https://github.com/voxpupuli/puppet-collectd/pull/646) ([maage](https://github.com/maage))
- Added cuda GPU plugin [\#645](https://github.com/voxpupuli/puppet-collectd/pull/645) ([Yuav](https://github.com/Yuav))
- Plugin turbostat [\#642](https://github.com/voxpupuli/puppet-collectd/pull/642) ([jkroepke](https://github.com/jkroepke))
- Parametrize destination of python config [\#637](https://github.com/voxpupuli/puppet-collectd/pull/637) ([Pigueiras](https://github.com/Pigueiras))
- Stop specifying $name as the default host value [\#631](https://github.com/voxpupuli/puppet-collectd/pull/631) ([jamtur01](https://github.com/jamtur01))
- Add CounterSum support to statsd config [\#620](https://github.com/voxpupuli/puppet-collectd/pull/620) ([phss](https://github.com/phss))
- add new parameter module\_import in plugin::python::module [\#618](https://github.com/voxpupuli/puppet-collectd/pull/618) ([contargo-development](https://github.com/contargo-development))
- Added plugin oracle [\#613](https://github.com/voxpupuli/puppet-collectd/pull/613) ([jkroepke](https://github.com/jkroepke))
- Changes RedHat repo to use the EPEL module [\#603](https://github.com/voxpupuli/puppet-collectd/pull/603) ([petems](https://github.com/petems))
- collectd::plugin::amqp is now supporting the routingkey option [\#582](https://github.com/voxpupuli/puppet-collectd/pull/582) ([alexxxxx](https://github.com/alexxxxx))

**Fixed bugs:**

- Template in collectd::plugin::perl::plugin generates unstable output [\#635](https://github.com/voxpupuli/puppet-collectd/issues/635)
- Unable to define a multi-value type [\#549](https://github.com/voxpupuli/puppet-collectd/issues/549)
- Fix writing of postgresql query params and add a test [\#656](https://github.com/voxpupuli/puppet-collectd/pull/656) ([andrewward](https://github.com/andrewward))
- Add Support for older versions of `libyajl` [\#648](https://github.com/voxpupuli/puppet-collectd/pull/648) ([petems](https://github.com/petems))
- Oracle Database definition must be at bottom [\#643](https://github.com/voxpupuli/puppet-collectd/pull/643) ([jkroepke](https://github.com/jkroepke))
- Remove quotes from boolean options [\#640](https://github.com/voxpupuli/puppet-collectd/pull/640) ([mirekys](https://github.com/mirekys))
- Use sort on hashes in template perl/plugin.erb [\#636](https://github.com/voxpupuli/puppet-collectd/pull/636) ([blajos](https://github.com/blajos))
- pin puppet-yum to \< 1.0.0 [\#628](https://github.com/voxpupuli/puppet-collectd/pull/628) ([bastelfreak](https://github.com/bastelfreak))

**Closed issues:**

- IPTables plugin doesn't support IPv6 [\#693](https://github.com/voxpupuli/puppet-collectd/issues/693)
- aggregation plugin error: The plugin either only expects "simple" configuration statements or wasn't loaded using `LoadPlugin'.  [\#680](https://github.com/voxpupuli/puppet-collectd/issues/680)
- Why does the python plugin insist on permissions?  [\#679](https://github.com/voxpupuli/puppet-collectd/issues/679)
- Remove quotes from the Forward option [\#639](https://github.com/voxpupuli/puppet-collectd/issues/639)

**Merged pull requests:**

- modulesync 1.2.0 [\#696](https://github.com/voxpupuli/puppet-collectd/pull/696) ([wyardley](https://github.com/wyardley))
- bump version on puppetlabs/apt dependency [\#692](https://github.com/voxpupuli/puppet-collectd/pull/692) ([costela](https://github.com/costela))
- modulesync 0.22.0 [\#687](https://github.com/voxpupuli/puppet-collectd/pull/687) ([bastelfreak](https://github.com/bastelfreak))
- Remove interval parameter from write plugins. [\#685](https://github.com/voxpupuli/puppet-collectd/pull/685) ([kbor](https://github.com/kbor))
- add fscache plugin [\#682](https://github.com/voxpupuli/puppet-collectd/pull/682) ([wildente](https://github.com/wildente))
- Bump required puppet version 4.6.1-\>4.7.0 [\#675](https://github.com/voxpupuli/puppet-collectd/pull/675) ([bastelfreak](https://github.com/bastelfreak))
- drop legacy OS from support matrix [\#674](https://github.com/voxpupuli/puppet-collectd/pull/674) ([bastelfreak](https://github.com/bastelfreak))
- rspec-puppet-facts integration [\#673](https://github.com/voxpupuli/puppet-collectd/pull/673) ([bastelfreak](https://github.com/bastelfreak))
- Fix github license detection [\#669](https://github.com/voxpupuli/puppet-collectd/pull/669) ([alexjfisher](https://github.com/alexjfisher))
- Do not set a value for the collectd\_version fact if collectd is not y… [\#668](https://github.com/voxpupuli/puppet-collectd/pull/668) ([m3t30r](https://github.com/m3t30r))
- Install Redis plugin package if needed [\#666](https://github.com/voxpupuli/puppet-collectd/pull/666) ([bodgit](https://github.com/bodgit))
- Update `collectd::plugin::python::module` README [\#660](https://github.com/voxpupuli/puppet-collectd/pull/660) ([sigv](https://github.com/sigv))
- add $measureresponsecode for curl plugin [\#659](https://github.com/voxpupuli/puppet-collectd/pull/659) ([azhurbilo](https://github.com/azhurbilo))
- curl\_json: support parameters: host, digest, post, timeout [\#649](https://github.com/voxpupuli/puppet-collectd/pull/649) ([maage](https://github.com/maage))

## [v5.3.0](https://github.com/voxpupuli/puppet-collectd/tree/v5.3.0) (2017-01-13)

This is the last release with Puppet 3 support!
* Include custom rabbitmq types
* Enable acceptance tests
* Add Collectd CI Package repos
* Add write_prometheus plugin (#600)
* Fix python_dir fact for RedHat.
* Updates to write_riemann (#605)
* Add base threshold plugin
* Tag collectd's concat resources

## 2016-12-05 Release 5.2.0

* Modulesync with latest Vox Pupuli defaults
* Fix: Enforce collectd.d directory before all Concats
* Fix: Add ability to add files via hiera
* Fix: Don't accidently upgrade collectd while installing plugins
* Fix: Manage EPEL if needed
* Fix: Set correct installation path for plugins
* Feature: Updat kafka plugin
* Feature: Update Ceph plugin to support more cluster types
* Feature: Add SMART plugin
* Feature: Add support for multiple instances for memcached
* Feature: Extend snmp plugin
* Feature: Add hddtemp plugin
* Feature: Add UUID plugin
* Feature: Introduce rspec-puppet-facts to multiple spec tests
* Feature: Add ppa support on Ubuntu
* Feature: Add provider_proxy for pip
* Feature: Add support for Interface plugin option ReportInactive
* Feature: Add support for ReportNumCpu in CPU plugin introduced in collectd 5.6
* Feature: Add thermal plugin
* Feature: Allow multiple python plugin configs


## 2016-08-18 Release 5.1.0

* Modulesync with latest Vox Pupuli defaults
* Fix: Target replace filter fix to allow identical keys with different values
* Fix: Check $manage_package if not undef
* Fix: Adding has_wordexp variable for template
* Fix: Remove quotes from VerifyPeer and VerifyHost (don't treat bools as strings)
* Feature: Add password parameter to redis plugin
* Feature: Add scale plugin
* Feature: Add a java_home option to javaplugin


## 2016-05-26 Release 5.0.0

### Backwards-incompatible changes:

* The libvirt plugin has been renamed to simply virt, per collectd upstream

### New features

* Add plugin::cgroups
* Add plugin::fhcount
* Add plugin::ipmi
* Add plugin::rabbitmq
* Add parameter StoreRates to amqp plugin
* Support for STRICT_VARIABLES=yes
* Add initial OpenBSD support

### Bug fixes

* Manage collectd-disk package on collectd >= 5.5 (fix #457)
* fix typo in write_sensu class example


### Maintenance

* Add support for puppetlabs-concat 2.x
* Enhance the curl_json plugin
* Improve FreeBSD support
* A lot of new spec tests
* modulesync to latest voxpupuli defaults (0.6.4)

## 2016-02-01 Release 4.3.0

### New features

* Add plugin::dbi (fix #319)
* Add plugin::filter (fix #322)
* Add support for CollectInternalStats (fix #332)
* Add plugin::write_sensu (fix #335)
* Make management of package optional (fix #341)
* Add plugin::dns (fix #356)
* Add install options (fix #357)
* Add plugin::mongodb (fix #372)
* Add plugin::openldap (fix #381)
* Allow changing file mode of collectd.d (fix #384)
* Add support for complex module configs (fix #391)
* Add plugin::ethstat (fix #395)

### Bug fixes

* plugin/snmp: Fix typo (fix #338)
* Sort keys of curl_json.conf.erb (fix #342)
* Remove duplicate parameters (fix #345)
* Use correct collectd_version (fix #347)
* plugin/mysql: Remove Master/Slave if statement (fix #355)
* Fix variables for Solaris (fix #360)
* plugin/filecount: Do not emit empty Plugin block (fix #361)
* plugin/mysql: Pin InnodbStats to MySQL >= 5.5 (fix #362)
* plugin/process: Fix startup for Debian/Wheezy (fix #364)
* plugin/ping: Transition from defined type to class (fix #370)
* plugin/dbi: Fix empty database name (fix #382)

## 2015-09-03 Release 4.2.0

### New features

* Add support for types.db
* Add plugin::netlink
* Add collectd::plugin::ceph
* Add support for the new AllPortsSummary option
* plugin/mysql: Add innodbstats and slavenotifications
* plugin/snmp: Remove sorting of Values option in data block
* plugin/snmp: Support InstancePrefix, Scale and Shift options
* plugin/logfile:  Add support for PrintSeverity option (fix #317)
* plugin/exec: Exec plugin can also be used with a parameterized class.

### Bug fixes

* plugin/snmp: Check if Table option is defined

## 2015-08-05 Release 4.1.2

Fix .travis.yml so that deploys work, better

## 2015-08-05 Release 4.1.1

Fix .travis.yml so that deploys work

## 2015-08-05 Release 4.1.0

This module now lives on the puppet community github organization.

### New features

* Add option to not install collectd-iptables on centos 6
* Allow iptables chains parameter to be an array
* Support UdevNameAttr attribute on disk plugin (fixes #300)

## 2015-07-26 Release 4.0.0

### Backwards-incompatible changes:

* Exec plugin was renamed from collectd::plugin::exec to collectd::plugin::exec::cmd to support multiple execs
* Write_graphite was renamed from collectd::plugin::write_graphite to collectd::plugin::write_graphite::carbon to supports multiple carbon backends

### New features

* Support for the aggregation, chain, and protocols plugins
* Swap and Memory plugins now support ValuesAbsolute and ValuesPercentage
* OpenVPN plugin now supports multiple statusfiles

### Bug fixes

* Fixed bug preventing multiple instances of curl_json
* Fixed write_http plugin on RedHat

## 2015-06-16 Release 3.4.0

### Backwards-incompatible changes:

* Implement support for mupltiple Python modules

### Bug fixes

* snmp/host.pp validate_re validate on string
* quote reserved word type in tail.pp

### New features

* add new cpu plugin options introduced in collectd 5.5
* Added absent timers for statsd module.

### Testing enhancements

* Add ruby 2.2.0 to TravisCI
* Add puppet4 to .travis and update ruby to 2.1.6
* Add metadata-json-lint gem

## 2015-04-22 Release 3.3.0

### Backwards-incompatible changes:

* Drop Ruby 1.8.7 support
* Package collectd-python is no longer available in EPEL

### Features:

* Allow disable forwarding in network::server

### Bugs/Maint:

* Fix permission on MySQL plugin file
* Only set LogSendErrors option if collectd version >= 5.4.
* CreateFiles/CreateFilesAsync expect boolean values

## 2015-01-24 Release 3.2.0

### Backwards-incompatible changes:

There are no known backwards compat changes, please add them to the
CHANGELOG if you find one.

### Summary:

The release adds support for 4 new plugins and adds redhat package
support to a large number of plugins.

### New Plugins:

* collectd::plugin::genericjmx
* collectd::plugin::java
* collectd::plugin::target_v5upgrade
* collectd::plugin::lvm

### Features:

* plugin/rrdcached: Add CollectStatistics option
* plugin/ntpd: Add IncludeUnitID option

### Bugs/Maint:

* Update metadata for more PE versions
* plugin/perl: changed exec in provider 'false' case
* plugin/varnish: package resouce ensure param passed
* plugin/postgresql: add package for redhat systems
* plugin/write_riemann: add package for redhat systems
* plugin/write_http: add package for redhat systems
* plugin/snmp: add package for redhat systems
* plugin/sensors: add package for redhat systems
* plugin/python: add package for redhat systems
* plugin/ping: add package for redhat systems
* plugin/perl: add package for redhat systems
* plugin/nginx: add package for redhat systems
* plugin/mysql: add package for redhat systems
* plugin/iptables: add package for redhat systems
* plugin/curl_json: add package for redhat systems
* plugin/curl: add package for redhat systems
* plugin/amqp: add package for redhat systems
* plugin/bind: add package for redhat systems

## 2014-12-26 Release 3.1.0

### Backwards-incompatible changes:

There are no known backwards compat changes, please add them to the
CHANGELOG if you find one.

### Summary:

This release introduces support for 3 new plugins, new parameters for existing
plugins, bugfixes, doc improvments and basic acceptance tests with beaker.

### New Plugins:

* Add conntrack module
* Add cpufreq plugin
* Add collectd::plugin::zfs_arc

### Features:

* filecount: support all options
* plugin::python introduce ensure parameter
* Make plugins passing the $interval parameter
* Support LogSendErrors on the write_graphite plugin
* curl: fix handling of some parameters
* curl_json: Support reading from a unix socket
* Adding support for WriteQueueLimitLow & WriteQueueLimitHigh, which were added in collectd 5.4

### Bugs/Maint:

* Lintian fixes
* Ensure variable using 'false' will be interpreted.
* Cleaning the now redundant LoadPlugin declaration
* Uses the LoadPlugin syntax with bracket when supported
* Fix Puppet deprecation warning
* Add "" to Hostname
* Double quote the csv plugin DataDir.
* write_http: StoreRates is a bool, not a string
* curl : 'MeasureResponseTime' needs exactly one boolean argument
* Add collectd-apache package needed on RedHat
* Variables in templates should use @-notation

### Tests:

* Basic acceptance test with beaker
* Add rspec test to ensure the bracket syntax is using when available
* Fix travis by using plabs gemfile

### Docs:

* Add conntrack to README.md
* Add cpufreq plugin doc
* README.md: Fixed example entropy snippet.

## 2014-10-04 Release 3.0.1

### Backwards-incompatible changes:

none

### Summary:

Bug fix release

### Features:

* Add support for manually specifying the hostname

### Bugs:

* Add dependency for python plugins
* Set default value of chains to be hash
* Sort snmp data and hosts hash

## 2014-08-25 Release 3.0.0

### Backwards-incompatible changes:

* Make sure plugin_conf_dir is not world readable
* Full rewrite of the network plugin
* Rewrite of postgresql module to allow invocation by defined types

### Summary:

This release adds multiple new plugins and improvements

### Features:

* Varnish plugin improvments
* Add the ability to customize package name.
* Add write_http plugin
* Add statsd plugin
* Add plugin logfile
* Add curl plugin
* Add support for sensors plugin
* Add support for perl plugins
* Allow custom Include directives
* Add valuesabsolute and valuespercentage to df plugin

### Bugs:

* Issue 164: syslog plugin needs to be loaded as first plugin
* notify the collectd service when purging plugins
* add collectd-rrdtool package needed for RedHat
* sort python.conf options hash

## 2014-04-14 Release 2.1.0

### Summary:

This release adds Gentoo osfamily support and minor plugin changes

### Features:

- adding Gentoo support
- tcpconn plugin: $localports and $remoteports can me left undef if $listening is not set
- unixsock plugin: Implement the "DeleteSocket" option.
- add reportreserved parameter for df plugin


## 2014-04-14 Release 2.0.1

### Summary:

Fix issue with metadata.json preventing Forge uploads

## 2014-04-14 Release 2.0.0

### Summary:

This release adds support for several new plugins and contains
some backwards-incompatible code refactors.

### Backwards-incompatible changes:

- Storerates=true is now the default for the Graphite plugin
- Deprecate write_network plugin, use network plugin instead
- Make sure plugin configs are not world readable.
- Handle plugin order with collectd::plugin resource type
  (all collectd plugins config files will be renumbered from
   00-$name.conf to 10-$name.conf)

### Features:

- New plugins CSV, uptime, users, entropy, varnish, redis,
  contextswitch, cpu, nfs, vmem, libvirt
- Add socket parameter to mysql plugin
- Add reportbytes to swap plugin
- Add SeparateInstances setting to write_graphite plugin
- Add metadata.json for Forge search support

### Bugs:

- Fix port parameter quotes in memcached plugin
- Fix collectd conf dir path parameter assignment
- Fix processes plugin configuration
- Force ReportReserved to true in df plugin

## 2014-01-18 Release 1.1.0

### Summary:

This release adds support for new plugins and fixes multiple bugs in
several plugin configurations.

### Features:

- Added load plugin
- Added memory plugin
- Added rrdtool plugin
- Added swap plugin
- Initial version of PostgreSQL plugin
- Add protocol paramter to write_graphite plugin
- add tests for network module
- Support pre-4.7 network configs.

### Bugs:

- Fix bug that always creates notification in exec on empty params
- fix typo in apache plugin manifest
- Make sure that plugins are always loaded before their configuration
- Add version check around emitting Protocol config
- mysql: use double quotes according to version
- Allow for alphanumeric collectd version numbers
- (gh-85) Fix null versioncmp bug in plugin templates
- (gh-69) Fix package name on RedHat

## 2013-12-17 Release 1.0.2

### Summary:

This release adds the AMQP plugin and a collectd version fact.

### Features:

- Add AMQP plugin
- Add class parameter typesdb
- Use collectd::params::root_group instead of fixed group name
- Add collectd version fact

## 2013-12-04 Release 1.0.1

### Summary:

This release introduces Archlinux osfamily support and support for
three new plugins ping, rrdcached, and processes.

### Features:

 - Initial version of rrdcached plugin
 - Add configurable processes plugin
 - Add quotes for string values in network plugin
 - Add ping plugin
 - Add support for Archlinux
 - Allow to set all write_graphite options.

### Bugs:

 - Fixed missing double quotes in unixsock plugin template
 - Added comma to syntax error in bind.pp

## 2013-10-20 Release 1.0.0

### Summary:

This release breaks some backwards compatibility
on some plugins where they improperly used strings instead of
booleans parameters. This release also includes osfamily
support for SUSE and FreeBSB and support for four new plugins.

### Backwards-incompatible changes:

 - Plugins that use to accept strings now use booleans
   for a more consistent interface across the various plugins
 - The main collectd config file now only includes *.conf files
   to allow plugin specific files to be placed in the conf.d
   directory.
 - The mysql plugin now supports multiple databases via the
   collectd::plugin::mysql::database define. This change breaks
   backwards compatiblity on the mysql plugin.

### Features:

 - osfamily support for SUSE
 - osfamily support for FreeBSD
 - tail plugin
 - exec plugin
 - python plugin
 - write_riemann plugin

## 2013-09-27 Release 0.1.0

### Summary:

Add curl_json and apache plugin

### Backwards-incompatible changes:

 - The write_network plugin now accepts a hash of servers

### Features:

 - Add curl_json plugin
 - Added collectd package version parameter
 - Add apache plugin

0.0.5 - pdxcat/collectd - 2013/09/24

  6adca9a add ntpd plugin
  ab55fb4 Added tcpconns plugin and example for it in README
  677ff72 Adding a new generic write_network plugin define
  8cdd8b7 Added memcached plugin and example for it in README
  c3e4a02 Added examples to README for filecount, SNMP and unixsock
  f798c84 Added support for file count plugin
  66f7392 Added support for SNMP and bumped stdlib dependency version to 3.0.0
  7118450 Added support for unix socket plugin
  a062b11 Fixed source URL
  1b214a2 Add testing docs to README

0.0.4 - pdxcat/collectd - 2013/08/26

  9f3f0f6 Add bind plugin to readme
  f052087 Add bind plugin
  fc0c4c1 Add basic rspec-system test
  0b2ec92 Fix README formatting issues
  71dcad0 Add configurable plugins to the README
  72b9f17 Add test for file_line
  7eae468 Add buildstatus to the README
  b2cb208 Add travis.yml file
  8cc16a8 Add purge_config enabled test
  26683f0 Add spec test for collectd class
  3f30650 Add spec helper files
  0bee1d7 Add nginx plugin
  e2d558a Fix network plugin config syntax
  79d8a68 Add network plugin
  c1085d7 Merge pull request #5 from agenticarus/newer-stdlib
  88678bf Depend on newer version of stdlib
  7dd9aaa added colorz to the README
  628ed78 Added configuration for StoreRates and Port.

0.0.3 - pdxcat/collectd - 2013/05/27

  f51660f Fixed test for collectd::plugin::irq
  3019516 Added default field in selector for making syntax checkers happy.
  39859e7 Added stdlib dependency for file_line

0.0.2 - pdxcat/collectd - 2013/05/09

  185e16f Modifications for following puppetlabs style guide and add smoke tests for interface, irq and iptables
  d68275f Added interface, irq and iptables support. Untested though.
  b8312cc Added use of scope.lookupvar, allow configuration of threads and option to choose between hostname and fqdn

0.0.1 - pdxcat/collectd - 2013/02/06

  8c64104 Add interval and timeout parameters
  e48288d Add redhat support to the collectd module.
  b6e3649 Add readme, module, and license files to collectd module.
  fb6b92f Fix bug in collectd::plugin define
  4096cca Add purge_config option to collectd class
  2a2974c Add purge option to collectd class
  8acbef3 Add syslog plugin
  137c919 Add ensure option for collectd::plugin
  3406430 Fix plugins with wrong metaparams
  315af94 Add collectd::plugin define for unconfigured plugins
  c085ebc Change include plugin file to include conf.d
  171bddd Template openvpn plugin and parameterize the class
  09c4df5 Add mysql plugin to collectd.
  36f3465 Add disk plugin to collectd.
  1e27a29 Fix collectd service subscription to conf file.
  15f1ea7 Add Solaris collectd parameters
  c013e73 Add collectd df plugin support
  9cac9c4 Add collectd support.


\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*