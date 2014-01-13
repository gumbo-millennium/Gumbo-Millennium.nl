<?php//@skip-indexing?>
<?php include('{T_TEMPLATE_PATH}/menu.php'); ?>
<header id="header">
	<div class="container clearfix">
        <!-- begin logo -->
        <h1 id="logo"><a href="index.php"><img src="{T_TEMPLATE_PATH}/logo.png" alt="Inceptio"></a></h1>
        <!-- end logo -->
    
        <!-- begin navigation wrapper -->
        <div class="nav-wrap clearfix">
    
            <!-- begin search form -->
            <form id="search-form" action="search.php" method="get">
                <input id="s" type="text" name="s" placeholder="Search &hellip;" style="display: none;">
                <input id="search-submit" type="submit" name="search-submit" value="Search">
            </form>
            <!-- end search form -->
    
            <!-- begin navigation -->
            <nav id="nav">
                <?php print_main_menu(); ?>
            </nav>
            <!-- end navigation -->
        </div>
        <!-- end navigation wrapper -->
    </div>
</header>
