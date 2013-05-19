<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Client extends CI_Model
	{
		function __construct()
			{
				parent::__construct();
			}

#############################################################################################################################
//SELECT
		function GetAll($limit, $offset)
			{
				return $this->db->get('client', $limit, $offset);
			}

		function GetWhere($where , $limit, $offset)
			{
				return $this->db->get_where('client', $where ,$limit, $offset);
			}

#############################################################################################################################
//INSERT
		function insert($insert)
			{
				return $this->db->insert('client', $insert);
			}

#############################################################################################################################
//UPDATE
		function update($where, $update)
			{
				return $this->db->update('client', $update, $where);
			}

#############################################################################################################################
//DELETE
		function delete($where)
			{
				return $this->db->delete('client', $where);
			}

#############################################################################################################################
//TRUNCATE
		public function truncate()
			{
				return $this->db->truncate('client');
			}
	}
?>