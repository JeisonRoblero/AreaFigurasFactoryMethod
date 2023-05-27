/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.factoryMethod;

/**
 *
 * @author pablo
 */
public class AreaFactory {
    
    public double calcularArea(double v1, double v2, double v3, TipoFigura tipoFigura){
        double area = 0;
        
        switch(tipoFigura){
        case TRIANGULO:
            FiguraTriangulo figuraTriangulo = new FiguraTriangulo();
            area = figuraTriangulo.area(v1, v2, v3);
            break;
        case CUADRADO:
            FiguraCuadrado figuraCuadrado = new FiguraCuadrado();
            area = figuraCuadrado.area(v1, v2, v3);
            break;
        case ROMBO:
            FiguraRombo figuraRombo = new FiguraRombo();
            area = figuraRombo.area(v1, v2, v3);
            break;
        case TRAPECIO:
            FiguraTrapecio figuraTrapecio = new FiguraTrapecio();
            area = figuraTrapecio.area(v1, v2, v3);
            break;
        case CIRCULO:
            FiguraCirculo figuraCirculo = new FiguraCirculo();
            area = figuraCirculo.area(v1, v2, v3);
            break;
        case RECTANGULO:
            FiguraRectangulo figuraRectangulo = new FiguraRectangulo();
            area = figuraRectangulo.area(v1, v2, v3);
            break;
        }
        
        return area;
    }
    
}
