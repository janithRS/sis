<?php
namespace FieldOption\Model\Table;

use App\Model\Table\ControllerActionTable;

 class InstitutionTypesTable extends ControllerActionTable {
	public function initialize(array $config)
    {
		$this->addBehavior('FieldOption.FieldOption');
	}
}
