FROM odoo:18.0

USER root

# system dependency for PDF reports
RUN apt-get update && apt-get install -y wkhtmltopdf

# create addons directory
RUN mkdir -p /mnt/extra-addons

# copy module (robust path handling)
COPY pharma_control_center /mnt/extra-addons/pharma_control_center

# fix permissions
RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo