import axios, {AxiosResponse} from "axios";
import {PaginatedList} from "../dto/PaginatedList.model";
import {BaseDto} from "../dto/BaseDto.model";
import {BaseCriteria} from "../criteria/BaseCriteria.model";

class AbstractService<T extends BaseDto, C extends BaseCriteria> {
    private _url: string




    constructor(private baseUrl: string, private beanName: string) {
        this._url = baseUrl + beanName;
    }

    getList(): Promise<AxiosResponse<T[]>> {
        return axios.get(this._url);
    }

    save(item: T): Promise<AxiosResponse<T>> {
        return axios.post(this._url, item);
    }

    update(item: T): Promise<AxiosResponse<T>> {
        return axios.put(this._url, item);
    }

    delete(id: number): Promise<AxiosResponse<T>> {
        return axios.delete(this._url + 'id/' + id);
    }

    deleteList(items: T[]): Promise<AxiosResponse<string>> {
        return axios.post(this._url + 'multiple', items);
    }

    findPaginatedByCriteria(criteria: C): Promise<AxiosResponse<PaginatedList<T>>> {
        return axios.post<PaginatedList<T>>(this._url + 'find-paginated-by-criteria', criteria);
    }


    //const onUpload = (event:any) => {
    uploadAndOcr(event:any)  {
        const formData = new FormData();
        formData.append('file', event.files[0]);

        axios.post('http://localhost:8037/minio/upload/file/ged', formData).then(response => {
            console.log('Upload successful:', response.data);
        }).catch(error => {
            console.error('Upload error:', error);
        });

        axios.post('http://localhost:8038/api/admin/ocr/', formData).then(response => {
            console.log('OCR successful:', response.data);
        }).catch(error => {
            console.error('OCR error:', error);
        });
    };

}

export default AbstractService;
