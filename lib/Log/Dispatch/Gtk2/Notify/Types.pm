package Log::Dispatch::Gtk2::Notify::Types;
our $VERSION = '0.01';


use MooseX::Types::Moose qw/Str/;
use Log::Dispatch;

use namespace::clean -except => 'meta';

use MooseX::Types -declare => [qw/
    LogLevel
    Widget
    StatusIcon
    Pixbuf
/];

subtype LogLevel,
    from Str,
    where { Log::Dispatch->level_is_valid($_) },
    message { 'invalid log level' };

class_type Widget,     { class => 'Gtk2::Widget'      };
class_type StatusIcon, { class => 'Gtk2::StatusIcon'  };
class_type Pixbuf,     { class => 'Gtk2::Gdk::Pixbuf' };

1;

__END__

=pod

=head1 NAME

Log::Dispatch::Gtk2::Notify::Types

=head1 VERSION

version 0.01

=head1 AUTHOR

  Florian Ragwitz <rafl@debian.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

=cut 


