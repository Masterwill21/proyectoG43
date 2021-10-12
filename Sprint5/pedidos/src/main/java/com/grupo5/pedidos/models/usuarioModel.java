package com.grupo5.pedidos.models;

import javax.persistence.*;

@Entity
@Table(name = "usuario")

public class usuarioModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private long ID_USUA;

    private String NOMB_USUA;
    private String APEL_USUA;
    private String TELE_USUA;
    private String CORR_USUA;
    private String USER_USUA;
    private String PASS_USUA;
    private String TIPO_USUA;
    private String ESTA_USUA;

    public long getID_USUA() {
        return ID_USUA;
    }

    public void setID_USUA(long ID_USUA) {
        this.ID_USUA = ID_USUA;
    }

    public String getNOMB_USUA() {
        return NOMB_USUA;
    }

    public void setNOMB_USUA(String NOMB_USUA) {
        this.NOMB_USUA = NOMB_USUA;
    }

    public String getAPEL_USUA() {
        return APEL_USUA;
    }

    public void setAPEL_USUA(String APEL_USUA) {
        this.APEL_USUA = APEL_USUA;
    }

    public String getTELE_USUA() {
        return TELE_USUA;
    }

    public void setTELE_USUA(String TELE_USUA) {
        this.TELE_USUA = TELE_USUA;
    }

    public String getCORR_USUA() {
        return CORR_USUA;
    }

    public void setCORR_USUA(String CORR_USUA) {
        this.CORR_USUA = CORR_USUA;
    }

    public String getUSER_USUA() {
        return USER_USUA;
    }

    public void setUSER_USUA(String USER_USUA) {
        this.USER_USUA = USER_USUA;
    }

    public String getPASS_USUA() {
        return PASS_USUA;
    }

    public void setPASS_USUA(String PASS_USUA) {
        this.PASS_USUA = PASS_USUA;
    }

    public String getTIPO_USUA() {
        return TIPO_USUA;
    }

    public void setTIPO_USUA(String TIPO_USUA) {
        this.TIPO_USUA = TIPO_USUA;
    }

    public String getESTA_USUA() {
        return ESTA_USUA;
    }

    public void setESTA_USUA(String ESTA_USUA) {
        this.ESTA_USUA = ESTA_USUA;
    }
}
