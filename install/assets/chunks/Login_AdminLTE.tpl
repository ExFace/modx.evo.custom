/**
 * Login_AdminLTE
 *
 * Login chunk for ExFace AdminLTE template.
 *
 * @category	chunk
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal 	@modx_category ExFace
 * @internal    @overwrite true
 * @internal    @installset base, sample
 */

<!-- #declare:separator <hr> --> 
<!-- login form section-->
<form method="post" name="loginfrm" action="[+action+]"> 
	<input type="hidden" value="[+rememberme+]" name="rememberme" /> 
	<div class="form-group has-feedback">
		<input type="username" name="username" id="username" class="form-control" placeholder="Username" tabindex="1" onkeypress="return webLoginEnter(document.loginfrm.password);" value="[+username+]">
		<span class="fa fa-user form-control-feedback"></span>
	</div>
	<div class="form-group has-feedback">
		<input type="password" class="form-control" placeholder="Password" name="password" id="password" tabindex="2" onkeypress="return webLoginEnter(document.loginfrm.cmdweblogin);" value="">
		<span class="fa fa-lock form-control-feedback"></span>
	</div>
	<div class="row">
		<div class="col-xs-8">
			<div class="checkbox">
				<label>
					<input type="checkbox" id="checkbox_1" name="checkbox_1" tabindex="3" value="" [+checkbox+] onclick="webLoginCheckRemember()">Remember me
				</label>
			</div>
		</div>
		<!-- /.col -->
		<div class="col-xs-4">
			<button type="submit" value="[+logintext+]" name="cmdweblogin" class="btn btn-primary btn-block btn-flat">Log in</button>
		</div>
		<!-- /.col -->
	</div>
</form>
<a href="[(site_url)]/manager" class="pull-right">Log in to app manager</a><br>
<!-- /.login-box-body -->

<hr>
<!-- log out hyperlink section -->
<p class="login-box-msg">You are logged in as [+username+]</p>
<a href="[+action+]" class="btn btn-primary btn-block btn-flat">Log out to switch to another user</a>
<!-- /.login-box -->

<hr>
<!-- Password reminder form section -->
<div class="login-box-body">
	<form name="loginreminder" method="post" action="[+action+]">
		<fieldset>
			<h3>It happens to everyone...</h3>
			<input type="hidden" name="txtpwdrem" value="0" />
			<label for="txtwebemail">Enter the email address of your account to reset your password: <input type="text" name="txtwebemail" id="txtwebemail" size="24" /></label>
			<label>To return to the login form, press the cancel button.</label>
			<input type="submit" value="Submit" name="cmdweblogin" class="button" /> <input type="reset" value="Cancel" name="cmdcancel" onclick="webLoginShowForm(1);" class="button" style="clear:none;display:inline" />
		</fieldset>
	</form>
</div>
<!-- /.login-box-body -->


