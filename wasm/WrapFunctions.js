Module['onRuntimeInitialized'] = function ()
{
  Module['add'] = cwrap( 'add', 'number', ['number','number'] );
  Module['hello'] = cwrap( 'hello', 'string', null );
}
