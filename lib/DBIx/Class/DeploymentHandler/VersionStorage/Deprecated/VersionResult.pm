package DBIx::Class::DeploymentHandler::VersionStorage::Deprecated::VersionResult;

# ABSTRACT: (DEPRECATED) The old way to store versions in the database

use strict;
use warnings;

use parent 'DBIx::Class::Core';

__PACKAGE__->table('dbix_class_schema_versions');

__PACKAGE__->add_columns (
   version => {
      data_type         => 'VARCHAR',
      is_nullable       => 0,
      size              => '10'
   },
   installed => {
      data_type         => 'VARCHAR',
      is_nullable       => 0,
      size              => '20'
   },
);

__PACKAGE__->set_primary_key('version');

__PACKAGE__->resultset_class('DBIx::Class::DeploymentHandler::VersionStorage::Deprecated::VersionResultSet');

1;

# vim: ts=2 sw=2 expandtab

__END__

=head1 DEPRECATED

This component has been suplanted by
L<DBIx::Class::DeploymentHandler::VersionStorage::Standard::VersionResult>.
In the next major version (1) we will begin issuing a warning on it's use.
In the major version after that (2) we will remove it entirely.

