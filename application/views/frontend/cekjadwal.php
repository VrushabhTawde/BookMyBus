<!DOCTYPE html>
<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/elements/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Log on to codeastro.com for more projects -->
		<!-- Site Title -->
		<title>BUS TICKET BOOKING</title>
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
		<!--CSS-->
		<?php $this->load->view('frontend/include/base_css'); ?>
	</head>
	<body>
		<!-- navbar -->
		<?php $this->load->view('frontend/include/base_nav'); ?>
		<section class="service-area section-gap relative">
			<div class="overlay overlay-bg"></div>
			<div class="container">
				<div class="row d-flex justify-content-center">
						<div class="col-lg-12">
						<!-- Default Card Example -->
						<div class="card mb-5">
							<div class="card-header">
								<i class="fas fa-list"></i> Departure List
							</div>
							<div class="card-body">
								<div class="table-responsive">
								<table class="table table-bordered table-hover table-striped">
									<thead class="thead-dark">
										<tr>

											<th  style="background-color:#2b6777;"scope="col">Route [Schedule Code]</th>
											<th style="background-color:#2b6777;" >Destination Terminal</th>
											<th style="background-color:#2b6777;" scope="col">Date & Time</th>
											<th style="background-color:#2b6777;" scope="col">Available Seats</th>
											<th style="background-color:#2b6777;" >Price</th>
											<th style="background-color:#2b6777;" scope="col">Action</th>
											<th style="background-color:#2b6777;" scope="col">Total Seats</th>
											<th style="background-color:#2b6777;" scope="col">Percentage</th>
											<th style="background-color:#2b6777;" scope="col">Updated Price</th>
											


										</tr>


									</thead>
									<tbody>
										<?php 
										$seats=23;
										for ($i=0; $i < count($jadwal)  ; $i++) { ?>
										<tr>
											<td><?php echo strtoupper($asal['kota_tujuan'])." - ".strtoupper($jadwal[$i]['kota_tujuan'])." [".$jadwal[$i]['kd_jadwal']."]"; ?></td>
											<td><?php echo $jadwal[$i]['terminal_tujuan'] ?></td>
											<td><?php echo hari_indo(date('N',strtotime($tanggal))).', '.tanggal_indo(date('Y-m-d',strtotime(''.$tanggal.''))).', '.date('H:i',strtotime($jadwal[$i]['jam_berangkat_jadwal'])); ?></td>
											<td><?php echo $jadwal[$i]['kapasitas_bus']-$kursi[$i][0]['count(no_kursi_order)'] ?></td>
											<td>$<?php echo number_format((float)($jadwal[$i]['harga_jadwal']),0,",","."); ?></td>
											<td><a style="border-color:#52ab98; font-weight: 500;" href="<?php echo base_url('tiket/beforebeli/').$jadwal[$i]['kd_jadwal'].'/'.$asal['kd_tujuan'].'/'.$tanggal ?>" class=" btn btn-outline-success">Select</a></td>
											<td><?php echo number_format($seats)?></td> 
											<td><?php $per = ($jadwal[$i]['kapasitas_bus']-$kursi[$i][0]['count(no_kursi_order)']) / $seats;
											 echo $per*100 ;?>%</td>
											 <td>
											<?php 
											
											$actfair=$jadwal[$i]['harga_jadwal'];

											if($per> 0.50) {

												$updprice=$actfair ;

											}

											elseif ($per>0.25 && $per<= 0.50){

												$updprice=$actfair*1.1 ;
											}

											elseif ($per<=0.25 && $per>0.10){
												$updprice=$actfair*1.5 ;
											}

											else{
												$updprice=$actfair;
											}

											echo $updprice;
											?> 
											</td>
										</tr>

										<?php 
										


										
										

										?>
										<?php } ?>
									</tbody>
								</table>
								</div>
								<a  style="background-color:#c8d8e4; color:#f2f2f2"   href="<?php echo base_url('tiket') ?>" class="btn btn pull-left">Go Back </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- Log on to codeastro.com for more projects -->
				<!-- End banner Area -->
				<!-- End Generic Start -->
				<!-- start footer Area -->
				<?php $this->load->view('frontend/include/base_footer'); ?>
				<!-- js -->
				<?php $this->load->view('frontend/include/base_js'); ?>
			</body>
		</html>