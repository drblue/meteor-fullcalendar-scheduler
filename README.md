### [FullCalendar](http://fullcalendar.io/) v2.5.0-beta2 JQuery plugin with premium-plugin Scheduler v1.1, packaged for Meteor v1.0 ###

Fork based on the awesome work of [rzymek](https://github.com/rzymek/) and his repo [rzymek/meteor-fullcalendar/](https://github.com/rzymek/meteor-fullcalendar/).

### Installation ###

    meteor add drblue:fullcalendar

### Usage ###

    {{> fullcalendar }}

Options to FullCalendar can be passed as attributes:

    {{> fullcalendar defaultView='agendaWeek'}}
    
If you want to have options defined in JS (or have them reactive), you can do:

    <template name="example">
        {{>fullcalendar options}}
    </template>

    Template.example.helpers({
        options: function() {
            return {
                defaultView: 'basicWeek'
            };
        }
    });

To access the `.fullcalendar` method assign an `id` or a `class` first

    {{> fullcalendar id="myCalendar" ...}}

Then you can for example do

    $('#myCalendar').fullCalendar('refetchEvents');

### Updating fullcalendar ###

To update fullcalendar version run

    ./update.sh
This will update to the newest fullcalendar's tag.
To update to a specific version do

    ./update.sh 2.2.6

If you want me to publish a new package version just [create an issue](https://github.com/drblue/meteor-fullcalendar/issues/new).
In case you can't wait to use a new fullcalendar version in your project, you can update the package locally:

    cd your_meteor_project
    mkdir -p packages
    git clone https://github.com/drblue/meteor-fullcalendar packages/drblue:fullcalendar
    ./packages/drblue:fullcalendar/update.sh

After the desired version gets published just remove the local package:

    rm -r packages/drblue:fullcalendar
