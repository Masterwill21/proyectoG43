package com.grupo5.pedidos.models;

public class pedidoModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private long ID_PEDI;

    private String FECH_PEDI;
    private String ID_USUA_PEDI;
    private String DIRE_PEDI;
    private int ESTA_PEDI;

    public long getID_PEDI() {
        return ID_PEDI;
    }

    public void setID_PEDI(long ID_PEDI) {
        this.ID_PEDI = ID_PEDI;
    }

    public String getFECH_PEDI() {
        return FECH_PEDI;
    }

    public void setFECH_PEDI(String FECH_PEDI) {
        this.FECH_PEDI = FECH_PEDI;
    }

    public String getID_USUA_PEDI() {
        return ID_USUA_PEDI;
    }

    public void setID_USUA_PEDI(String ID_USUA_PEDI) {
        this.ID_USUA_PEDI = ID_USUA_PEDI;
    }

    public String getDIRE_PEDI() {
        return DIRE_PEDI;
    }

    public void setDIRE_PEDI(String DIRE_PEDI) {
        this.DIRE_PEDI = DIRE_PEDI;
    }

    public int getESTA_PEDI() {
        return ESTA_PEDI;
    }

    public void setESTA_PEDI(int ESTA_PEDI) {
        this.ESTA_PEDI = ESTA_PEDI;
    }
}
