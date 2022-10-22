<?php
require_once PROJECT_ROOT_PATH . "/Model/Database.php";
 
class UserModel extends Database
{
    public function getUsers($limit)
    {
        return $this->select("SELECT b.patient_name,b.emp_code ,a.appointment_date,a.ticket_no,a.ailment_systems_new,a.ailments_new,a.complaints,a.examination_remarks,c.item_id,c.item_qty,c.frequnecy_id,c.for_days,c.issued_qty,d.item_name,e.medicine_frequency FROM employee_appointment a left join  patient_master b on b.id = a.emp_id left join treatment c on c.appointment_id = a.appointment_id left join tbl_items d on d.item_id=c.item_id left join medicine_frequency e on e.frequency_id = c.frequency_id WHERE a.appointment_type = 'O' LIMIT ?", ["i", $limit]);
    }
}
?>