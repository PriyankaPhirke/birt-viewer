for file in `find ./ -name "*.rptdesign"`
do
	echo "Updating connections in $file..."
	sed -i 's/<property name="fileName">database_connection_dev.rptlibrary<\/property>/<property name="fileName">database_connection.rptlibrary<\/property>/g' "$file"
	sed -i 's/<property name="namespace">database_connection_dev<\/property>/<property name="namespace">database_connection<\/property>/g' "$file"
	sed -i 's/<oda-data-source extensionID="org.eclipse.birt.report.data.oda.jdbc" name="DWH" id="319"/<oda-data-source extensionID="org.eclipse.birt.report.data.oda.jdbc" name="DWH" id="608"/g' "$file"
	sed -i 's/extends="database_connection_dev.DWH"\/>/extends="database_connection.DWH"\/>/g' "$file"
done

