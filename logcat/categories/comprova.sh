#!/bin/sh
# ============================================================
# comprova.sh — comprovacions posteriors a la compilació (make ci).
#   ús: ./comprova.sh JOBNAME [CAMPS_ESPERATS]
# Falla (codi 1) si hi ha errors, referències o citacions no
# resoltes, avisos de formulari duplicat o un nombre de camps
# diferent de l'esperat. Informa dels desbordaments de més de 3 pt.
# ============================================================
set -u
JOB="$1"; ESPERATS="${2:-}"
LOG="$JOB.log"; PDF="$JOB.pdf"; OK=0
echo "== Comprovació de $JOB =="
[ -f "$PDF" ] || { echo "ERROR: no hi ha $PDF"; exit 1; }
n=$(grep -c '^! ' "$LOG"); [ "$n" -eq 0 ] || { echo "ERROR: $n errors de LaTeX"; OK=1; }
n=$(grep -c -E 'Reference .* undefined|Citation .* undefined|There were undefined references' "$LOG")
[ "$n" -eq 0 ] || { echo "ERROR: $n referències o citacions no resoltes"; OK=1; }
n=$(grep -c 'Label(s) may have changed' "$LOG"); [ "$n" -eq 0 ] || echo "AVÍS: les etiquetes poden haver canviat (cal una passada més)"
if [ -f "$JOB.xdvlog" ]; then
  n=$(grep -c 'already defined' "$JOB.xdvlog"); [ "$n" -eq 0 ] || { echo "ERROR: $n objectes de formulari duplicats"; OK=1; }
fi
echo "Desbordaments de més de 3 pt:"
grep -E '^Overfull \\[hv]box \(([3-9]|[1-9][0-9]+)\.[0-9]+pt too' "$LOG" | sed 's/^/  /' || true
echo "  (total: $(grep -c -E '^Overfull \\[hv]box \(([3-9]|[1-9][0-9]+)\.[0-9]+pt too' "$LOG"))"
echo "Pàgines: $(pdfinfo "$PDF" 2>/dev/null | awk '/^Pages/{print $2}')"
if command -v python3 >/dev/null 2>&1 && python3 -c 'import pypdf' 2>/dev/null; then
  camps=$(python3 - "$PDF" <<'PY'
import sys
from pypdf import PdfReader
r = PdfReader(sys.argv[1])
af = r.trailer['/Root'].get('/AcroForm')
f = af.get_object()['/Fields'] if af else []
n = [x.get_object().get('/T') for x in f]
print(len(f), 'unics' if len(set(n)) == len(n) else 'REPETITS')
PY
)
  echo "Camps de formulari: $camps"
  case "$camps" in *REPETITS*) echo "ERROR: noms de camps repetits"; OK=1;; esac
  if [ -n "$ESPERATS" ] && [ "${camps%% *}" != "$ESPERATS" ]; then echo "ERROR: s'esperaven $ESPERATS camps"; OK=1; fi
else
  echo "(pypdf no disponible: no es comproven els camps de formulari)"
fi
[ $OK -eq 0 ] && echo "Resultat: correcte" || echo "Resultat: HI HA ERRORS"
exit $OK
