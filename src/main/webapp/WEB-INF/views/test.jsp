<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    <link href='resources/main.css' rel='stylesheet' />
    <script src='resources/main.js'></script>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>

    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',
          events: function(info,successCallback, failureCallback){
        	  $.ajax({
         		 type: "post",
          	     url: "/web/infoCalender.do?user_id=1234",
          	     dataType: "json",
          	     success: function(result){
          	    	 console.log(result)
          	    	 var events = [];
          	    	 $.each(result,function(index,obj){
          	    		events.push({
          	    			start : obj.ex_day,
          	    			title : obj.timediff
          	    		})
          	    	 })
          	    	console.log(events);
          	    	successCallback(events);
          	    	 }

         	  });
           },
        	  eventDidMount: function(info) {
        	    if (info.event.extendedProps.status === 'done') {

        	      // Change background color of row
        	      info.el.style.backgroundColor = 'red';

        	      // Change color of dot marker
        	      var dotEl = info.el.getElementsByClassName('fc-event-dot')[0];
        	      if (dotEl) {
        	        dotEl.style.backgroundColor = 'white';
        	      }
        	    }
        	  }
        });
        calendar.render();
      });

    </script>
  </head>
  <body>
    <div id='calendar' onclick = "goFin()">dasd</div>
  </body>
</html>