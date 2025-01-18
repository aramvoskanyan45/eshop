<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Orders extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper(['url', 'language', 'timezone_helper']);
        $this->load->model('Order_model');
        $this->load->config('eshop');
        $this->data['firebase_project_id'] = get_settings('firebase_project_id');
        $this->data['service_account_file'] = get_settings('service_account_file');
    }

    public function index()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $this->data['main_page'] = TABLES . 'manage-orders';
            $settings = get_settings('system_settings', true);
            $this->data['title'] = 'View Orders | ' . $settings['app_name'];
            $this->data['meta_description'] = ' View Order  | ' . $settings['app_name'];
            $this->data['about_us'] = get_settings('about_us');
            $this->data['curreny'] = get_settings('currency');
            if (isset($_GET['edit_id'])) {
                $order_item_data = fetch_details('order_items', ['id' => $_GET['edit_id']], 'order_id,product_name,user_id');
                $order_data = fetch_details('orders', ['id' => $order_item_data[0]['order_id']], 'email');
                $user_data = fetch_details('users', ['id' => $order_item_data[0]['user_id']], 'username');
                $this->data['fetched'] = $order_data;
                $this->data['order_item_data'] = $order_item_data;
                $this->data['user_data'] = $user_data[0];
                // $this->data['attribute'] = $attribute_value[0]['value'];
            }
            $this->load->view('seller/template', $this->data);
        } else {
            redirect('seller/login', 'refresh');
        }
    }

    public function view_orders()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $deliveryBoyId = $this->ion_auth->get_user_id();
            return $this->Order_model->get_orders_list($deliveryBoyId);
        } else {
            redirect('seller/login', 'refresh');
        }
    }
    public function view_order_items()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $seller_id = $this->ion_auth->get_user_id();
            // print_r($seller_id);
            return $this->Order_model->get_seller_order_items_list(NULL, 0, 10, 'oi.id', 'DESC', $seller_id);
        } else {
            redirect('seller/login', 'refresh');
        }
    }


    public function edit_orders()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {

            $bank_transfer = array();
            $this->data['main_page'] = FORMS . 'edit-orders';
            $settings = get_settings('system_settings', true);

            $this->data['title'] = 'View Order | ' . $settings['app_name'];
            $this->data['meta_description'] = 'View Order | ' . $settings['app_name'];
            $seller_id = $this->session->userdata('user_id');
            $res = $this->Order_model->get_order_details(['o.id' => $_GET['edit_id'], 'oi.seller_id' => $seller_id]);
            if (is_exist(['id' => $res[0]['address_id']], 'addresses')) {
                $area_id = fetch_details('addresses', ['id' => $res[0]['address_id']], 'area_id');
                if (!empty($area_id) && $area_id[0]['area_id'] != 0) {
                    $zipcode_id = fetch_details('areas', ['id' => $area_id[0]['area_id']], 'zipcode_id');
                    if (!empty($zipcode_id)) {
                        $this->data['delivery_res'] = $this->db->where(['ug.group_id' => '3', 'u.active' => 1, 'u.status' => 1])->where('find_in_set(' . $zipcode_id[0]['zipcode_id'] . ', u.serviceable_zipcodes)!=', 0)->join('users_groups ug', 'ug.user_id = u.id')->get('users u')->result_array();
                    } else {
                        $this->data['delivery_res'] = $this->db->where(['ug.group_id' => '3', 'u.active' => 1, 'u.status' => 1])->join('users_groups ug', 'ug.user_id = u.id')->get('users u')->result_array();
                    }
                } else {
                    $this->data['delivery_res'] = $this->db->where(['ug.group_id' => '3', 'u.active' => 1, 'u.status' => 1])->join('users_groups ug', 'ug.user_id = u.id')->get('users u')->result_array();
                }
            } else {
                $this->data['delivery_res'] = $this->db->where(['ug.group_id' => '3', 'u.active' => 1, 'u.status' => 1])->join('users_groups ug', 'ug.user_id = u.id')->get('users u')->result_array();
            }
            if ($res[0]['payment_method'] == "bank_transfer") {
                $bank_transfer = fetch_details('order_bank_transfer', ['order_id' => $res[0]['order_id']]);
            }
            if (isset($_GET['edit_id']) && !empty($_GET['edit_id']) && !empty($res) && is_numeric($_GET['edit_id'])) {
                $items = [];
                foreach ($res as $row) {

                    $multipleWhere = ['seller_id' => $row['seller_id'], 'order_id' => $row['id']];
                    $order_charge_data = $this->db->where($multipleWhere)->get('order_charges')->result_array();

                    $updated_username = fetch_details('users', 'id =' . $row['updated_by'], 'username');
                    $deliver_by = fetch_details('users', 'id =' . $row['delivery_boy_id'], 'username');
                    $temp['id'] = $row['order_item_id'];
                    $temp['product_id'] = $row['product_id'];
                    $temp['item_otp'] = $row['item_otp'];
                    $temp['tracking_id'] = $row['tracking_id'];
                    $temp['courier_agency'] = $row['courier_agency'];
                    $temp['url'] = $row['url'];
                    $temp['product_variant_id'] = $row['product_variant_id'];
                    $temp['product_type'] = $row['type'];
                    $temp['pname'] = $row['pname'];
                    $temp['quantity'] = $row['quantity'];
                    $temp['is_cancelable'] = $row['is_cancelable'];
                    $temp['is_returnable'] = $row['is_returnable'];
                    $temp['tax_amount'] = $row['tax_amount'];
                    $temp['discounted_price'] = $row['discounted_price'];
                    $temp['price'] = $row['price'];
                    $temp['row_price'] = $row['row_price'];
                    $temp['active_status'] = $row['oi_active_status'];
                    $temp['updated_by'] = $updated_username[0]['username'];
                    $temp['deliver_by'] = $deliver_by[0]['username'];
                    $temp['product_image'] = $row['product_image'];
                    $temp['product_variants'] = get_variants_values_by_id($row['product_variant_id']);
                    $temp['product_type'] = $row['type'];
                    $temp['seller_otp'] = $order_charge_data[0]['otp'];
                    $temp['seller_delivery_charge'] = $order_charge_data[0]['delivery_charge'];
                    $temp['seller_promo_discount'] = $order_charge_data[0]['promo_discount'];
                    $temp['download_allowed'] = $row['download_allowed'];
                    $temp['is_sent'] = $row['is_sent'];
                    $temp['seller_id'] = $row['seller_id'];
                    $temp['user_email'] = $row['user_email'];
                    $temp['pickup_location'] = $row['pickup_location'];
                    $temp['product_slug'] = $row['product_slug'];
                    $temp['sku'] = isset($row['product_sku']) && !empty($row['product_sku']) ? $row['product_sku'] : $row['sku'];
                    $temp['delivered_quantity'] = isset($row['delivered_quantity']) && !empty($row['delivered_quantity']) ? $row['delivered_quantity'] : $row['delivered_quantity'];

                    array_push($items, $temp);
                }
                $total_order_items = $this->db->select('COUNT(DISTINCT(order_items.id)) as total')->from('order_items')->where('order_id', $res[0]['order_id'])->get()->result_array();
                $items_count = count($res);
                $total_order_items = $total_order_items[0]['total'] > 0 ? $total_order_items[0]['total'] : 1;
                $res[0]['delivery_charge'] = $res[0]['delivery_charge'] / $total_order_items * $items_count;

                if ($res[0]['sub_total'] > 0 && $res[0]['order_total'] > 0) {
                    $total_discount_percentage = calculatePercentage(part: $res[0]['sub_total'], total: $res[0]['order_total']);
                }

                $promo_discount = $order_items[0]['promo_discount'] ?? 0;

                $wallet_balance = $order_items[0]['wallet_balance'] ?? 0;
                if ($promo_discount != 0) {
                    $promo_discount = calculatePrice($total_discount_percentage, $promo_discount);
                }
                if ($wallet_balance != 0) {
                    $wallet_balance = calculatePrice($total_discount_percentage, $wallet_balance);
                }
                $res[0]['wallet_balance'] = $wallet_balance;
                $res[0]['promo_discount'] = $promo_discount;

                $this->data['order_detls'] = $res;
                $this->data['order_tracking'] = fetch_details('order_tracking', ['order_id' => $_GET['edit_id']]);
                $this->data['bank_transfer'] = $bank_transfer;
                $this->data['items'] = $items;
                $this->data['seller_id'] = $seller_id;
                $this->data['settings'] = get_settings('system_settings', true);
                $this->data['shipping_method'] = get_settings('shipping_method', true);
                $this->load->view('seller/template', $this->data);
            } else {
                redirect('seller/orders/', 'refresh');
            }
        } else {
            redirect('seller/login', 'refresh');
        }
    }

    public function consignment_view()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $order_id = $this->input->get('order_id', true);
            $seller_id = $this->ion_auth->get_user_id();
            return $this->Order_model->consignment_view($order_id, $seller_id);
        } else {
            redirect('seller/login', 'refresh');
        }
    }

    function delete_consignment()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $this->form_validation->set_rules('id', 'ID', 'trim|required|xss_clean');
            if (!$this->form_validation->run()) {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = validation_errors();
                print_r(json_encode($this->response));
            } else {
                $consignment_id = $this->input->post('id', true);
                $res = delete_consignment($consignment_id);
                if ($res['error'] == false) {
                    $this->response['error'] = $res['error'];
                    $this->response['message'] = $res['message'];
                    $this->response['data'] = $res['data'];
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    return print_r(json_encode($this->response));
                }
                $this->response['error'] = $res['error'];
                $this->response['message'] = $res['message'];
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                return print_r(json_encode($this->response));
            }
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    function update_order_mail_status()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $order_item_id = $this->input->post('order_item_id', true);
            $status = $this->input->post('status', true);

            if (update_details(['is_sent' => $status], ['id' => $order_item_id], 'order_items')) {
                $this->response['error'] = false;
                $this->response['message'] = 'Status Updated Successfully';
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['data'] = array();
                print_r(json_encode($this->response));
                return false;
            } else {
                $this->response['error'] = true;
                $this->response['message'] = 'Status not Updated Successfully';
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['data'] = array();
                print_r(json_encode($this->response));
                return false;
            }
        } else {
            $this->response['error'] = true;
            $this->response['message'] = 'Unauthorized access not allowed!';
            $this->response['csrfName'] = $this->security->get_csrf_token_name();
            $this->response['csrfHash'] = $this->security->get_csrf_hash();
            $this->response['data'] = array();
            print_r(json_encode($this->response));
            return false;
        }
    }

    public function update_order_status()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $seller_id = $this->ion_auth->get_user_id();
            if (isset($_POST['type']) && $_POST['type'] == "digital") {
                $this->form_validation->set_rules('order_id', 'Order Id', 'trim|required|xss_clean');
                $this->form_validation->set_rules('status', 'Status', 'trim|required|xss_clean');
                if (!$this->form_validation->run()) {
                    $this->response['error'] = true;
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    $this->response['message'] = validation_errors();
                    return print_r(json_encode($this->response));
                } else {
                    $order_id = $this->input->post('order_id', true);
                    $status = $this->input->post('status', true);
                    $order_details = fetch_orders(order_id: $order_id, seller_id: $seller_id);
                    if (empty($order_details['order_data'])) {
                        $this->response['error'] = true;
                        $this->response['message'] = "Order Not Found";
                        $this->response['csrfName'] = $this->security->get_csrf_token_name();
                        $this->response['csrfHash'] = $this->security->get_csrf_hash();
                        return print_r(json_encode($this->response));
                    }
                    $order_details = $order_details['order_data'];
                    $user_id = $order_details['user_id'];
                    $awaitingPresent = false;
                    foreach ($order_details[0]['order_items'] as $item) {
                        if ($item['active_status'] === 'awaiting') {
                            $awaitingPresent = true;
                            break;
                        }
                        if ($status != 'received' && $status != 'delivered') {
                            $this->response['error'] = true;
                            $this->response['message'] = "Invalid Status Pass";
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        }
                        if ($item['active_status'] == $status) {
                            $this->response['error'] = true;
                            $this->response['message'] = "One Of This Product Already Marked As " . $status . ".";
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        }
                        if ($item['active_status'] == 'delivered' && $status != 'delivered') {
                            $this->response['error'] = true;
                            $this->response['message'] = "Order Item is Delivered. You Can't Change It Again To " .  $status . ".";
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        }
                    }

                    if ($awaitingPresent) {
                        $this->response['error'] = true;
                        $this->response['message'] = "You Can Not Change Status Of Awaiting Order ! please confirm the order first.";
                        $this->response['csrfName'] = $this->security->get_csrf_token_name();
                        $this->response['csrfHash'] = $this->security->get_csrf_hash();
                        $this->response['data'] = array();
                        print_r(json_encode($this->response));
                        return false;
                    } else {
                        if ($order_details[0]['payment_method'] == 'Bank Transfer') {
                            $bank_receipt = fetch_details('order_bank_transfer', ['order_id' => $order_id]);
                            $transaction_status = fetch_details('transactions', ['order_id' => $order_id], 'status');

                            if (empty($bank_receipt) || strtolower($transaction_status[0]['status']) != 'success' || $bank_receipt[0]['status'] == "0" || $bank_receipt[0]['status'] == "1") {
                                $this->response['error'] = true;
                                $this->response['message'] = "Order item status can not update, Bank verification is remain from transactions for this order.";
                                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                                $this->response['data'] = array();
                                print_r(json_encode($this->response));
                                return false;
                            }
                        }
                        foreach ($order_details[0]['order_items'] as $item) {
                            if ($this->Order_model->update_order(['status' => $status], ['id' => $item['id']], true, 'order_items', is_digital_product: 1)) {
                                $this->Order_model->update_order(['active_status' => $status], ['id' => $item['id']], false, 'order_items', is_digital_product: 1);
                                //Update login id in order_item table
                                update_details(['updated_by' => $seller_id], ['order_id' => $order_id, 'seller_id' => $seller_id], 'order_items');
                                $settings = get_settings('system_settings', true);
                                $app_name = isset($settings['app_name']) && !empty($settings['app_name']) ? $settings['app_name'] : '';
                                $user_res = fetch_details('users', ['id' => $user_id], 'username,fcm_id,mobile,email');
                                $fcm_ids = array();
                                //custom message
                                if (!empty($user_res[0]['fcm_id'])) {
                                    if ($status == 'received') {
                                        $type = ['type' => "customer_order_received"];
                                    } elseif ($status == 'processed') {
                                        $type = ['type' => "customer_order_processed"];
                                    } elseif ($status == 'shipped') {
                                        $type = ['type' => "customer_order_shipped"];
                                    } elseif ($status == 'delivered') {
                                        $type = ['type' => "customer_order_delivered"];
                                    } elseif ($status == 'cancelled') {
                                        $type = ['type' => "customer_order_cancelled"];
                                    } elseif ($status == 'returned') {
                                        $type = ['type' => "customer_order_returned"];
                                    }
                                    $custom_notification = fetch_details('custom_notifications', $type, '');
                                    $hashtag_cutomer_name = '< cutomer_name >';
                                    $hashtag_order_id = '< order_item_id >';
                                    $hashtag_application_name = '< application_name >';
                                    $string = json_encode($custom_notification[0]['message'], JSON_UNESCAPED_UNICODE);
                                    $hashtag = html_entity_decode($string);
                                    $data = str_replace(array($hashtag_cutomer_name, $hashtag_order_id, $hashtag_application_name), array($user_res[0]['username'], $order_id, $app_name), $hashtag);
                                    $message = output_escaping(trim($data, '"'));
                                    $customer_msg = (!empty($custom_notification)) ? $message :  'Hello Dear ' . $user_res[0]['username'] . 'Order status updated to' . $_POST['val'] . ' for order ID #' . $order_id . ' please take note of it! Thank you. Regards ' . $app_name . '';
                                    $fcmMsg = array(
                                        'title' => (!empty($custom_notification)) ? $custom_notification[0]['title'] : "Order status updated",
                                        'body' => $customer_msg,
                                        'type' => "order"
                                    );
                                    notify_event(
                                        $type['type'],
                                        ["customer" => [$user_res[0]['email']]],
                                        ["customer" => [$user_res[0]['mobile']]],
                                        ["orders.id" => $order_id]
                                    );

                                    $fcm_ids[0][] = $user_res[0]['fcm_id'];
                                    if (isset($firebase_project_id) && isset($service_account_file) && !empty($firebase_project_id) && !empty($service_account_file)) {
                                        send_notification($fcmMsg, $fcm_ids, $fcmMsg);
                                    }
                                }
                            }
                            $this->response['error'] = false;
                            $this->response['message'] = 'Status Updated Successfully';
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = [];
                            print_r(json_encode($this->response));
                            return false;
                        }
                    }
                }
            } else {
                $this->form_validation->set_rules('consignment_id', 'Consignment Id', 'trim|required|xss_clean');
                $this->form_validation->set_rules('status', 'Status', 'trim|required|xss_clean');
                $this->form_validation->set_rules('deliver_by', 'deliver Boy', 'trim|xss_clean');
                if (!$this->form_validation->run()) {
                    $this->response['error'] = true;
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    $this->response['message'] = validation_errors();
                    print_r(json_encode($this->response));
                } else {
                    $consignment_id =  $this->input->post('consignment_id', true);
                    $consignment = fetch_details('consignments', ['id' => $consignment_id], '*');
                    if (empty($consignment)) {
                        $this->response['error'] = true;
                        $this->response['message'] = "Consignment Not Found.";
                        $this->response['csrfName'] = $this->security->get_csrf_token_name();
                        $this->response['csrfHash'] = $this->security->get_csrf_hash();
                        $this->response['data'] = array();
                        print_r(json_encode($this->response));
                        return false;
                    }
                    $consignment_items = fetch_details('consignment_items', ['consignment_id' => $consignment[0]['id']], '*');
                    $order_id = $consignment[0]['order_id'];
                    $order_item_data = fetch_details('order_items', ['order_id' => $order_id], '*');
                    if (empty($order_item_data)) {
                        $this->response['error'] = true;
                        $this->response['message'] = "Order Item Not Found.";
                        $this->response['csrfName'] = $this->security->get_csrf_token_name();
                        $this->response['csrfHash'] = $this->security->get_csrf_hash();
                        $this->response['data'] = array();
                        print_r(json_encode($this->response));
                        return false;
                    }

                    // validate delivery boy when status is processed
                    $user_id = $order_item_data[0]['user_id'];
                    $delivery_boy_updated = 0;
                    $message = '';
                    $delivery_boy_id = (isset($_POST['deliver_by']) && !empty(trim($_POST['deliver_by']))) ? $this->input->post('deliver_by', true) : 0;
                    $status  = $this->input->post('status', true);
                    if (isset($status) && !empty($status) && $status == 'processed') {
                        if (!isset($delivery_boy_id) || empty($delivery_boy_id) || $delivery_boy_id == 0) {
                            $this->response['error'] = true;
                            $this->response['message'] = "Please select delivery boy to mark this order as processed.";
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        }
                    }

                    // validate delivery boy when status is shipped
                    if (isset($status) && !empty($status) && $status == 'shipped') {
                        if ((!isset($order_item_data[0]['delivery_boy_id']) || empty($order_item_data[0]['delivery_boy_id']) || $order_item_data[0]['delivery_boy_id'] == 0) && (empty($_POST['deliver_by']) || $_POST['deliver_by'] == '')) {
                            $this->response['error'] = true;
                            $this->response['message'] = "Please select delivery boy to mark this order as shipped.";
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        }
                    }
                    $awaitingPresent = false;
                    foreach ($consignment as $item) {
                        if ($item['active_status'] === 'awaiting') {
                            $awaitingPresent = true;
                            break;
                        }
                    }
                    if (!empty($delivery_boy_id)) {
                        if ($awaitingPresent) {
                            $this->response['error'] = true;
                            $this->response['message'] = "You Can Not Change Status Of Awaiting Order ! please confirm the order first.";
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        } else {
                            $delivery_boy = fetch_details('users', ['id' => trim($delivery_boy_id)], '*');
                            if (empty($delivery_boy)) {
                                $this->response['error'] = true;
                                $this->response['message'] = "Invalid Delivery Boy";
                                $this->response['data'] = array();
                                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                                print_r(json_encode($this->response));
                                return false;
                            } else {
                                $current_delivery_boy = fetch_details('consignments', ['id', $consignment_id],  '*');
                                $settings = get_settings('system_settings', true);
                                $app_name = isset($settings['app_name']) && !empty($settings['app_name']) ? $settings['app_name'] : '';
                                $firebase_project_id = $this->data['firebase_project_id'];
                                $service_account_file = $this->data['service_account_file'];
                                if (isset($current_delivery_boys[0]['delivery_boy_id']) && !empty($current_delivery_boys[0]['delivery_boy_id'])) {
                                    $user_res = fetch_details('users', ['id', $current_delivery_boys[0]['delivery_boy_id']],  'fcm_id,username,email,mobile');
                                } else {
                                    $user_res = fetch_details('users', ['id' => $delivery_boy_id], 'fcm_id,username');
                                }
                                $fcm_ids = array();
                                //custom message
                                if (isset($user_res[0]) && !empty($user_res[0])) {
                                    if ($status == 'received') {
                                        $type = ['type' => "customer_order_received"];
                                    } elseif ($status == 'processed') {
                                        $type = ['type' => "customer_order_processed"];
                                    } elseif ($status == 'shipped') {
                                        $type = ['type' => "customer_order_shipped"];
                                    } elseif ($status == 'delivered') {
                                        $type = ['type' => "customer_order_delivered"];
                                    } elseif ($status == 'cancelled') {
                                        $type = ['type' => "customer_order_cancelled"];
                                    } elseif ($status == 'returned') {
                                        $type = ['type' => "customer_order_returned"];
                                    }
                                    $custom_notification = fetch_details('custom_notifications', $type, '');
                                    $hashtag_cutomer_name = '< cutomer_name >';
                                    $hashtag_order_id = '< order_item_id >';
                                    $hashtag_application_name = '< application_name >';
                                    $string = json_encode($custom_notification[0]['message'], JSON_UNESCAPED_UNICODE);
                                    $hashtag = html_entity_decode($string);
                                    $data = str_replace(array($hashtag_cutomer_name, $hashtag_order_id, $hashtag_application_name), array($user_res[0]['username'], $order_id, $app_name), $hashtag);
                                    $message = output_escaping(trim($data, '"'));
                                    if (!empty($current_delivery_boy[0]) && count($current_delivery_boy) > 1) {
                                        for ($i = 0; $i < count($current_delivery_boy); $i++) {
                                            $customer_msg = (!empty($custom_notification)) ? $message :  'Hello Dear ' . $user_res[$i]['username'] . 'Order status updated to' . $_POST['val'] . ' for order ID #' . $order_id . ' please take note of it! Thank you. Regards ' . $app_name . '';
                                            $fcmMsg = array(
                                                'title' => (!empty($custom_notification)) ? $custom_notification[0]['title'] : "Order status updated",
                                                'body' => $customer_msg,
                                                'type' => "order",
                                                'order_id' => $order_id,
                                            );
                                            if (!empty($user_res[$i]['fcm_id'])) {
                                                $fcm_ids[0][] = $user_res[$i]['fcm_id'];
                                            }
                                            try {
                                                notify_event(
                                                    $type['type'],
                                                    ["delivery_boy" => [$user_res[0]['email']]],
                                                    ["delivery_boy" => [$user_res[0]['mobile']]],
                                                    ["orders.id" => $order_id]
                                                );
                                            } catch (\Throwable $th) {
                                            }
                                        }
                                        $message = 'Delivery Boy Updated.';
                                        $delivery_boy_updated = 1;
                                    } else {
                                        if (isset($current_delivery_boys[0]['delivery_boy_id']) && $current_delivery_boys[0]['delivery_boy_id'] == $_POST['deliver_by']) {
                                            $customer_msg = (!empty($custom_notification)) ? $message :  'Hello Dear ' . $user_res[0]['username'] . 'Order status updated to' . $_POST['val'] . ' for order ID #' . $order_id . '  please take note of it! Thank you. Regards ' . $app_name . '';
                                            $fcmMsg = array(
                                                'title' => (!empty($custom_notification)) ? $custom_notification[0]['title'] : "Order status updated",
                                                'body' => $customer_msg,
                                                'type' => "order",
                                                'order_id' => $order_id,
                                            );
                                            try {
                                                notify_event(
                                                    $type['type'],
                                                    ["delivery_boy" => [$user_res[0]['email']]],
                                                    ["delivery_boy" => [$user_res[0]['mobile']]],
                                                    ["orders.id" => $order_id]
                                                );
                                            } catch (\Throwable $th) {
                                            }
                                            $message = 'Delivery Boy Updated';
                                            $delivery_boy_updated = 1;
                                        } else {
                                            $custom_notification =  fetch_details('custom_notifications',  ['type' => "delivery_boy_order_deliver"], '');
                                            $customer_msg = (!empty($custom_notification)) ? $message : 'Hello Dear ' . $user_res[0]['username'] . 'you have new order to be deliver order ID #' . $order_id . ' please take note of it! Thank you. Regards ' . $app_name . '';
                                            $fcmMsg = array(
                                                'title' => (!empty($custom_notification)) ? $custom_notification[0]['title'] : "You have new order to deliver",
                                                'body' =>  $customer_msg,
                                                'type' => "order",
                                                'order_id' => (string)$order_id,
                                            );
                                            try {
                                                notify_event(
                                                    $type['type'],
                                                    ["delivery_boy" => [$user_res[0]['email']]],
                                                    ["delivery_boy" => [$user_res[0]['mobile']]],
                                                    ["orders.id" => $order_id]
                                                );
                                            } catch (\Throwable $th) {
                                            }
                                            $message = 'Delivery Boy Updated.';
                                            $delivery_boy_updated = 1;
                                        }
                                        if (!empty($user_res[0]['fcm_id'])) {
                                            $fcm_ids[0][] = $user_res[0]['fcm_id'];
                                        }
                                    }
                                }
                                if (!empty($fcm_ids) && isset($firebase_project_id) && isset($service_account_file) && !empty($firebase_project_id) && !empty($service_account_file)) {
                                    send_notification($fcmMsg, $fcm_ids, $fcmMsg);
                                }
                                if ($this->Order_model->update_order(['delivery_boy_id' => $delivery_boy_id], ['id' => $consignment_id], false, 'consignments')) {
                                    foreach ($consignment_items as $item) {
                                        $res = $this->Order_model->update_order(['delivery_boy_id' => $delivery_boy_id], ['id' => $item['order_item_id']], false, 'order_items');
                                    }
                                    $delivery_error = false;
                                }
                            }
                        }
                    }

                    if (isset($status) && !empty($status) && $status != '') {
                        $res = validate_order_status($consignment_id, $status, 'consignments');

                        if ($res['error']) {
                            $this->response['error'] = $delivery_boy_updated == 1 ? false : true;
                            $this->response['message'] = (isset($_POST['status']) && !empty($_POST['status'])) ? $message . $res['message'] :  $message;
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        }
                    }
                    // for ($j = 0; $j < count($consignment); $j++) {
                    /* velidate bank transfer method status */
                    $order_method = fetch_details('orders', ['id' => $order_id], 'payment_method');

                    if ($order_method[0]['payment_method'] == 'bank_transfer') {
                        $bank_receipt = fetch_details('order_bank_transfer', ['order_id' => $order_id]);
                        $transaction_status = fetch_details('transactions', ['order_id' => $order_id], 'status');
                        if (empty($bank_receipt) || strtolower($transaction_status[0]['status']) != 'success' || $bank_receipt[0]['status'] == "0" || $bank_receipt[0]['status'] == "1") {
                            $this->response['error'] = true;
                            $this->response['message'] = "Order item status can not update, Bank verification is remain from transactions for this order.";
                            $this->response['csrfName'] = $this->security->get_csrf_token_name();
                            $this->response['csrfHash'] = $this->security->get_csrf_hash();
                            $this->response['data'] = array();
                            print_r(json_encode($this->response));
                            return false;
                        }
                    }
                    // processing order items
                    $response_data = [];
                    if ($this->Order_model->update_order(['status' => $status], ['id' => $consignment_id], true, 'consignments')) {
                        $this->Order_model->update_order(['active_status' => $status], ['id' => $consignment_id], false, 'consignments');

                        foreach ($consignment_items as $item) {
                            $this->Order_model->update_order(['status' => $status], ['id' => $item['order_item_id']], true, 'order_items');
                            $this->Order_model->update_order(['active_status' => $status, 'delivery_boy_id' => $delivery_boy_id], ['id' => $item['order_item_id']], false, 'order_items');
                            $data = [
                                'order_item_id' => $item['order_item_id'],
                                'status' => $status
                            ];
                            array_push($response_data, $data);

                            // --------- Below code use - if consignment create with manual qty select ----------
                            // if ($status == "processed" || $status == "shipped") {
                            // $this->Order_model->update_order(['status' => $status], ['id' => $item['order_item_id']], true, 'order_items');
                            // $this->Order_model->update_order(['active_status' => $status], ['id' => $item['order_item_id']], false, 'order_items');
                            // }
                            // $consignments = fetch_details('consignments', ['order_id' => $order_id], '*');
                            // $is_order_fully_completed = true;
                            // foreach ($consignments as $consignment) {
                            //     if ($consignment['active_status'] != 'delivered') {
                            //         $is_order_fully_completed = false;
                            //     }
                            // }
                            // if ($status == "delivered" && $is_order_fully_completed == true) {
                            //     $delivert_status = fetch_details('order_items', ['id' => $item['order_item_id']], 'quantity,delivered_quantity');
                            //     if (!empty($delivert_status)) {
                            //         $total_quantity = $delivert_status[0]['quantity'];
                            //         $delivered_quantity = $delivert_status[0]['delivered_quantity'];
                            //         if ($total_quantity == $delivered_quantity) {
                            //             $this->Order_model->update_order(['status' => $status], ['id' => $item['order_item_id']], true, 'order_items');
                            //             $this->Order_model->update_order(['active_status' => $status], ['id' => $item['order_item_id']], false, 'order_items');
                            //         }
                            //     }
                            // }
                        }
                    }
                    //Update login id in order_item table
                    update_details(['updated_by' => $seller_id], ['order_id' => $consignment[0]['order_id'], 'seller_id' => $seller_id], 'order_items');
                    // }
                    $settings = get_settings('system_settings', true);
                    $app_name = isset($settings['app_name']) && !empty($settings['app_name']) ? $settings['app_name'] : '';
                    $user_res = fetch_details('users', ['id' => $user_id], 'username,fcm_id,mobile,email');
                    $fcm_ids = array();
                    //custom message
                    if (!empty($user_res[0]['fcm_id'])) {
                        if ($status == 'received') {
                            $type = ['type' => "customer_order_received"];
                        } elseif ($status == 'processed') {
                            $type = ['type' => "customer_order_processed"];
                        } elseif ($status == 'shipped') {
                            $type = ['type' => "customer_order_shipped"];
                        } elseif ($status == 'delivered') {
                            $type = ['type' => "customer_order_delivered"];
                        } elseif ($status == 'cancelled') {
                            $type = ['type' => "customer_order_cancelled"];
                        } elseif ($status == 'returned') {
                            $type = ['type' => "customer_order_returned"];
                        }
                        $custom_notification = fetch_details('custom_notifications', $type, '');
                        $hashtag_cutomer_name = '< cutomer_name >';
                        $hashtag_order_id = '< order_item_id >';
                        $hashtag_application_name = '< application_name >';
                        $string = json_encode($custom_notification[0]['message'], JSON_UNESCAPED_UNICODE);
                        $hashtag = html_entity_decode($string);
                        $data = str_replace(array($hashtag_cutomer_name, $hashtag_order_id, $hashtag_application_name), array($user_res[0]['username'], $order_id, $app_name), $hashtag);
                        $message = output_escaping(trim($data, '"'));
                        $customer_msg = (!empty($custom_notification)) ? $message :  'Hello Dear ' . $user_res[0]['username'] . 'Order status updated to' . $_POST['val'] . ' for order ID #' . $order_id . ' please take note of it! Thank you. Regards ' . $app_name . '';
                        $fcmMsg = array(
                            'title' => (!empty($custom_notification)) ? $custom_notification[0]['title'] : "Order status updated",
                            'body' => $customer_msg,
                            'type' => "order"
                        );
                        notify_event(
                            $type['type'],
                            ["customer" => [$user_res[0]['email']]],
                            ["customer" => [$user_res[0]['mobile']]],
                            ["orders.id" => $order_id]
                        );

                        $fcm_ids[0][] = $user_res[0]['fcm_id'];
                        if (isset($firebase_project_id) && isset($service_account_file) && !empty($firebase_project_id) && !empty($service_account_file)) {
                            send_notification($fcmMsg, $fcm_ids, $fcmMsg);
                        }
                    }

                    $this->response['error'] = false;
                    $this->response['message'] = 'Status Updated Successfully';
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    $this->response['data'] = $response_data;
                    print_r(json_encode($this->response));
                    return false;
                }
            }
        } else {
            $this->response['error'] = true;
            $this->response['message'] = 'Unauthorized access not allowed!';
            $this->response['csrfName'] = $this->security->get_csrf_token_name();
            $this->response['csrfHash'] = $this->security->get_csrf_hash();
            $this->response['data'] = array();
            print_r(json_encode($this->response));
            return false;
        }
    }

    public function get_order_tracking()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            return $this->Order_model->get_order_tracking_list();
        } else {
            redirect('seller/login', 'refresh');
        }
    }

    public function update_order_tracking()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $this->form_validation->set_rules('courier_agency', 'Courier Agency', 'trim|required|xss_clean');
            $this->form_validation->set_rules('tracking_id', 'Tracking Id', 'trim|required|xss_clean');
            $this->form_validation->set_rules('url', 'url', 'trim|required|xss_clean');
            $this->form_validation->set_rules('consignment_id', 'Consignment Id', 'trim|required|xss_clean');
            if (!$this->form_validation->run()) {
                $this->response['error'] = true;
                $this->response['message'] = strip_tags(validation_errors());
                $this->response['data'] = array();
                print_r(json_encode($this->response));
            } else {
                $seller_id = $this->ion_auth->get_user_id();
                $consignment_id = $this->input->post('consignment_id', true);
                $courier_agency = $this->input->post('courier_agency', true);
                $tracking_id = $this->input->post('tracking_id', true);
                $url = $this->input->post('url', true);
                $details = view_all_consignments(consignment_id: $consignment_id, seller_id: $seller_id);
                if (isset($details['data']) && empty($details['data'])) {
                    $this->response['error'] = true;
                    $this->response['message'] = "Parcel Not Found.";
                    $this->response['data'] = [];
                    return print_r(json_encode($this->response));
                }
                $details = $details['data'][0];
                if (isset($details['is_shiprocket_order']) && $details['is_shiprocket_order'] == 1) {
                    $this->response['error'] = true;
                    $this->response['message'] = "This is An Shiprocket Parcel You Can't Add Tracking Details Manually.";
                    $this->response['data'] = [];
                    return print_r(json_encode($this->response));
                }
                $order_id = $details['order_id'];
                $data = array(
                    'consignment_id' => $consignment_id,
                    'order_id' => $order_id,
                    'courier_agency' => $courier_agency,
                    'tracking_id' => $tracking_id,
                    'url' => $url,
                );
                if (is_exist(['consignment_id' => $consignment_id, 'shipment_id' => ""], 'order_tracking', null)) {
                    if (update_details($data, ['consignment_id' => $consignment_id, 'shipment_id' => ""], 'order_tracking') == TRUE) {
                        $this->response['error'] = false;
                        $this->response['message'] = "Tracking details Update successfully.";
                        $this->response['data'] = [];
                    } else {
                        $this->response['error'] = true;
                        $this->response['message'] = "Not Updated. Try again later.";
                        $this->response['data'] = [];
                    }
                } else {
                    if (insert_details($data, 'order_tracking')) {
                        $this->response['error'] = false;
                        $this->response['message'] = "Tracking details Inserted successfully.";
                        $this->response['data'] = [];
                    } else {
                        $this->response['error'] = true;
                        $this->response['message'] = "Not Inserted. Try again later.";
                        $this->response['data'] = [];
                    }
                }
                $this->response['data'] = array();
                print_r(json_encode($this->response));
            }
        } else {
            redirect('seller/login', 'refresh');
        }
    }

    function order_tracking()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $this->data['main_page'] = TABLES . 'order-tracking';
            $settings = get_settings('system_settings', true);
            $this->data['title'] = 'Order Tracking | ' . $settings['app_name'];
            $this->data['meta_description'] = 'Order Tracking | ' . $settings['app_name'];
            $this->load->view('seller/template', $this->data);
        } else {
            redirect('seller/login', 'refresh');
        }
    }
    public function get_digital_order_mails()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            return $this->Order_model->get_digital_order_mail_list();
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function send_digital_product()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $this->form_validation->set_rules('message', 'Message', 'trim|required|xss_clean');
            $this->form_validation->set_rules('pro_input_file', 'Attachment file', 'trim|required|xss_clean');

            if (!$this->form_validation->run()) {
                $this->response['error'] = true;
                $this->response['message'] = strip_tags(validation_errors());
                $this->response['data'] = array();
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                print_r(json_encode($this->response));
                return false;
            }
            $_POST['email'] = "";
            $mail =  $this->Order_model->send_digital_product($_POST);
            if ($mail['error'] == true) {
                $this->response['error'] = true;
                $this->response['message'] = "Cannot send mail. You can try to send mail manually.";
                $this->response['data'] = $mail['message'];
                echo json_encode($this->response);
                return false;
            } else {
                $this->response['error'] = false;
                $this->response['message'] = 'Mail sent successfully.';
                $this->response['data'] = array();
                echo json_encode($this->response);
                update_details(['active_status' => 'delivered'], ['id' => $_POST['order_item_id']], 'order_items');
                update_details(['is_sent' => 1], ['id' => $_POST['order_item_id']], 'order_items');
                $data = array(
                    'order_id' => $_POST['order_id'],
                    'order_item_id' => $_POST['order_item_id'],
                    'subject' => $_POST['subject'],
                    'message' => $_POST['message'],
                    'file_url' => $_POST['pro_input_file'],
                );
                insert_details($data, 'digital_orders_mails');
                return false;
            }
        } else {
            redirect('admin/login', 'refresh');
        }
    }
    public function create_shiprocket_order()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {

            $this->form_validation->set_rules('order_id', ' Order Id ', 'trim|xss_clean');
            $this->form_validation->set_rules('pickup_location', ' Pickup Location ', 'trim|required|xss_clean');
            $this->form_validation->set_rules('parcel_weight', ' Parcel Weight ', 'trim|required|xss_clean');
            $this->form_validation->set_rules('parcel_height', ' Parcel Height ', 'trim|required|xss_clean');
            $this->form_validation->set_rules('parcel_breadth', ' Parcel Breadth ', 'trim|required|xss_clean');
            $this->form_validation->set_rules('parcel_length', ' Parcel Length ', 'trim|required|xss_clean');

            if (!$this->form_validation->run()) {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = validation_errors();
                print_r(json_encode($this->response));
            } else {

                $_POST['order_items'] = json_decode($_POST['order_items'][0], 1);
                $_POST['consignment_data'] = json_decode($_POST['consignment_data'][0], 1);

                $this->load->library(['Shiprocket']);
                $order_items =  $_POST['order_items'];
                $consignment_data =  $_POST['consignment_data'];
                if (is_exist(['consignment_id' => $consignment_data[0]['consignment_id'], 'is_canceled' => 0], 'order_tracking')) {
                    $this->response['error'] = true;
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    $this->response['message'] = 'Shiprocket order Already Created';
                    return print_r(json_encode($this->response));
                }
                $items = [];
                $subtotal = 0;
                $order_id = 0;
                $pickup_location_pincode = fetch_details('pickup_locations', ['pickup_location' => $_POST['pickup_location']], 'pin_code');
                $user_data = fetch_details('users', ['id' => $_POST['user_id']], 'username,email');
                $order_data = fetch_details('orders', ['id' => $_POST['order_id']], 'date_added,address_id,mobile,payment_method,delivery_charge');
                $address_data = fetch_details('addresses', ['id' => $order_data[0]['address_id']], 'address,city_id,pincode,state,country');
                $city_data = fetch_details('cities', ['id' => $address_data[0]['city_id']], 'name');
                $availibility_data = [
                    'pickup_postcode' => $pickup_location_pincode[0]['pin_code'],
                    'delivery_postcode' => $address_data[0]['pincode'],
                    'cod' => ($order_data[0]['payment_method'] == 'COD') ? '1' : '0',
                    'weight' => $_POST['parcel_weight'],
                ];

                $check_deliveribility = $this->shiprocket->check_serviceability($availibility_data);
                $get_currier_id = shiprocket_recomended_data($check_deliveribility);
                $order_item_id = [];

                foreach ($consignment_data as $consignment_item) {
                    foreach ($order_items as  $row) {
                        if ($row['id'] == $consignment_item['order_item_id']) {
                            if ($row['pickup_location'] == $_POST['pickup_location'] && $row['seller_id'] == $_POST['shiprocket_seller_id']) {
                                $order_item_id[] = $row['id'];
                                $order_id .= '-' . $row['id'];
                                $order_item_data = fetch_details('order_items', ['id' => $row['id']], 'sub_total');
                                if (isset($row['product_variants']) && !empty($row['product_variants'])) {
                                    $sku = $row['product_variants'][0]['sku'];
                                } else {
                                    $sku = $row['sku'];
                                }
                                $row['product_slug'] = strlen($row['product_slug']) > 8 ? substr($row['product_slug'], 0, 8) : $row['product_slug'];
                                $temp['name'] = $row['pname'];
                                $temp['sku'] = isset($sku) && !empty($sku) ? $sku : $row['product_slug'] . $row['id'];
                                $subtotal += (int)$consignment_item['quantity'] * (int)$consignment_item['unit_price'];
                                $temp['total_units'] = $consignment_item['total_quantity'];
                                $temp['units'] = $consignment_item['quantity'];
                                $temp['selling_price'] = $row['price'];
                                $temp['discount'] = $row['discounted_price'];
                                $temp['tax'] = $row['tax_amount'];
                                array_push($items, $temp);
                            }
                        }
                    }
                }

                $random_id = '-' . rand(10, 10000);
                $delivery_charge = (strtoupper($order_data[0]['payment_method']) == 'COD') ? $order_data[0]['delivery_charge'] : 0;
                $create_order = [
                    'order_id' => $_POST['order_id'] . $order_id . $random_id,
                    'order_date' => $order_data[0]['date_added'],
                    'pickup_location' => $_POST['pickup_location'],
                    'billing_customer_name' =>  $user_data[0]['username'],
                    'billing_last_name' => "",
                    'billing_address' => $address_data[0]['address'],
                    'billing_city' => $city_data[0]['name'],
                    'billing_pincode' => $address_data[0]['pincode'],
                    'billing_state' => $address_data[0]['state'],
                    'billing_country' => $address_data[0]['country'],
                    'billing_email' => $user_data[0]['email'],
                    'billing_phone' => $order_data[0]['mobile'],
                    'shipping_is_billing' => true,
                    'order_items' => $items,
                    'payment_method' => (strtoupper($order_data[0]['payment_method']) == 'COD') ? 'COD' : 'Prepaid',
                    'sub_total' => $subtotal + $delivery_charge,
                    'length' => $_POST['parcel_length'],
                    'breadth' => $_POST['parcel_breadth'],
                    'height' => $_POST['parcel_height'],
                    'weight' => $_POST['parcel_weight'],
                ];
                $response = $this->shiprocket->create_order($create_order);
                if (isset($response['status_code']) && $response['status_code'] == 1) {
                    $courier_company_id = $get_currier_id['courier_company_id'];
                    $order_tracking_data = [
                        'order_id' => $_POST['order_id'],
                        'order_item_id' => '',
                        'consignment_id' => $consignment_data[0]['consignment_id'],
                        'shiprocket_order_id' => $response['order_id'],
                        'shipment_id' => $response['shipment_id'],
                        'courier_company_id' => $courier_company_id,
                        'pickup_status' => 0,
                        'pickup_scheduled_date' => '',
                        'pickup_token_number' => '',
                        'status' => 0,
                        'others' => '',
                        'pickup_generated_date' => '',
                        'data' => '',
                        'date' => '',
                        'manifest_url' => '',
                        'label_url' => '',
                        'invoice_url' => '',
                        'is_canceled' => 0,
                        'tracking_id' => $response['channel_order_id'],
                        'url' => ''
                    ];
                    $this->db->insert('order_tracking', $order_tracking_data);
                }
                if (isset($response['status_code']) && $response['status_code'] == 1) {
                    $this->response['error'] = false;
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    $this->response['message'] = 'Shiprocket order created successfully';
                    $this->response['data'] = $response;
                } else {
                    $this->response['error'] = true;
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    $this->response['message'] = 'Shiprocket order not created successfully';
                    $this->response['data'] = $response;
                }
                print_r(json_encode($this->response));
            }
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function generate_awb()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {

            $res = generate_awb($_POST['shipment_id']);

            if (!empty($res) && $res['status_code'] == 200) {
                $this->response['error'] = false;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'AWB generated successfully';
                $this->response['data'] = $res;
            } else {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] =  $res['message'];
                $this->response['data'] = array();
            }
            print_r(json_encode($this->response));
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function send_pickup_request()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {

            $res = send_pickup_request($_POST['shipment_id']);

            if (!empty($res)) {
                $this->response['error'] = false;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Request send successfully';
                $this->response['data'] = $res;
            } else {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Request not sent';
                $this->response['data'] = array();
            }
            print_r(json_encode($this->response));
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function generate_label()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $res = generate_label($_POST['shipment_id']);
            if (!empty($res)) {
                $this->response['error'] = false;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Label generated successfully';
                $this->response['data'] = $res;
            } else {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Label not generated';
                $this->response['data'] = array();
            }
            print_r(json_encode($this->response));
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function generate_invoice()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {

            $res = generate_invoice($_POST['order_id']);
            if (!empty($res) && isset($res['is_invoice_created']) && $res['is_invoice_created'] == 1) {
                $this->response['error'] = false;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Invoice generated successfully';
                $this->response['data'] = $res;
            } else {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Invoice not generated';
                $this->response['data'] = array();
            }
            print_r(json_encode($this->response));
        } else {
            redirect('admin/login', 'refresh');
        }
    }
    public function cancel_shiprocket_order()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $res = cancel_shiprocket_order($_POST['shiprocket_order_id']);
            if (!empty($res) && $res['status_code'] == 200) {
                $this->response['error'] = false;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Order cancelled successfully';
                $this->response['data'] = $res;
            } else {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = 'Order not cancelled';
                $this->response['data'] = array();
            }
            print_r(json_encode($this->response));
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function create_consignment()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {

            $this->form_validation->set_rules(
                'selected_items[]',
                'Items',
                'trim|required|xss_clean',
                array(
                    'required' => 'Please Select Item.'
                )
            );
            $this->form_validation->set_rules('consignment_title', 'Consignment Title', 'trim|required|xss_clean');
            $this->form_validation->set_rules('order_id', 'Order Id', 'trim|required|xss_clean');
            if (!$this->form_validation->run()) {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = validation_errors();
                return print_r(json_encode($this->response));
            } else {
                $res = create_consignment($_POST);
                if ($res['error'] == false) {
                    $this->response['error'] = $res['error'];
                    $this->response['message'] = $res['message'];
                    $this->response['data'] = $res['data'];
                    $this->response['csrfName'] = $this->security->get_csrf_token_name();
                    $this->response['csrfHash'] = $this->security->get_csrf_hash();
                    return print_r(json_encode($this->response));
                }
                $this->response['error'] = $res['error'];
                $this->response['message'] = $res['message'];
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                return print_r(json_encode($this->response));
            }
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function update_shiprocket_order_status()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_seller() && ($this->ion_auth->seller_status() == 1 || $this->ion_auth->seller_status() == 0)) {
            $this->form_validation->set_rules('tracking_id', 'Tracking Id', 'trim|required|xss_clean');
            if (!$this->form_validation->run()) {
                $this->response['error'] = true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = validation_errors();
                $this->response['data'] = [];
                return print_r(json_encode($this->response));
            } else {
                $tracking_id = $this->input->post('tracking_id', true);
                $res = update_shiprocket_order_status($tracking_id);
                $this->response['error'] = ($res['error'] == false) ? false : true;
                $this->response['csrfName'] = $this->security->get_csrf_token_name();
                $this->response['csrfHash'] = $this->security->get_csrf_hash();
                $this->response['message'] = $res['message'];
                $this->response['data'] = $res['data'] ?? [];
                return print_r(json_encode($this->response));
            }
        } else {
            redirect('admin/login', 'refresh');
        }
    }
}
