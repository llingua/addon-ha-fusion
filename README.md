# HA Fusion Custom Add-on

Dashboard personalizzato per Home Assistant con componente Bar universale.

Basato su: <https://github.com/matt8707/ha-fusion>  
Versione personalizzata: <https://github.com/llingua/ha-fusion-custom>

## 🆕 Novità in questa versione

### 🎯 Componente Bar Universale

- **Disponibile nel main dashboard**: Ora puoi aggiungere barre di progresso anche nel dashboard principale
- **Tre dimensioni**: Compatta, Media, Grande
- **Click to edit**: Modifica direttamente dal dashboard
- **Riutilizzabile**: Stesso componente per sidebar e main

### ✅ Anti-Conflitto

Questo add-on è progettato per evitare conflitti con altre installazioni di ha-fusion:

- **🌐 Porta Unica**: Usa la porta 8090 (invece della 8099 standard)
- **📁 Slug Unico**: `ha_fusion_custom` (diverso da installazioni standard)
- **🗂️ Dati Separati**: Directory di configurazione prefissata con `ha-fusion-custom`
- **🏷️ Nome Distintivo**: "HA Fusion Custom" facilmente riconoscibile

> ✅ **Sicuro**: Può essere installato insieme ad altre versioni di ha-fusion senza problemi

### 📖 Come usare la nuova funzionalità Bar

1. **Entra in modalità edit** (icona matita)
2. **Click su "+"** in una sezione
3. **Seleziona "Bar"** dal menu
4. **Configura**: entità, nome, formula matematica, dimensione
5. **Salva** e testa!

## 🚀 Installazione

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fllingua%2Faddon-ha-fusion)
# Trigger build for new image format
