<!-- breadcrumb -->
<div class="content-wrapper deeplink_wrapper">
    <section class="wrapper bg-soft-grape">
        <div class="container py-3 py-md-5">
            <nav class="d-inline-block" aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 bg-transparent">
                    <li class="breadcrumb-item"><a href="<?= base_url() ?>" class="text-decoration-none"><?= !empty($this->lang->line('home')) ? $this->lang->line('home') : 'Home' ?></a></li>
                    <li class="breadcrumb-item"><a href="<?= base_url('my-account/profile') ?>" class="text-decoration-none"><?= !empty($this->lang->line('dashboard')) ? $this->lang->line('dashboard') : 'Dashboard' ?></a></li>
                    <li class="breadcrumb-item active text-muted" aria-current="page"><?= !empty($this->lang->line('support_tickets')) ? $this->lang->line('support_tickets') : 'Support Tickets' ?></li>
                </ol>
            </nav>
            <!-- /nav -->
        </div>
        <!-- /.container -->
    </section>
</div>
<!-- <main> -->
<!-- <section class="container py-5">
        <div class="row">
            <div class="col-md-3 myaccount-navigation py-3">
                <? //php $this->load->view('front-end/' . THEME . '/pages/my-account-sidebar') 
                ?>
            </div> -->
<section class="my-account-section">
    <div class="container mb-15">
        <div class="my-8">
            <?php $this->load->view('front-end/' . THEME . '/pages/dashboard') ?>
        </div>
        <div class="home_faq">
            <div class="align-items-center d-flex flex-wrap justify-content-between">
                <h1 class="h4 m-0"><?= !empty($this->lang->line('support_tickets')) ? $this->lang->line('support_tickets') : 'Support Tickets' ?></h1>
                <button type="submit" class="btn btn-sm btn-primary viewmorebtn ticket_button" value="Save"><?= !empty($this->lang->line('create_a_ticket')) ? $this->lang->line('create_a_ticket') : 'Create a ticket' ?></button>
            </div>
            <hr class="mt-5 mb-5">
            <div class="display_fields col-md-12 d-none">
                <form class="form-horizontal form-submit-event" id="stock_adjustment_form" method="POST" enctype="multipart/form-data">
                    <select class="col-md-12 form-control" name="ticket_type_id">
                        <?php foreach ($ticket_types as $type) {
                            if (isset($product_details[0]['tax']) && $product_details[0]['tax'] == $row['id']) {
                                $selected = 'selected';
                            } else {
                                $selected = '';
                            }
                        ?>
                            <option id='ticket_type' value="<?= $type['id'] ?>" <?= $selected ?>><?= $type['title'] ?></option>
                        <?php
                        } ?>
                    </select>

                    <input type="hidden" class="form-control mt-2" value=<?= $_SESSION['user_id'] ?> name="user_id" id='user_id'>
                    <input type="email" class="form-control mt-2" placeholder="Email" name="email" id='email'>
                    <input type="text" class="form-control mt-2" placeholder="Subject" name="subject" id='subject' required>
                    <textarea name="description" id="description" class="form-control mt-2" placeholder="Description" cols="30" rows="3" required></textarea>

                    <button type="submit" class="btn btn-primary mt-2 ask_question" value="Save"><?= !empty($this->lang->line('send')) ? $this->lang->line('send') : 'Send' ?></button>


                </form>
            </div>
            <div class="card-body">
                <table class='' data-toggle="table" data-url="<?= base_url('tickets/get_ticket_list') ?>" data-click-to-select="true" data-side-pagination="server" data-pagination="true" data-page-list="[5, 10, 20, 50, 100, 200]" data-search="true" data-show-columns="true" data-show-refresh="true" data-trim-on-search="false" data-sort-name="id" data-sort-order="desc" data-mobile-responsive="true" data-toolbar="" data-show-export="true" data-maintain-selected="true" data-query-params="transaction_query_params">
                    <thead class="thead-light">
                        <tr>
                            <th data-field="id" data-sortable="true"><?= !empty($this->lang->line('id')) ? $this->lang->line('id') : 'ID' ?></th>
                            <th data-field="ticket" data-sortable="false"><?= !empty($this->lang->line('ticket')) ? $this->lang->line('ticket') : 'Ticket' ?></th>
                            <th data-field="status" data-sortable="false"><?= !empty($this->lang->line('status')) ? $this->lang->line('status') : 'Status' ?></th>
                            <th data-field="assignee" data-sortable="false"><?= !empty($this->lang->line('assignee')) ? $this->lang->line('assignee') : 'Assignee' ?></th>
                            <th data-field="last_updated" data-sortable="false"><?= !empty($this->lang->line('date')) ? $this->lang->line('date') : 'Date' ?></th>
                            <th data-field="operate" data-sortable="false"><?= !empty($this->lang->line('operate')) ? $this->lang->line('operate') : 'Operate' ?></th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="overflow-auto">

                <?php
                foreach ($tickets as $ticket) {
                    $ticket_type = fetch_details('ticket_types', ['id' => $ticket['ticket_type_id']], 'id,title');
                    $ticket_message = fetch_details('ticket_messages', ['ticket_id' => $ticket['id']], 'ticket_id');
                    $user_type = fetch_details('ticket_messages', ['ticket_id' => $ticket['id']], 'user_type');
                    // print_r($ticket['id']);
                    $test = '';
                    foreach ($user_type as $type) {
                        if ($type['user_type'] != 'user') {
                            $test = ($type['user_type']);
                        }
                    }
                    $count = count($ticket_message);
                    $rs = $this->db->query('select  last_updated from ticket_messages  where ticket_id =' . $ticket['id'] . ' order by last_updated desc');
                    $array = $rs->result_array();
                    // print_r($array[0]);
                    if ($array[0] != '') {

                        $time =  time2str($array[0]['last_updated']);
                    } else {
                        $time = '';
                    }
                ?>

                    <?php
                    $ticket_data = fetch_details('tickets', ['id' => $ticket['id']], '');
                    foreach ($ticket_data as $data) {
                        // print_R($data);
                    ?>

                        <!-- Ticket modal -->
                        <div class="modal fade" id="address-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        <div class="h4">
                                            <?= label('edit_ticket', 'Edit ticket') ?></div>
                                        <form class="form-horizontal form-submit-event" id="stock_adjustment_form" method="POST" enctype="multipart/form-data" action="<?= base_url('tickets/update_ticket'); ?>">
                                            <label class=""><?= label('ticket_type', 'Ticket type') ?></label>
                                            <select class="col-md-12 form-control mt-1 mb-3" name="ticket_type_id">
                                                <?php foreach ($ticket_types as $ticket_type) { ?>

                                                    <option id='ticket_type' value="<?= $ticket_type['id'] ?>" <?= (isset($data['ticket_type_id']) && $data['ticket_type_id'] == $ticket_type['id']) ? 'selected' : "" ?>><?= $ticket_type['title']  ?></option>
                                                <?php } ?>
                                            </select>
                                            <input id="user_id" type="hidden" class="form-control" value=<?= $_SESSION['user_id'] ?> name="user_id">
                                            <?php
                                            $user_name = fetch_details('users', ['id' => $_SESSION['user_id']], 'username');
                                            foreach ($user_name as $uname) { ?>

                                                <input id="user_id" type="hidden" class="form-control" value=<?= $_SESSION['user_id'] ?> name="user_id">
                                                <input type="hidden" class="form-control " value=<?= $uname['username'] ?> name="username" id="username">
                                            <?php } ?>

                                            <label class="" name="email" value="<?= $data['email'] ?>"><?= !empty($this->lang->line('email')) ? $this->lang->line('email') : 'Email' ?> </label>
                                            <input type="text" class="form-control  col-md-12  mt-1 mb-3" placeholder="<?= !empty($this->lang->line('email')) ? $this->lang->line('email') : 'Email' ?>" name="email" value="<?= $data['email'] ?> " id="email_id">

                                            <label class="" name="subject" value="<?= $data['subject'] ?>"><?= !empty($this->lang->line('subject')) ? $this->lang->line('subject') : 'Subject' ?></label>
                                            <input type="text" id="subject_id" class="form-control  col-md-12  mt-1 mb-3" placeholder="<?= !empty($this->lang->line('subject')) ? $this->lang->line('subject') : 'Subject' ?>" name="subject" value="<?= $data['subject'] ?>">

                                            <label class="" name="description" value="<?= $data['description'] ?>"><?= !empty($this->lang->line('description')) ? $this->lang->line('description') : 'Description' ?></label>
                                            <input type="text" id="description_id" class="form-control  col-md-12  mt-1 mb-3" placeholder="<?= !empty($this->lang->line('description')) ? $this->lang->line('description') : 'Description' ?>" name="description" value="<?= $data['description'] ?>">

                                            <input type="hidden" class="form-control " value=<?= $ticket['id'] ?> name="edit_id" id="ticket_id">
                                            <footer class="mt-4">
                                                <button type="submit" class="submit btn btn-sm btn-primary rounded-pill" value="<?= !empty($this->lang->line('save')) ? $this->lang->line('save') : 'Save' ?>"><?= !empty($this->lang->line('update')) ? $this->lang->line('update') : 'Update' ?></button>
                                            </footer>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                <?php }
                } ?>


            </div>
        </div>
    </div>
</section>
<!-- </main> -->