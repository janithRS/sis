<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

class StaffAppraisalsFixture extends TestFixture
{
    public $import = ['table' => 'staff_appraisals'];
    public $records = [
        [
            'academic_period_id' => '26',
            'comment' => '',
            'competency_set_id' => '3',
            'created' => '2016-10-25 14:28:29',
            'created_user_id' => '2',
            'final_rating' => '45.00',
            'from' => '2017-01-01',
            'id' => '9',
            'modified' => '2016-10-27 17:15:03',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '4',
            'staff_id' => '11000',
            'title' => 'Appraisal Test 1',
            'to' => '2017-12-31'
        ],
        [
            'academic_period_id' => '26',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-25 15:13:55',
            'created_user_id' => '5',
            'final_rating' => '21.00',
            'from' => '2017-01-01',
            'id' => '10',
            'modified' => '2016-10-28 14:24:45',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '3',
            'staff_id' => '11000',
            'title' => 'Appraisal Test 2',
            'to' => '2017-12-31'
        ],
        [
            'academic_period_id' => '10',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-25 15:15:39',
            'created_user_id' => '5',
            'final_rating' => '13.50',
            'from' => '2015-01-01',
            'id' => '11',
            'modified' => '2016-10-27 15:49:43',
            'modified_user_id' => '5',
            'staff_appraisal_type_id' => '2',
            'staff_id' => '5',
            'title' => 'Appraisal self test 1',
            'to' => '2015-12-31'
        ],
        [
            'academic_period_id' => '10',
            'comment' => '',
            'competency_set_id' => '3',
            'created' => '2016-10-25 17:22:26',
            'created_user_id' => '2',
            'final_rating' => '1.70',
            'from' => '2015-01-01',
            'id' => '13',
            'modified' => null,
            'modified_user_id' => null,
            'staff_appraisal_type_id' => '3',
            'staff_id' => '11009',
            'title' => 'Appraisal Test 1',
            'to' => '2015-12-31'
        ],
        [
            'academic_period_id' => '25',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-25 17:24:10',
            'created_user_id' => '2',
            'final_rating' => '0.10',
            'from' => '2016-01-01',
            'id' => '14',
            'modified' => '2016-10-25 17:24:21',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '4',
            'staff_id' => '11009',
            'title' => 'Appraisal Test 2',
            'to' => '2016-12-31'
        ],
        [
            'academic_period_id' => '26',
            'comment' => '',
            'competency_set_id' => '3',
            'created' => '2016-10-25 17:26:14',
            'created_user_id' => '2',
            'final_rating' => '10.00',
            'from' => '2017-01-01',
            'id' => '15',
            'modified' => '2016-10-28 14:19:22',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '3',
            'staff_id' => '11009',
            'title' => 'Appraisal directory test 1',
            'to' => '2017-12-31'
        ],
        [
            'academic_period_id' => '10',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-26 15:34:35',
            'created_user_id' => '2',
            'final_rating' => '13.00',
            'from' => '2015-01-29',
            'id' => '19',
            'modified' => '2016-10-27 17:08:12',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '4',
            'staff_id' => '11000',
            'title' => 'Appraisal Test 3',
            'to' => '2015-02-07'
        ],
        [
            'academic_period_id' => '26',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-27 14:07:48',
            'created_user_id' => '2',
            'final_rating' => '13.00',
            'from' => '2017-01-01',
            'id' => '20',
            'modified' => null,
            'modified_user_id' => null,
            'staff_appraisal_type_id' => '3',
            'staff_id' => '11000',
            'title' => 'Appraisal Test 4',
            'to' => '2017-12-31'
        ],
        [
            'academic_period_id' => '25',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-27 14:49:12',
            'created_user_id' => '2',
            'final_rating' => '14.50',
            'from' => '2016-10-16',
            'id' => '21',
            'modified' => '2016-10-27 16:25:11',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '4',
            'staff_id' => '11000',
            'title' => 'Appraisal Test 5',
            'to' => '2016-10-27'
        ],
        [
            'academic_period_id' => '25',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-27 15:32:21',
            'created_user_id' => '5',
            'final_rating' => '10.00',
            'from' => '2016-10-24',
            'id' => '22',
            'modified' => null,
            'modified_user_id' => null,
            'staff_appraisal_type_id' => '2',
            'staff_id' => '5',
            'title' => 'Test Self Appraisal 1',
            'to' => '2016-10-27'
        ],
        [
            'academic_period_id' => '26',
            'comment' => '',
            'competency_set_id' => '3',
            'created' => '2016-10-27 15:43:31',
            'created_user_id' => '5',
            'final_rating' => '24.00',
            'from' => '2017-01-01',
            'id' => '23',
            'modified' => '2016-10-28 11:29:17',
            'modified_user_id' => '5',
            'staff_appraisal_type_id' => '4',
            'staff_id' => '11000',
            'title' => 'Appraisal peer test 1',
            'to' => '2017-12-31'
        ],
        [
            'academic_period_id' => '26',
            'comment' => '',
            'competency_set_id' => '3',
            'created' => '2016-10-28 11:28:18',
            'created_user_id' => '2',
            'final_rating' => '15.00',
            'from' => '2017-01-01',
            'id' => '25',
            'modified' => '2016-10-28 11:34:20',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '3',
            'staff_id' => '11000',
            'title' => 'Appraisal Test 6',
            'to' => '2017-12-31'
        ],
        [
            'academic_period_id' => '25',
            'comment' => '',
            'competency_set_id' => '2',
            'created' => '2016-10-28 14:09:38',
            'created_user_id' => '2',
            'final_rating' => '15.00',
            'from' => '2016-10-27',
            'id' => '26',
            'modified' => '2016-10-28 14:11:14',
            'modified_user_id' => '2',
            'staff_appraisal_type_id' => '4',
            'staff_id' => '11000',
            'title' => 'Appraisal Test 7',
            'to' => '2016-10-28'
        ],
        [
            'academic_period_id' => '26',
            'comment' => '',
            'competency_set_id' => '3',
            'created' => '2016-10-28 14:19:00',
            'created_user_id' => '2',
            'final_rating' => '18.00',
            'from' => '2017-01-01',
            'id' => '27',
            'modified' => null,
            'modified_user_id' => null,
            'staff_appraisal_type_id' => '4',
            'staff_id' => '11009',
            'title' => 'Appraisal Test 1',
            'to' => '2017-12-31'
        ]
    ];
}

