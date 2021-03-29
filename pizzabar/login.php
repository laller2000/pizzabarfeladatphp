<h1>Belépés</h1>
<p class="text-danger"><?php echo ($_SESSION["error"]?$_SESSION["error_message"]:""); ?></p>
<form method="post">
  <div class="form-group">
    <label for="InputUserName">Felhasználónév:</label>
    <input type="text" class="form-control"  id="InputUserName" name="InputUserName">
  </div>
  <div class="form-group">
    <label for="InputPassword">Jelszó:</label>
    <input type="password" class="form-control"  id="InputPassword" name="InputPassword">
  </div>
  <button type="submit" class="btn btn-primary">Belépés</button>
  <input type="hidden" name="login" value="true"/>
</form>