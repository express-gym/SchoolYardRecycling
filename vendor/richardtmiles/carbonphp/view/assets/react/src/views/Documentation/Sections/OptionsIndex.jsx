import React from "react";
// react plugin for creating date-time-picker
// @material-ui/core components
import withStyles from "@material-ui/core/styles/withStyles";
// core components
import GridContainer from "components/Grid/GridContainer.jsx";
import GridItem from "components/Grid/GridItem.jsx";
import javascriptStyles from "assets/jss/material-kit-react/views/componentsSections/javascriptStyles.jsx";

import renderHTML from 'react-render-html';

const codeSnippit = "<span style=\"overflow-x: scroll\"> " +
    "<span style=\"color: #0000BB\">                 " +
    "</span><span style=\"color: #007700\"><?</span><span style=\"color: #0000BB\"><br /></span><span style=\"color: #FF8000\">/**<br /> * The file is automatically generated by the code generator (CG).<br /> *<br /> *  Invalid options and code outside the optional ['SESSION']['CALLBACK']<br /> *  Will be removed if the file is regenerated. If you think code should live<br /> *  here, I suggest you add it before the start of `new CarbonPHP('pathToThisFile')`.<br /> *<br /> *  To Update/Regenerate<br /> *     >> php index.php setup<br /> *<br /> *  This will open a menu for further options.<br /> *<br /> *  Edits made to values already present in this file will be saved.<br /> *<br /> *  Available Options:<br /> *<br /> * @type $PHP = [<br /> *       'AUTOLOAD' => string array []                       // Provide PSR-4 namespace roots<br /> *       'SITE' => [<br /> *           'URL' => string '',                                  // Server Url name you do not need to chane in remote development<br /> *           'ROOT' => string '__FILE__',                         // This was defined in our ../index.php<br /> *           'CACHE_CONTROL' => [                                 // Key value map of $extension => $headers<br /> *                  'png|jpg|gif|jpeg|bmp|icon|js|css' => 'Cache-Control: max-age=<seconds>',<br /> *                  'woff|woff2|map|hbs|eotv' => 'Cache-Control: no-cache ',       // if the extension is found the headers provided will be sent<br /> *            ],<br /> *           'CONFIG' => string __FILE__,                         // Send to sockets<br /> *           'TIMEZONE' => string 'America/Chicago',              // Current timezone TODO - look up php<br /> *           'TITLE' => string 'Carbon 6',                        // Website title<br /> *           'VERSION' => string /phpversion(),                   // Add link to semantic versioning<br /> *           'SEND_EMAIL' => string '',                           // I send emails to validate accounts<br /> *           'REPLY_EMAIL' => string '',<br /> *           'HTTP' => bool true<br /> *       ],<br /> *       'DATABASE' => [<br /> *           'DB_DSN'  => string '',                        // Host and Database get put here<br /> *           'DB_USER' => string '',<br /> *           'DB_PASS' => string '',<br /> *           'DB_BUILD'=> string '',                        // Absolute file path to your database set up file<br /> *           'REBUILD' => bool false<br /> *       ],<br /> *       'SESSION' => [<br /> *           'REMOTE' => bool true,             // Store the session in the SQL database<br /> *           'SERIALIZE' => [],                 // These global variables will be stored between session<br /> *           'CALLBACK' => callable,<br /> *       'SOCKET' => [<br /> *           'HOST' => string '',               // The IP or DNS server to connect ws or wss with<br /> *           'WEBSOCKETD' => bool false,<br /> *           'PORT' => int 8888,<br /> *           'DEV' => bool false,<br /> *           'SSL' => [<br /> *               'KEY' => string '',<br /> *               'CERT' => string ''<br /> *           ]<br /> *       ],<br /> *       'ERROR' => [<br /> *           'LEVEL' => (int) E_ALL | E_STRICT,<br /> *           'STORE' => (bool) true,                // Database if specified and / or File 'LOCATION' in your system<br /> *           'SHOW' => (bool) true,                 // Show errors on browser<br /> *           'FULL' => (bool) true                  // Generate custom stacktrace will high detail - DO NOT set to TRUE in PRODUCTION<br /> *       ],<br /> *       'VIEW' => [<br /> *           'VIEW' => string '/',          // This is where the MVC() function will map the HTML.PHP and HTML.HBS . See Carbonphp.com/mvc<br /> *          'WRAPPER' => string '',         // View::content() will produce this<br /> *      ],<br /> * ]<br /> * @throws Exception<br /> */<br /><br /></span><span style=\"color: #007700\">return [<br /><br />    </span><span style=\"color: #DD0000\">'DATABASE' </span><span style=\"color: #007700\">=> [<br /><br />        </span><span style=\"color: #DD0000\">'DB_HOST' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'127.0.0.1'</span><span style=\"color: #007700\">,                        </span><span style=\"color: #FF8000\">// IP<br /><br />        </span><span style=\"color: #DD0000\">'DB_PORT' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'3306'</span><span style=\"color: #007700\">,<br /><br />        </span><span style=\"color: #DD0000\">'DB_NAME' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'CarbonPHP'</span><span style=\"color: #007700\">,                        </span><span style=\"color: #FF8000\">// Schema<br /><br />        </span><span style=\"color: #DD0000\">'DB_USER' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'root'</span><span style=\"color: #007700\">,                            </span><span style=\"color: #FF8000\">// User<br /><br />        </span><span style=\"color: #DD0000\">'DB_PASS' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'password'</span><span style=\"color: #007700\">,                        </span><span style=\"color: #FF8000\">// Password<br /><br />        </span><span style=\"color: #DD0000\">'DB_BUILD' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">''</span><span style=\"color: #007700\">,<br /><br />        </span><span style=\"color: #DD0000\">'REBUILD' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">false<br />    </span><span style=\"color: #007700\">],<br /><br />    </span><span style=\"color: #DD0000\">'SITE' </span><span style=\"color: #007700\">=> [<br /><br />        </span><span style=\"color: #DD0000\">'URL' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'carbonphp.com'</span><span style=\"color: #007700\">,    </span><span style=\"color: #FF8000\">/* Evaluated and if not the accurate Redirect. Local php server okay. Remove for any domain */<br /><br />        </span><span style=\"color: #DD0000\">'ROOT' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">APP_ROOT</span><span style=\"color: #007700\">,          </span><span style=\"color: #FF8000\">/* This was defined in our ../index.php */<br /><br />        </span><span style=\"color: #DD0000\">'CACHE_CONTROL' </span><span style=\"color: #007700\">=> [<br />            </span><span style=\"color: #DD0000\">'ico|pdf|flv' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'Cache-Control: max-age=29030400, public'</span><span style=\"color: #007700\">,<br /><br />            </span><span style=\"color: #DD0000\">'jpg|jpeg|png|gif|swf|xml|txt|css|woff2|tff|ttf|svg' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'Cache-Control: max-age=604800, public'</span><span style=\"color: #007700\">,<br /><br />            </span><span style=\"color: #DD0000\">'html|htm|php|hbs|js' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'Cache-Control: max-age=0, private, public'</span><span style=\"color: #007700\">,<br />        ],<br /><br />        </span><span style=\"color: #DD0000\">'CONFIG' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">__FILE__</span><span style=\"color: #007700\">,               </span><span style=\"color: #FF8000\">// Send to sockets<br /><br />        </span><span style=\"color: #DD0000\">'TIMEZONE' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'America/Phoenix'</span><span style=\"color: #007700\">,    </span><span style=\"color: #FF8000\">//  Current timezone<br /><br />        </span><span style=\"color: #DD0000\">'TITLE' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'CarbonPHP • C6'</span><span style=\"color: #007700\">,        </span><span style=\"color: #FF8000\">// Website title<br /><br />        </span><span style=\"color: #DD0000\">'VERSION' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'4.9.0'</span><span style=\"color: #007700\">,               </span><span style=\"color: #FF8000\">// Add link to semantic versioning<br /><br />        </span><span style=\"color: #DD0000\">'SEND_EMAIL' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'richard@miles.systems'</span><span style=\"color: #007700\">,     </span><span style=\"color: #FF8000\">// I send emails to validate accounts<br /><br />        </span><span style=\"color: #DD0000\">'REPLY_EMAIL' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'richard@miles.systems'</span><span style=\"color: #007700\">,<br /><br />        </span><span style=\"color: #DD0000\">'HTTP' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">true   </span><span style=\"color: #FF8000\">// I assume that HTTP is okay by default<br />    </span><span style=\"color: #007700\">],<br /><br />    </span><span style=\"color: #DD0000\">'SESSION' </span><span style=\"color: #007700\">=> [<br />        </span><span style=\"color: #DD0000\">'REMOTE' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">false</span><span style=\"color: #007700\">,             </span><span style=\"color: #FF8000\">// Store the session in the SQL database<br /><br />        # 'SERIALIZE' => [ ],           // These global variables will be stored between session<br /><br />        # 'PATH' => ''<br /><br />        </span><span style=\"color: #DD0000\">'CALLBACK' </span><span style=\"color: #007700\">=> function () {         </span><span style=\"color: #FF8000\">// optional variable $reset which would be true if a url is passed to startApplication()<br /><br />        </span><span style=\"color: #007700\">},<br />    ],<br /><br />    </span><span style=\"color: #DD0000\">'SOCKET' </span><span style=\"color: #007700\">=> [<br />        </span><span style=\"color: #DD0000\">'WEBSOCKETD' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">false</span><span style=\"color: #007700\">,<br />        </span><span style=\"color: #DD0000\">'PORT' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">8888</span><span style=\"color: #007700\">,<br />        </span><span style=\"color: #DD0000\">'DEV' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">true</span><span style=\"color: #007700\">,<br />        </span><span style=\"color: #DD0000\">'SSL' </span><span style=\"color: #007700\">=> [<br />            </span><span style=\"color: #DD0000\">'KEY' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">''</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #DD0000\">'CERT' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">''<br />        </span><span style=\"color: #007700\">]<br />    ],<br /><br /><br />    </span><span style=\"color: #FF8000\">// ERRORS on point<br />    </span><span style=\"color: #DD0000\">'ERROR' </span><span style=\"color: #007700\">=> [<br />        </span><span style=\"color: #DD0000\">'LOCATION' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">APP_ROOT </span><span style=\"color: #007700\">. </span><span style=\"color: #DD0000\">'logs' </span><span style=\"color: #007700\">. </span><span style=\"color: #0000BB\">DS</span><span style=\"color: #007700\">,<br /><br />        </span><span style=\"color: #DD0000\">'LEVEL' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">E_ALL </span><span style=\"color: #007700\">| </span><span style=\"color: #0000BB\">E_STRICT</span><span style=\"color: #007700\">,  </span><span style=\"color: #FF8000\">// php ini level<br /><br />        </span><span style=\"color: #DD0000\">'STORE' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">true</span><span style=\"color: #007700\">,      </span><span style=\"color: #FF8000\">// Database if specified and / or File 'LOCATION' in your system<br /><br />        </span><span style=\"color: #DD0000\">'SHOW' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">true</span><span style=\"color: #007700\">,       </span><span style=\"color: #FF8000\">// Show errors on browser<br /><br />        </span><span style=\"color: #DD0000\">'FULL' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">true        </span><span style=\"color: #FF8000\">// Generate custom stacktrace will high detail - DO NOT set to TRUE in PRODUCTION<br />    </span><span style=\"color: #007700\">],<br /><br />    </span><span style=\"color: #DD0000\">'VIEW' </span><span style=\"color: #007700\">=> [<br />        </span><span style=\"color: #DD0000\">'VIEW' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'view/'</span><span style=\"color: #007700\">,  </span><span style=\"color: #FF8000\">// This is where the MVC() function will map the HTML.PHP and HTML.HBS . See Carbonphp.com/mvc<br />        </span><span style=\"color: #DD0000\">'WRAPPER' </span><span style=\"color: #007700\">=> </span><span style=\"color: #DD0000\">'mustache/Documentation/Wrapper.hbs'</span><span style=\"color: #007700\">,     </span><span style=\"color: #FF8000\">// View::content() will produce this<br />    </span><span style=\"color: #007700\">],<br /><br />    </span><span style=\"color: #DD0000\">'MINIFY' </span><span style=\"color: #007700\">=> [<br />        </span><span style=\"color: #DD0000\">'CSS' </span><span style=\"color: #007700\">=> [<br />            </span><span style=\"color: #DD0000\">'OUT' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">APP_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'view/mustache/css/style.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/bootstrap/dist/css/bootstrap.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/dist/css/AdminLTE.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/dist/css/skins/_all-skins.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/plugins/iCheck/all.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/Ionicons/css/ionicons.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/plugins/bootstrap-slider/slider.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/dist/css/skins/skin-green.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/select2/dist/css/select2.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/plugins/iCheck/flat/blue.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/morris.js/morris.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/plugins/pace/pace.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/jvectormap/jquery-jvectormap.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/bootstrap-daterangepicker/daterangepicker.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/plugins/timepicker/bootstrap-timepicker.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/font-awesome/css/font-awesome.min.css'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/fullcalendar/dist/fullcalendar.min.css'<br />        </span><span style=\"color: #007700\">],<br />        </span><span style=\"color: #DD0000\">'JS' </span><span style=\"color: #007700\">=> [<br />            </span><span style=\"color: #DD0000\">'OUT' </span><span style=\"color: #007700\">=> </span><span style=\"color: #0000BB\">APP_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'view/mustache/js/javascript.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/jquery/dist/jquery.min.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/jquery-pjax/jquery.pjax.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'view/mustache/Layout/mustache.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'helpers/Carbon.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'helpers/asynchronous.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/jquery-form/src/jquery.form.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/bootstrap/dist/js/bootstrap.min.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/bower_components/fastclick/lib/fastclick.js'</span><span style=\"color: #007700\">,<br />            </span><span style=\"color: #0000BB\">CARBON_ROOT </span><span style=\"color: #007700\">.</span><span style=\"color: #DD0000\">'node_modules/admin-lte/dist/js/adminlte.js'</span><span style=\"color: #007700\">,<br />        ],<br />    ]<br />];</span>\n" +
    "\n" +
    "</span>\n";


class SectionJavascript extends React.Component {
    anchorElLeft = null;
    anchorElTop = null;
    anchorElBottom = null;
    anchorElRight = null;

    constructor(props) {
        super(props);
        this.state = {
            classicModal: false,
            openLeft: false,
            openTop: false,
            openBottom: false,
            openRight: false
        };
    }

    handleClickOpen(modal) {
        var x = [];
        x[modal] = true;
        this.setState(x);
    }

    handleClose(modal) {
        var x = [];
        x[modal] = false;
        this.setState(x);
    }

    handleClosePopover(state) {
        this.setState({
            [state]: false
        });
    }

    handleClickButton(state) {
        this.setState({
            [state]: true
        });
    }

    render() {
        const {classes} = this.props;
        return (
            <div className={classes.section}>
                <div className={classes.container}>
                    <GridContainer>
                        <GridItem xs={12} sm={12} md={8}>
                            <div className={classes.title}>
                                <h2>C6 Configuration Options</h2>
                            </div>
                            <p>
                                <code>
                                    {renderHTML(codeSnippit)}
                                </code>
                            </p>
                        </GridItem>
                    </GridContainer>
                </div>
            </div>
        );
    }
}

export default withStyles(javascriptStyles)(SectionJavascript);
