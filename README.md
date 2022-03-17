# Baypass
Un tema multiplataforma de Spicetify que ordena la interfaz de usuario de stock de Spotify y elimina todos los anuncios.
Hemos cambiado a una solución de bloqueo de anuncios multiplataforma, así que asegúrese de usar el último `install.bat` para obtener las últimas funciones.

Si acabas de actualizar a `1.1.80.699.gc3dac750` 
Última versión probada: `1.1.80.699.gc3dac750`

# Características
Este es un tema de `Andy` que:
- Elimina todos los anuncios de Spotify ([Source](https://github.com/johnpradoo/Spotify-Baypass/blob/main/adblock.js))
- Elimina el botón `Actualizar`
- Elimina la entrada "Actualizar a Premium" en el menú desplegable
- Elimina los marcadores de posición de los anuncios (en la pestaña Inicio y encima de la barra de reproducción en curso)

> **Nota para los usuarios que instalan esto manualmente:** Asegúrese de usar la última CLI de Spicetify y la aplicación Spotify.  Ejecute `spicetify upgrade` y luego `spicetify backup apply` para actualizar Spicetify a la última versión.

# Instalación

## 1. Instalación/actualizaciones automáticas para usuarios de Windows
##### **Nota: si tiene Windows 8.1 o anterior, instale Powershell v5.1 ya que el script de instalación automática no es compatible con las versiones de Powershell anteriores a v5.  <br> Descargar aquí: https://www.microsoft.com/en-us/download/details.aspx?id=54616 <br> Más información: [#30](https://twitter.com/johnpradooo/status/1504558360238170116)**

### Instalación
Ejecute `install.bat` si está instalando por primera vez.  <br>
[[HAGA CLICK AQUÍ PARA DESCARGAR]](https://raw.githack.com/johnpradoo/Spotify-Baypass/main/install.bat) <br>
### Actualizando
Puede obtener la última versión de este tema ejecutando el script `update.bat` <br>
[[HAGA CLICK AQUÍ PARA DESCARGAR]](https://raw.githack.com/johnpradoo/Spotify-Baypass/main/update.bat)


## 2. Instalación manual para todos los usuarios
### Linux and MacOS:
In **Bash**:
```bash
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
cd "$(dirname "$(spicetify -c)")/Themes"
git clone https://github.com/johnpradoo/Spotify-Baypass
spicetify config current_theme Spotify-Baypass
cp "$(dirname "$(spicetify -c)")/Themes/SpotifyNoPremium/adblock.js" "$(dirname "$(spicetify -c)")/Extensions"
spicetify config extensions adblock.js
spicetify apply
```

#### Windows
In **Powershell**:
```powershell
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1" | Invoke-Expression
cd "$(spicetify -c | Split-Path)\Themes"
git clone https://github.com/johnpradoo/Spotify-Baypass
spicetify config current_theme Spotify-Baypass
Copy-Item "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium\adblock.js" "$(spicetify -c | Split-Path)\Extensions"
spicetify config extensions adblock.js
spicetify apply
```
