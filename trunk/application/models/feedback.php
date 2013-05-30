<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Feedback extends CI_Model
	{
		function __construct()
			{
				parent::__construct();
			}

#############################################################################################################################
//SELECT
		function GetAll($limit, $offset)
			{
				return $this->db->get('feedback', $limit, $offset);
			}

		function GetWhere($where , $limit, $offset)
			{
				return $this->db->get_where('feedback', $where ,$limit, $offset);
			}

#############################################################################################################################
//INSERT
		function insert($insert)
			{
				return $this->db->insert('feedback', $insert);
			}

#############################################################################################################################
//UPDATE
		function update($where, $update)
			{
				return $this->db->update('feedback', $update, $where);
			}

#############################################################################################################################
//DELETE
		function delete($where)
			{
				return $this->db->delete('feedback', $where);
			}

#############################################################################################################################
//TRUNCATE
		public function truncate()
			{
				return $this->db->truncate('feedback');
			}
	}
?>