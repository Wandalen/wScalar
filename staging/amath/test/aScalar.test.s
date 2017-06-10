( function _aScalar_test_s_( ) {

'use strict';

if( typeof module !== 'undefined' )
{

  try
  {
    require( '../../abase/wTools.s' );
  }
  catch( err )
  {
    require( 'wTools' );
  }

  var _ = wTools;

  _.include( 'wTesting' );

  require( '../arithmetic/cScalar.s' );

}

//

var _ = wTools.withArray.Float32;
var Parent = wTools.Testing;
_.assert( sqrt );

// --
// test
// --

function fract( test )
{

  test.description = 'simple';

  test.equivalent( _.fract( 1.5 ) , 0.5 );
  test.equivalent( _.fract( 2.1 ) , 0.1 );
  test.equivalent( _.fract( 3.9 ) , 0.9 );
  test.equivalent( _.fract( 4.0 ) , 0.0 );

}

// --
// proto
// --

var Self =
{

  name : 'scalar.test',
  // verbosity : 7,
  // debug : 1,

  tests :
  {

    fract : fract,

  },

};

//

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
_.Testing.test( Self.name );

} )( );
