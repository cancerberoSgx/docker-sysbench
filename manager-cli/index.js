var args = require('yargs').argv
var shell = require('shelljs')


var Tool = function()
{

}
Object.assign(Tool.prototype, {
	dispatchCommand: function(cmd)
	{
		console.log('world', cmd)
	}
})

function mainCommandDispatch()
{
	var cmd = {
		cmd: args.cmd
		, image: args.image
	}
	var tool = new Tool()
	tool.dispatchCommand(cmd)
}

mainCommandDispatch()