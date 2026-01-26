<?php
$current = basename($_SERVER['PHP_SELF']);
function active($file, $current) {
    return $file === $current ? 'active' : '';
}
?>
<div class="sidebar">
  <div class="brand">
    <div class="logo">CK</div>
    <div>
      <h3>CowKino Admin</h3>
      <p>Manage users & cows</p>
    </div>
  </div>

  <div class="nav">
    <a class="<?= active('dashboard.php', $current) ?>" href="dashboard.php">
      Dashboard <span>›</span>
    </a>
    <a class="<?= active('users.php', $current) ?>" href="users.php">
      Users <span>›</span>
    </a>
    <a class="<?= active('cows.php', $current) ?>" href="cows.php">
      Cows <span>›</span>
    </a>
    <a href="../controller/logout.php">
      Logout <span>›</span>
    </a>
  </div>
</div>
