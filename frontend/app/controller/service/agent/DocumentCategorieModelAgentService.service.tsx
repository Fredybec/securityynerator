import { AGENT_URL } from 'layout/AppConfig';
import AbstractService from "app/zynerator/service/AbstractService";

import {DocumentCategorieModelDto} from 'app/controller/model/DocumentCategorieModel.model';
import {DocumentCategorieModelCriteria} from 'app/controller/criteria/DocumentCategorieModelCriteria.model';

export class DocumentCategorieModelAgentService extends AbstractService<DocumentCategorieModelDto, DocumentCategorieModelCriteria>{

    constructor() {
        super(AGENT_URL , 'documentCategorieModel/');
    }

};