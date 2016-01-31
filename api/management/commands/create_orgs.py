from api.models import Organization
from django.core.management.base import BaseCommand


incomes = [100, 200]

class Command(BaseCommand):
    def handle(self, *args, **options):

        for i, income in enumerate(incomes):
            Organization.objects.create(title="Title #{}".format(i + 1), income=income)
