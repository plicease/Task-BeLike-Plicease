use strict;
use warnings;
BEGIN { eval q{ use EV; } }
use Test::More tests => 101;
use_ok 'Task::BeLike::Plicease';
require_ok 'AnyEvent';
require_ok 'AnyEvent::Finger';
require_ok 'AnyEvent::Ident';
require_ok 'AnyEvent::Open3::Simple';
require_ok 'AnyEvent::WebSocket::Client';
require_ok 'App::Ack';
require_ok 'App::cpanminus';
require_ok 'App::RegexFileUtils';
require_ok 'Authen::Simple';
require_ok 'Authen::Simple::PlugAuth';
require_ok 'autodie';
require_ok 'Clustericious';
require_ok 'Clustericious::Admin';
require_ok 'Clustericious::Client';
require_ok 'Clustericious::Config';
require_ok 'Clustericious::Log';
require_ok 'Crypt::PasswdMD5';
require_ok 'DBD::mysqlPP';
require_ok 'DBD::PgPP';
require_ok 'DBD::SQLite';
require_ok 'DBI';
require_ok 'Devel::StackTrace';
require_ok 'Digest::MD5';
require_ok 'EV';
require_ok 'File::chdir';
require_ok 'File::IgnoreReadonly';
require_ok 'File::Listing';
require_ok 'File::Listing::Ftpcopy';
require_ok 'File::Touch';
require_ok 'HTTP::Tiny';
require_ok 'IPC::Run';
require_ok 'JSON';
require_ok 'JSON::XS';
require_ok 'Lingua::Alphabet::Phonetic::LAPD';
require_ok 'local::lib';
require_ok 'Log::Log4perl';
require_ok 'Log::Log4perl::Appender::TAP';
require_ok 'Module::CoreList';
require_ok 'Module::Which';
require_ok 'Mojo::JSON::Any';
require_ok 'Mojolicious';
require_ok 'Mojolicious::Plugin::Ident';
require_ok 'Mojolicious::Plugin::RenderFile';
require_ok 'Mojolicious::Plugin::SslAuth';
require_ok 'Mojolicious::Plugin::TtRenderer';
require_ok 'Moose';
require_ok 'Net::DNS';
require_ok 'Number::Bytes::Human';
require_ok 'Perl::Critic';
require_ok 'PlugAuth';
require_ok 'PlugAuth::Client';
require_ok 'PlugAuth::Client::Tiny';
require_ok 'PlugAuth::Lite';
require_ok 'PlugAuth::Plugin::Audit';
require_ok 'PlugAuth::Plugin::AuthenSimple';
require_ok 'PlugAuth::Plugin::DBIAuth';
require_ok 'PlugAuth::Plugin::Finger';
require_ok 'PlugAuth::Plugin::LDAP';
require_ok 'Pod::Perldoc';
require_ok 'Pod::POM::Web';
require_ok 'Role::Tiny';
require_ok 'Rose::DB';
require_ok 'Rose::DB::Object';
require_ok 'Scalar::Does';
require_ok 'Sereal::Decoder';
require_ok 'Sereal::Encoder';
require_ok 'Shell::Config::Generate';
require_ok 'Shell::Guess';
require_ok 'String::Template';
require_ok 'Template';
require_ok 'Template::Tiny';
require_ok 'Test::Clustericious::Cluster';
require_ok 'Test::Differences';
require_ok 'Test::Dir';
require_ok 'Test::EOL';
require_ok 'Test::File';
require_ok 'Test::Fixme';
require_ok 'Test::Memory::Cycle';
require_ok 'Test::NoTabs';
require_ok 'Test::Pod';
require_ok 'Test::Pod::Coverage';
require_ok 'Test::Pod::Spelling::CommonMistakes';
require_ok 'Test::Spelling';
require_ok 'Test::Strict';
require_ok 'Text::Tabs';
require_ok 'TinyMake';
require_ok 'Try::Tiny';
require_ok 'URI';
require_ok 'URI::Encode';
require_ok 'URI::ws';
require_ok 'Validate::Tiny';
require_ok 'WebService::LiveJournal';
require_ok 'WebService::TwitterBootstrap::Download::Custom';
require_ok 'XML::Rabbit';
require_ok 'XML::Simple';
require_ok 'XML::Writer';
require_ok 'YAML';
require_ok 'YAML::XS';
SKIP: {
skip 'MSWin32 not supported for Yars', 1 if $^O eq 'MSWin32';
require_ok 'Yars';
}
require_ok 'Yars::Client';
done_testing;
