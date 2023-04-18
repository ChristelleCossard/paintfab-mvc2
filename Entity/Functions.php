<?php

class Functions{
    protected int $id;
    protected string $function;
    


    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of function
     */ 
    public function getFunction()
    {
        return $this->function;
    }

    /**
     * Set the value of function
     *
     * @return  self
     */ 
    public function setFunction($function)
    {
        $this->function = $function;

        return $this;
    }
}

?>