from django.conf.urls import url, include

from .api import OrganizationList, OrganizationDetail

organization_urls = [
    url(r'^$', OrganizationList.as_view(), name='org-list'),
    url(r'^/(?P<pk>\d+)$', OrganizationDetail.as_view(), name='org-detail'),

]

urlpatterns = [
    url(r'^posts', include(organization_urls)),
    url(r'^orgs', include(organization_urls)),
]
