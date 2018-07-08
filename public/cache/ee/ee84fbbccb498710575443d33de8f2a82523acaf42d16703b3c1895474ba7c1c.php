<?php

/* main.html */
class __TwigTemplate_001e134f2283100fc496faacb2444cfaa1856071e681d01464efb41f9e5f3a43 extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <title>Test</title>
    <link href=\"css/main.css\" rel=\"stylesheet\"/>
</head>
<body>
    <div class='overlay-container invisible'>
       <div class=\"overlay\">
            <img class=\"icon\" id='close' src=\"./close-icon.png\" alt=\"\">
            <img class=\"mainView\" src=\"./img/pic4.jpg\" alt=\"\" />
       </div>
    </div>
<div class=\"wrapper\">
    <div class=\"mainCont\" >
        <div class=\"photoCont\" id='cont'>
           <h2>Hi! ";
        // line 18
        echo twig_escape_filter($this->env, ($context["curentPage"] ?? null), "html", null, true);
        echo "</h2>
           ";
        // line 19
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["goods"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["pic"]) {
            // line 20
            echo "            <div>
               <div class='inner'>
                  <img src=\"/img/";
            // line 22
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pic"], "fname", array()), "html", null, true);
            echo "\" 
                  id=\"";
            // line 23
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pic"], "id", array()), "html", null, true);
            echo "\" alt='' border='0'
                  style = 'width: 200px; height: 124px;'/>
                  <div class='badge'><p>0</p></div>
                  <h4> ";
            // line 26
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pic"], "name", array()), "html", null, true);
            echo " </h4>
                  <p> ";
            // line 27
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["pic"], "description", array()), "html", null, true);
            echo " </p>
               </div>
            </div>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pic'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 31
        echo "        </div>

    </div> <!-- mainCont -->
    <div class=\"clearfix\"></div>
</div> <!-- wrapper  -->
<script src=\"js/main.js\"></script>

</html>
";
    }

    public function getTemplateName()
    {
        return "main.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  78 => 31,  68 => 27,  64 => 26,  58 => 23,  54 => 22,  50 => 20,  46 => 19,  42 => 18,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "main.html", "/Users/stepankurakin/gdrv/coding/phpGeekPart2/4hwrk/view/main.html");
    }
}
