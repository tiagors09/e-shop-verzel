package br.com.tiagors09.eshopverzel.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "veiculos")
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Veiculo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String nome;

    @Column
    private String marca;

    @Column
    private String modelo;

    @Column(length = 100)
    private String descricao;

    @Column
    private String fotoUrl;
}
