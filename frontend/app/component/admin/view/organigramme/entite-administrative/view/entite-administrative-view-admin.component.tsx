import {Column} from 'primereact/column';
import {TabPanel, TabView} from 'primereact/tabview';
import {DataTable} from 'primereact/datatable';
import {Dialog} from 'primereact/dialog';
import {InputNumber} from 'primereact/inputnumber';
import {InputText} from 'primereact/inputtext';
import {InputTextarea} from 'primereact/inputtextarea';
import React from 'react';
import {Calendar} from 'primereact/calendar';
import {InputSwitch} from 'primereact/inputswitch';
import {TFunction} from "i18next";
import useViewHook from "app/component/zyhook/useViewhook";

import  {EntiteAdministrativeDto}  from 'app/controller/model/EntiteAdministrative.model';

type EntiteAdministrativeViewAdminType = {
    visible: boolean,
    onClose: () => void,
    selectedItem: EntiteAdministrativeDto,
    t: TFunction
}

const View: React.FC<EntiteAdministrativeViewAdminType> = ({visible,onClose,selectedItem, t}) => {

    const {
    onTabChange,
    hideDialog,
    itemDialogFooter,
    formateDate,
    parse,
    parseToIsoFormat,
    adaptDate,
    activeIndex
    } = useViewHook<EntiteAdministrativeDto>({selectedItem, onClose})


        return(
<Dialog visible={visible} style={{width: '70vw'}} header={t("entiteAdministrative.tabPan")} modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog} >
<TabView activeIndex={activeIndex} onTabChange={onTabChange}>
<TabPanel header={t("entiteAdministrative.tabPan")}>
    <div className="formgrid grid">

            <div className="field col-6">
                <label htmlFor="code">{t("entiteAdministrative.code")}</label>
                <InputText id="code" value={selectedItem?.code} disabled   />
            </div>

            <div className="field col-6">
                <label htmlFor="codeEntiteAdminParent">{t("entiteAdministrative.codeEntiteAdminParent")}</label>
                <InputText id="codeEntiteAdminParent" value={selectedItem?.codeEntiteAdminParent} disabled   />
            </div>

            <div className="field col-6">
                <label htmlFor="referenceGed">{t("entiteAdministrative.referenceGed")}</label>
                <InputText id="referenceGed" value={selectedItem?.referenceGed} disabled   />
            </div>

            <div className="field col-6">
                <label htmlFor="description">{t("entiteAdministrative.description")}</label>
                <span className="p-float-label">
                   <InputTextarea id="description" value={selectedItem?.description} disabled rows={5} cols={30} />
                </span>
            </div>

            <div className="field col-6">
                <label htmlFor="libelle">{t("entiteAdministrative.libelle")}</label>
                <InputText id="libelle" value={selectedItem?.libelle} disabled   />
            </div>

                <div className="field col-6">
                    <label htmlFor="utilisateur">{t("entiteAdministrative.utilisateur")}</label>
                    <InputText  id="utilisateurDropdown"  value={selectedItem?.utilisateur?.nom}  disabled  />
                </div>
                <div className="field col-6">
                    <label htmlFor="entiteAdministrativeType">{t("entiteAdministrative.entiteAdministrativeType")}</label>
                    <InputText  id="entiteAdministrativeTypeDropdown"  value={selectedItem?.entiteAdministrativeType?.libelle}  disabled  />
                </div>
        </div>
</TabPanel>
</TabView>
</Dialog>
);
};
export default View;
