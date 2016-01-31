from rest_framework import generics, permissions


from .serializers import OrganizationSerializer
from .models import Organization

class OrganizationMixin(object):
    model = Organization
    serializer_class = OrganizationSerializer
    permission_classes = [
        permissions.AllowAny
    ]

    # def pre_save(self, obj):
    #     """Force author to the current user on save"""
    #     obj.author = self.request.user
    #     return super(PostMixin, self).pre_save(obj)


class OrganizationList(OrganizationMixin, generics.ListCreateAPIView):
    queryset = Organization.objects
    pass


class OrganizationDetail(OrganizationMixin, generics.RetrieveUpdateDestroyAPIView):
    queryset = Organization.objects
    pass


