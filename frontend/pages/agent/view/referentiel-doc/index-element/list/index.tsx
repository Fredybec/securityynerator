import {NextPageWithLayout} from 'next';
import {ReactNode} from 'react';

import IndexElementsList from 'app/component/agent/view/referentiel-doc/index-element/list/index-element-list-agent.component';
import Layout from 'layout/layout';
import AuthGuard from 'app/component/auth/auth-guard.component';

const IndexElements: NextPageWithLayout = () => {
    return <IndexElementsList />
}

IndexElements.getLayout = function getLayout(page: ReactNode) {
    return (
    <AuthGuard>
        <Layout>
            {page}
        </Layout>
    </AuthGuard>
    )
}

export default IndexElements;
