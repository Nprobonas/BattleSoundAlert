-- Initialisation

local BurstHornSound = "Interface\\AddOns\\SpellAlertAddon\\Sounds\\burstHorn.mp3"
local DefHornSound = "Interface\\AddOns\\SpellAlertAddon\\Sounds\\defHorn.mp3"

local BurstSpellTracked = {
      -- Chevalier de la mort (DK)
      [51271] = BurstHornSound,  -- Pilier de givre (Givre)
      [275699] = BurstHornSound, -- Apocalypse (Impie)
      [42650] = BurstHornSound,  -- Armée des morts (Impie)

      -- Démoniste (Warlock)
      [1122] = BurstHornSound,    -- Invocation : Infernal (Destruction)
      [205180] = BurstHornSound,  -- Invocation de Sombrelueur (Affliction)
      [111898] = BurstHornSound,  -- Grimoire : Diablotin (Démonologie)

      -- Chasseur (Hunter)
      [193530] = BurstHornSound,  -- Aspect of the Wild (Survie)
      [288613] = BurstHornSound,  -- Visée précise (Précision)
      [19574] = BurstHornSound,   -- Courroux bestial (Maîtrise des bêtes)

      -- Chasseur de démons (Demon Hunter)
      [191427] = BurstHornSound,  -- Métamorphose (DPS)

      -- Druide (Druid)
      [102543] = BurstHornSound,  -- Incarnation : avatar d'Ashamane (Feral)
      [102560] = BurstHornSound,  -- Incarnation : élu d'Élune (Équilibre)
      [194223] = BurstHornSound,  -- Alignement céleste (Équilibre)
      [106951] = BurstHornSound,  -- Berserk (Feral)
  
      -- Guerrier (Warrior)
      [1719] = BurstHornSound,    -- Témérité (Fureur)
      [107574] = BurstHornSound,  -- Avatar (Armes/Fureur)
      [46924] = BurstHornSound,   -- Tempête de lames (Armes/Fureur)
  
      -- Mage
      [12042] = BurstHornSound,   -- Puissance des Arcanes (Arcane)
      [190319] = BurstHornSound,  -- Combustion (Feu)
      [12472] = BurstHornSound,   -- Veines glaciales (Givre)
  
      -- Moine (Monk)
      [152173] = BurstHornSound,  -- Sérénité (Marche-vent)
      [137639] = BurstHornSound,  -- Tempête, Terre et Feu (Marche-vent)
      [123904] = BurstHornSound,  -- Invocation de Xuen (Marche-vent)
  
      -- Paladin
      [31884] = BurstHornSound,   -- Courroux vengeur (Vindicte)
      [231895] = BurstHornSound,  -- Croisade (Vindicte)
  
      -- Prêtre (Priest)
      [10060] = BurstHornSound,   -- Infusion de puissance (Ombre)
      [194249] = BurstHornSound,  -- Forme du Vide (Ombre)
      [391109] = BurstHornSound,  -- Ascension des ténèbres (Ombre)
  
      -- Voleur (Rogue)
      [121471] = BurstHornSound,  -- Lames de l'ombre (Finesse)
      [79140] = BurstHornSound,   -- Vendetta (Assassinat)
      [13750] = BurstHornSound,   -- Ruée d'adrénaline (Hors-la-loi)
  
      -- Chaman (Shaman)
      [114050] = BurstHornSound,  -- Ascendance (Élémentaire)
      [114051] = BurstHornSound,  -- Ascendance (Amélioration)
      [191634] = BurstHornSound,  -- Gardien des tempêtes (Élémentaire)
  }

  local DefSpellTracked = {

      -- Chevalier de la mort (DK)
      [48707] = DefHornSound,  -- Carapace anti-magie
      [51052] = DefHornSound,   -- Zone anti-magie (Toutes spé)
      [48792] = DefHornSound,  -- Robustesse glaciale
      [49028] = DefHornSound,  -- Pacte mortel
      
      -- Démoniste (Warlock)
      [104773] = DefHornSound, -- Résolution interminable
      [108416] = DefHornSound, -- Sombre pacte
      
      -- Chasseur (Hunter)
      [186265] = DefHornSound, -- Aspect de la tortue
      [53480] = DefHornSound,  -- Rugissement de sacrifice (Maîtrise des bêtes)
  
      -- Chasseur de démons (Demon Hunter)
      [196555] = DefHornSound, -- Rempart du Néant (Immunité magique)
      [187827] = DefHornSound, -- Métamorphose (Vengeance)
      
      -- Druide (Druid)
      [61336] = DefHornSound,  -- Instincts de survie (Feral/Guardian)
      [22812] = DefHornSound,  -- Ecorce (Toutes spé)
      [102342] = DefHornSound, -- Cénarius (Gardien/Restauration)
      
      -- Guerrier (Warrior)
      [871] = DefHornSound,    -- Mur protecteur (Toutes spé)
      [12975] = DefHornSound,  -- Dernier rempart (Protection)
      [184364] = DefHornSound, -- Rage du berserker (Fureur)
  
      -- Mage
      [45438] = DefHornSound,  -- Bloc de glace
      [198111] = DefHornSound, -- Forme de glace (Givre)
      [86949] = DefHornSound,  -- Tempête du néant (Arcane)
  
      -- Moine (Monk)
      [122278] = DefHornSound, -- Atténuation du mal (Toutes spé)
      [122783] = DefHornSound, -- Diffusion de la magie (Toutes spé)
      [115203] = DefHornSound, -- Cocon de vie (Maître brasseur)
      
      -- Paladin
      [642] = DefHornSound,    -- Bouclier divin
      [86659] = DefHornSound,  -- Gardien des anciens rois (Protection)
      [498] = DefHornSound,    -- Protection divine (Toutes spé)
      [31850] = DefHornSound,  -- Ardent défenseur (Protection)
  
      -- Prêtre (Priest)
      [33206] = DefHornSound,  -- Suppression de la douleur (Discipline)
      [47788] = DefHornSound,  -- Esprit gardien (Sacré)
      [47585] = DefHornSound,  -- Dispersion (Ombre)
      
      -- Voleur (Rogue)
      [31224] = DefHornSound,  -- Cape d'ombre
      [5277] = DefHornSound,   -- Évasion
      [1856] = DefHornSound,   -- Disparition
      
      -- Chaman (Shaman)
      [108271] = DefHornSound, -- Forme astrale (Toutes spé)
      [98008] = DefHornSound,  -- Totem de lien d’esprit (Restauration)      
  }

-- Fenêtre de surveillance des sorts dans le journal de combat

local frame = CreateFrame("Frame")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

-- Fonction qui joue le son lorsque l'ID d'un sort de la table est détecté

local function PlaySpellSound(spellID)
    local BurstSoundFile = BurstSpellTracked[spellID]
    local DefSoundFile = DefSpellTracked[spellID]

    if BurstSoundFile then
        PlaySoundFile(BurstSoundFile)
        print("Son OFFENSIF joué pour le sort ID : "..spellID)
    elseif DefSoundFile then
        PlaySoundFile(DefSoundFile)
        print("Son DEFENSIF joué pour le sort ID : "..spellID)
    end
end


-- Détection des sorts dans le journal de combat

frame:SetScript("onEvent", function (self, event)
    local _, subEvent, _, _, _, _, _, _, destName, _, _, spellID = CombatLogGetCurrentEventInfo()

    if subEvent == "SPELL_CAST_SUCCESS" and (destName == UnitName("target") or destName == UnitName("arena1") or destName == UnitName("arena2") or destName == UnitName("arena3")) then
        if BurstSpellTracked[spellID] or DefSpellTracked[spellID] then
            PlaySpellSound(spellID)
        end
    end
end)

-- Commande d'activation et désactivation

SLASH_SPELLALERT1 = "/spellalert"
SlashCmdList["SPELLALERT"] = function (msg)
    if msg == "show" then
        frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
        print("BattleSoundAlert activé")
    elseif msg == "hide" then
        frame:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
        print("BattleSoundAlert désactivé")
    end
end