$(document).ready(function(){
	
	$('.dabble_list li').each(function(i,el){
		el = $(el).addClass('js');
	});
	
	$('#new_registration').each(function(i,el){
		
		$(el).find('label').hide();
		
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