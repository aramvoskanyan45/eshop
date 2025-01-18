<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h4>View Order</h4>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= base_url('seller/home') ?>">Home</a></li>
                        <li class="breadcrumb-item active">Orders</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <input type="hidden" id="order_id" value="<?= $order_detls[0]['order_id'] ?>">
                <!-- modal for send digital product -->
                <div id="sendMailModal" class="modal fade editSendMail" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg ">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Manage Digital Product</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body ">
                                <form class="form-horizontal form-submit-event" id="digital_product_management" action="<?= base_url('seller/orders/send_digital_product'); ?>" method="POST" enctype="multipart/form-data">
                                    <div class="card-body">
                                        <input type="hidden" name="order_id" value="<?= $order_detls[0]['order_id'] ?>">
                                        <input type="hidden" name="order_item_id" value="<?= $this->input->get('edit_id') ?>">
                                        <input type="hidden" name="username" value="<?= $order_detls[0]['uname']  ?>">
                                        <div class="row form-group">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="product_name">Customer Email-ID </label>
                                                    <input type="text" class="form-control" id="email" name="email" value="<?= $order_detls[0]['user_email'] ?>" readonly>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="product_name">Subject </label>
                                                    <input type="text" class="form-control" id="subject" placeholder="Enter Subject for email" name="subject" value="">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="product_name">Message </label>
                                                    <textarea type="text" class="form-control textarea" rows="6" id="message" placeholder="Message for Email" name="message"><?= isset($product_details[0]['short_description']) ? output_escaping(str_replace('\r\n', '&#13;&#10;', $product_details[0]['short_description'])) : ""; ?></textarea>
                                                </div>
                                            </div>
                                            <div class="col-12 mt-2" id="digital_media_container">
                                                <label for="image" class="ml-2">File <span class='text-danger text-sm'>*</span></label>
                                                <div class='col-md-6'><a class="uploadFile img btn btn-primary text-white btn-sm" data-input='pro_input_file' data-isremovable='1' data-media_type='archive,document' data-is-multiple-uploads-allowed='0' data-toggle="modal" data-target="#media-upload-modal" value="Upload Photo"><i class='fa fa-upload'></i> Upload</a></div>
                                                <div class="container-fluid row image-upload-section">
                                                    <div class="col-md-6 col-12 shadow p-3 mb-5 bg-white rounded m-4 text-center grow image d-none">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-success mt-3" value="Save"><?= labels('send_mail', 'Send Mail') ?></button>
                                    </div>
                                </form>
                            </div>
                            <!-- <div class="d-flex justify-content-center">
                                <div class="form-group" id="error_box">
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card card-info overflow-auto">
                        <div class="card-body">
                            <table class="table">
                                <?php
                                $mobile_data = fetch_details('addresses', ['id' => $order_detls[0]['address_id']], 'mobile');
                                ?>
                                <?php $this->load->model('Order_model'); ?>
                                <tr>
                                    <th class="w-10px">ID</th>
                                    <td><?php echo $order_detls[0]['id']; ?></td>
                                </tr>
                                <tr>
                                    <th class="w-10px">Name</th>
                                    <td><?php echo $order_detls[0]['uname']; ?></td>
                                </tr>
                                <tr>
                                    <th class="w-10px">Email</th>
                                    <td>
                                        <?php if (isset($order_detls[0]['email']) && !empty($order_detls[0]['email']) && $order_detls[0]['email'] != "" && $order_detls[0]['email'] != " ") {
                                            echo ((!defined('ALLOW_MODIFICATION') && ALLOW_MODIFICATION == 0) || ($this->ion_auth->is_seller() && get_seller_permission($seller_id, 'customer_privacy') == false)) ? str_repeat("X", strlen($order_detls[0]['email']) - 3) . substr($order_detls[0]['email'], -3) : $order_detls[0]['email'];
                                        } ?>
                                    </td>
                                </tr>
                                <?php if ($order_detls[0]['mobile'] != '' && isset($order_detls[0]['mobile'])) {
                                ?>
                                    <tr>
                                        <th class="w-10px">Contact</th>
                                        <td><?= (!defined('ALLOW_MODIFICATION') && ALLOW_MODIFICATION == 0)  ? str_repeat("X", strlen($order_detls[0]['mobile']) - 3) . substr($order_detls[0]['mobile'], -3) : $order_detls[0]['mobile']; ?>
                                        </td>
                                    </tr>

                                <?php  } else {
                                ?>
                                    <tr>
                                        <th class="w-10px">Contact</th>
                                        <td><?= (!defined('ALLOW_MODIFICATION') && ALLOW_MODIFICATION == 0)  ? str_repeat("X", strlen($mobile_data[0]['mobile']) - 3) . substr($mobile_data[0]['mobile'], -3) : $mobile_data[0]['mobile']; ?>
                                        </td>
                                    </tr>
                                <?php
                                } ?>

                                <?php
                                if (!empty($order_detls[0]['notes'])) { ?>
                                    <tr>
                                        <th class="w-15px">Order note</th>
                                        <td><?php echo  $order_detls[0]['notes']; ?></td>
                                    </tr>
                                <?php } ?>
                                <tr>
                                    <th class="w-10px"></th>
                                    <?php
                                    $badges = ["draft" => "secondary", "awaiting" => "secondary", "received" => "primary", "processed" => "info", "shipped" => "warning", "delivered" => "success", "returned" => "danger", "cancelled" => "danger", "return_request_approved" => "danger", "return_request_decline" => "danger", "return_request_pending" => "danger"]
                                    ?>
                                    <td>
                                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                            <li class="nav-item mr-2" role="presentation">
                                                <button class="nav-link active btn btn-default " id="order-items-tab" data-toggle="pill" data-target="#order-items" type="button" role="tab" aria-controls="order-items" aria-selected="true">Order Items</button>
                                            </li>
                                            <?php if ($items[0]['product_type'] != "digital_product") { ?>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link btn btn-default " id="pills-shipments-tab" data-toggle="pill" data-target="#pills-shipments" type="button" role="tab" aria-controls="pills-shipments" aria-selected="false">Shipments</button>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                        <div class="tab-content" id="pills-tabContent">
                                            <div class="tab-pane fade show active" id="order-items" role="tabpanel" aria-labelledby="order-items-tab">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">#</th>
                                                            <th scope="col">Name</th>
                                                            <th scope="col">Image</th>
                                                            <th scope="col">Quantity</th>
                                                            <th scope="col">Product Type</th>
                                                            <th scope="col">Variant ID</th>
                                                            <th scope="col">Discounted Price</th>
                                                            <th scope="col">Subtotal</th>
                                                            <th scope="col">Active Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php
                                                        foreach ($items as $index => $item) {
                                                            $is_allow_to_ship_order = true;
                                                            if ($item['active_status'] == 'draft' || $item['active_status'] == 'awaiting') {
                                                                $is_allow_to_ship_order = false;
                                                            }
                                                            $selected = "";
                                                            $item['discounted_price'] = ($item['discounted_price'] == '') ? 0 : $item['discounted_price'];
                                                            $total += $subtotal = ($item['quantity'] != 0 && ($item['discounted_price'] != '' && $item['discounted_price'] > 0) && $item['price'] > $item['discounted_price']) ? ($item['price'] - $item['discounted_price']) : ($item['price'] * $item['quantity']);
                                                            $tax_amount += $item['tax_amount'];
                                                        ?>
                                                            <tr>
                                                                <th scope="row"><?= $index + 1 ?></th>
                                                                <td><a href=" <?= base_url('seller/product/view-product?edit_id=' . $item['product_id'] . '') ?>" title="Click To View Product" target="_blank"><?= $item['pname'] ?></a></td>
                                                                <td><a href='<?= base_url() . $item['product_image'] ?>' class="image-box-100" data-toggle='lightbox' data-gallery='order-images'> <img src='<?= base_url() . $item['product_image'] ?>' alt="<?= $item['pname'] ?>"></a></td>
                                                                <td><?= $item['quantity'] ?></td>
                                                                <td><?= str_replace('_', ' ', $item['product_type']) ?></td>
                                                                <td><?= $item['product_variant_id'] ?></td>
                                                                <td><?= ($item['discounted_price'] == null) ? "0" : $item['discounted_price'] ?></td>
                                                                <td><?= $subtotal ?></td>
                                                                <td><span class="text-uppercase p-1 status-<?= $item['id'] ?> badge badge-<?= $badges[$item['active_status']] ?>"><?= str_replace('_', ' ', ($item['active_status'] == 'draft' ? "awaiting" : $item['active_status'])) ?></span></td>
                                                            </tr>
                                                            <span class="d-none" id="product_variant_id_<?= $item["product_variant_id"] ?>">
                                                                <?= json_encode([
                                                                    "id" => $item["id"],
                                                                    "unit_price" => $item["price"],
                                                                    "quantity" => $item['quantity'],
                                                                    "delivered_quantity" => $item['delivered_quantity'],
                                                                    "active_status" => $item['active_status'],
                                                                ]) ?>
                                                            </span>
                                                            <input type="hidden" class="product_variant_id" name="product_variant_id" value="<?= $item['product_variant_id'] ?>">
                                                            <input type="hidden" class="product_name" name="product_name" value="<?= $item['pname'] ?>">
                                                            <input type="hidden" class="order_item_id" name="order_item_id" value="<?= $item['id'] ?>">
                                                        <?php } ?>
                                                    </tbody>
                                                </table>
                                                <?php if ($item['product_type'] == "digital_product") { ?>
                                                    <select name="status" class="form-control digital_order_status mb-3">
                                                        <option value=''>Select Status</option>
                                                        <option value="received" <?= $item['active_status'] == 'received' ? "selected" : "" ?>>Received</option>
                                                        <option value="delivered" <?= $item['active_status'] == 'delivered' ? "selected" : "" ?>>Delivered</option>
                                                    </select>
                                                    <div class="d-flex justify-content-end">
                                                        <button class="btn btn-primary digital_order_status_update">Submit</button>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                            <?php if ($item['product_type'] != "digital_product") { ?>
                                                <div class="tab-pane fade" id="pills-shipments" role="tabpanel" aria-labelledby="pills-shipments-tab">
                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#create_consignment_modal" onclick="consignmentModal()">Create A Parcel</button>
                                                    <table class='table-striped' data-toggle="table" data-url="<?= base_url('seller/orders/consignment_view') ?>" data-click-to-select="true" data-side-pagination="server" data-pagination="true" data-page-list="[5, 10, 20, 50, 100, 200]" data-search="true" data-show-columns="true" data-show-refresh="true" data-trim-on-search="false" data-sort-name="o.id" data-sort-order="desc" data-mobile-responsive="true" data-toolbar="" data-show-export="true" data-maintain-selected="true" data-export-types='["txt","excel","csv"]' data-export-options='{"fileName": "orders-list","ignoreColumn": ["state"] }' data-query-params="consignment_query_params" id="consignment_table">
                                                        <thead>
                                                            <tr>
                                                                <th data-field="id" data-sortable='true' data-footer-formatter="totalFormatter">ID</th>
                                                                <th data-field="order_id" data-sortable='true'>Order ID</th>
                                                                <th data-field="name" data-sortable='true'>Name</th>
                                                                <th data-field="status" data-sortable='true'>Status</th>
                                                                <th data-field="otp" data-sortable='true'>OTP</th>
                                                                <th data-field="created_date" data-sortable='true'>Created Date</th>
                                                                <th data-field="operate" data-sortable="false">Action</th>
                                                            </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            <?php } ?>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="">
                                    <th class="w-10px">Tax(<?= $settings['currency'] ?>)</th>
                                    <td id='amount'><?php echo $tax_amount; ?></td>
                                </tr>
                                <tr>
                                    <th class="w-10px">Total(<?= $settings['currency'] ?>) </th>
                                    <td id='amount'>
                                        <?php
                                        echo $order_detls[0]['sub_total'] . " (Inclusive of all taxes)";
                                        $total = $order_detls[0]['total_payable'];
                                        ?>
                                    </td>
                                </tr>
                                <?php if (isset($items[0]['product_type']) && $items[0]['product_type'] != 'digital_product') { ?>
                                    <tr>
                                        <th class="w-10px">Delivery Charge(<?= $settings['currency'] ?>)</th>
                                        <td id='delivery_charge'>
                                            <?php echo $order_detls[0]['delivery_charge'];
                                            $total = $total + $order_detls[0]['delivery_charge']; ?>
                                        </td>
                                    </tr>
                                <?php } ?>
                                <tr>
                                    <th class="w-10px">Wallet Balance(<?= $settings['currency'] ?>)</th>
                                    <td><?php echo $order_detls[0]['wallet_balance'];
                                        $total = $total - $order_detls[0]['wallet_balance'];
                                        ?></td>
                                </tr>
                                <input type="hidden" name="total_amount" id="total_amount" value="<?php echo $order_detls[0]['order_total'] + $order_detls[0]['delivery_charge'] ?>">
                                <input type="hidden" name="final_amount" id="final_amount" value="<?php echo $order_detls[0]['final_total']; ?>">
                                <tr>
                                    <th class="w-10px">Promo Code Discount (<?= $settings['currency'] ?>)</th>
                                    <td><?php echo $items[0]['seller_promo_discount'];
                                        $total = floatval($total -
                                            $order_detls[0]['promo_discount']); ?></td>
                                </tr>
                                <?php
                                if (isset($order_detls[0]['discount']) && $order_detls[0]['discount'] > 0) {
                                    $discount = $order_detls[0]['total_payable']  *  ($order_detls[0]['discount'] / 100);
                                    $total = round($order_detls[0]['total_payable'] - $discount, 2);
                                }
                                ?>
                                <tr>
                                    <th class="w-10px">Payable Total(<?= $settings['currency'] ?>)</th>
                                    <td><input type="text" class="form-control" id="final_total" name="final_total" value="<?= number_format($total, 2); ?>" disabled></td>
                                </tr>
                                <tr>
                                    <th class="w-10px">Final Total</th>
                                    <td class="font-weight-bold"><?php echo number_format($total, 2) . " (Inclusive of all taxes & Shipping)" ?></td>
                                </tr>
                                <tr>
                                    <th class="w-10px">Payment Method</th>
                                    <td><?php echo $order_detls[0]['payment_method']; ?></td>
                                </tr>
                                <?php
                                if (!empty($bank_transfer)) { ?>
                                    <tr>
                                        <th class="w-10px">Bank Transfers</th>
                                        <td>
                                            <div class="col-md-6">
                                                <?php $i = 1;
                                                foreach ($bank_transfer as $row1) { ?>
                                                    <small>[<a href="<?= base_url() . $row1['attachments'] ?>" target="_blank">Attachment <?= $i ?> </a>] </small>
                                                    <a class="delete-receipt btn btn-danger btn-xs mr-1 mb-1" title="Delete" href="javascript:void(0)" data-id="<?= $row1['id']; ?>"><i class="fa fa-trash"></i></a>
                                                <?php $i++;
                                                } ?>
                                            </div>
                                        </td>
                                    </tr>
                                <?php } ?>
                                <?php if (isset($items[0]['product_type']) && $items[0]['product_type'] != 'digital_product') { ?>
                                    <tr>
                                        <th class="w-10px">Address</th>
                                        <td><?php echo $order_detls[0]['address']; ?></td>
                                    </tr>
                                    <tr>
                                        <th class="w-10px">Delivery Date & Time</th>
                                        <td><?php echo (!empty($order_detls[0]['delivery_date']) && $order_detls[0]['delivery_date'] != NUll) ? date('d-M-Y', strtotime($order_detls[0]['delivery_date'])) . " - " . $order_detls[0]['delivery_time'] : "Anytime"; ?></td>
                                    </tr>

                                <?php } ?>
                                <tr>
                                    <th class="w-10px">Order Date</th>
                                    <td><?php echo date('d-M-Y', strtotime($order_detls[0]['date_added'])); ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!--/.card-->
                </div>
                <!--/.col-md-12-->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<div class="modal fade" id="ShiprocketOrderFlow" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel">How to manage shiprocket order</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body ">
                <h6><b>Steps:</b></h6>
                <ol>
                    <li> Select Pickup Location for which you want to create parcel and click on <b>Create Shiprocket Order</b> button.</li>
                    <img src="<?= BASE_URL("assets/admin/images/create_order.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <li> After create order generate AWB code(its unique number use for identify order) like this.</li>
                    <img src="<?= BASE_URL("assets/admin/images/generate_awb.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <li> After generate AWB Send pickup request for scheduled you shipping.</li>
                    <img src="<?= BASE_URL("assets/admin/images/send_pickup_request.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <li> Generate and download Label.</li>
                    <img src="<?= BASE_URL("assets/admin/images/generate_label.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <img src="<?= BASE_URL("assets/admin/images/download_label.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <li> Generate and download Invoice.</li>
                    <img src="<?= BASE_URL("assets/admin/images/generate_invoice.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <img src="<?= BASE_URL("assets/admin/images/download_invoice.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <li> Cancel shiprocket order.</li>
                    <img src="<?= BASE_URL("assets/admin/images/cancel_order.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                    <li> shiprocket order traking.</li>
                    <img src="<?= BASE_URL("assets/admin/images/order_tracking.png") ?>" class="img-fluid" alt="Responsive image"><br><br>
                </ol>
            </div>
        </div>
    </div>
</div>
<?php
if ($is_allow_to_ship_order == true) { ?>
    <div class="modal fade" id="create_consignment_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel">Create a Parcel</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="empty_box_body"></div>
                <div class="modal-body" id="modal-body">
                    <div class="input-group flex-nowrap">
                        <span class="input-group-text bg-gradient-light">Parcel Title</span>
                        <input type="text" class="form-control" placeholder="Parcel Title" aria-label="Username" aria-describedby="addon-wrapping" id="consignment_title" required>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Product Varient ID</th>
                                <th scope="col">Order Quantity</th>
                                <th scope="col">Unit Price</th>
                                <th scope="col">Select Items</th>
                            </tr>
                        </thead>
                        <tbody id="product_details">
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-end px-2">
                        <button type="button" class="btn btn-primary" id="ship_parcel_btn">Ship</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>
<div class="modal fade" id="view_consignment_items_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header mb-1">
                <h5 class="modal-title" id="myModalLabel">Parcel Items</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Quantity</th>
                        </tr>
                    </thead>
                    <tbody id="consignment_details">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="consignment_status_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header mb-1">
                <h5 class="modal-title" id="myModalLabel">Update Parcel Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="hidden" name="consignment_id" id="consignment_id">
                <?php if (isset($items[0]['product_type']) && $items[0]['product_type'] != 'digital_product') { ?>
                    <div class="col-md-12 mb-2">
                        <lable class="badge badge-success">Select status <?= get_seller_permission($seller_id, 'assign_delivery_boy') ? 'and delivery boy' : '' ?> which you want to update</lable>
                    </div>
                    <div id="consignment-items-container"></div>
                <?php } ?>
                <ul class="nav nav-pills mb-3 d-block" id="pills-tab" role="tablist">
                    <?php if ($order_detls[0]['is_shiprocket_order'] == 0) { ?>
                        <div class="d-flex justify-content-center align-items-center">
                            <h5 class="text-middle-line" type="button"><span>Local Shipping</span></h5>
                        </div>
                    <?php } else { ?>
                        <div class="d-flex justify-content-center align-items-center">
                            <h5 class="text-middle-line" type="button"><span>Standard Shipping (Shiprocket)</span></h5>
                        </div>
                        <div>
                            <div>
                                <button class="btn my-2 btn-default" type="button" data-toggle="collapse" data-target="#collapseTracking" aria-expanded="false" aria-controls="collapseTracking">
                                    Cancelled Shiprocket Order Details
                                </button>
                                <div class="collapse" id="collapseTracking">
                                    <div class="card card-body">
                                        <div id="tracking_box_old"></div>
                                    </div>
                                </div>
                            </div>
                            <div id="tracking_box"></div>
                        </div>
                        <div class="py-2 manage_shiprocket_box d-none">
                            <p class="m-0">If the Order Status Does Not Change Automatically, Please Click the Refresh Button.</p>
                            <button class="btn btn-outline-danger cancel_shiprocket_order">Cancle Shiprocket Order</button>
                            <button class="btn btn-success refresh_shiprocket_status">Refresh</button>
                        </div>
                    <?php } ?>
                </ul>
                <?php if ($order_detls[0]['is_shiprocket_order'] == 0) { ?>
                    <select name="status" class="form-control consignment_status mb-3">
                        <option value=''>Select Status</option>
                        <option value="received">Received</option>
                        <option value="processed">Processed</option>
                        <option value="shipped">Shipped</option>
                        <option value="delivered">Delivered</option>
                        <!-- <option value="cancelled">Cancel</option> -->
                    </select>
                <?php } ?>
                <div class="tab-content" id="pills-tabContent">
                    <?php if ($order_detls[0]['is_shiprocket_order'] == 0) { ?>
                        <div class="tab-pane fade show active" id="pills-local" role="tabpanel" aria-labelledby="pills-local-tab">
                            <?php
                            if (get_seller_permission($seller_id, 'assign_delivery_boy')) { ?>
                                <select id='deliver_by' name='deliver_by' class='form-control mb-2'>
                                    <option value=''>Select Delivery Boy</option>
                                    <?php foreach ($delivery_res as $row) { ?>
                                        <option value="<?= $row['user_id'] ?>"><?= $row['username'] ?></option>
                                    <?php  } ?>
                                </select>
                            <?php } ?>
                        </div>
                    <?php } else { ?>
                        <div class="tab-pane fade show active" id="pills-standard" role="tabpanel" aria-labelledby="pills-standard-tab">
                            <div class="card card-info shiprocket_order_box">
                                <!-- form start -->
                                <form class="form-horizontal" id="shiprocket_order_parcel_form" action="" method="POST">
                                    <?php
                                    $total_items = count($items);
                                    ?>
                                    <div class="card-body pad">
                                        <div class="form-group">
                                            <input type="hidden" name=" <?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
                                            <input type="hidden" id="order_id" name="order_id" value="<?php print_r($order_detls[0]['id']); ?>" />
                                            <input type="hidden" name="user_id" id="user_id" value="<?php echo $order_detls[0]['user_id']; ?>" />
                                            <input type="hidden" name="total_order_items" id="total_order_items" value="<?php echo $total_items; ?>" />
                                            <input type="hidden" name="shiprocket_seller_id" value="<?= $seller_id ?>" />
                                            <input type="hidden" name="fromseller" value="1" id="fromseller" />
                                            <textarea id="order_items" name="order_items[]" hidden><?= json_encode($items, JSON_FORCE_OBJECT); ?></textarea>
                                            <input type="hidden" name="order_tracking[]" id="order_tracking" value='<?= json_encode($order_tracking); ?>' />
                                            <input type="hidden" name="consignment_data[]" id="consignment_data" />
                                        </div>
                                        <div class="mt-1 p-2 bg-danger text-white rounded">
                                            <p><b>Note:</b> Make your pickup location associated with the order is verified from <a href="https://app.shiprocket.in/company-pickup-location?redirect_url=" target="_blank" class="text-decoration-none text-white"> Shiprocket Dashboard </a> and then in <a href="<?php base_url('admin/Pickup_location/manage-pickup-locations'); ?>" target="_blank" class="text-decoration-none text-white"> admin panel </a>. If it is not verified you will not be able to generate AWB later on.</p>
                                        </div>
                                        <div class="form-group row mt-4">
                                            <div class="col-4">
                                                <label for="txn_amount">Pickup location</label>
                                            </div>
                                            <div class="col-8">
                                                <input type="text" class="form-control" name="pickup_location" id="pickup_location" placeholder="Pickup Location" value="<?= $order_detls[0]['pickup_location'] ?>" readonly />
                                            </div>
                                        </div>
                                        <!-- <div class="form-group row mt-3">
                                            <div class="col-6">
                                                <label for="txn_amount">Total Weight of Box</label>
                                            </div>
                                        </div> -->
                                        <div class="form-group row mt-4">
                                            <div class="col-3">
                                                <label for="parcel_weight" class="control-label col-md-12">Weight <small>(kg)</small> <span class='text-danger text-xs'>*</span></label>
                                                <input type="number" class="form-control" name="parcel_weight" placeholder="Parcel Weight" id="parcel_weight" value="" step=".01">
                                            </div>
                                            <div class="col-3">
                                                <label for="parcel_height" class="control-label col-md-12">Height <small>(cms)</small> <span class='text-danger text-xs'>*</span></label>
                                                <input type="number" class="form-control" name="parcel_height" placeholder="Parcel Height" id="parcel_height" value="" min="1">
                                            </div>
                                            <div class="col-3">
                                                <label for="parcel_breadth" class="control-label col-md-12">Breadth <small>(cms)</small> <span class='text-danger text-xs'>*</span></label>
                                                <input type="number" class="form-control" name="parcel_breadth" placeholder="Parcel Breadth" id="parcel_breadth" value="" min="1">
                                            </div>
                                            <div class="col-3">
                                                <label for="parcel_length" class="control-label col-md-12">Length <small>(cms)</small> <span class='text-danger text-xs'>*</span></label>
                                                <input type="number" class="form-control" name="parcel_length" placeholder="Parcel Length" id="parcel_length" value="" min="1">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-success create_shiprocket_parcel">Create Order</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <?php } ?>
                </div>
                <?php if ($order_detls[0]['is_shiprocket_order'] == 0) { ?>
                    <div class="d-flex justify-content-end p-2">
                        <a href="javascript:void(0);" title="Bulk Update" data-seller_id="" class="btn btn-primary ml-1 consignment_order_status_update">
                            Update
                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" id="transaction_modal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="user_name">Order Tracking</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-info">
                            <!-- form start -->
                            <form class="form-horizontal " id="order_tracking_form" action="<?= base_url('seller/orders/update-order-tracking'); ?>" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="consignment_id">
                                <div class="card-body pad">
                                    <div class="form-group ">
                                        <label for="courier_agency">Courier Agency</label>
                                        <input type="text" class="form-control" name="courier_agency" id="courier_agency" placeholder="Courier Agency" />
                                    </div>
                                    <div class="form-group ">
                                        <label for="tracking_id">Tracking Id</label>
                                        <input type="text" class="form-control" name="tracking_id" id="tracking_id" placeholder="Tracking Id" />
                                    </div>
                                    <div class="form-group ">
                                        <label for="url">URL</label>
                                        <input type="text" class="form-control" name="url" id="url" placeholder="URL" />
                                    </div>
                                    <div class="form-group">
                                        <button type="reset" class="btn btn-warning">Reset</button>
                                        <button type="submit" class="btn btn-success" id="submit_btn">Save</button>
                                    </div>
                                </div>
                                <!-- <div class="d-flex justify-content-center">
                                                    <div class="form-group" id="error_box">
                                                    </div>
                                                </div> -->
                                <!-- /.card-body -->
                            </form>
                        </div>
                        <!--/.card-->
                    </div>
                    <!--/.col-md-12-->
                </div>
                <!-- /.row -->

            </div>
            </form>
        </div>
    </div>
</div>