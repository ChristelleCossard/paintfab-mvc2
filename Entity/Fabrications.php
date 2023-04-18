<?php

class Fabrications{
    protected int $id;
    protected int $op;
    protected string $teinte;
    protected string $aspect;
    protected float $quantite_fab;
    protected float $price_kg;
    


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
     * Get the value of op
     */ 
    public function getOp()
    {
        return $this->op;
    }

    /**
     * Set the value of op
     *
     * @return  self
     */ 
    public function setOp($op)
    {
        $this->op = $op;

        return $this;
    }

    /**
     * Get the value of teinte
     */ 
    public function getTeinte()
    {
        return $this->teinte;
    }

    /**
     * Set the value of teinte
     *
     * @return  self
     */ 
    public function setTeinte($teinte)
    {
        $this->teinte = $teinte;

        return $this;
    }

    /**
     * Get the value of aspect
     */ 
    public function getAspect()
    {
        return $this->aspect;
    }

    /**
     * Set the value of aspect
     *
     * @return  self
     */ 
    public function setAspect($aspect)
    {
        $this->aspect = $aspect;

        return $this;
    }

    /**
     * Get the value of quantite_fab
     */ 
    public function getQuantite_fab()
    {
        return $this->quantite_fab;
    }

    /**
     * Set the value of quantite_fab
     *
     * @return  self
     */ 
    public function setQuantite_fab($quantite_fab)
    {
        $this->quantite_fab = $quantite_fab;

        return $this;
    }

    /**
     * Get the value of price_kg
     */ 
    public function getPrice_kg()
    {
        return $this->price_kg;
    }

    /**
     * Set the value of price_kg
     *
     * @return  self
     */ 
    public function setPrice_kg($price_kg)
    {
        $this->price_kg = $price_kg;

        return $this;
    }
}
?>