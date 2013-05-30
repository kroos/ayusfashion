<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Delivery_address extends CI_Model
	{
		function __construct()
			{
				parent::__construct();
			}

#############################################################################################################################
//SELECT
		function GetAll($limit, $offset)
			{
				return $this->db->get('delivery_address', $limit, $offset);
			}

		function GetWhere($where , $limit, $offset)
			{
				return $this->db->get_where('delivery_address', $where ,$limit, $offset);
			}

#############################################################################################################################
//INSERT
		function insert($insert)
			{
				return $this->db->insert('delivery_address', $insert);
			}

#############################################################################################################################
//UPDATE
		function update($where, $update)
			{
				return $this->db->update('delivery_address', $update, $where);
			}

#############################################################################################################################
//DELETE
		function delete($where)
			{
				return $this->db->delete('delivery_address', $where);
			}

#############################################################################################################################
//TRUNCATE
		public function truncate()
			{
				return $this->db->truncate('delivery_address');
			}
	}
?>