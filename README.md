# giant2
Pagina web per l'installazione del client Giant2

https://sigmasistemi.github.io/giant2

## Pubblicare una nuova versione

Il pacchetto è disponibile anche su winget (`winget install giant2` / `SigmaSistemi.Giant2`). L'aggiornamento del manifest winget è **automatico**, ma solo se segui questa procedura — non basta più sovrascrivere il file `.msi` nel repo.

1. Vai su **github.com/SigmaSistemi/giant2 → Releases → "Draft a new release"**
2. Crea un nuovo tag (es. `v2.6.0` — deve corrispondere alla versione reale del prodotto)
3. Allega il nuovo file **`.msi`** come asset della release (trascinalo nel campo "Attach binaries")
4. Pubblica la release ("Publish release")

Da qui in poi è tutto automatico: il workflow `.github/workflows/winget-releaser.yaml` si attiva da solo, legge l'asset `.msi` allegato, aggiorna il manifest `SigmaSistemi.Giant2` e apre da solo la Pull Request su [microsoft/winget-pkgs](https://github.com/microsoft/winget-pkgs). Puoi seguirne l'esito nella tab **Actions** del repo.

Se in futuro serve rifare il setup da zero (es. token scaduto o repo nuovo), i passaggi sono:
- Generare un GitHub Personal Access Token con scope `public_repo` (github.com/settings/tokens/new)
- Salvarlo come secret del repo con nome **`WINGET_TOKEN`** (Settings → Secrets and variables → Actions)
- Il workflow è già pronto in `.github/workflows/winget-releaser.yaml`, non serve ricrearlo
