defmodule Mix.Tasks.Rankmode.Add.Countries do
    use Mix.Task

    @shortdoc "Add data for Countries."
    def run(_id) do
        Mix.Task.run("app.start")
        add_countries()
    end

    defp add_countries() do
        
        Rankmode.Countries.create_country(%{
                name: "Andorra",
                iso: "AD",
                image: "/images/countries/flags/ad.png"
        })

        Rankmode.Countries.create_country(%{
                name: "United Arab Emirates",
                iso: "AE",
                image: "/images/countries/flags/ae.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Afghanistan",
                iso: "AF",
                image: "/images/countries/flags/af.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Antigua and Barbuda",
                iso: "AG",
                image: "/images/countries/flags/ag.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Anguilla",
                iso: "AI",
                image: "/images/countries/flags/ai.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Albania",
                iso: "AL",
                image: "/images/countries/flags/al.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Armenia",
                iso: "AM",
                image: "/images/countries/flags/am.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Angola",
                iso: "AO",
                image: "/images/countries/flags/ao.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Antarctica",
                iso: "AQ",
                image: "/images/countries/flags/aq.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Argentina",
                iso: "AR",
                image: "/images/countries/flags/ar.png"
        })

        Rankmode.Countries.create_country(%{
                name: "American Samoa",
                iso: "AS",
                image: "/images/countries/flags/as.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Austria",
                iso: "AT",
                image: "/images/countries/flags/at.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Australia",
                iso: "AU",
                image: "/images/countries/flags/au.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Aruba",
                iso: "AW",
                image: "/images/countries/flags/aw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Åland Islands",
                iso: "AX",
                image: "/images/countries/flags/ax.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Azerbaijan",
                iso: "AZ",
                image: "/images/countries/flags/az.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bosnia and Herzegovina",
                iso: "BA",
                image: "/images/countries/flags/ba.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Barbados",
                iso: "BB",
                image: "/images/countries/flags/bb.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bangladesh",
                iso: "BD",
                image: "/images/countries/flags/bd.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Belgium",
                iso: "BE",
                image: "/images/countries/flags/be.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Burkina Faso",
                iso: "BF",
                image: "/images/countries/flags/bf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bulgaria",
                iso: "BG",
                image: "/images/countries/flags/bg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bahrain",
                iso: "BH",
                image: "/images/countries/flags/bh.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Burundi",
                iso: "BI",
                image: "/images/countries/flags/bi.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Benin",
                iso: "BJ",
                image: "/images/countries/flags/bj.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saint Barthélemy",
                iso: "BL",
                image: "/images/countries/flags/bl.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bermuda",
                iso: "BM",
                image: "/images/countries/flags/bm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Brunei Darussalam",
                iso: "BN",
                image: "/images/countries/flags/bn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bolivia, Plurinational State of",
                iso: "BO",
                image: "/images/countries/flags/bo.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Caribbean Netherlands",
                iso: "BQ",
                image: "/images/countries/flags/bq.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Brazil",
                iso: "BR",
                image: "/images/countries/flags/br.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bahamas",
                iso: "BS",
                image: "/images/countries/flags/bs.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bhutan",
                iso: "BT",
                image: "/images/countries/flags/bt.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Bouvet Island",
                iso: "BV",
                image: "/images/countries/flags/bv.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Botswana",
                iso: "BW",
                image: "/images/countries/flags/bw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Belarus",
                iso: "BY",
                image: "/images/countries/flags/by.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Belize",
                iso: "BZ",
                image: "/images/countries/flags/bz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Canada",
                iso: "CA",
                image: "/images/countries/flags/ca.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cocos (Keeling) Islands",
                iso: "CC",
                image: "/images/countries/flags/cc.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Congo, the Democratic Republic of the",
                iso: "CD",
                image: "/images/countries/flags/cd.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Central African Republic",
                iso: "CF",
                image: "/images/countries/flags/cf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Republic of the Congo",
                iso: "CG",
                image: "/images/countries/flags/cg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Switzerland",
                iso: "CH",
                image: "/images/countries/flags/ch.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Côte d'Ivoire",
                iso: "CI",
                image: "/images/countries/flags/ci.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cook Islands",
                iso: "CK",
                image: "/images/countries/flags/ck.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Chile",
                iso: "CL",
                image: "/images/countries/flags/cl.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cameroon",
                iso: "CM",
                image: "/images/countries/flags/cm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "China (People's Republic of China)",
                iso: "CN",
                image: "/images/countries/flags/cn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Colombia",
                iso: "CO",
                image: "/images/countries/flags/co.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Costa Rica",
                iso: "CR",
                image: "/images/countries/flags/cr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cuba",
                iso: "CU",
                image: "/images/countries/flags/cu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cape Verde",
                iso: "CV",
                image: "/images/countries/flags/cv.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Curaçao",
                iso: "CW",
                image: "/images/countries/flags/cw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Christmas Island",
                iso: "CX",
                image: "/images/countries/flags/cx.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cyprus",
                iso: "CY",
                image: "/images/countries/flags/cy.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Czech Republic",
                iso: "CZ",
                image: "/images/countries/flags/cz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Germany",
                iso: "DE",
                image: "/images/countries/flags/de.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Djibouti",
                iso: "DJ",
                image: "/images/countries/flags/dj.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Denmark",
                iso: "DK",
                image: "/images/countries/flags/dk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Dominica",
                iso: "DM",
                image: "/images/countries/flags/dm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Dominican Republic",
                iso: "DO",
                image: "/images/countries/flags/do.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Algeria",
                iso: "DZ",
                image: "/images/countries/flags/dz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Ecuador",
                iso: "EC",
                image: "/images/countries/flags/ec.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Estonia",
                iso: "EE",
                image: "/images/countries/flags/ee.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Egypt",
                iso: "EG",
                image: "/images/countries/flags/eg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Western Sahara",
                iso: "EH",
                image: "/images/countries/flags/eh.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Eritrea",
                iso: "ER",
                image: "/images/countries/flags/er.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Spain",
                iso: "ES",
                image: "/images/countries/flags/es.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Ethiopia",
                iso: "ET",
                image: "/images/countries/flags/et.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Europe",
                iso: "EU",
                image: "/images/countries/flags/eu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Finland",
                iso: "FI",
                image: "/images/countries/flags/fi.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Fiji",
                iso: "FJ",
                image: "/images/countries/flags/fj.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Falkland Islands (Malvinas)",
                iso: "FK",
                image: "/images/countries/flags/fk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Micronesia, Federated States of",
                iso: "FM",
                image: "/images/countries/flags/fm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Faroe Islands",
                iso: "FO",
                image: "/images/countries/flags/fo.png"
        })

        Rankmode.Countries.create_country(%{
                name: "France",
                iso: "FR",
                image: "/images/countries/flags/fr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Gabon",
                iso: "GA",
                image: "/images/countries/flags/ga.png"
        })

        Rankmode.Countries.create_country(%{
                name: "England",
                iso: "GB-ENG",
                image: "/images/countries/flags/gb-eng.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Northern Ireland",
                iso: "GB-NIR",
                image: "/images/countries/flags/gb-nir.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Scotland",
                iso: "GB-SCT",
                image: "/images/countries/flags/gb-sct.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Wales",
                iso: "GB-WLS",
                image: "/images/countries/flags/gb-wls.png"
        })

        Rankmode.Countries.create_country(%{
                name: "United Kingdom",
                iso: "GB",
                image: "/images/countries/flags/gb.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Grenada",
                iso: "GD",
                image: "/images/countries/flags/gd.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Georgia",
                iso: "GE",
                image: "/images/countries/flags/ge.png"
        })

        Rankmode.Countries.create_country(%{
                name: "French Guiana",
                iso: "GF",
                image: "/images/countries/flags/gf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Guernsey",
                iso: "GG",
                image: "/images/countries/flags/gg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Ghana",
                iso: "GH",
                image: "/images/countries/flags/gh.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Gibraltar",
                iso: "GI",
                image: "/images/countries/flags/gi.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Greenland",
                iso: "GL",
                image: "/images/countries/flags/gl.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Gambia",
                iso: "GM",
                image: "/images/countries/flags/gm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Guinea",
                iso: "GN",
                image: "/images/countries/flags/gn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Guadeloupe",
                iso: "GP",
                image: "/images/countries/flags/gp.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Equatorial Guinea",
                iso: "GQ",
                image: "/images/countries/flags/gq.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Greece",
                iso: "GR",
                image: "/images/countries/flags/gr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "South Georgia and the South Sandwich Islands",
                iso: "GS",
                image: "/images/countries/flags/gs.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Guatemala",
                iso: "GT",
                image: "/images/countries/flags/gt.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Guam",
                iso: "GU",
                image: "/images/countries/flags/gu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Guinea-Bissau",
                iso: "GW",
                image: "/images/countries/flags/gw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Guyana",
                iso: "GY",
                image: "/images/countries/flags/gy.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Hong Kong",
                iso: "HK",
                image: "/images/countries/flags/hk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Heard Island and McDonald Islands",
                iso: "HM",
                image: "/images/countries/flags/hm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Honduras",
                iso: "HN",
                image: "/images/countries/flags/hn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Croatia",
                iso: "HR",
                image: "/images/countries/flags/hr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Haiti",
                iso: "HT",
                image: "/images/countries/flags/ht.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Hungary",
                iso: "HU",
                image: "/images/countries/flags/hu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Indonesia",
                iso: "ID",
                image: "/images/countries/flags/id.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Ireland",
                iso: "IE",
                image: "/images/countries/flags/ie.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Israel",
                iso: "IL",
                image: "/images/countries/flags/il.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Isle of Man",
                iso: "IM",
                image: "/images/countries/flags/im.png"
        })

        Rankmode.Countries.create_country(%{
                name: "India",
                iso: "IN",
                image: "/images/countries/flags/in.png"
        })

        Rankmode.Countries.create_country(%{
                name: "British Indian Ocean Territory",
                iso: "IO",
                image: "/images/countries/flags/io.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Iraq",
                iso: "IQ",
                image: "/images/countries/flags/iq.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Iran, Islamic Republic of",
                iso: "IR",
                image: "/images/countries/flags/ir.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Iceland",
                iso: "IS",
                image: "/images/countries/flags/is.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Italy",
                iso: "IT",
                image: "/images/countries/flags/it.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Jersey",
                iso: "JE",
                image: "/images/countries/flags/je.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Jamaica",
                iso: "JM",
                image: "/images/countries/flags/jm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Jordan",
                iso: "JO",
                image: "/images/countries/flags/jo.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Japan",
                iso: "JP",
                image: "/images/countries/flags/jp.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Kenya",
                iso: "KE",
                image: "/images/countries/flags/ke.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Kyrgyzstan",
                iso: "KG",
                image: "/images/countries/flags/kg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cambodia",
                iso: "KH",
                image: "/images/countries/flags/kh.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Kiribati",
                iso: "KI",
                image: "/images/countries/flags/ki.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Comoros",
                iso: "KM",
                image: "/images/countries/flags/km.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saint Kitts and Nevis",
                iso: "KN",
                image: "/images/countries/flags/kn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Korea, Democratic People's Republic of",
                iso: "KP",
                image: "/images/countries/flags/kp.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Korea, Republic of",
                iso: "KR",
                image: "/images/countries/flags/kr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Kuwait",
                iso: "KW",
                image: "/images/countries/flags/kw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Cayman Islands",
                iso: "KY",
                image: "/images/countries/flags/ky.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Kazakhstan",
                iso: "KZ",
                image: "/images/countries/flags/kz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Laos (Lao People's Democratic Republic)",
                iso: "LA",
                image: "/images/countries/flags/la.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Lebanon",
                iso: "LB",
                image: "/images/countries/flags/lb.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saint Lucia",
                iso: "LC",
                image: "/images/countries/flags/lc.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Liechtenstein",
                iso: "LI",
                image: "/images/countries/flags/li.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Sri Lanka",
                iso: "LK",
                image: "/images/countries/flags/lk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Liberia",
                iso: "LR",
                image: "/images/countries/flags/lr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Lesotho",
                iso: "LS",
                image: "/images/countries/flags/ls.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Lithuania",
                iso: "LT",
                image: "/images/countries/flags/lt.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Luxembourg",
                iso: "LU",
                image: "/images/countries/flags/lu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Latvia",
                iso: "LV",
                image: "/images/countries/flags/lv.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Libya",
                iso: "LY",
                image: "/images/countries/flags/ly.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Morocco",
                iso: "MA",
                image: "/images/countries/flags/ma.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Monaco",
                iso: "MC",
                image: "/images/countries/flags/mc.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Moldova, Republic of",
                iso: "MD",
                image: "/images/countries/flags/md.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Montenegro",
                iso: "ME",
                image: "/images/countries/flags/me.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saint Martin",
                iso: "MF",
                image: "/images/countries/flags/mf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Madagascar",
                iso: "MG",
                image: "/images/countries/flags/mg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Marshall Islands",
                iso: "MH",
                image: "/images/countries/flags/mh.png"
        })

        Rankmode.Countries.create_country(%{
                name: "North Macedonia",
                iso: "MK",
                image: "/images/countries/flags/mk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Mali",
                iso: "ML",
                image: "/images/countries/flags/ml.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Myanmar",
                iso: "MM",
                image: "/images/countries/flags/mm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Mongolia",
                iso: "MN",
                image: "/images/countries/flags/mn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Macao",
                iso: "MO",
                image: "/images/countries/flags/mo.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Northern Mariana Islands",
                iso: "MP",
                image: "/images/countries/flags/mp.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Martinique",
                iso: "MQ",
                image: "/images/countries/flags/mq.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Mauritania",
                iso: "MR",
                image: "/images/countries/flags/mr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Montserrat",
                iso: "MS",
                image: "/images/countries/flags/ms.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Malta",
                iso: "MT",
                image: "/images/countries/flags/mt.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Mauritius",
                iso: "MU",
                image: "/images/countries/flags/mu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Maldives",
                iso: "MV",
                image: "/images/countries/flags/mv.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Malawi",
                iso: "MW",
                image: "/images/countries/flags/mw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Mexico",
                iso: "MX",
                image: "/images/countries/flags/mx.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Malaysia",
                iso: "MY",
                image: "/images/countries/flags/my.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Mozambique",
                iso: "MZ",
                image: "/images/countries/flags/mz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Namibia",
                iso: "NA",
                image: "/images/countries/flags/na.png"
        })

        Rankmode.Countries.create_country(%{
                name: "New Caledonia",
                iso: "NC",
                image: "/images/countries/flags/nc.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Niger",
                iso: "NE",
                image: "/images/countries/flags/ne.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Norfolk Island",
                iso: "NF",
                image: "/images/countries/flags/nf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Nigeria",
                iso: "NG",
                image: "/images/countries/flags/ng.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Nicaragua",
                iso: "NI",
                image: "/images/countries/flags/ni.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Netherlands",
                iso: "NL",
                image: "/images/countries/flags/nl.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Norway",
                iso: "NO",
                image: "/images/countries/flags/no.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Nepal",
                iso: "NP",
                image: "/images/countries/flags/np.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Nauru",
                iso: "NR",
                image: "/images/countries/flags/nr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Niue",
                iso: "NU",
                image: "/images/countries/flags/nu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "New Zealand",
                iso: "NZ",
                image: "/images/countries/flags/nz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Oman",
                iso: "OM",
                image: "/images/countries/flags/om.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Panama",
                iso: "PA",
                image: "/images/countries/flags/pa.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Peru",
                iso: "PE",
                image: "/images/countries/flags/pe.png"
        })

        Rankmode.Countries.create_country(%{
                name: "French Polynesia",
                iso: "PF",
                image: "/images/countries/flags/pf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Papua New Guinea",
                iso: "PG",
                image: "/images/countries/flags/pg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Philippines",
                iso: "PH",
                image: "/images/countries/flags/ph.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Pakistan",
                iso: "PK",
                image: "/images/countries/flags/pk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Poland",
                iso: "PL",
                image: "/images/countries/flags/pl.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saint Pierre and Miquelon",
                iso: "PM",
                image: "/images/countries/flags/pm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Pitcairn",
                iso: "PN",
                image: "/images/countries/flags/pn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Puerto Rico",
                iso: "PR",
                image: "/images/countries/flags/pr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Palestine",
                iso: "PS",
                image: "/images/countries/flags/ps.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Portugal",
                iso: "PT",
                image: "/images/countries/flags/pt.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Palau",
                iso: "PW",
                image: "/images/countries/flags/pw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Paraguay",
                iso: "PY",
                image: "/images/countries/flags/py.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Qatar",
                iso: "QA",
                image: "/images/countries/flags/qa.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Réunion",
                iso: "RE",
                image: "/images/countries/flags/re.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Romania",
                iso: "RO",
                image: "/images/countries/flags/ro.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Serbia",
                iso: "RS",
                image: "/images/countries/flags/rs.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Russian Federation",
                iso: "RU",
                image: "/images/countries/flags/ru.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Rwanda",
                iso: "RW",
                image: "/images/countries/flags/rw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saudi Arabia",
                iso: "SA",
                image: "/images/countries/flags/sa.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Solomon Islands",
                iso: "SB",
                image: "/images/countries/flags/sb.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Seychelles",
                iso: "SC",
                image: "/images/countries/flags/sc.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Sudan",
                iso: "SD",
                image: "/images/countries/flags/sd.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Sweden",
                iso: "SE",
                image: "/images/countries/flags/se.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Singapore",
                iso: "SG",
                image: "/images/countries/flags/sg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saint Helena, Ascension and Tristan da Cunha",
                iso: "SH",
                image: "/images/countries/flags/sh.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Slovenia",
                iso: "SI",
                image: "/images/countries/flags/si.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Svalbard and Jan Mayen Islands",
                iso: "SJ",
                image: "/images/countries/flags/sj.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Slovakia",
                iso: "SK",
                image: "/images/countries/flags/sk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Sierra Leone",
                iso: "SL",
                image: "/images/countries/flags/sl.png"
        })

        Rankmode.Countries.create_country(%{
                name: "San Marino",
                iso: "SM",
                image: "/images/countries/flags/sm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Senegal",
                iso: "SN",
                image: "/images/countries/flags/sn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Somalia",
                iso: "SO",
                image: "/images/countries/flags/so.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Suriname",
                iso: "SR",
                image: "/images/countries/flags/sr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "South Sudan",
                iso: "SS",
                image: "/images/countries/flags/ss.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Sao Tome and Principe",
                iso: "ST",
                image: "/images/countries/flags/st.png"
        })

        Rankmode.Countries.create_country(%{
                name: "El Salvador",
                iso: "SV",
                image: "/images/countries/flags/sv.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Sint Maarten (Dutch part)",
                iso: "SX",
                image: "/images/countries/flags/sx.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Syrian Arab Republic",
                iso: "SY",
                image: "/images/countries/flags/sy.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Swaziland",
                iso: "SZ",
                image: "/images/countries/flags/sz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Turks and Caicos Islands",
                iso: "TC",
                image: "/images/countries/flags/tc.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Chad",
                iso: "TD",
                image: "/images/countries/flags/td.png"
        })

        Rankmode.Countries.create_country(%{
                name: "French Southern Territories",
                iso: "TF",
                image: "/images/countries/flags/tf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Togo",
                iso: "TG",
                image: "/images/countries/flags/tg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Thailand",
                iso: "TH",
                image: "/images/countries/flags/th.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Tajikistan",
                iso: "TJ",
                image: "/images/countries/flags/tj.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Tokelau",
                iso: "TK",
                image: "/images/countries/flags/tk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Timor-Leste",
                iso: "TL",
                image: "/images/countries/flags/tl.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Turkmenistan",
                iso: "TM",
                image: "/images/countries/flags/tm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Tunisia",
                iso: "TN",
                image: "/images/countries/flags/tn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Tonga",
                iso: "TO",
                image: "/images/countries/flags/to.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Turkey",
                iso: "TR",
                image: "/images/countries/flags/tr.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Trinidad and Tobago",
                iso: "TT",
                image: "/images/countries/flags/tt.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Tuvalu",
                iso: "TV",
                image: "/images/countries/flags/tv.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Taiwan (Republic of China)",
                iso: "TW",
                image: "/images/countries/flags/tw.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Tanzania, United Republic of",
                iso: "TZ",
                image: "/images/countries/flags/tz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Ukraine",
                iso: "UA",
                image: "/images/countries/flags/ua.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Uganda",
                iso: "UG",
                image: "/images/countries/flags/ug.png"
        })

        Rankmode.Countries.create_country(%{
                name: "US Minor Outlying Islands",
                iso: "UM",
                image: "/images/countries/flags/um.png"
        })

        Rankmode.Countries.create_country(%{
                name: "United States",
                iso: "US",
                image: "/images/countries/flags/us.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Uruguay",
                iso: "UY",
                image: "/images/countries/flags/uy.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Uzbekistan",
                iso: "UZ",
                image: "/images/countries/flags/uz.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Holy See (Vatican City State)",
                iso: "VA",
                image: "/images/countries/flags/va.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Saint Vincent and the Grenadines",
                iso: "VC",
                image: "/images/countries/flags/vc.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Venezuela, Bolivarian Republic of",
                iso: "VE",
                image: "/images/countries/flags/ve.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Virgin Islands, British",
                iso: "VG",
                image: "/images/countries/flags/vg.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Virgin Islands, U.S.",
                iso: "VI",
                image: "/images/countries/flags/vi.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Vietnam",
                iso: "VN",
                image: "/images/countries/flags/vn.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Vanuatu",
                iso: "VU",
                image: "/images/countries/flags/vu.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Wallis and Futuna Islands",
                iso: "WF",
                image: "/images/countries/flags/wf.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Samoa",
                iso: "WS",
                image: "/images/countries/flags/ws.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Kosovo",
                iso: "XK",
                image: "/images/countries/flags/xk.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Yemen",
                iso: "YE",
                image: "/images/countries/flags/ye.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Mayotte",
                iso: "YT",
                image: "/images/countries/flags/yt.png"
        })

        Rankmode.Countries.create_country(%{
                name: "South Africa",
                iso: "ZA",
                image: "/images/countries/flags/za.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Zambia",
                iso: "ZM",
                image: "/images/countries/flags/zm.png"
        })

        Rankmode.Countries.create_country(%{
                name: "Zimbabwe",
                iso: "ZW",
                image: "/images/countries/flags/zw.png"
        })

    end
end
