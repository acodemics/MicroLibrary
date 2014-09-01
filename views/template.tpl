<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <title>MicroLibrary</title>
        <link rel="stylesheet" type="text/css" href="/css/style.css" media="screen" />
        <script type="text/javascript" src="/js/utils.js"></script>
    </head>

    <body>
        <div id="wrap">
            <div id="top">
                <h2><a href="/" title="Back to main page">MicroLibrary</a></h2>
            </div>
            <div id='menu'>
                <ul>
                   <li><a href='/'><span>Home</span></a></li>
                   <li><a href='/ManageItems'><span>Manage Items</span></a></li>
                </ul>
            </div>

            <div id="content">
            <div id="left">

                % if defined('anchors'):
                    <h2 class="section_header">Quick Jump</h2>
                        <ul>
                            % for item in anchors:
                                <li>{{!item}}</li>
                            %end
                        </ul>
                    <div id="clear"></div>
                %end
                % setdefault ('main_content', 'Please choose a report from the list on the right.')
                {{!main_content}}
            </div>
            <div id="right">
                <div class="box">
                    <h2>Recent Entries</h2>
                    % if defined('results'):	
                        <ul>
                            % for item in results:
                                <li><a href="/display/{{item}}">{{item}}</a></li>
                            %end
                        </ul>
                    % end
                    <p style="text-align:center"><a href="/AllTests">All Tests</a></p>
                </div>
            </div>
            <div id="clear"></div>
        </div>
            <div id="footer">
                <p>Powered by MicroLibrary</p>
            </div>
        </div>
    </body>
</html>