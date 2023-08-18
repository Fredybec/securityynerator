import {BaseCriteria} from 'app/zynerator/criteria/BaseCriteria.model';

import {EntiteAdministrativeTypeCriteria} from './EntiteAdministrativeTypeCriteria.model';
import {UtilisateurCriteria} from './UtilisateurCriteria.model';




export class EntiteAdministrativeCriteria  extends  BaseCriteria {

    public id: number;

    public code: string;
    public codeLike: string;
    public codeEntiteAdminParent: string;
    public codeEntiteAdminParentLike: string;
    public referenceGed: string;
    public referenceGedLike: string;
    public description: string;
    public descriptionLike: string;
    public libelle: string;
    public libelleLike: string;
  public utilisateur: UtilisateurCriteria ;
  public utilisateurs: Array<UtilisateurCriteria> ;
  public entiteAdministrativeType: EntiteAdministrativeTypeCriteria ;
  public entiteAdministrativeTypes: Array<EntiteAdministrativeTypeCriteria> ;

    constructor() {
        super();
        this.code = '';
        this.codeLike = '';
        this.codeEntiteAdminParent = '';
        this.codeEntiteAdminParentLike = '';
        this.referenceGed = '';
        this.referenceGedLike = '';
        this.description = '';
        this.descriptionLike = '';
        this.libelle = '';
        this.libelleLike = '';
        this.utilisateur = new UtilisateurCriteria() ;
        this.utilisateurs = new Array<UtilisateurCriteria>() ;
        this.entiteAdministrativeType = new EntiteAdministrativeTypeCriteria() ;
        this.entiteAdministrativeTypes = new Array<EntiteAdministrativeTypeCriteria>() ;
    }

}
