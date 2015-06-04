
<?php
function cc_progress_total() {
  $campaign_total = file_get_contents('http://creativecommons.org/includes/total.txt');

  print $campaign_total;
}

function showTestimonial() { 
	$url = "https://support.creativecommons.org/testimonials";
	$utm = "?utm_source=support&utm_medium=testimonial&utm_campaign=fall2009";
?>

<div id="sidebarTestimonial">
	<h3>Join Jonathan in supporting&nbsp;CC!</h3>
	<p class="quote">
		<a href="<?= $url ?><?= $utm ?>"><img src="https://support.creativecommons.org/images/75/jonathancoulton.jpg" align="left" alt="Jonathan Coulton" border="0" /></a>
		"With Creative Commons, the act of creation becomes not the end, but the beginning of a creative process that links complete strangers together in collaboration"
	</p>
	<p class="source">
		<a href="<?= $url?><?= $utm ?>">&mdash; Jonathan Coulton</a><br/>
		<small>Musician</small><br/>
	</p>
</div>
	<script>jQuery("#sidebarTestimonial").click(function() { window.location="https://support.creativecommons.org/donate<?= $utm ?>"; });</script>
<?php 
	/* end of showTestimonial() */
	return; 
}?>

<?php 
function showThermometer() { 	
	
$utm = "?utm_source=search&utm_medium=thermometer&utm_campaign=fall2009"; ?>

   			<div id="campaign">  
				<div class="progress" onclick="window.location='https://support.creativecommons.org/donate<?= $utm ?>';">
					<span>&nbsp;</span>
				</div>
				<div class="results">
					<a href="https://support.creativecommons.org/donate<?= $utm ?>">
						<?php cc_progress_total() ?> / $500,000 by&nbsp;Dec&nbsp;31 
						<br/>
						<em>Help us reach our goal!</em>
					</a>
				</div>
			</div>

<?php /* end of showThermometer() */ 
	return;
} 

showThermometer();

/*
if (isset($_COOKIE['cc_showtestimonial'])) {
	$showTestimonial = $_COOKIE['cc_showtestimonial'];
} else {
	$showTestimonial = rand(0, 1);
}

if ($showTestimonial) {
	showTestimonial();
} else {
	showThermometer();
}
*/

?>


