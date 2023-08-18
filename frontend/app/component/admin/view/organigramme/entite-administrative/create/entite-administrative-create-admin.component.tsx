import {Button} from 'primereact/button';
import {Column} from 'primereact/column';
import {TabView, TabPanel} from 'primereact/tabview';
import {Dialog} from 'primereact/dialog';
import {InputNumber, InputNumberChangeEvent} from 'primereact/inputnumber';
import {InputText} from 'primereact/inputtext';
import {classNames} from 'primereact/utils';
import { InputTextarea } from 'primereact/inputtextarea';
import React, {useEffect, useState} from 'react';
import {Calendar, CalendarChangeEvent} from 'primereact/calendar';
import { format } from 'date-fns';
import {InputSwitch, InputSwitchChangeEvent} from 'primereact/inputswitch';
import {Dropdown, DropdownChangeEvent} from 'primereact/dropdown';
import {MultiSelect, MultiSelectChangeEvent} from 'primereact/multiselect';
import {MessageService} from 'app/zynerator/service/MessageService';

import {EntiteAdministrativeAdminService} from 'app/controller/service/admin/EntiteAdministrativeAdminService.service';
import  {EntiteAdministrativeDto}  from 'app/controller/model/EntiteAdministrative.model';
import {EntiteAdministrativeCriteria} from "app/controller/criteria/EntiteAdministrativeCriteria.model";

import {UtilisateurDto} from 'app/controller/model/Utilisateur.model';
import {UtilisateurAdminService} from 'app/controller/service/admin/UtilisateurAdminService.service';
import {EntiteAdministrativeTypeDto} from 'app/controller/model/EntiteAdministrativeType.model';
import {EntiteAdministrativeTypeAdminService} from 'app/controller/service/admin/EntiteAdministrativeTypeAdminService.service';
import {TFunction} from "i18next";
import {Toast} from "primereact/toast";
import useCreateHook from "app/component/zyhook/useCreate.hook";



type EntiteAdministrativeCreateAdminType = {
    visible: boolean,
    onClose: () => void,
    add: (item: EntiteAdministrativeDto) => void,
    showToast: React.Ref<Toast>,
    list: EntiteAdministrativeDto[],
    service: EntiteAdministrativeAdminService,
    t: TFunction
}
const Create: React.FC<EntiteAdministrativeCreateAdminType> = ({visible, onClose, add, showToast, list, service, t}) => {


    const isFormValid = () => {
    let errorMessages = new Array<string>();
                if(item.code == '')
                errorMessages.push("code is required")
                if(item.libelle == '')
                errorMessages.push("libelle is required")
        return errorMessages.length == 0 ;
    }
    const emptyItem = new EntiteAdministrativeDto();
        const {
            item,
            setItem,
            submitted,
            setSubmitted,
            activeIndex,
            setActiveIndex,
            activeTab,
            setActiveTab,
            onInputTextChange,
            onInputDateChange,
            onInputNumerChange,
            onMultiSelectChange,
            onBooleanInputChange,
            onTabChange,
            onDropdownChange,
            hideDialog,
            saveItem,
            formateDate
        } = useCreateHook<EntiteAdministrativeDto, EntiteAdministrativeCriteria>({list, emptyItem, onClose, add, showToast,service, isFormValid})

    const [utilisateurs, setUtilisateurs] = useState<UtilisateurDto[]>([]);
    const [entiteAdministrativeTypes, setEntiteAdministrativeTypes] = useState<EntiteAdministrativeTypeDto[]>([]);


    const utilisateurAdminService = new UtilisateurAdminService();
    const entiteAdministrativeTypeAdminService = new EntiteAdministrativeTypeAdminService();

    useEffect(() => {
        utilisateurAdminService.getList().then(({data}) => setUtilisateurs(data)).catch(error => console.log(error));
        entiteAdministrativeTypeAdminService.getList().then(({data}) => setEntiteAdministrativeTypes(data)).catch(error => console.log(error));
    }, []);








    const itemDialogFooter = ( <>
        <Button label={t("cancel")} icon="pi pi-times" text onClick={hideDialog} />
        <Button label={t("save")} icon="pi pi-check" onClick={saveItem} /> </>
    );

return(
        <Dialog visible={visible} style={{width: '70vw'}} header={t("entiteAdministrative.tabPan")} modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog} >
        <TabView activeIndex={activeIndex} onTabChange={onTabChange}>
            <TabPanel header={t("entiteAdministrative.tabPan")}>
                <div className="formgrid grid">
                    <div className="field col-6">
                        <label htmlFor="code">{t("entiteAdministrative.code")}</label>
                        <InputText id="code" value={item.code} onChange={(e) => onInputTextChange(e, 'code')} required autoFocus className={classNames({'p-invalid': submitted && !item.code})} />
                        {submitted && !item.code && <small className="p-invalid">Code is required.</small>}
                    </div>
                    <div className="field col-6">
                        <label htmlFor="codeEntiteAdminParent">{t("entiteAdministrative.codeEntiteAdminParent")}</label>
                        <InputText id="codeEntiteAdminParent" value={item.codeEntiteAdminParent} onChange={(e) => onInputTextChange(e, 'codeEntiteAdminParent')} required autoFocus className={classNames({'p-invalid': submitted && !item.codeEntiteAdminParent})} />
                        {submitted && !item.codeEntiteAdminParent && <small className="p-invalid">CodeEntiteAdminParent is required.</small>}
                    </div>
                    <div className="field col-6">
                        <label htmlFor="referenceGed">{t("entiteAdministrative.referenceGed")}</label>
                        <InputText id="referenceGed" value={item.referenceGed} onChange={(e) => onInputTextChange(e, 'referenceGed')} required autoFocus className={classNames({'p-invalid': submitted && !item.referenceGed})} />
                        {submitted && !item.referenceGed && <small className="p-invalid">ReferenceGed is required.</small>}
                    </div>
                    <div className="field col-6">
                        <label htmlFor="description">{t("entiteAdministrative.description")}</label>
                        <span className="p-float-label">
                        <InputTextarea id="description" value={item.description} onChange={(e) => onInputTextChange(e, 'description')} rows={5} cols={30}/>
                    </span>
                    </div>
                    <div className="field col-6">
                        <label htmlFor="libelle">{t("entiteAdministrative.libelle")}</label>
                        <InputText id="libelle" value={item.libelle} onChange={(e) => onInputTextChange(e, 'libelle')} required autoFocus className={classNames({'p-invalid': submitted && !item.libelle})} />
                        {submitted && !item.libelle && <small className="p-invalid">Libelle is required.</small>}
                    </div>
                    <div className="field col-5">
                        <label htmlFor="utilisateur">{t("entiteAdministrative.utilisateur")}</label>
                        <Dropdown  id="utilisateurDropdown"  value={item.utilisateur} options={utilisateurs} onChange={(e) => onDropdownChange(e, 'utilisateur')}   placeholder={t("entiteAdministrative.utilisateurPlaceHolder")} filter filterPlaceholder={t("entiteAdministrative.utilisateurPlaceHolderFilter")} optionLabel="nom" />
                    </div>
                    <div className="field col-5">
                        <label htmlFor="entiteAdministrativeType">{t("entiteAdministrative.entiteAdministrativeType")}</label>
                        <Dropdown  id="entiteAdministrativeTypeDropdown"  value={item.entiteAdministrativeType} options={entiteAdministrativeTypes} onChange={(e) => onDropdownChange(e, 'entiteAdministrativeType')}   placeholder={t("entiteAdministrative.entiteAdministrativeTypePlaceHolder")} filter filterPlaceholder={t("entiteAdministrative.entiteAdministrativeTypePlaceHolderFilter")} optionLabel="libelle" />
                    </div>
                </div>
            </TabPanel>
        </TabView>
    </Dialog>
);
};
export default Create;
