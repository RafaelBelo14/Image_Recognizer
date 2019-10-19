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
            alfa = input("Introduza o afabeto:   ");
            alfa = le_texto("lyrics.txt", alfa);
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_texto("lyrics.txt", alfa2);
        else 
            alfa = le_texto("lyrics.txt");
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_texto("lyrics.txt", alfa2);
        end
          
    case 2
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            alfa = le_img("landscape.bmp", alfa);
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_img("landscape.bmp", alfa2);
        else 
            alfa = le_img("landscape.bmp");
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_img("landscape.bmp", alfa2);
        end
        
    case 3
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            alfa =le_img("MRI.bmp", alfa);
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_img("MRI.bmp", alfa2);
        else 
            alfa = le_img("MRI.bmp");
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_img("MRI.bmp", alfa2);
        end
        
    case 4
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            le_img("MRIbin.bmp", alfa);
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_img("MRIbin.bmp", alfa2);
        else 
            alfa = le_img("MRIbin.bmp");
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_img("MRIbin.bmp", alfa2);
        end
        
    case 5
        r = input("Deseja introduzir um alfabeto?(1/2)   ");
        if (r == 1)
            alfa = input("Introduza o afabeto:   ");
            alfa = le_som("soundMono.wav", alfa);
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_som("soundMono.wav", alfa2);
        else 
            alfa = le_som("soundMono.wav");
            fprintf("\n\n------------SIMBOLOS AGRUPADOS----------------\n\n");
            alfa2 = agrupa_simbolos(alfa);
            alfa2 = le_som("soundMono.wav", alfa2);
        end
end    
