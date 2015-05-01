#
# Cookbook Name:: consul
# License:: Apache 2.0
#
# Copyright 2014, 2015 Bloomberg Finance L.P.
#

class Chef::Resource::ConsulConfig < Chef::Resource::LWRPBase
  self.resource_name = :consul_config
  actions(:create, :delete)
  default_action(:create)

  attribute(:path,
    kind_of: String,
    name_attribute: true,
    required: true,
    cannot_be: :empty)
  attribute(:run_user,
    kind_of: String,
    required: true,
    cannot_be: :empty,
    default: 'consul')
  attribute(:run_group,
    kind_of: String,
    required: true,
    cannot_be: :empty,
    default: 'consul')

  # @see: http://www.consul.io/docs/agent/options.html
  attribute(:acl_datacenter,
    kind_of: [String, NilClass])
  attribute(:acl_default_policy,
    kind_of: [String, NilClass])
  attribute(:acl_down_policy,
    kind_of: [String, NilClass])
  attribute(:acl_master_token,
    kind_of: [String, NilClass])
  attribute(:acl_token,
    kind_of: [String, NilClass])
  attribute(:acl_ttl,
    kind_of: [String, NilClass])
  attribute(:addresses,
    kind_of: [Hash, NilClass])
  attribute(:advertise_addr,
    kind_of: [String, NilClass])
  attribute(:bind_addr,
    kind_of: [String, NilClass])
  attribute(:bootstrap,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:bootstrap_expect,
    kind_of: Integer,
    default: 3)
  attribute(:ca_file,
    kind_of: [String, NilClass])
  attribute(:cert_file,
    kind_of: [String, NilClass])
  attribute(:check_update_interval,
    kind_of: [String, NilClass])
  attribute(:client_addr,
    kind_of: [String, NilClass])
  attribute(:data_dir,
    kind_of: [String, NilClass])
  attribute(:datacenter,
    kind_of: [String, NilClass])
  attribute(:disable_anonymous_signature,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:disable_remote_exec,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:disable_update_check,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:dns_config,
    kind_of: [Hash, NilClass])
  attribute(:domain,
    kind_of: [String, NilClass])
  attribute(:enable_debug,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:enable_syslog,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:encrypt,
    kind_of: [String, NilClass])
  attribute(:key_file,
    kind_of: [String, NilClass])
  attribute(:leave_on_terminate,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:log_level,
    kind_of: String,
    default: 'INFO')
  attribute(:node_name,
    kind_of: [String, NilClass])
  attribute(:ports,
    kind_of: [Hash, NilClass])
  attribute(:protocol,
    kind_of: [String, NilClass])
  attribute(:recurser,
    kind_of: [String, NilClass])
  attribute(:retry_interval,
    kind_of: [Integer, NilClass])
  attribute(:server,
    kind_of: [TrueClass, FalseClass],
    default: true)
  attribute(:server_name,
    kind_of: [String, NilClass])
  attribute(:skip_leave_on_interrupt,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:start_join,
    kind_of: [Array, NilClass])
  attribute(:statsd_addr,
    kind_of: [String, NilClass])
   attribute(:statsite_addr,
    kind_of: [String, NilClass])
   attribute(:syslog_facility,
    kind_of: [String, NilClass])
  attribute(:ui_dir,
    kind_of: [String, NilClass])
  attribute(:verify_incoming,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:verify_outgoing,
    kind_of: [TrueClass, FalseClass],
    default: false)
  attribute(:watches,
    kind_of: [Hash, NilClass])
end
