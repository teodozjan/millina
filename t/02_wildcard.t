use v6;
use Test;

use Millina::Rect;
use Millina::Wildcard;

plan 2;

my $rect = Millina::Rect.new(x=>[10,10],y=>[10,10]); 
my Millina::Wildcard $w = Millina::Wildcard.new;

ok($w.overlap($rect), 'Millina::Wildcard is everything');
nok($rect.overlap($w), 'Millina::Rectangle is not wildcard');




