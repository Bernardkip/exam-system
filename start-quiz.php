<?php require_once 'templates/header.php';?>
<?php 				
	try {
		$user = new Cl_User();
		$categories = $user->getCategory();
		if(empty($categories)){
			$_SESSION['error'] = NO_CATEGORY;
			header('Location: home.php');exit;
		}
	} catch (Exception $e) {
		$_SESSION['error'] = $e->getMessage();
		header('Location: home.php');exit;
	}
	
?>
	<div class="content">
     	<div class="container">
			
     		<div class="row">
     			
	     		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 start-page">
	     			<h1 class="text_underline">EXAM:Please consider time.success </h1>
					<form class="form-signin well" method="post" id='signin' name="signin" action="questions.php">
						<div class="form-group">
							<select class="form-control" name="category" id="category">
								<option value="">Subject category</option>
								<?php  foreach ($categories as $key=>$category){ ?>
									<option value="<?php echo $key; ?>"><?php echo $category; ?></option>
								<?php } ?>
							</select> 
							<span class="help-block"></span>
						</div>
	
						<div class="form-group">
							<select class="form-control" name="num_questions" id="num_questions">
								<option value="">how many questions are your comfortable with per page?</option>
								<option value="0">select for me</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select> 
							<span class="help-block"></span>
						</div>
	
						<br>
						<button id="start_btn" class="btn btn-success btn-block" type="submit">Begin!!</button>
					</form>
				</div>
	     		
     		</div>
     	</div>
    </div> <!-- /container -->
    
<script src="js/start.js"></script>
<?php require_once 'templates/footer.php';?>
	
