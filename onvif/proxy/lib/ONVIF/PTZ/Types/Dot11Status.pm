package ONVIF::PTZ::Types::Dot11Status;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %SSID_of :ATTR(:get<SSID>);
my %BSSID_of :ATTR(:get<BSSID>);
my %PairCipher_of :ATTR(:get<PairCipher>);
my %GroupCipher_of :ATTR(:get<GroupCipher>);
my %SignalStrength_of :ATTR(:get<SignalStrength>);
my %ActiveConfigAlias_of :ATTR(:get<ActiveConfigAlias>);

__PACKAGE__->_factory(
    [ qw(        SSID
        BSSID
        PairCipher
        GroupCipher
        SignalStrength
        ActiveConfigAlias

    ) ],
    {
        'SSID' => \%SSID_of,
        'BSSID' => \%BSSID_of,
        'PairCipher' => \%PairCipher_of,
        'GroupCipher' => \%GroupCipher_of,
        'SignalStrength' => \%SignalStrength_of,
        'ActiveConfigAlias' => \%ActiveConfigAlias_of,
    },
    {
        'SSID' => 'ONVIF::PTZ::Types::Dot11SSIDType',
        'BSSID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PairCipher' => 'ONVIF::PTZ::Types::Dot11Cipher',
        'GroupCipher' => 'ONVIF::PTZ::Types::Dot11Cipher',
        'SignalStrength' => 'ONVIF::PTZ::Types::Dot11SignalStrength',
        'ActiveConfigAlias' => 'ONVIF::PTZ::Types::ReferenceToken',
    },
    {

        'SSID' => 'SSID',
        'BSSID' => 'BSSID',
        'PairCipher' => 'PairCipher',
        'GroupCipher' => 'GroupCipher',
        'SignalStrength' => 'SignalStrength',
        'ActiveConfigAlias' => 'ActiveConfigAlias',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::Dot11Status

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Dot11Status from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SSID


=item * BSSID


=item * PairCipher


=item * GroupCipher


=item * SignalStrength


=item * ActiveConfigAlias




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::Dot11Status
   SSID => $some_value, # Dot11SSIDType
   BSSID =>  $some_value, # string
   PairCipher => $some_value, # Dot11Cipher
   GroupCipher => $some_value, # Dot11Cipher
   SignalStrength => $some_value, # Dot11SignalStrength
   ActiveConfigAlias => $some_value, # ReferenceToken
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
