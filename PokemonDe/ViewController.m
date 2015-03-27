#import "ViewController.h"

@interface ViewController ()

//Arrays e contador
@property (nonatomic) int contadorIndex;
@property (nonatomic, copy) NSArray *segundo_Resposta;
@property (nonatomic, copy) NSArray *segundo_Habilidade;
//Label dos pokemons
@property (nonatomic, weak) IBOutlet UILabel *Resposta;
//Boteos dos pokemons
@property (nonatomic, weak) IBOutlet UIButton *Pokemon;
@property (nonatomic, weak) IBOutlet UIButton *Info;
@property (weak, nonatomic) IBOutlet UILabel *habilidadeLbl;
//Imagens dos pokemons
@property (weak, nonatomic) IBOutlet UIImageView *Imagens;
@property (weak, nonatomic) IBOutlet UIImageView *ImagensEvolution;
@property (weak, nonatomic) IBOutlet UIImageView *ImagensEvolution2;
@property (weak, nonatomic) IBOutlet UIImageView *ImagensEvolution3;
@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
    //Tipo do pokemon
    self.segundo_Resposta = @[@"Normal",//Meowth
                              @"Normal",//Miltank
                              @"Fogo",//Grownlight
                              @"Fantasma",//Gengar
                              @"Lutador",//Hitmonlee
                              @"Elétrico",//Pikachu
                              @"Fogo",//Charizard
                              @"Venenoso/Pedra",//Nidoqueen
                              @"Grama/Venenoso",//Venosaur
                              @"Água/Gelo",//Lapras
                              @"Água/Gelo"//Cloyster
                              ];
    //Habilidades dos pokemons
    self.segundo_Habilidade = @[@"Pickup, Technician, Unnerve",//Meowth
                                @"Thick Fat, Scrappy, Sap Sipper",//Miltank
                                @"Intimidade, Flash Fire, Justified",//Grownlight
                                @"Levitate",//Gengar
                                @"Limber, Reckless, Unburden",//Hitmonlee
                                @"Static, Lightninrod",//Pikachu
                                @"Blaze, Solar Power",//Charizard
                                @"Poison Point, Rivarly, Overcoat",//Nidoqueen
                                @"Overgrown, Chlorophyll",//Venosaur
                                @"Water Absorb,Shell Armor",//Lapras
                                @"Shell Armor, Skill Link, Overcoat"//Cloyster
                                ];
}

//Todos os meus pokemons
-(NSString *)RetornaStringparaoIndice:(NSInteger)x{
    switch (x) {
        case 0:
            return @"Miau.png";
        case 1:
            return @"Miltank.png";
        case 2:
            return @"Grown.png";
        case 3:
            return @"Gengar.png";
        case 4:
            return @"Hitmonchan.png";
        case 5:
            return @"Pikachu.png";
        case 6:
            return @"charizard.png";
        case 7:
            return @"Nidoqueen.png";
        case 8:
            return @"Venosaur.png";
        case 9:
            return @"Lapras.png";
        case 10:
            return @"Cloyster.png";
    }
    
    return @"Miau.png";
}
//Evolucao do pokemons 3
-(NSString *)RetornaStringparaoIndiceEvolu3:(NSInteger)x{
    switch (x) {
        case 0:
            return nil;//nao possui
        case 1:
            return nil;//nao possui
        case 2:
            return nil;//nao possui
        case 3:
            return @"Gengar.png";
        case 4:
            return nil;//nao possui
        case 5:
            return @"Raichu.png";
        case 6:
            return @"charizard.png";
        case 7:
            return @"Nidoqueen.png";
        case 8:
            return @"Venosaur.png";
        case 9:
            return nil;//nao possui
        case 10:
            return nil;//nao possui
    }
    
    return @"Miau.png";
}
//Evolucao do pokemon 2 se tiver
-(NSString *)RetornaStringparaoIndiceEvolu2:(NSInteger)x{
    switch (x) {
        case 0:
            return @"Persia.png";
        case 1:
            return nil;//nao possui
        case 2:
            return @"Arcanine.png";
        case 3:
            return @"hunter.png";
        case 4:
            return nil;//nao possui
        case 5:
            return @"Pikachu.png";
        case 6:
            return @"charmelon.png";
        case 7:
            return @"Nidorina.png";
        case 8:
            return @"Ivysaur.png";
        case 9:
            return nil;//nao possui
        case 10:
            return @"Cloyster.png";
    }
    
    return @"Miau.png";
}
//Primeira
-(NSString *)RetornaStringparaoIndiceEvolu1:(NSInteger)x{
    switch (x) {
        case 0:
            return @"Miau.png";
        case 1:
            return nil;//nao possui
        case 2:
            return @"Grown.png";
        case 3:
            return @"gastly.png";
        case 4:
            return nil;//nao possui
        case 5:
            return @"pichu.png";
        case 6:
            return @"charmander.png";
        case 7:
            return @"Nidoran.png";
        case 8:
            return @"bulbasaur.png";
        case 9:
            return nil;//nao possui
        case 10:
            return @"Shellder.png";
    }
    
    return @"Miau.png";
}

//Contador de acoes
-(IBAction)Pokemon:(id)sender
{
    //Controlador de tamanho do array
    if(self.contadorIndex == 10){
        self.contadorIndex = -1;
    }
    self.contadorIndex++;
    
    if(self.contadorIndex == [self.segundo_Resposta count])
    {
        self.contadorIndex = 0;
    }
    
    //Associando imagem com meu contador
    self.Imagens.image = [UIImage imageNamed:[self RetornaStringparaoIndice:self.contadorIndex]];
    self.Resposta.text = [[self segundo_Resposta] objectAtIndex:self.contadorIndex];
    self.habilidadeLbl.text = [self.segundo_Habilidade objectAtIndex:self.contadorIndex];
    self.ImagensEvolution.image = [UIImage imageNamed:[self RetornaStringparaoIndiceEvolu3:self.contadorIndex]];
    self.ImagensEvolution2.image = [UIImage imageNamed:[self RetornaStringparaoIndiceEvolu2:self.contadorIndex]];
    self.ImagensEvolution3.image = [UIImage imageNamed:[self RetornaStringparaoIndiceEvolu1:self.contadorIndex]];
}
//Respostas dos meus pokemons
-(IBAction)Info:(id)sender
{
    self.Resposta.text = [[self segundo_Resposta] objectAtIndex:self.contadorIndex];
}

@end
