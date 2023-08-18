import {BaseDto} from 'app/zynerator/dto/BaseDto.model';

import {GenderDto} from 'app/controller/model/Gender.model';

export class UtilisateurDto extends BaseDto{

    public email: string;

    public telephone: string;

    public nom: string;

    public prenom: string;

   public dateNaissance: Date;

    public gender: GenderDto ;


    constructor() {
        super();
        this.email = '';
        this.telephone = '';
        this.nom = '';
        this.prenom = '';
        this.dateNaissance = null;
        this.gender = new GenderDto() ;
        }

}
