<?php

class Raw_materials{
    protected int $id;
    protected string $nom_commercial;
    protected string $nature_chimique;
    protected float $price_kg;
    protected float $stock;
    protected string $securite;
    


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
     * Get the value of nom_commercial
     */ 
    public function getNom_commercial()
    {
        return $this->nom_commercial;
    }

    /**
     * Set the value of nom_commercial
     *
     * @return  self
     */ 
    public function setNom_commercial($nom_commercial)
    {
        $this->nom_commercial = $nom_commercial;

        return $this;
    }

    /**
     * Get the value of nature_chimique
     */ 
    public function getNature_chimique()
    {
        return $this->nature_chimique;
    }

    /**
     * Set the value of nature_chimique
     *
     * @return  self
     */ 
    public function setNature_chimique($nature_chimique)
    {
        $this->nature_chimique = $nature_chimique;

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

    /**
     * Get the value of stock
     */ 
    public function getStock()
    {
        return $this->stock;
    }

    /**
     * Set the value of stock
     *
     * @return  self
     */ 
    public function setStock($stock)
    {
        $this->stock = $stock;

        return $this;
    }

    /**
     * Get the value of securite
     */ 
    public function getSecurite()
    {
        return $this->securite;
    }

    /**
     * Set the value of securite
     *
     * @return  self
     */ 
    public function setSecurite($securite)
    {
        $this->securite = $securite;

        return $this;
    }
}
?>