use strict;
use warnings;
use Test::More tests => 88;
use_ok 'Task::BeLike::Plicease';
require_ok 'AnyEvent';
require_ok 'AnyEvent::Finger';
require_ok 'AnyEvent::Ident';
SKIP: {
skip 'MSWin32 not supported for AnyEvent::Open3::Simple', 1 if $^O eq 'MSWin32';
require_ok 'AnyEvent::Open3::Simple';
}
require_ok 'App::Ack';
require_ok 'App::cpanminus';
require_ok 'App::RegexFileUtils';
require_ok 'Authen::Simple';
require_ok 'Authen::Simple::PlugAuth';
require_ok 'autodie';
SKIP: {
skip 'MSWin32 not supported for Clustericious', 1 if $^O eq 'MSWin32';
require_ok 'Clustericious';
}
require_ok 'Clustericious::Client';
require_ok 'Clustericious::Config';
require_ok 'Clustericious::Log';
require_ok 'Crypt::PasswdMD5';
SKIP: {
skip 'MSWin32 not supported for Data::Downloader', 1 if $^O eq 'MSWin32';
skip 'cygwin not supported for Data::Downloader', 1 if $^O eq 'cygwin';
require_ok 'Data::Downloader';
}
require_ok 'DBD::mysqlPP';
require_ok 'DBD::PgPP';
require_ok 'DBD::SQLite';
require_ok 'DBI';
require_ok 'Devel::StackTrace';
require_ok 'Digest::MD5';
require_ok 'File::chdir';
require_ok 'File::IgnoreReadonly';
require_ok 'File::Listing';
require_ok 'File::Listing::Ftpcopy';
require_ok 'File::Touch';
require_ok 'HTML::Barcode::QRCode';
require_ok 'HTTP::Tiny';
require_ok 'IPC::Run';
require_ok 'JSON';
require_ok 'JSON::XS';
require_ok 'Lingua::Alphabet::Phonetic::LAPD';
require_ok 'local::lib';
require_ok 'Log::Log4perl';
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
require_ok 'PlugAuth::Client::Tiny';
require_ok 'PlugAuth::Lite';
require_ok 'Pod::Perldoc';
require_ok 'Pod::POM::Web';
require_ok 'Role::Tiny';
require_ok 'Rose::DB';
require_ok 'Rose::DB::Object';
require_ok 'Scalar::Does';
require_ok 'Sereal::Decoder';
SKIP: {
skip 'MSWin32 not supported for Sereal::Encoder', 1 if $^O eq 'MSWin32';
require_ok 'Sereal::Encoder';
}
require_ok 'Shell::Config::Generate';
require_ok 'Shell::Guess';
require_ok 'String::Template';
require_ok 'Template';
require_ok 'Template::Tiny';
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
SKIP: {
skip 'cygwin not supported for Test::Strict', 1 if $^O eq 'cygwin';
require_ok 'Test::Strict';
}
require_ok 'TinyMake';
require_ok 'Try::Tiny';
require_ok 'URI';
require_ok 'URI::Encode';
require_ok 'Validate::Tiny';
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
