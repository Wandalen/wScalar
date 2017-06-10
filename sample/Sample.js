
if( typeof module !== 'undefined' )
{
  require( 'wscalar' );
  // require( '../staging/amath/arithmetic/cScalar.s' );
}

var _ = wTools;
var fract = _.fract( 1.1 );
console.log( 'fract',fract );
