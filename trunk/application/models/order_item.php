<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Order_item extends CI_Model
	{
		function __construct()
			{
				parent::__construct();
			}

#############################################################################################################################
//SELECT
		function GetAll($limit, $offset)
			{
				return $this->db->get('order_item', $limit, $offset);
			}

		function GetWhere($where , $limit, $offset)
			{
				return $this->db->get_where('order_item', $where ,$limit, $offset);
			}

#############################################################################################################################
//INSERT
		function insert($insert)
			{
				return $this->db->insert('order_item', $insert);
			}

#############################################################################################################################
//UPDATE
		function update($where, $update)
			{
				return $this->db->update('order_item', $update, $where);
			}

#############################################################################################################################
//DELETE
		function delete($where)
			{
				return $this->db->delete('order_item', $where);
			}

#############################################################################################################################
//TRUNCATE
		public function truncate()
			{
				return $this->db->truncate('order_item');
			}
	}
?>