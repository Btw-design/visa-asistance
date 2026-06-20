$file = "D:\ahit health\my-visa-assistance\upcoming-events\index.html"
$text = [io.file]::ReadAllText($file)

# 1. Update page title
$text = $text.Replace(
    '<title>Upcoming International Events 2026 | My Visa Assistance</title>',
    '<title>Upcoming International Events 2026 & 2027 | My Visa Assistance</title>'
)

# 2. Update meta name="title"
$text = $text.Replace(
    '<meta name="title" content="Upcoming International Events 2026">',
    '<meta name="title" content="Upcoming International Events 2026 & 2027">'
)

# 3. Update meta description
$text = $text.Replace(
    '<meta name="description" content="Comprehensive guide to major international events in 2026 including sports tournaments, cultural festivals, business conferences, and trade shows worldwide. Plan your travel with visa guidance.">',
    '<meta name="description" content="Comprehensive guide to major international events in 2026 and 2027 including sports tournaments, cultural festivals, business conferences, and trade shows worldwide. Plan your travel with visa guidance.">'
)

# 4. Update OG description
$text = $text.Replace(
    '<meta property="og:description" content="Plan your international travel around major 2026 events. Get visa guidance for sports, culture, business events worldwide.">',
    '<meta property="og:description" content="Plan your international travel around major 2026 and 2027 events. Get visa guidance for sports, culture, business events worldwide.">'
)

# 5. Update h1
$text = $text.Replace(
    '<h1><i class="bi bi-calendar-event" style="color:var(--color-accent);margin-right:10px;"></i> Upcoming International Events 2026</h1>',
    '<h1><i class="bi bi-calendar-event" style="color:var(--color-accent);margin-right:10px;"></i> Upcoming International Events 2026 & 2027</h1>'
)

# 6. Update intro paragraph
$text = $text.Replace(
    '<p>Plan your international travel around major events happening worldwide in 2026. From the FIFA World Cup and Winter Olympics to business conferences and cultural festivals — get visa guidance for every destination.</p>',
    '<p>Plan your international travel around major events happening worldwide in 2026 and 2027. From the FIFA World Cup and Winter Olympics to business conferences and cultural festivals — get visa guidance for every destination.</p>'
)

# 7. Update section heading
$text = $text.Replace(
    '<h2>Major Events Calendar for International Travelers</h2>',
    '<h2>Major Events Calendar for International Travelers</h2>'
)

# 8. Update the initial paragraph
$text = $text.Replace(
    '<p>2026 is shaping up to be an extraordinary year for international events. With the FIFA World Cup across North America, the Winter Olympics in Italy, and countless business conferences and cultural festivals, travelers worldwide need careful visa planning. Use this guide to discover key events and their visa requirements.</p>',
    '<p>2026 and 2027 are shaping up to be extraordinary years for international events. With the FIFA World Cup across North America, the Winter Olympics in Italy, the Cricket World Cup in Southern Africa, and countless business conferences and cultural festivals, travelers worldwide need careful visa planning. Use this guide to discover key events and their visa requirements.</p>'
)

# 9. Update event count
$text = $text.Replace(
    'Showing 14 events',
    'Showing 28 events'
)

# 10. Add 2027 events section BEFORE the Monthly Calendar Overview
$insertBefore = '      <!-- Monthly Calendar Overview -->'

$events2027 = @"
      <!-- 2027 Events -->
      <div style="margin-top:50px;padding-top:30px;border-top:3px solid var(--color-accent);">
        <h2 style="font-size:clamp(1.8rem,3vw,2.5rem);display:flex;align-items:center;gap:10px;"><i class="bi bi-calendar3" style="color:var(--color-accent);"></i> 2027 Events</h2>
        <p>The following major events are scheduled for 2027. Plan your travel and visa applications well in advance.</p>

        <!-- January 2027 -->
        <div class="category-section">
          <h2><i class="bi bi-snow"></i> January 2027</h2>

          <div class="event-card" data-category="tech business" data-country="usa" data-name="CES 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Jan 5 - 8, 2027</div>
            </div>
            <h3><i class="bi bi-cpu event-icon" style="color:#6a1b9a;"></i> CES 2027 — Consumer Electronics Show</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Las Vegas, Nevada, USA</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-tech">Tech</span> <span class="event-tag tag-business">Business</span></div>
            <p style="margin:10px 0 0;">The world's most influential tech event returns for its 60th edition. CES 2027 will showcase breakthrough innovations in AI, robotics, autonomous vehicles, health tech, and sustainability with over 4,000 exhibitors.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> US visa or ESTA (Visa Waiver Program). <a href="/visa-guide/usa-visa">View US Visa Guide</a></div>
          </div>
        </div>

        <!-- March 2027 -->
        <div class="category-section">
          <h2><i class="bi bi-flower1"></i> March 2027</h2>

          <div class="event-card" data-category="conference" data-country="spain" data-name="Mobile World Congress 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Mar 1 - 4, 2027</div>
            </div>
            <h3><i class="bi bi-phone event-icon" style="color:#e65100;"></i> Mobile World Congress 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Barcelona, Spain</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-conference">Conference</span> <span class="event-tag tag-tech">Tech</span></div>
            <p style="margin:10px 0 0;">The world's largest mobile industry event, bringing together 100,000+ attendees from across the telecom, tech, and digital ecosystems. Features keynotes on 6G, AI connectivity, IoT, and digital transformation.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Spain is a Schengen country. Apply for a Schengen visa at least 3 months before. <a href="/visa-guide/spain-visa">View Spain Visa Guide</a></div>
          </div>

          <div class="event-card" data-category="conference business" data-country="switzerland" data-name="World Economic Forum 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Mar 15 - 19, 2027</div>
            </div>
            <h3><i class="bi bi-building event-icon" style="color:#1565c0;"></i> World Economic Forum Annual Meeting 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Davos, Switzerland</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-conference">Conference</span> <span class="event-tag tag-business">Business</span></div>
            <p style="margin:10px 0 0;">The prestigious annual gathering of global leaders, CEOs, and policymakers in Davos. Discussions will focus on climate action, geopolitical stability, technological governance, and inclusive economic growth.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Switzerland is a Schengen country. Business visa recommended for delegates. <a href="/visa-guide/switzerland-visa">View Switzerland Visa Guide</a></div>
          </div>
        </div>

        <!-- June 2027 -->
        <div class="category-section">
          <h2><i class="bi bi-sun"></i> June 2027</h2>

          <div class="event-card" data-category="culture" data-country="france" data-name="Cannes Lions 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Jun 21 - 25, 2027</div>
            </div>
            <h3><i class="bi bi-megaphone event-icon" style="color:#1565c0;"></i> Cannes Lions International Festival of Creativity 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Cannes, French Riviera, France</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-business">Business</span></div>
            <p style="margin:10px 0 0;">The global benchmark for creative excellence in advertising, marketing, and communications returns to Cannes. Over 9,000 delegates attend for workshops, awards, and networking.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Schengen visa for most non-European attendees. <a href="/visa-guide/france-visa">View France Visa Guide</a></div>
          </div>

          <div class="event-card" data-category="sports" data-country="uk" data-name="Wimbledon 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Jun 28 - Jul 11, 2027</div>
            </div>
            <h3><i class="bi bi-trophy event-icon" style="color:#2e7d32;"></i> Wimbledon Championships 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>All England Club, London, UK</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-sports">Sports</span></div>
            <p style="margin:10px 0 0;">The oldest and most prestigious tennis tournament in the world. The 141st edition of The Championships at Wimbledon returns with elite tennis on historic grass courts.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> UK visitor visa or ETA for eligible nationalities. <a href="/visa-guide/uk-visa">View UK Visa Guide</a></div>
          </div>
        </div>

        <!-- July 2027 -->
        <div class="category-section">
          <h2><i class="bi bi-sun-fill"></i> July 2027</h2>

          <div class="event-card" data-category="culture" data-country="italy" data-name="Venice Architecture Biennale 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">May 22 - Nov 21, 2027</div>
            </div>
            <h3><i class="bi bi-building event-icon" style="color:#c62828;"></i> Venice Biennale Architettura 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Venice, Italy</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-culture">Culture</span></div>
            <p style="margin:10px 0 0;">The world's most prestigious architecture exhibition, held every two years in Venice. The 2027 edition will feature national pavilions, curated exhibitions at the Giardini and Arsenale, and collateral events across the city.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Schengen visa for most non-EU visitors. <a href="/visa-guide/italy-visa">View Italy Visa Guide</a></div>
          </div>

          <div class="event-card" data-category="sports" data-country="france" data-name="Tour de France 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Jul 3 - 25, 2027</div>
            </div>
            <h3><i class="bi bi-bicycle event-icon" style="color:#2e7d32;"></i> Tour de France 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Various stages across France (Grand Dpart TBC)</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-sports">Sports</span></div>
            <p style="margin:10px 0 0;">The 114th edition of the world's most famous cycling race. Follow the peloton across approximately 3,500 km of French roads, including mountain stages in the Alps and Pyrenees.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Schengen visa required. Multiple-entry visa recommended. <a href="/visa-guide/france-visa">View France Visa Guide</a></div>
          </div>
        </div>

        <!-- September 2027 -->
        <div class="category-section">
          <h2><i class="bi bi-cloud-haze2"></i> September 2027</h2>

          <div class="event-card" data-category="culture" data-country="germany" data-name="Oktoberfest 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Sep 18 - Oct 3, 2027</div>
            </div>
            <h3><i class="bi bi-cup-straw event-icon" style="color:#c62828;"></i> Oktoberfest 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Munich, Bavaria, Germany</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-culture">Culture</span></div>
            <p style="margin:10px 0 0;">The world's largest Volksfest returns to Munich. Over 6 million visitors enjoy traditional Bavarian beer, music, parades, and amusement rides at the Theresienwiese.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Schengen visa required for most non-EU visitors. <a href="/visa-guide/germany-visa">View Germany Visa Guide</a></div>
          </div>
        </div>

        <!-- October 2027 -->
        <div class="category-section">
          <h2><i class="bi bi-cloud-sun"></i> October 2027</h2>

          <div class="event-card" data-category="sports" data-country="south-africa" data-name="Cricket World Cup 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Oct 1 - Nov 14, 2027</div>
            </div>
            <h3><i class="bi bi-trophy event-icon" style="color:#2e7d32;"></i> ICC Cricket World Cup 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>South Africa, Zimbabwe, Namibia</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-sports">Sports</span></div>
            <p style="margin:10px 0 0;">The 14th edition of the ICC Cricket World Cup, co-hosted by South Africa, Zimbabwe, and Namibia. 10 teams will compete across 45 matches in what promises to be a historic tournament for African cricket. Major venues include Johannesburg, Cape Town, Durban, Harare, and Windhoek.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> South Africa requires a visa for many nationalities. Separate visas needed if travelling to Zimbabwe or Namibia. <a href="/visa-guide/south-africa-visa">View South Africa Visa Guide</a></div>
          </div>

          <div class="event-card" data-category="conference" data-country="portugal" data-name="Web Summit 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Nov 1 - 4, 2027</div>
            </div>
            <h3><i class="bi bi-globe2 event-icon" style="color:#e65100;"></i> Web Summit 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Lisbon, Portugal</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-conference">Conference</span> <span class="event-tag tag-tech">Tech</span></div>
            <p style="margin:10px 0 0;">One of the world's largest technology conferences, bringing together 70,000+ attendees from 160+ countries. Features cutting-edge talks on AI, climate tech, cybersecurity, fintech, and digital policy.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Portugal is a Schengen country. Apply for a Schengen visa well in advance. <a href="/visa-guide/schengen-visa">View Schengen Visa Guide</a></div>
          </div>
        </div>

        <!-- November 2027 -->
        <div class="category-section">
          <h2><i class="bi bi-cloud-moon"></i> November 2027</h2>

          <div class="event-card" data-category="conference" data-country="uae" data-name="COP32 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Nov 6 - 17, 2027</div>
            </div>
            <h3><i class="bi bi-globe2 event-icon" style="color:#e65100;"></i> COP32 United Nations Climate Change Conference 2027</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>TBC (Expected host to be announced)</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-conference">Conference</span></div>
            <p style="margin:10px 0 0;">The 32nd annual UN climate summit continues the global effort to address climate change. World leaders, scientists, and policymakers will negotiate emissions reductions, climate finance, and adaptation commitments.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> Depends on host country. Check visa requirements once the host nation is confirmed.</div>
          </div>

          <div class="event-card" data-category="culture" data-country="uae" data-name="Dubai Expo City 2027">
            <div class="events-timeline">
              <div class="timeline-marker"></div>
              <div class="timeline-month">Oct 2027 - Mar 2028</div>
            </div>
            <h3><i class="bi bi-building event-icon" style="color:#c62828;"></i> Expo 2027 — Sustainable Development</h3>
            <div class="event-detail"><i class="bi bi-geo-alt"></i><span>Dubai, United Arab Emirates (expected host city)</span></div>
            <div class="event-detail"><i class="bi bi-tag"></i><span class="event-tag tag-culture">Culture</span> <span class="event-tag tag-business">Business</span></div>
            <p style="margin:10px 0 0;">The next World Expo, themed around sustainable development and innovation. Following the success of Expo 2020 Dubai, this international exposition will showcase pavilions from 190+ countries with cutting-edge sustainability solutions.</p>
            <div class="visa-note"><i class="bi bi-patch-check"></i> <strong>Visa needed:</strong> UAE offers visa-free or visa-on-arrival for many nationalities. Others need a UAE tourist visa. <a href="/visa-guide/uae-visa">View UAE Visa Guide</a></div>
          </div>
        </div>
      </div>

"@

$text = $text.Replace($insertBefore, $events2027 + $insertBefore)

# 11. Add 2027 rows to the calendar table
$calendar2027Rows = @'
              <tr><td>Jan</td><td>CES 2027</td><td>Las Vegas, USA</td><td><span class="event-tag tag-tech">Tech</span></td><td>US Visa / ESTA</td></tr>
              <tr><td>Mar</td><td>Mobile World Congress 2027</td><td>Barcelona, Spain</td><td><span class="event-tag tag-conference">Conference</span></td><td>Schengen Visa</td></tr>
              <tr><td>Mar</td><td>World Economic Forum 2027</td><td>Davos, Switzerland</td><td><span class="event-tag tag-conference">Conference</span></td><td>Schengen Visa</td></tr>
              <tr><td>May-Nov</td><td>Venice Architecture Biennale 2027</td><td>Venice, Italy</td><td><span class="event-tag tag-culture">Culture</span></td><td>Schengen Visa</td></tr>
              <tr><td>Jun</td><td>Cannes Lions 2027</td><td>Cannes, France</td><td><span class="event-tag tag-business">Business</span></td><td>Schengen Visa</td></tr>
              <tr><td>Jun-Jul</td><td>Wimbledon 2027</td><td>London, UK</td><td><span class="event-tag tag-sports">Sports</span></td><td>UK Visa / ETA</td></tr>
              <tr><td>Jul</td><td>Tour de France 2027</td><td>France</td><td><span class="event-tag tag-sports">Sports</span></td><td>Schengen Visa</td></tr>
              <tr><td>Sep-Oct</td><td>Oktoberfest 2027</td><td>Munich, Germany</td><td><span class="event-tag tag-culture">Culture</span></td><td>Schengen Visa</td></tr>
              <tr><td>Oct-Nov</td><td>Cricket World Cup 2027</td><td>South Africa / Zimbabwe / Namibia</td><td><span class="event-tag tag-sports">Sports</span></td><td>South Africa Visa</td></tr>
              <tr><td>Nov</td><td>Web Summit 2027</td><td>Lisbon, Portugal</td><td><span class="event-tag tag-conference">Conference</span></td><td>Schengen Visa</td></tr>
              <tr><td>Nov</td><td>COP32 Climate Conference</td><td>TBC</td><td><span class="event-tag tag-conference">Conference</span></td><td>TBC</td></tr>
'@

# Add 2027 rows before the closing tbody
$text = $text.Replace('            </tbody>
          </table>
        </div>
      </div>

      <!-- Tips Section -->',
"$calendar2027Rows            </tbody>
          </table>
        </div>
      </div>

      <!-- Tips Section -->")

# 12. Update the year-specific intro text in the Tips Section
$text = $text.Replace(
    'For multi-country events like the FIFA World Cup, ensure your visa covers all destination countries.',
    'For multi-country events like the FIFA World Cup and Cricket World Cup, ensure your visa covers all destination countries.'
)

# 13. Update FAQ about early application
$text = $text.Replace(
    'How early should I apply for a visa for a major 2026 event?',
    'How early should I apply for a visa for a major event in 2026 or 2027?'
)

$text = $text.Replace(
    'We recommend applying 3-6 months before the event. During major events like the FIFA World Cup or Olympics, embassies and visa application centers experience significantly higher volumes',
    'We recommend applying 3-6 months before the event. During major events like the FIFA World Cup, Olympics, or Cricket World Cup, embassies and visa application centers experience significantly higher volumes'
)

[io.file]::WriteAllText($file, $text, [System.Text.Encoding]::UTF8)
Write-Host "2027 events added successfully!"
