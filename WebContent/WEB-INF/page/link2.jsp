<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
link2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsplink2.jsp
Compressed and uncompressed copies of jQuery files are available. The uncompressed file is best used during development or debugging; the compressed file saves bandwidth and improves performance in production. You can also download a sourcemap file for use when debugging with a compressed file. The map file is not required for users to run jQuery, it just improves the developer's debugger experience. As of jQuery 1.11.0/2.1.0 the //# sourceMappingURL comment is not included in the compressed file.

To locally download these files, right-click the link and select "Save as..." from the menu.

link jQuery

For help when upgrading jQuery, please see the upgrade guide most relevant to your version. We also recommend using the jQuery Migrate plugin.

Download the compressed, production jQuery 3.1.1

Download the uncompressed, development jQuery 3.1.1

Download the map file for jQuery 3.1.1

You can also use the slim version:

Download the compressed, production jQuery 3.1.1 slim build

Download the uncompressed, development jQuery 3.1.1 slim build

Download the map file for the jQuery 3.1.1 slim build

jQuery 3.1.1 release notes

link Downloading jQuery using npm
jQuery is registered as a package on npm. You can install the latest version of jQuery with the command:

1
npm install jquery
This will install jQuery in the node_modules directory. Within node_modules/jquery/dist/ you will find an uncompressed release, a compressed release, and a map file.

link Downloading jQuery using Bower
jQuery is also registered as a package with Bower. You can install the latest version of jQuery with the command:

1
bower install jquery
This will install jQuery to Bower's install directory, the default being bower_components. Within bower_components/jquery/dist/ you will find an uncompressed release, a compressed release, and a map file.

The jQuery Bower package contains additional files besides the default distribution. In most cases you can ignore these files, however if you wish to download the default release on its own you can use Bower to install jQuery from one of the above urls instead of the registered package. For example, if you wish to install just the compressed jQuery file, you can install just that file with the following command:

1
bower install https://code.jquery.com/jquery-3.1.1.min.js
link jQuery Migrate Plugin
We have created the jQuery Migrate plugin to simplify the transition from older versions of jQuery. The plugin restores deprecated features and behaviors so that older code will still run properly on newer versions of jQuery. Use the uncompressed development version to diagnose compatibility issues, it will generate warnings on the console that you can use to identify and fix problems. Use the compressed production version to simply fix compatibility issues without generating console warnings.

There are two versions of Migrate. The first will help you update your pre-1.9 jQuery code to jQuery 1.9 up to 3.0. You can get that version here:

Download the compressed, production jQuery Migrate 1.4.1

Download the uncompressed, development jQuery Migrate 1.4.1

The second version helps you update code to run on jQuery 3.0 or higher, once you have used Migrate 1.x and upgraded to jQuery 1.9 or higher:

Download the compressed, production jQuery Migrate 3.0.0

Download the uncompressed, development jQuery Migrate 3.0.0

link Cross-Browser Testing with jQuery
Be sure to test web pages that use jQuery in all the browsers you want to support. The Microsoft Developer Resources site makes available virtual machines for testing many different versions of Internet Explorer. Older versions of other browsers can be found at oldversion.com.

link jQuery Pre-Release Builds
The jQuery team is constantly working to improve the code. Each commit to the Github repo generates a work-in-progress version of the code that we update on the jQuery CDN. These versions are sometimes unstable and never suitable for production sites. We recommend they be used to determine whether a bug has already been fixed when reporting bugs against released versions, or to see if new bugs have been introduced.

Download the work-in-progress jQuery build

link Using jQuery with a CDN
CDNs can offer a performance benefit by hosting jQuery on servers spread across the globe. This also offers an advantage that if the visitor to your webpage has already downloaded a copy of jQuery from the same CDN, it won't have to be re-downloaded.

link jQuery's CDN provided by MaxCDN

The jQuery CDN supports Subresource Integrity (SRI) which allows the browser to verify that the files being delivered have not been modified. This specification is currently being implemented by browsers. Adding the new integrity attribute will ensure your application gains this security improvement as browsers support it.

To use the jQuery CDN, just reference the file in the script tag directly from the jQuery CDN domain. You can get the complete script tag, including Subresource Integrity attribute, by visiting https://code.jquery.com and clicking on the version of the file that you want to use. Copy and paste that tag into your HTML file.

Starting with jQuery 1.9, sourcemap files are available on the jQuery CDN. However, as of version 1.10.0/2.1.0 the compressed jQuery no longer includes the sourcemap comment in CDN copies because it requires the the uncompressed file and sourcemap file to be placed at the same location as the compressed file. If you are maintaining local copies and can control the locations all three files, you can add the sourcemap comment to the compressed file for easier debugging.
</body>
</html>