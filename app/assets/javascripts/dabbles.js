$(document).ready(function(){
	
	$('.dabble_list li').each(function(i,el){
		el = $(el).addClass('js');
	});
	
	$('#registrations_form').each(function(i,el){
		
		input = $($(el).find('input[type="email"]')[0]);
		text = input.data('placeholder');
		
		if(input.val()=='') {
			input.val(text)
		} 
		
		input.bind('focus',function(ev){
			if($(this).val()==$(this).data('placeholder')) {
				$(this).val('')
			}
		});
		
		input.bind('blur',function(ev){
			if($(this).val()=='') {
				$(this).val($(this).data('placeholder'));
			}
		});
		
	});
	
});