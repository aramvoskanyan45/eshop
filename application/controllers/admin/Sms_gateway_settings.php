<?php
defined('BASEPATH') or exit('No direct script access allowed');

class SMS_gateway_settings extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper(['url', 'language', 'timezone_helper', 'sms_helper']);
        $this->load->model(['Setting_model', 'notification_model', 'category_model', 'custom_sms_model']);
    }

    function  test()
    {
        echo "Test<pre>";
        $fcm_id = "eYvDKNC58-A4WI5tpaK1Ns:APA91bGhM_YwxM4CKtSqQ_NMrvVy3PKXyQ7BdwpCfwNGgjPp555DLripOQmxVKE6W_M4wE0VdaIAN0TWKAhhV-Hlw-23pwVa0YIOknalYzwpjoHl8pSlUJ2tYYOHG9ROeD7xjiEInEeC";
        $fcmMsg = array(
            'title' => 'test',
            'body' => "Sample message",
            // 'type' => "typing",
            // "from_id" => "1",
            // "to_id" => "1255",
            // "chat_type" => "person"
        );

        $response = send_notification($fcmMsg, [$fcm_id]);
        print_r($_SESSION);
        print_r($response);
    }
    public function index()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_admin()) {
            if (!has_permissions('read', 'sms-gateway-settings')) {
                $this->session->set_flashdata('authorize_flag', PERMISSION_ERROR_MSG);
                redirect('admin/home', 'refresh');
            }
            $this->data['main_page'] = FORMS . 'sms-gateway-settings';
            $settings = get_settings('system_settings', true);
            $this->data['title'] = 'SMS Gateway Settings | ' . $settings['app_name'];
            $this->data['meta_description'] = ' SMS Gateway Settings  | ' . $settings['app_name'];
            $this->data['sms_gateway_settings'] = get_settings('sms_gateway_settings', true);
            $this->data['send_notification_settings'] = get_settings('send_notification_settings', true);
            $this->data['notification_modules'] = $this->config->item('notification_modules');
            if (isset($_GET['edit_id']) && !empty($_GET['edit_id'])) {
                $this->data['fetched_data'] = fetch_details('custom_sms', ['id' => $_GET['edit_id']]);
            }
            $this->load->view('admin/template', $this->data);
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    public function add_sms_data()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_admin()) {
            if (!has_permissions('read', 'sms-gateway-settings')) {
                $this->session->set_flashdata('authorize_flag', PERMISSION_ERROR_MSG);
                redirect('admin/home', 'refresh');
            }
            if (defined('SEMI_DEMO_MODE') && SEMI_DEMO_MODE == 0) {
                $this->response['error'] = true;
                $this->response['message'] = SEMI_DEMO_MODE_MSG;
                echo json_encode($this->response);
                return false;
                exit();
            }
            if (print_msg(!has_permissions('update', 'sms-gateway-settings'), PERMISSION_ERROR_MSG, 'sms-gateway-settings')) {
                return false;
            }
            $sms_data['base_url'] = (isset($_POST['base_url']) && !empty(($_POST['base_url']))) ? $this->input->post('base_url', true) : "";
            $sms_data['sms_gateway_method'] = (isset($_POST['sms_gateway_method']) && !empty(($_POST['sms_gateway_method']))) ? $this->input->post('sms_gateway_method', true) : "";
            $sms_data['header_key'] = (isset($_POST['header_key']) && !empty(($_POST['header_key']))) ? $this->input->post('header_key', true) : [];
            $sms_data['header_value'] = (isset($_POST['header_value']) && !empty(($_POST['header_value']))) ? $this->input->post('header_value', true) : [];
            $sms_data['text_format_data'] = (isset($_POST['text_format_data']) && !empty(($_POST['text_format_data']))) ? $this->input->post('text_format_data', true) : "";
            $sms_data['body_key'] = (isset($_POST['body_key']) && !empty(($_POST['body_key']))) ? $this->input->post('body_key', true) : [];
            $sms_data['body_value'] = (isset($_POST['body_value']) && !empty(($_POST['body_value']))) ? $this->input->post('body_value', true) : [];

            $this->Setting_model->update_smsgateway($sms_data);
            $this->response['error'] = false;
            $this->response['csrfName'] = $this->security->get_csrf_token_name();
            $this->response['csrfHash'] = $this->security->get_csrf_hash();
            $this->response['message'] = 'System Setting Updated Successfully';
            print_r(json_encode($this->response));
        }
    }

    public function update_notification_module()
    {
        if ($this->ion_auth->logged_in() && $this->ion_auth->is_admin()) {
            if (!has_permissions('read', 'sms-gateway-settings')) {
                $this->session->set_flashdata('authorize_flag', PERMISSION_ERROR_MSG);
                redirect('admin/home', 'refresh');
            }
            if (defined('SEMI_DEMO_MODE') && SEMI_DEMO_MODE == 0) {
                $this->response['error'] = true;
                $this->response['message'] = SEMI_DEMO_MODE_MSG;
                echo json_encode($this->response);
                return false;
                exit();
            }

            $this->Setting_model->update_notification_setting($_POST);
            $this->response['error'] = false;
            $this->response['csrfName'] = $this->security->get_csrf_token_name();
            $this->response['csrfHash'] = $this->security->get_csrf_hash();
            $this->response['message'] = (isset($edit_id)) ? ' Data Updated Successfully' : 'Data Added Successfully';

            print_r(json_encode($this->response));
        } else {
            redirect('admin/login', 'refresh');
        }
    }

    function test_sms()
    {
        $this->data['main_page'] = 'test';
        return $this->load->view('front-end/' . THEME . '/template');

        // $otp_msg = fetch_details('custom_sms', ['type' => 'otp']);
        // $message_body = $otp_msg[0]['message'];
        // // Remove the escaped characters

        // $json_message_body = stripslashes($message_body);
        // $json_message_body = str_replace(['rn', '\r', '\n', '\\'], '', $json_message_body);

        // // Decode the JSON string to an associative array
        // $message_body = json_decode($json_message_body, true);
        // $mobile = $message_body['recipients'][0]['mobiles'];

        // send_sms($mobile, json_encode($message_body));
        // die;
        // $emails = ["customer" => ['infinitie123@gmail.com'], "admin" => ['infinitie987@gmail.com']];
        // $phone = ["customer" => ['9876543210'], "delivery_boy" => ['1212121212']];
        // //   notify_event(
        // //                 "place_order",
        // //                 ["customer" => ['infinitie123@gmail.com']],
        // //                 ["customer" => ['9876543210']],
        // //                 ["orders.id" => "1"]
        // //             );
        // $res = set_user_otp(random_int(100000, 999999), date('Y-m-d H:i:s'));
        // print_r($res);
    }
}
