using Toybox.Application;
using Toybox.Time;
using Toybox.Communications;

class UpdateCount extends Application.AppBase
{
    var temperature = null;

    function initialize() {
        AppBase.initialize();
    }

    function onStart(state) {
    }

    function onStop(state) {
    }

    function getInitialView() {
        return [new UpdateCountView()];
    }

}
