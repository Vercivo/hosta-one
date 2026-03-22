    </div>
</div>

<footer class="footer bg-dark text-white mt-5">
    <div class="container py-4">
        <div class="row">
            <div class="col-md-4">
                <h5>{$companyname}</h5>
                <p class="text-muted">Professional hosting solutions.</p>
            </div>
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="{$WEB_ROOT}/index.php" class="text-muted">Home</a></li>
                    <li><a href="{$WEB_ROOT}/cart.php" class="text-muted">Services</a></li>
                    <li><a href="{$WEB_ROOT}/support.php" class="text-muted">Support</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Support</h5>
                <ul class="list-unstyled">
                    <li><a href="{$WEB_ROOT}/knowledgebase.php" class="text-muted">Knowledge Base</a></li>
                    <li><a href="{$WEB_ROOT}/support.php" class="text-muted">Submit Ticket</a></li>
                </ul>
            </div>
        </div>
        <hr class="bg-secondary">
        <div class="text-center text-muted">
            <small>&copy; {$smarty.now|date_format:"%Y"} {$companyname}. All rights reserved.</small>
        </div>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
