<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Order_my extends CI_Model
	{
		function __construct()
			{
				parent::__construct();
			}

#############################################################################################################################
//SELECT
		function GetAll($limit, $offset)
			{
				return $this->db->get('order_my', $limit, $offset);
			}

		function GetWhere($where , $limit, $offset)
			{
				return $this->db->get_where('order_my', $where ,$limit, $offset);
			}

#############################################################################################################################
//INSERT
		function insert($insert)
			{
				return $this->db->insert('order_my', $insert);
			}

#############################################################################################################################
//UPDATE
		function update($where, $update)
			{
				return $this->db->update('order_my', $update, $where);
			}

#############################################################################################################################
//DELETE
		function delete($where)
			{
				return $this->db->delete('order_my', $where);
			}

#############################################################################################################################
//TRUNCATE
		public function truncate()
			{
				return $this->db->truncate('order_my');
			}
	}
?>