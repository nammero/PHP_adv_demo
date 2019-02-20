<?php

class Person
{
    const MAX_POSSIBLE_AGE = 150;

    public $firsName;
    public $lastName;
    private $age;

    public function __construct($firsName, $lastName)
    {
        $this->firsName = $firsName;
        $this->lastName = $lastName;
    }

    public function setAge($age)
    {
        if ($age > self::MAX_POSSIBLE_AGE){
            echo "Wrong age of a Person";
            return;
        }
        $this->age = $age;
    }



    public function getAge()
    {
        return $this->age;
    }

    /**
     * @return mixed
     */
    public function getFirsName()
    {
        return $this->firsName;
    }

    /**
     * @return mixed
     */
    public function getLastName()
    {
        return $this->lastName;
    }


}