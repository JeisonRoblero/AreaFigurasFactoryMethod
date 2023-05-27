/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.factoryMethod;

/**
 *
 * @author pablo
 */
public class PerimetroFactory {
    
    public double calcularPerimetro(double v1, double v2, double v3, double v4, TipoFigura tipoFigura){
        double perimetro = 0;
        
        switch(tipoFigura){
        case TRIANGULO:
            FiguraTriangulo figuraTriangulo = new FiguraTriangulo();
            perimetro = figuraTriangulo.perimetro(v1, v2, v3, v4);
            break;
        case CUADRADO:
            FiguraCuadrado figuraCuadrado = new FiguraCuadrado();
            perimetro = figuraCuadrado.perimetro(v1, v2, v3, v4);
            break;
        case ROMBO:
            FiguraRombo figuraRombo = new FiguraRombo();
            perimetro = figuraRombo.perimetro(v1, v2, v3, v4);
            break;
        case TRAPECIO:
            FiguraTrapecio figuraTrapecio = new FiguraTrapecio();
            perimetro = figuraTrapecio.perimetro(v1, v2, v3, v4);
            break;
        case CIRCULO:
            FiguraCirculo figuraCirculo = new FiguraCirculo();
            perimetro = figuraCirculo.perimetro(v1, v2, v3, v4);
            break;
        case RECTANGULO:
            FiguraRectangulo figuraRectangulo = new FiguraRectangulo();
            perimetro = figuraRectangulo.perimetro(v1, v2, v3, v4);
            break;
        }
        
        return perimetro;
    }
}
