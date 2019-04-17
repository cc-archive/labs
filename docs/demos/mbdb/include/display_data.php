<?php

function display_data_detailed($data) {
	$datacopy = $data;
	while($result = mysql_fetch_array( $datacopy ))	{
		echo "
		
		<table cellpadding='4' cellspacing='1'>
			<tr>
				<td class='database_name' colspan='2'>
				<b><a href='".$result['database_url']."' target='_blank'>".$result['acronym']." - ".$result['name']."</a></b>
				</td>
			</tr>
		";
		if ($result['download_url'] != '' && $result['tou_url'] != '') {
			echo "
				<tr>
					<td class='label'>Links</td>
					<td class='value'>
			";
			if ($result['download_url'] != '' || $result['download_url'] != 'N/A') {
				echo "
						<a href='".$result['download_url']."' target='_blank'>Direct Download</a><br>";
				
			}
			
			if ($result['tou_url'] != '' || $result['tou_url'] != 'N/A') {
				echo "		
						<a href='".$result['tou_url']."' target='_blank'>Terms of Use</a>
				";
			}
			echo "
					</td>
				</tr>
			";
		}
		
		if ($result['tou_extract_ncbi'] == '1') {
		
			$tou_extract = "National Center for Biotechnology Information (NCBI) License";
			echo "
			<tr>
				<td class='label'>Terms of Use Summary</td>
				<td class='value'>".$tou_extract."</td>
			</tr>";
		}
			

		
		$tech_access = '';
		if ($result['technical_openness'] == '1') {
			$tech_access .= "
				<tr>
					<td>Downloadable in Whole?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>YES</td>
				</tr>";
		} else {
			$tech_access .= "
				<tr>
					<td>Downloadable in Whole?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>NO</td>
				</tr>";
		}
		if ($result['technical_limited_openness'] == '1') {
			$tech_access .= "
				<tr>
					<td>Offers Batch Processing?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>YES</td>
				</tr>";	
		} else {
			$tech_access .= "
				<tr>
					<td>Offers Batch Processing?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>NO</td>
				</tr>";
		}
		if ($result['technical_restriction'] == '1') {
			$tech_access .= "
				<tr>
					<td>Offers a Query Interface?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>YES</td>
				</tr>";	
		} else {
			$tech_access .= "
				<tr>
					<td>Offers a Query Interface?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>NO</td>
				</tr>";
		}
		
		if ($result['technical_needs_registration'] == '1') { // NOTE THE VALUE IS NEGATED HERE
			$tech_access .= "
				<tr>
					<td>No Registration Required?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>NO</td>
				</tr>";	
		} else {
			$tech_access .= "
				<tr>
					<td>No Registration Required?</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>YES</td>
					
				</tr>";
		}
		
		if ($tech_access != '') {
			echo "
				<tr>
					<td class='label'>Technical Accessibility</td>
					<td class='value'>
						<table border='0' cellpadding='0' cellspacing='2'>
						".$tech_access."
						</table>
					</td>
				</tr>
			";
		}
		
		$legal_access = '';
		if ($result['legal_policy_avail'] == '1') {
			$legal_access .= "Policy available for use and redistribution of the database<br>";
		} else {
			$legal_access .= "Policy is NOT available for use and redistribution of the database<br>";
		}
		
		
		if ($result['legal_pd'] == '1') {
			$legal_access .= "Public domain<br>";
		}
		/* DEPRECATED - no longer displaying cc terms because they are not recommended for biological databases
		if ($result['legal_by'] == '1') {
			$legal_access .= "Attribution<br>";
		} 
		if ($result['legal_nd'] == '1') {
			$legal_access .= "No Derivatives<br>";
		}
		if ($result['legal_nc'] == '1') {
			$legal_access .= "Non-commercial<br>";
		}
		if ($result['legal_sa'] == '1') {
			$legal_access .= "Share-alike<br>";
		}*/
		// if one is N/C, the rest is all N/C 
		if ($result['legal_pd'] == 'N/C') {
			$legal_access = "No Contract Available<br>";
		}
		

		if ($legal_access != '') {
			echo "
				<tr>
					<td class='label'>Legal Accessibility</td>
					<td class='value'>
						".$legal_access."
					</td>
				</tr>
			";
		}
		
		if ($result['tou_extract_other'] != '') {
			$tou_extract = $result['tou_extract_other'];
		
			echo "
			<tr>
				<td class='label'>Terms of Use Summary</td>
				
				<td class='value'>".$tou_extract."</td>
			</tr>";
		}
		
	
		
		echo "

		</table><br><br>";

	}


}


////////////////////////////////////////////////////////////////////////////////////////////////

function display_data_tabular($data) {

	echo "		
		<table cellpadding='2' cellspacing='3'>
		
			<tr>
				<td rowspan='2' class='top'><b>Acronym</b></td>
				<td colspan='4' class='top'><b>Technical Accessibility</b></td>
				<td colspan='6' class='top'><b>Legal Accessibility</b></td>
			</tr>
			<tr>
				<td class='top'><a href=\"#\" onmouseover=\"Tip('A link is provided to download the whole database, such as an FTP download link.')\" onmouseout=\"UnTip()\"><b>Downloadable</b></a></td>
				<td class='top'><b>Offers Batch Processing</b></td>
				<td class='top'><b>Offers a Query Interface</b></td>
				<td class='top'><b>No Registration Required</b></td>
				
				
				
				<td class='top'><b>Policy is Available</b></td>
				<td class='top'>Public Domain</td>
				
			</tr>
	";
	$datacopy = $data;
	while($result = mysql_fetch_array( $datacopy ))	{
		echo "
			<td class='database_name_tab'>
				<a href='".$result['database_url']."' target='_blank'>".$result['acronym']."</a>
			</td>";
		


		if ($result['technical_openness'] == '1') {
			echo "
				<td class='yes_no'>
					<img src='img/checkmark_small.gif'> <a href='".$result['download_url']."' target='_blank'><img border='2px' src='img/external_link.png'></a>
				</td>";
			
		} else {
			echo "
				<td class='yes_no'>
					&nbsp;
				</td>";
		}
		
		
		
		if ($result['technical_limited_openness'] == '1') {
		// offers batch
			echo "
				<td class='yes_no'>
					<img src='img/checkmark_small.gif'>
				</td class='yes_no'>";
		} else {
			echo "
				<td class='yes_no'>
					&nbsp;
				</td>";
		}
		
		if ($result['technical_restriction'] == '1') {
		// offers query
			echo "
				<td class='yes_no'>
					<img src='img/checkmark_small.gif'>
				</td class='yes_no'>";
		} else {
			echo "
				<td class='yes_no'>
					&nbsp;
				</td>";
		}
		
		if ($result['technical_needs_registration'] == '1') { // NOTE THE VALUE IS NEGATED HERE
		// it answers whether it is FREE of registration instead of whether it NEEDS registration
			echo "
				<td class='yes_no'>
					&nbsp;
				</td>";
		} else {
			echo "
				<td class='yes_no'>
					<img src='img/checkmark_small.gif'>
				</td>";
		}
		
		
		
		if ($result['legal_policy_avail'] == '1') {
			echo "
				<td class='yes_no'>
					<img src='img/checkmark_small.gif'> <a href='".$result['tou_url']."' target='_blank'><img src='img/external_link.png'></a>
				</td>";
		} else {
			echo "
				<td class='yes_no'>
					&nbsp;
				</td>";
		}
		
		if ($result['legal_pd'] == '1') {
			echo "
				<td class='yes_no'>
					<img src='img/checkmark_small.gif'>
				</td>";
		} else {
			echo "
				<td class='yes_no'>
					&nbsp;
				</td>";
		}
		
		/* DEPRECATED - no longer displaying CC terms because they are not recommended for databases
		
		if ($result['legal_by'] == '1') {
			echo "
				<td class='yes_no'>
					<font color='#000080'>YES</font>
				</td class='yes_no'>";
		} else {
			echo "
				<td class='yes_no'>
					<font color='gray'>NO</font>
				</td>";
		}
		if ($result['legal_nd'] == '1') {
			echo "
				<td class='yes_no'>
					<font color='#000080'>YES</font>
				</td class='yes_no'>";
		} else {
			echo "
				<td class='yes_no'>
					<font color='gray'>NO</font>
				</td>";
		}
		if ($result['legal_nc'] == '1') {
			echo "
				<td class='yes_no'>
					<font color='#000080'>YES</font>
				</td class='yes_no'>";
		} else {
			echo "
				<td class='yes_no'>
					<font color='gray'>NO</font>
				</td>";
		}
		if ($result['legal_sa'] == '1') {
			echo "
				<td class='yes_no'>
					<font color='#000080'>YES</font>
				</td class='yes_no'>";
		} else {
			echo "
				<td class='yes_no'>
					<font color='gray'>NO</font>
				</td>";
		}*/

		
	echo "</tr>";	
		

	}
	echo "

		</table><br><br>";


}


?>