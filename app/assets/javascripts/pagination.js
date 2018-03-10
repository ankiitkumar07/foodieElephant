var more_record;

$(document).on('turbolinks:load', function(){
		$(window).on('scroll', function(){
			more_record = $('.pagination a.next_page').attr('href');
			if(more_record && $(window).scrollTop() > $(document).height() - $(window).height() - 100)
			{
				$('.pagination').html("<p>Loading...</p>");
				$('.infi-scroll').css("opacity", 1);
				$.ajax({
					type: "GET",
					url: more_record,
					dataType: 'script',
					success: function(res){ },
					error: function(data){
						console.log("Broken " + data);
					}
				})
			}
		})
})



// jQuery ->
//   if $('.infi-scroll').size() > 0
//     $(window).on 'scroll', ->
//       more_posts_url = $('.pagination .next_page a').attr('href')
//         if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
//             $('.pagination').html('Loading...')
//             $.getScript more_posts_url
//         return
//       return