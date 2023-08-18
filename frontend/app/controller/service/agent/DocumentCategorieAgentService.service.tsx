import { AGENT_URL } from 'layout/AppConfig';
import AbstractService from "app/zynerator/service/AbstractService";

import {DocumentCategorieDto} from 'app/controller/model/DocumentCategorie.model';
import {DocumentCategorieCriteria} from 'app/controller/criteria/DocumentCategorieCriteria.model';

export class DocumentCategorieAgentService extends AbstractService<DocumentCategorieDto, DocumentCategorieCriteria>{

    constructor() {
        super(AGENT_URL , 'documentCategorie/');
    }

};