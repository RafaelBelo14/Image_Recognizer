clc, clear
fprintf("[1]lyrics.txt\n");
fprintf("[2]landscape.bmp\n");
fprintf("[3]MRI.bmp\n");
fprintf("[4]MRIbin.bmp\n");
fprintf("[5]soundMono.wav\n\n");
opc = input('Qual o ficheiro que deseja abrir?(Digite o número)  ');

switch opc
    case 1
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto(sem caracteres repetidos!):   ");
            le_texto("lyrics.txt", alfa);
        else 
            le_texto("lyrics.txt");
        end
          
    case 2
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            le_img("landscape.bmp", alfa);
        else 
            le_img("landscape.bmp");
        end
        
    case 3
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            le_img("MRI.bmp", alfa);
        else 
            le_img("MRI.bmp");
        end
        
    case 4
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            le_img("MRIbin.bmp", alfa);
        else 
            le_img("MRIbin.bmp");
        end
        
    case 5
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            le_som("soundMono.wav", alfa);
        else 
            le_som("soundMono.wav");
        end
end    
