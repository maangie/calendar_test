# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#calendar').fullCalendar
    lang: 'ja'
    header:
      right: 'agendaDay agendaWeek month today prev next'
    timezone:
      'Asia/Tokyo'
    defaultView:
      'agendaWeek'
    events:
      url:
        'http://www.google.com/calendar/feeds/' +
        'ja.japanese%23holiday%40group.v.calendar.google.com/public/full'
    eventSources: ['/availability/get']
