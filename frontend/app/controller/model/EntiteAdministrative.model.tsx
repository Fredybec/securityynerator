import {BaseDto} from 'app/zynerator/dto/BaseDto.model';

import {EntiteAdministrativeTypeDto} from 'app/controller/model/EntiteAdministrativeType.model';
import {UtilisateurDto} from 'app/controller/model/Utilisateur.model';

export class EntiteAdministrativeDto extends BaseDto{

    public code: string;

    public codeEntiteAdminParent: string;

    public referenceGed: string;

    public description: string;

    public libelle: string;

    public utilisateur: UtilisateurDto ;
    public entiteAdministrativeType: EntiteAdministrativeTypeDto ;


    constructor() {
        super();
        this.code = '';
        this.codeEntiteAdminParent = '';
        this.referenceGed = '';
        this.description = '';
        this.libelle = '';
        this.utilisateur = new UtilisateurDto() ;
        this.entiteAdministrativeType = new EntiteAdministrativeTypeDto() ;
        }

}
