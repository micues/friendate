/* Inicialització en català per al modul 'timepicker' per jQuery. */
/* Writers: (mcubel@gmail.com). */
jQuery(function($){
	$.timepicker.regional['ca'] = {
		currentText: 'Ara',
		closeText: 'Fet',
		ampm: false,
		timeFormat: 'hh:mm',
		timeSuffix: '',
		timeOnlyTitle: 'Escolleix una hora',
		timeText: 'Temps',
		hourText: 'Hora',
		minuteText: 'Minut',
		secondText: 'Segon',
		timezoneText: 'Zona horaria'	
	};
	$.timepicker.regional['en'] = {
		currentText: 'Now',
		closeText: 'Done',
		ampm: false,
		timeFormat: 'hh:mm tt',
		timeSuffix: '',
		timeOnlyTitle: 'Choose Time',
		timeText: 'Time',
		hourText: 'Hour',
		minuteText: 'Minute',
		secondText: 'Second',
		timezoneText: 'Time Zone'
	};	
	$.timepicker.setDefaults($.timepicker.regional['ca']);
});
