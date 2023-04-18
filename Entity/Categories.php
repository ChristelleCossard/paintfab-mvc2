<?php

class Categories{
    protected int $id;
    protected string $famille;



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
     * Get the value of famille
     */ 
    public function getFamille()
    {
        return $this->famille;
    }

    /**
     * Set the value of famille
     *
     * @return  self
     */ 
    public function setFamille($famille)
    {
        $this->famille = $famille;

        return $this;
    }
}