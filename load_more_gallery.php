<?php
require('./admin/include/dbcon.php');

$offset = isset($_GET['offset']) ? intval($_GET['offset']) : 0; // Get offset from GET parameter
$query = "SELECT * FROM gallery LIMIT $offset, 1000"; // Fetch all remaining images after the given offset, 1000 is just an arbitrary large number

$query_run = mysqli_query($con, $query);

while ($row = mysqli_fetch_array($query_run)) {
    ?>
    <div class="col-lg-4 col-md-12 mb-4 mb-lg-0 image-item">
        <?php if ($row['image'] != ""): ?>
            <img src="./admin/upload/<?php echo $row['image']; ?>"
                 class="w-100 shadow-1-strong rounded mb-4" alt="Announcement"/>
        <?php else: ?>

        <?php endif ?>
        <div class="card-body">
            <p class="card-text"><?php echo $row['post_mes']; ?></p>
        </div>
    </div>
    <?php
}
?>

