<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:variable name="license-locale">
    <xsl:value-of select="/answers/locale" />
  </xsl:variable>


  <xsl:template name="license-jurisdiction">
    <xsl:param name="jurisdiction" />

    <xsl:choose>
         <!-- Generic codes -->
         <xsl:when test="$jurisdiction='' or $jurisdiction='-'">
            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ที่ยังไม่ได้ปรับแก้</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Ne-adaptată</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Нелокализиран</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">neloklizirana licenca</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">通用版</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='he' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Unported</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Unported</xsl:when>
            

            </xsl:choose>
         </xsl:when>

      
         <xsl:when test="$jurisdiction='ar' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Αργεντινή</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Argentino</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Argentinië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">阿根廷</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Argentinien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Argentinië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='th' ">อาร์เจนตินา</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">E-Argentina</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Argentine</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Аржентина</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Argentinien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">阿根廷</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Argentine</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Argentiina</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Argentína</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">アルゼンチン</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Argentine</xsl:when>
            
               <xsl:when test="$license-locale='he' ">ארגנטינה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Argentine</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Argentinien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Аргентина</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Аргентина</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Argentyna</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Argentina</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Argentina</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='au' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Αυστραλία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Aŭstralio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Australië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Austràlia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">澳大利亚</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Australija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Australien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Australië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Austrália</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ออสเตรเลีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">e-Australia</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Austrália</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Australie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Австралия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Australien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Australija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">澳大利亞</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Australien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Australie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Ausztrália</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">オーストリア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Australie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">אוסטרליה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Australie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Australien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Аустралија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Australien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Австралија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Australia</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Avstralija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='at' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Αυστρία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Aŭstrio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Oostenryk</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Àustria</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">奥地利</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Austrija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Österreich</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Oostenrijk</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Áustria</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ออสเตรีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">i-Austria</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Áustria</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Autriche</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Австрия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Österreich</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Austrija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">奧地利</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Østrig</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Autriche</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Itävalta</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Ausztria</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">オーストリア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Autriche</xsl:when>
            
               <xsl:when test="$license-locale='he' ">אוסטריה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Autriche</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Österreich</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Аустрија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Österrike</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Австрија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Austria</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Avstrija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='be' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Βέλγιο</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Belgio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='af' ">België</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Bèlgica</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Belgio</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Belgika</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">比利时</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Bélxica</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Belgija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Belgien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">België</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เบลเยียม</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">eBelgium</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Belgia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Bélgica</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Belgique</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Белгия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Belgien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Belgija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">比利時</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Belgien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Belgique</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Belgia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ベルギー</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Belgique</xsl:when>
            
               <xsl:when test="$license-locale='he' ">בלגיה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Belgique</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Belgien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Белгија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Belgien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Белгија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Belgio</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Belgia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Belgium</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Belgija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='br' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Βραζιλία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Brazilo</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Brasilië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Brasile</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">巴西</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Brasilien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Brazilië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='th' ">บราซิล</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iBrazil</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Brazilia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Brésil</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Бразилия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Brasilien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">巴西</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Brasilien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Brésil</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Brasilia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Brazília</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ブラジル</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Brésil</xsl:when>
            
               <xsl:when test="$license-locale='he' ">ברזיל</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Brésil</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Brasilien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Бразил</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Brasilien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Бразил</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Brazil</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Brasile</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Brazylia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Brasil</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Brazilija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='bg' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Βουλγαρία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Bulgario</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Bulgarye</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Bulgària</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">保加利亚</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Bugarska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Bulgarien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Bulgarije</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='th' ">บัลแกเรีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iBulgaria</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Bulgarie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">България</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Bulgarien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Bugarska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">保加利亞</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Bulgarien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Bulgarie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Bulgária</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ブルガリア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Bulgarie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">בולגריה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Bulgarie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Bulgarien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Бугарска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Bulgarien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Бугарија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Bułgaria</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Bulgaria</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Bolgarija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='ca' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Καναδάς</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Kanado</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Canadà</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">加拿大</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Khanada</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='th' ">แคนาดา</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Ecanada</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Canadá</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Канада</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">加拿大</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">カナダ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='he' ">קנדה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Канада</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Канада</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Canada</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Kanada</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Kanada</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='cl' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Χιλή</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Ĉilio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Chili</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Xile</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Txile</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">智利</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Čile</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Chili</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ชิลี</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Echile</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Chili</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Чили</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Čile</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">智利</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Chili</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">チリ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Chili</xsl:when>
            
               <xsl:when test="$license-locale='he' ">צ'ילה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Chili</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Чиле</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Чиле</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Chile</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Čile</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='cn' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Κίνα</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Ĉinio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">China</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Sjinese Vasteland</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Xina</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Cina</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">China</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">China</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Txina</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">中国大陆</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">China</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Kina</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">China</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">China (vasteland)</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">China</xsl:when>
            
               <xsl:when test="$license-locale='no' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">China Naga-bogareng</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">China</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">China</xsl:when>
            
               <xsl:when test="$license-locale='es' ">China</xsl:when>
            
               <xsl:when test="$license-locale='th' ">จีนแผ่นดินใหญ่</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">China</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">EMainland China</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">China continentală</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">China</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">China</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Chine</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Китай (континентален)</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">China</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Kina</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">中國大陸</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Kina</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Chine</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Kiina</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Kína</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">中華人民共和国</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Chine</xsl:when>
            
               <xsl:when test="$license-locale='he' ">סין</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Chine</xsl:when>
            
               <xsl:when test="$license-locale='de' ">China</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Кина</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Kina</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Кина</xsl:when>
            
               <xsl:when test="$license-locale='st' ">China Mainland</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Cina</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Chiny</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Tanah Besar Cina</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Kitajska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='co' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Κολομβία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Kolombio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Colòmbia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Kolonbia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">哥伦比亚</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Kolumbija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Kolumbien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">โคลัมเบีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iColombia</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Colombie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Колумбия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Kolumbien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Kolumbija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">哥倫比亞</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Columbia</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Colombie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Kolumbia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">コロンビア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Colombie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">קולומביה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Colombie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Kolumbien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Колумбија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Columbia</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Колумбија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Kolumbia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Colombia</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Kolumbija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='hr' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Κροατία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Kroatio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Kroasië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Croàcia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Croazia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Kroazia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">克罗地亚</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Hrvatska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Kroatien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Kroatië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Croácia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">โครเอเชีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Croacia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">eCroatia</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Croaţia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Croácia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Croatie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Хърватска</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Kroatien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Hrvatska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">克羅埃西亞</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Kroatien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Croatie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Kroatia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Horvátország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">クロアチア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Croatie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">קרואטיה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Croatie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Kroatien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Хрватска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Kroatien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Хрватска</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Croatia</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Croazia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Chorwacja</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Kroatia</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Hrvaška</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='hu' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ουγγαρία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Hungario</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Hungría</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Hongarye</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Hongria</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Hungría</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Hungría</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Hungaria</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">匈牙利</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Madjarska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Ungarn</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Hongarije</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Hungría</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Hungría</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Hungría</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ฮังการี</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Hungría</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iHungary</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Ungaria</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Hongrie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Унгария</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Ungarn</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Mađarska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">匈牙利</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Ungarn</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Hongrie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Unkari</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Magyarország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ハンガリー</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Hongrie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">הונגריה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Hongrie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Ungarn</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Мађарска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Ungern</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Унгарија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Węgry</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Hungary</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Madžarska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='dk' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Δανία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Danio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Denemarke</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Danimarka</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">丹麦</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Danska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Dänemark</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Denemarken</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เดนมาร์ค</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Dinamarca</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">eDenmark</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Danemarca</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Danemark</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Дания</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Dänemark</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Danska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">丹麥</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Danmark</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Danemark</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Tanska</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Dánia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">デンマーク</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Danemark</xsl:when>
            
               <xsl:when test="$license-locale='he' ">דנמרק</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Danemark</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Dänemark</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Данска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Danmark</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Данска</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Dania</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Denmark</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Danska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='fi' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Φιναλνδία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Finnlando</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Finlàndia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">芬兰</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Finska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Finnland</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Finlândia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ฟินแลนด์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iFinland</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Finlanda</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Filândia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Finlande</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Финландия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Finnland</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Finska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">芬蘭</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Finlande</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Suomi</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Finnország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">フィンランド</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Finlande</xsl:when>
            
               <xsl:when test="$license-locale='he' ">פינלנד</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Finlande</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Finnland</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Финска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Финска</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Finlandia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Finland</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Finska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='fr' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Γαλλία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Francio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">France</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Frankryk</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">France</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">França</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">France</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">France</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Frantzia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">法国</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Francuska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Frankreich</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Frankrijk</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">França</xsl:when>
            
               <xsl:when test="$license-locale='no' ">France</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Fora</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ฝรั่งเศส</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">EFrance</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Franţa</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">França</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">France</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">France</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">France</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Франция</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Frankreich</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Francuska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">法國</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Frankrig</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">France</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Ranska</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Franciaország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">フランス</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">France</xsl:when>
            
               <xsl:when test="$license-locale='he' ">צרפת</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' "> France</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Frankreich</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Француска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">France</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Frankrike</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Франција</xsl:when>
            
               <xsl:when test="$license-locale='st' ">France</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Francia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Francja</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Perancis</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Francija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='de' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Γερμανία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Germanio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Duitsland</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Alemanya</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Germania</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">德国</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Alemaña</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Nemačka</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Deutschland</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Duitsland</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Alemanha</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Jeremane</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เยอรมัน</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Alemania</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Ejalimane</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Germania</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Alemanha</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Allemagne</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Германия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Deutschland</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Njemačka</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">德國</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Tyskland</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Allemagne</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Saksa</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Németország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ドイツ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Allemagne</xsl:when>
            
               <xsl:when test="$license-locale='he' ">גרמניה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Allemagne</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Deutschland</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Немачка</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Tyskland</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Германија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Germany</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Germania</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Niemcy</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Negara Jerman</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Nemčija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='il' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ισραήλ</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Israelo</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">以色列</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Izrael</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Israël</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Isiraele</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='th' ">อิสราเอล</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">E-Israel</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Israël</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Израел</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Izrael</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">以色列</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Israël</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Izrael</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">イスラエル</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Israël</xsl:when>
            
               <xsl:when test="$license-locale='he' ">ישראל</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Israël</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Израел</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Израел</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Israel</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Izrael</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Isreal</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Izrael</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='in' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ινδία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Barato</xsl:when>
            
               <xsl:when test="$license-locale='en' ">India</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">India</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Indië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">India</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Índia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">India</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">India</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">India</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">India</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">India</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">India</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">印度</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">India</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Indija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Indien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">India</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">India</xsl:when>
            
               <xsl:when test="$license-locale='no' ">India</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">India</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">India</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">India</xsl:when>
            
               <xsl:when test="$license-locale='es' ">India</xsl:when>
            
               <xsl:when test="$license-locale='th' ">อินเดีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">India</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Endiya</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">India</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">India</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">India</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">India</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Inde</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Индия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Indien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Indija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">印度</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Indien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Inde</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Intia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">India</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">インド</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Inde</xsl:when>
            
               <xsl:when test="$license-locale='he' ">הודו</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Inde</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Indien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Индија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">India</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Indien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Индија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">India</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">India</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Indie</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">India</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Indija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='it' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ιταλία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Italio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Italië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Itàlia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">意大利</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Italija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Italien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Italië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Itália</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">อิตาลี</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">i-Italy</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Itália</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Italie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Италия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Italien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Italija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">義大利</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Italien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Italie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Olaszország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">イタリア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Italie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">איטליה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Italie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Italien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Италија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Italien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Италија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Italy</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Italia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Włochy</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Itali</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Italija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='jp' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ιαπωνία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Japanio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Japón</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Japó</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Giappone</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Japón</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Japón</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Japonia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">日本</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Xapón</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Japão</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Japane</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Japón</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Japón</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Japón</xsl:when>
            
               <xsl:when test="$license-locale='th' ">่ญี่ปุ่น</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Japón</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Ejapane</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Japonia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Japão</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Japon</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Япония</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">日本</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Japon</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Japani</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Japán</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">日本</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Japon</xsl:when>
            
               <xsl:when test="$license-locale='he' ">יפן</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Japon</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Јапан</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Јапонија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Japan</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Giappone</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Japonia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Jepun</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Japonska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='kr' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Κορέα</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Koreio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">韩国</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Koreja</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Süd-Korea</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Coréia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เกาหลี</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Corea del Sur</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iKorea</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Correa de Sud</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Correia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Corée</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Корея</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Süd-Korea</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Koreja</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">韓國</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Corée</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Dél-Korea</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">韓国</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Corée</xsl:when>
            
               <xsl:when test="$license-locale='he' ">קוריאה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Corée</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Süd-Korea</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Кореја</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">대한민국</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Кореја</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Corea</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Korea</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Koreja</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='mk' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Macedònia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">马其顿</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Makedonija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Mazedonien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Macedonië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">มาซิโดเนีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Macédonie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Македония</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Mazedonien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Makedonija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">馬其頓</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Macédonie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Makedonia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Macédonie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">מקדוניה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Macédonie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Mazedonien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Македонија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Makedonien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Macedonia</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Macedonia</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='my' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Μαλαισία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Malajzio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Malasia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Maleisië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Malàisia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Malasia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Malasia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">马来西亚</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Malezija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Maleisië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Malasia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Malasia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Malasia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">มาเลเซีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Malasia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iMalaysia</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Malaiezia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Malaisie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Малайзия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Malezija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">馬來西亞</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Malaisie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Malesia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Malajzia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">マレーシア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Malaisie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">מלזיה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Malaisie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Малезија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Малезија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Malezja</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Malaysia</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Malezija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='mt' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Μάλτα</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Malto</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">马耳他</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='th' ">มอลต้า</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">eMalta</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Malte</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Малта</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">馬爾他</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Malte</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">マルタ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Malte</xsl:when>
            
               <xsl:when test="$license-locale='he' ">מאלטה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Malte</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Малта</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Малта</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Malta</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Malta</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='mx' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Μεξικό</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Meksiko</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">México</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Mexiko</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Mèxic</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">México</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">México</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Mexiko</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">墨西哥</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Meksiko</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Mexiko</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">México</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">México</xsl:when>
            
               <xsl:when test="$license-locale='es' ">México</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เม็กซิโก</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">México</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">EMexico</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Mexic</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Mexique</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Мексико</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Mexiko</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Meksiko</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">墨西哥</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Mexique</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Meksiko</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Mexikó</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">メキシコ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Mexique</xsl:when>
            
               <xsl:when test="$license-locale='he' ">מקסיקו</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Mexique</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Mexiko</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Мексико</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Mexiko</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Мексико</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Meksyk</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Mexico</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Mehika</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='nl' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ολλανδία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Nederlando</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Nederland</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Olanda</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Herbehereak</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">荷兰</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Holandija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Niederlande</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Nederland</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เนเธอร์แลนด์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iNetherlands</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Olanda</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Holanda</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Pays-Bas</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Холандия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Niederlande</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Nizozemska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">荷蘭</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Holland</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Pays-Bas</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Hollanti</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Hollandia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">オランダ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Pays-Bas</xsl:when>
            
               <xsl:when test="$license-locale='he' ">הולנד</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Pays-Bas</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Niederlande</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Холандија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Nederländerna</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Холандија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Olanda</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Holandia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Netherlands</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Nizozemska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='pe' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Περού</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Peruo</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">秘鲁</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เปรู</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Perú</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">ePeru</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Pérou</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Перу</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">秘魯</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Pérou</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ペルー</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Pérou</xsl:when>
            
               <xsl:when test="$license-locale='he' ">פרו</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Pérou</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Перу</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Перу</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Peru</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Peru</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='ph' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Φιλιππίνες</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Filipinoj</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Filipinas</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Filippyne</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Filipines</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Filipinas</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Filipinas</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Filipinak</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">菲律宾</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Filipini</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Philippinen</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Filipijnen</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Filipinas</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Filipinas</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Filipinas</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ฟิลิปปินส์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Filipinas</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iPhilippines</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Filipine</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Филипини</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Philippinen</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Filipini</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">菲律賓</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Filippinerne</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Filippiinit</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Fülöp-szigetek</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">フィリピン</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='he' ">פיליפינים</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Philippinen</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Филипини</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Filippinerna</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Филипини</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Philippines</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Filipiny</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Filipina</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Filipini</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='pl' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Πολωνία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Pollando</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Pole</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Polònia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">波兰</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Poljska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Polen</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Polen</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Polônia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">โปแลนด์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">EPoland</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Pologne</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Полша</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Polen</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Poljska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">波蘭</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Polen</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Pologne</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Puola</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Lengyelország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ポーランド</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Pologne</xsl:when>
            
               <xsl:when test="$license-locale='he' ">פולין</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Pologne</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Polen</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Пољска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Polen</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Полска</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Polonia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Polska</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Poland</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Poljska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='pt' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Πορτογαλία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Portugalio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Portogallo</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">葡萄牙</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Portugalija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='th' ">โปรตุเกส</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iPortugal</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Portugalia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Португалия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">葡萄牙</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Portugali</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Portugália</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ポルトガル</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='he' ">פורטוגל</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Португалија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Португалија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Portogallo</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Portugalia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Portugal</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Portugalska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='si' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Σλοβενία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Slovenio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Slowenië</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Eslovènia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">斯洛文尼亚</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Slovenija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Slowenien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Slovenië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">สโลวาเนีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Eslovenia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iSlovenia</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Slovénie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Словения</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Slowenien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Slovenija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">斯洛維尼亞</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Slovenien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Slovénie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Szlovénia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">スロベニア</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Slovénie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">סלובניה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Slovénie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Slowenien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Словенија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Slovenien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Словенија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Słowenia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Slovenia</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Slovenija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='za' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Νότια Αφρική</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Sud-Afriko</xsl:when>
            
               <xsl:when test="$license-locale='en' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Suráfrica</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Suid-Afrika</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Sudàfrica</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Sud Africa</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Suráfrica</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Suráfrica</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Hegoafrika</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">南非</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Sudáfrica</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Južna Afrika</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Südafrika</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Zuid-Afrika</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">África do Sul</xsl:when>
            
               <xsl:when test="$license-locale='no' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Afrika Borwa</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Suráfrica</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Sudáfrica</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Suráfrica</xsl:when>
            
               <xsl:when test="$license-locale='th' ">อัฟริกาใต้</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Sudáfrica</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">ENingizimu Afrika</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Africa de Sud</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">África do Sul</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Afrique du Sud</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Южна Африка</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Südafrika</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Južna Afrika</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">南非</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Sydafrika</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Afrique du Sud</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Etelä-Afrikka</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Dél-Afrika</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">南アフリカ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Afrique du Sud</xsl:when>
            
               <xsl:when test="$license-locale='he' ">דרום אפריקה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Afrique du Sud</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Südafrika</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Јужна Африка</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Sydafrika</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Јужна Африка</xsl:when>
            
               <xsl:when test="$license-locale='st' ">South Africa</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Sud Africa</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Południowa Afryka</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Afrika Selatan</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Južnoafriška Republika</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='es' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ισπανία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Hispanio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">España</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Spanje</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Espanya</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Spagna</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">España</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">España</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Espainia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">西班牙</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">España</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Španija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Spanien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Spanje</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Espanha</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Sepania</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">España</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">España</xsl:when>
            
               <xsl:when test="$license-locale='es' ">España</xsl:when>
            
               <xsl:when test="$license-locale='th' ">สเปน</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">España</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Espain</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Spania</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Espanha</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Espagne</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Испания</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Spanien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Španjolska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">西班牙</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Spanien</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Espagne</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Espanja</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Spanyolország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">スペイン</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Espagne</xsl:when>
            
               <xsl:when test="$license-locale='he' ">ספרד</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Espagne</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Spanien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Шпанија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Spanien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Шпанија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Spain</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Spagna</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Hiszpania</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Sepanyol</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Španija</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='se' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Σουηδία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Svedio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Suecia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Swede</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Suècia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Suecia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Suecia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Suedia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">瑞典</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Švedska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Schweden</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Zweden</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Suecia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Suecia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Suecia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">สวีัเดน</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Suecia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iSweden</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Suedia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Suède</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Швеция</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Schweden</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Švedska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">瑞典</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Sverige</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Suède</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Ruotsi</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Svédország</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">スエーデン</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Suède</xsl:when>
            
               <xsl:when test="$license-locale='he' ">שוודיה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Suède</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Schweden</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Шведска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Sverige</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Шведска</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Szwecja</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Sweden</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Švedska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='ch' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ελβετία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Svislando</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Suiza</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Switserland</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Suïssa</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Suiza</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Suiza</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Suitza</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">瑞士</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Švajcarska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Schweiz</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Zwitserland</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Suiza</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Suiza</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Suiza</xsl:when>
            
               <xsl:when test="$license-locale='th' ">สวิสเซอร์แลนด์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Suiza</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">ESwitzerland</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Elveţia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Suisse</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Швейцария</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Schweiz</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Švicarska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">瑞士</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Schweiz</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Suisse</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Sveitsi</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Svájc</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">スイス</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Suisse</xsl:when>
            
               <xsl:when test="$license-locale='he' ">שוויץ</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Suisse</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Schweiz</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Швајцарска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Schweiz</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Швајцарија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Szwajcaria</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Switzerland</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Švica</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='tw' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ταϊβάν</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Tajvano</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">台湾</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Tajvan</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ไต้หวัน</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">iTaiwan</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Тайван</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Tajvan</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">台灣</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Tajvan</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">台湾（中華民国）</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='he' ">טאיוואן</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Тајван</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Тајван</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Tajwan</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Taiwan</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Tajvan</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='uk' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Η.Β: Αγγλία &amp; Ουαλία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Britio: Anglio kaj Kimrio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Inglaterra y País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='af' ">VK: Engeland en Wallis</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Anglaterra i País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Inghilterra &amp; Galles</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Inglaterra y País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Inglaterra y País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Ingalaterra eta Gales</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">英国：英格兰和威尔士</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Inglaterra e País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">VB: Engleska i Vels</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Engeland &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Reino Unido</xsl:when>
            
               <xsl:when test="$license-locale='no' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">UK: Engelane &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Inglaterra y País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Inglaterra y País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Inglaterra y País de Gales</xsl:when>
            
               <xsl:when test="$license-locale='th' ">สหราชอาณาจักร: อังกฤษและเวลส์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Reino Unido: Inglaterra y Gales</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">E-UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Marea Britanie: Anglia&amp;Ţara Galilor</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Reino Unido</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Royaume-Uni : Angleterre &amp; Pays de Galles</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Обединено кралство: Англия и Уелс</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">VB: Engleska i Wales</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">英國: 英格蘭及威爾斯</xsl:when>
            
               <xsl:when test="$license-locale='da' ">England og Wales</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Royaume-Uni : Angleterre &amp; Pays de Galles</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Englanti ja Wales</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">UK: Anglia és Wales</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">イングランド＆ウェールズ（英）</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Royaume-Uni</xsl:when>
            
               <xsl:when test="$license-locale='he' ">אנגליה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Royaume-Uni : Angleterre &amp; Pays de Galles</xsl:when>
            
               <xsl:when test="$license-locale='de' ">England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">ВБ: Енглеска и Велс</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Велика Британија: Англија и Велс</xsl:when>
            
               <xsl:when test="$license-locale='st' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Inghilterra &amp; Galles</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Anglia i Walia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">UK: England &amp; Wales</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Združeno kraljestvo: Anglija in Wales</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='scotland' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Britio: Skotlando</xsl:when>
            
               <xsl:when test="$license-locale='en' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Escocia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">VK: Skotland</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Escòcia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Escocia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Escocia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Eskozia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">英国：苏格兰</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">VB: Škotska</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Schottland</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Schotland</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='no' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Escocia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Escocia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Escocia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ประเทศอังกฤษ : รัฐสก๊อตแลนด์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Reino Unido: Escocia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">E-UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Marea Britanie: Scoţia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Royaume-Uni : Ecosse</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Обединено кралство: Шотландия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Schottland</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">VB: Škotska</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">英國: 蘇格蘭</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Skotland</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Royaume-Uni : Ecosse</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Isobritania: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">UK: Skócia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">スコットランド（英）</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Royaume-Uni : Ecosse</xsl:when>
            
               <xsl:when test="$license-locale='he' ">סקוטלנד</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Royaume-Uni : Ecosse</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Schottland</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">ВБ: Шкотска</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">UK: Skottland</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Велика Британија: Шкотска</xsl:when>
            
               <xsl:when test="$license-locale='st' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Szkocja</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">UK: Scotland</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Združeno kraljestvo: Škotska</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='us' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ηνωμένες Πολιτείες</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Usono</xsl:when>
            
               <xsl:when test="$license-locale='en' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Verenigde State</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Estats Units d'Amèrica</xsl:when>
            
               <xsl:when test="$license-locale='it' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Estatu Batuak</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">美国</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">SAD</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Vereinigte Staaten von Amerika</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Verenigde Staten</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='no' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='th' ">สหรัฐอเมริกา</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Estados Unidos de Norteamérica</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">E-United States</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Statele Unite ale Americii</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Estados Unidos</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Etats-Unis</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">САЩ</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Vereinigte Staaten von Amerika</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">SAD</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">美國</xsl:when>
            
               <xsl:when test="$license-locale='da' ">USA</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Etats-Unis</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Yhdysvallat</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Egyesült Államok</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">アメリカ合衆国</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Etats-Unis</xsl:when>
            
               <xsl:when test="$license-locale='he' ">ארה"ב</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Etats-Unis</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Vereinigte Staaten von Amerika</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">САД</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Förenta Staterna</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">САД</xsl:when>
            
               <xsl:when test="$license-locale='st' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">United States</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Stany Zjednoczone</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Amerika Syarikat</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Združene države</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='gr' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Ελλάδα</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Grčka</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='th' ">กรีซ</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Grecia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Гърция</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Grčka</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">希臘</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='he' ">יוון</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Grèce</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Грчка</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Grekland</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Greece</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Greece</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='lu' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Λουξεμβούργο</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Luksemburgo</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Luxemburgo</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Luxemburgo</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Luxemburgo</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">卢森堡</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Luksemburg</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Luxemburgo</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Luxemburgo</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Luxemburgo</xsl:when>
            
               <xsl:when test="$license-locale='th' ">ลักเซมเบิร์ก</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Luxemburgo</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">ELuxembourg</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Люксембург</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Luksemburg</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">盧森堡</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Luxemborg</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">ルクセンブルグ</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='he' ">לוקסמבורג</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Луксембург</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Luxemburg</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Луксембург</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Luksemburg</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Luxembourg</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Luksemburg</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='nz' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Νέα Ζηλανδία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='en' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='af' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='it' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Novi Zeland</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='no' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='es' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='th' ">นิวซีแลนด์</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Noua Zeelandă</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Нова Зеландия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Novi Zeland</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">紐西蘭</xsl:when>
            
               <xsl:when test="$license-locale='da' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='he' ">ניו-זילנד</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='de' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Нови Зеланд</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Nya Zeeland</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='st' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">New Zealand</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">New Zealand</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='rs' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Σερβία</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Serbio</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Sèrbia</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">塞尔维亚</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Srbija</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Serbien</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Servië</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เซอร์เบีย</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Serbie</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Сърбия</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Serbien</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Srbija</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">塞爾維亞</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Serbie</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Serbie</xsl:when>
            
               <xsl:when test="$license-locale='he' ">סרביה</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Serbie</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Serbien</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Србија</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Serbien</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Србија</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Serbia</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Serbia</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
         <xsl:when test="$jurisdiction='pr' ">

            <xsl:choose>
               <!-- generated locale-specific jurisdiction choice lines -->
            
               <xsl:when test="$license-locale='el' ">Πουέρτο Ρίκο</xsl:when>
            
               <xsl:when test="$license-locale='eo' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='en' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='es_PR' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='af' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='tr' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='ca' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='it' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='es_PE' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='en_US' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='ga' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='es_MX' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='eu' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='zh' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='gl' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='sr_LATN' ">Portoriko</xsl:when>
            
               <xsl:when test="$license-locale='de_CH' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='nl' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='pt' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='no' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='nso' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='es_CO' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='es_CL' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='es' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='th' ">เปอร์โตริโก</xsl:when>
            
               <xsl:when test="$license-locale='es_AR' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='zu' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='ro' ">Porto Rico</xsl:when>
            
               <xsl:when test="$license-locale='pt_PT' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='en_GB' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='en_CA' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='fr' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='bg' ">Пуерто Рико</xsl:when>
            
               <xsl:when test="$license-locale='de_AT' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='hr' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='zh_TW' ">波多黎各</xsl:when>
            
               <xsl:when test="$license-locale='da' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='fr_CH' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='fi' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='hu' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='ja' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='fr_CA' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='he' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='fr_LU' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='de' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='sr' ">Порторико</xsl:when>
            
               <xsl:when test="$license-locale='ko' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='sv' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='mk' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='st' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='it_CH' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='pl' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='ms' ">Puerto Rico</xsl:when>
            
               <xsl:when test="$license-locale='sl' ">Puerto Rico</xsl:when>
            

            </xsl:choose>

         </xsl:when>

      
    </xsl:choose>
  </xsl:template>

  <xsl:template name="attribution">
    <xsl:choose>
       <!-- generated locale choice lines -->
       
         <xsl:when test="$license-locale='el' ">Αναφορά</xsl:when>
       
         <xsl:when test="$license-locale='eo' ">Atribuo</xsl:when>
       
         <xsl:when test="$license-locale='en' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='es_PR' ">Reconocimiento</xsl:when>
       
         <xsl:when test="$license-locale='af' ">Erkenning</xsl:when>
       
         <xsl:when test="$license-locale='tr' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='ca' ">Reconeixement</xsl:when>
       
         <xsl:when test="$license-locale='it' ">Attribuzione</xsl:when>
       
         <xsl:when test="$license-locale='es_PE' ">Reconocimiento</xsl:when>
       
         <xsl:when test="$license-locale='en_US' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='ga' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='es_MX' ">Atribución</xsl:when>
       
         <xsl:when test="$license-locale='eu' ">Aitortu</xsl:when>
       
         <xsl:when test="$license-locale='zh' ">署名</xsl:when>
       
         <xsl:when test="$license-locale='gl' ">Recoñecemento</xsl:when>
       
         <xsl:when test="$license-locale='sr_LATN' ">Autorstvo</xsl:when>
       
         <xsl:when test="$license-locale='de_CH' ">Namensnennung</xsl:when>
       
         <xsl:when test="$license-locale='nl' ">Naamsvermelding</xsl:when>
       
         <xsl:when test="$license-locale='pt' ">Atribuição</xsl:when>
       
         <xsl:when test="$license-locale='no' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='nso' ">Tsebagatšo</xsl:when>
       
         <xsl:when test="$license-locale='es_CO' ">Reconocimiento</xsl:when>
       
         <xsl:when test="$license-locale='es_CL' ">Atribución</xsl:when>
       
         <xsl:when test="$license-locale='es' ">Reconocimiento</xsl:when>
       
         <xsl:when test="$license-locale='th' ">แสดงที่มา</xsl:when>
       
         <xsl:when test="$license-locale='es_AR' ">Atribución</xsl:when>
       
         <xsl:when test="$license-locale='zu' ">Qaphela Umnikazi</xsl:when>
       
         <xsl:when test="$license-locale='ro' ">Atribuire</xsl:when>
       
         <xsl:when test="$license-locale='pt_PT' ">Atribuição</xsl:when>
       
         <xsl:when test="$license-locale='en_GB' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='en_CA' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='fr' ">Paternité</xsl:when>
       
         <xsl:when test="$license-locale='bg' ">Признание</xsl:when>
       
         <xsl:when test="$license-locale='de_AT' ">Namensnennung</xsl:when>
       
         <xsl:when test="$license-locale='hr' ">Imenovanje</xsl:when>
       
         <xsl:when test="$license-locale='zh_TW' ">姓名標示</xsl:when>
       
         <xsl:when test="$license-locale='da' ">Navngivelse</xsl:when>
       
         <xsl:when test="$license-locale='fr_CH' ">Paternité</xsl:when>
       
         <xsl:when test="$license-locale='fi' ">Nimeä</xsl:when>
       
         <xsl:when test="$license-locale='hu' ">Nevezd meg!</xsl:when>
       
         <xsl:when test="$license-locale='ja' ">表示</xsl:when>
       
         <xsl:when test="$license-locale='fr_CA' ">Paternité</xsl:when>
       
         <xsl:when test="$license-locale='he' ">ייחוס</xsl:when>
       
         <xsl:when test="$license-locale='fr_LU' ">Paternité</xsl:when>
       
         <xsl:when test="$license-locale='de' ">Namensnennung</xsl:when>
       
         <xsl:when test="$license-locale='sr' ">Ауторство</xsl:when>
       
         <xsl:when test="$license-locale='ko' ">저작자표시</xsl:when>
       
         <xsl:when test="$license-locale='sv' ">Erkännande</xsl:when>
       
         <xsl:when test="$license-locale='mk' ">Наведи извор</xsl:when>
       
         <xsl:when test="$license-locale='st' ">Attribution</xsl:when>
       
         <xsl:when test="$license-locale='it_CH' ">Attribuzione</xsl:when>
       
         <xsl:when test="$license-locale='pl' ">Uznanie autorstwa</xsl:when>
       
         <xsl:when test="$license-locale='ms' ">Pengiktirafan</xsl:when>
       
         <xsl:when test="$license-locale='sl' ">Priznanje avtorstva</xsl:when>
       
       <xsl:otherwise>Attribution</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="derivatives">
    <xsl:param name="derivs" />

    <xsl:variable name="prettystring">

      <xsl:choose>
        <xsl:when test="$derivs='n'">
          <xsl:choose>
            <!-- generated locale choice lines -->
            
              <xsl:when test="$license-locale='el' ">Όχι Παράγωγα Έργα</xsl:when>
            
              <xsl:when test="$license-locale='eo' ">Neniuj derivaĵoj</xsl:when>
            
              <xsl:when test="$license-locale='en' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='es_PR' ">Sin obras derivadas</xsl:when>
            
              <xsl:when test="$license-locale='af' ">Onveranderd</xsl:when>
            
              <xsl:when test="$license-locale='tr' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='ca' ">Sense obres derivades</xsl:when>
            
              <xsl:when test="$license-locale='it' ">Non opere derivate</xsl:when>
            
              <xsl:when test="$license-locale='es_PE' ">Sin obras derivadas</xsl:when>
            
              <xsl:when test="$license-locale='en_US' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='ga' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='es_MX' ">No Derivadas</xsl:when>
            
              <xsl:when test="$license-locale='eu' ">Lan eratorririk gabe</xsl:when>
            
              <xsl:when test="$license-locale='zh' ">禁止演绎</xsl:when>
            
              <xsl:when test="$license-locale='gl' ">Sen obras derivadas.</xsl:when>
            
              <xsl:when test="$license-locale='sr_LATN' ">Bez prerada</xsl:when>
            
              <xsl:when test="$license-locale='de_CH' ">Keine Bearbeitung</xsl:when>
            
              <xsl:when test="$license-locale='nl' ">Geen Afgeleide werken</xsl:when>
            
              <xsl:when test="$license-locale='pt' ">Vedada a Criação de Obras Derivadas</xsl:when>
            
              <xsl:when test="$license-locale='no' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='nso' ">Ga go na Mešomo e Ntšhitšwego</xsl:when>
            
              <xsl:when test="$license-locale='es_CO' ">Sin obras derivadas</xsl:when>
            
              <xsl:when test="$license-locale='es_CL' ">Sin Derivadas</xsl:when>
            
              <xsl:when test="$license-locale='es' ">Sin obras derivadas</xsl:when>
            
              <xsl:when test="$license-locale='th' ">ไม่ใช่งานดัดแปลง</xsl:when>
            
              <xsl:when test="$license-locale='es_AR' ">Sin Obras Derivadas</xsl:when>
            
              <xsl:when test="$license-locale='zu' ">Akukho Msebenzi Ozosuselwa kulo</xsl:when>
            
              <xsl:when test="$license-locale='ro' ">Fără Opere Derivate</xsl:when>
            
              <xsl:when test="$license-locale='pt_PT' ">Não a Obras Derivadas</xsl:when>
            
              <xsl:when test="$license-locale='en_GB' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='en_CA' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='fr' ">Pas de Modification</xsl:when>
            
              <xsl:when test="$license-locale='bg' ">Без производни произведения</xsl:when>
            
              <xsl:when test="$license-locale='de_AT' ">Keine Bearbeitung</xsl:when>
            
              <xsl:when test="$license-locale='hr' ">Bez prerada</xsl:when>
            
              <xsl:when test="$license-locale='zh_TW' ">禁止改作</xsl:when>
            
              <xsl:when test="$license-locale='da' ">Ingen bearbejdelser</xsl:when>
            
              <xsl:when test="$license-locale='fr_CH' ">Pas de Modification</xsl:when>
            
              <xsl:when test="$license-locale='fi' ">Ei muutettuja teoksia</xsl:when>
            
              <xsl:when test="$license-locale='hu' ">Ne változtasd!</xsl:when>
            
              <xsl:when test="$license-locale='ja' ">改変禁止</xsl:when>
            
              <xsl:when test="$license-locale='fr_CA' ">Pas de Modification</xsl:when>
            
              <xsl:when test="$license-locale='he' ">איסור יצירות נגזרות</xsl:when>
            
              <xsl:when test="$license-locale='fr_LU' ">Pas de Modification</xsl:when>
            
              <xsl:when test="$license-locale='de' ">Keine Bearbeitung</xsl:when>
            
              <xsl:when test="$license-locale='sr' ">Без прерада</xsl:when>
            
              <xsl:when test="$license-locale='ko' ">변경금지</xsl:when>
            
              <xsl:when test="$license-locale='sv' ">Inga bearbetningar</xsl:when>
            
              <xsl:when test="$license-locale='mk' ">Без адаптирани дела.</xsl:when>
            
              <xsl:when test="$license-locale='st' ">No Derivative Works</xsl:when>
            
              <xsl:when test="$license-locale='it_CH' ">Non opere derivate</xsl:when>
            
              <xsl:when test="$license-locale='pl' ">Bez utworów zależnych</xsl:when>
            
              <xsl:when test="$license-locale='ms' ">Bukan Karya Terbitan</xsl:when>
            
              <xsl:when test="$license-locale='sl' ">Brez predelav</xsl:when>
            

            <xsl:otherwise>NoDerivs</xsl:otherwise>
          </xsl:choose>
        </xsl:when>
 
        <xsl:when test="$derivs='sa'">
          <xsl:choose>
            <!-- generated locale choice lines -->
            
              <xsl:when test="$license-locale='el' ">Παρόμοια διανομή</xsl:when>
            
              <xsl:when test="$license-locale='eo' ">Distribui kun sama permesilo</xsl:when>
            
              <xsl:when test="$license-locale='en' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='es_PR' ">Compartir Igual</xsl:when>
            
              <xsl:when test="$license-locale='af' ">Insgelyks Deel</xsl:when>
            
              <xsl:when test="$license-locale='tr' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='ca' ">Compartir amb la mateixa llicència</xsl:when>
            
              <xsl:when test="$license-locale='it' ">Condividi allo stesso modo</xsl:when>
            
              <xsl:when test="$license-locale='es_PE' ">Compartir bajo la misma licencia</xsl:when>
            
              <xsl:when test="$license-locale='en_US' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='ga' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='es_MX' ">Licenciamiento Recíproco</xsl:when>
            
              <xsl:when test="$license-locale='eu' ">Partekatu baimen beraren arabera</xsl:when>
            
              <xsl:when test="$license-locale='zh' ">相同方式共享</xsl:when>
            
              <xsl:when test="$license-locale='gl' ">Compartir baixo a mesma licenza.</xsl:when>
            
              <xsl:when test="$license-locale='sr_LATN' ">Deliti pod istim uslovima</xsl:when>
            
              <xsl:when test="$license-locale='de_CH' ">Weitergabe unter gleichen Bedingungen</xsl:when>
            
              <xsl:when test="$license-locale='nl' ">Gelijk delen</xsl:when>
            
              <xsl:when test="$license-locale='pt' ">Compartilhamento pela mesma Licença</xsl:when>
            
              <xsl:when test="$license-locale='no' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='nso' ">Mohlakanelwa</xsl:when>
            
              <xsl:when test="$license-locale='es_CO' ">Compartir bajo la misma licencia</xsl:when>
            
              <xsl:when test="$license-locale='es_CL' ">Licenciar Igual</xsl:when>
            
              <xsl:when test="$license-locale='es' ">Compartir bajo la misma licencia</xsl:when>
            
              <xsl:when test="$license-locale='th' ">อนุญาตแบบเดียวกัน</xsl:when>
            
              <xsl:when test="$license-locale='es_AR' ">Compartir Obras Derivadas Igual</xsl:when>
            
              <xsl:when test="$license-locale='zu' ">Zihlanganyeleni</xsl:when>
            
              <xsl:when test="$license-locale='ro' ">Distribuire în condiţii identice</xsl:when>
            
              <xsl:when test="$license-locale='pt_PT' ">Partilha nos termos da mesma Licença</xsl:when>
            
              <xsl:when test="$license-locale='en_GB' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='en_CA' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='fr' ">Partage des Conditions Initiales à l'Identique</xsl:when>
            
              <xsl:when test="$license-locale='bg' ">Споделяне на споделеното</xsl:when>
            
              <xsl:when test="$license-locale='de_AT' ">Weitergabe unter gleichen Bedingungen</xsl:when>
            
              <xsl:when test="$license-locale='hr' ">Dijeli pod istim uvjetima</xsl:when>
            
              <xsl:when test="$license-locale='zh_TW' ">相同方式分享</xsl:when>
            
              <xsl:when test="$license-locale='da' ">Del på samme vilkår</xsl:when>
            
              <xsl:when test="$license-locale='fr_CH' ">Partage des Conditions Initiales à l'Identique</xsl:when>
            
              <xsl:when test="$license-locale='fi' ">Tarttuva</xsl:when>
            
              <xsl:when test="$license-locale='hu' ">Így add tovább!</xsl:when>
            
              <xsl:when test="$license-locale='ja' ">継承</xsl:when>
            
              <xsl:when test="$license-locale='fr_CA' ">Partage des Conditions Initiales à l'Identique</xsl:when>
            
              <xsl:when test="$license-locale='he' ">שיתוף זהה</xsl:when>
            
              <xsl:when test="$license-locale='fr_LU' ">Partage des Conditions Initiales à l'Identique</xsl:when>
            
              <xsl:when test="$license-locale='de' ">Weitergabe unter gleichen Bedingungen</xsl:when>
            
              <xsl:when test="$license-locale='sr' ">Делити под истим условима</xsl:when>
            
              <xsl:when test="$license-locale='ko' ">동일조건변경허락</xsl:when>
            
              <xsl:when test="$license-locale='sv' ">Dela Lika</xsl:when>
            
              <xsl:when test="$license-locale='mk' ">Сподели под исти услови</xsl:when>
            
              <xsl:when test="$license-locale='st' ">Share Alike</xsl:when>
            
              <xsl:when test="$license-locale='it_CH' ">Condividi allo stesso modo</xsl:when>
            
              <xsl:when test="$license-locale='pl' ">Na tych samych warunkach</xsl:when>
            
              <xsl:when test="$license-locale='ms' ">Perkongsian Serupa</xsl:when>
            
              <xsl:when test="$license-locale='sl' ">Deljenje pod enakimi pogoji</xsl:when>
            

            <xsl:otherwise>ShareAlike</xsl:otherwise>
          </xsl:choose>
        </xsl:when>

      </xsl:choose>

    </xsl:variable>

    <xsl:if test="string-length($prettystring) &gt; 0">
      <xsl:value-of select="concat('-', $prettystring)" />
    </xsl:if>

  </xsl:template>

  <xsl:template name="noncommercial">
    <xsl:param name="commercial" />

    <xsl:variable name="prettystring">
      <xsl:if test="./commercial='n'">
        <xsl:choose>
          <!-- generated locale choice lines -->
          
            <xsl:when test="$license-locale='el' ">Μη Εμπορική Χρήση</xsl:when>
          
            <xsl:when test="$license-locale='eo' ">Nekomerca</xsl:when>
          
            <xsl:when test="$license-locale='en' ">Noncommercial</xsl:when>
          
            <xsl:when test="$license-locale='es_PR' ">No comercial</xsl:when>
          
            <xsl:when test="$license-locale='af' ">Niekommersieel</xsl:when>
          
            <xsl:when test="$license-locale='tr' ">Noncommercial</xsl:when>
          
            <xsl:when test="$license-locale='ca' ">No comercial</xsl:when>
          
            <xsl:when test="$license-locale='it' ">Non commerciale</xsl:when>
          
            <xsl:when test="$license-locale='es_PE' ">No comercial</xsl:when>
          
            <xsl:when test="$license-locale='en_US' ">Noncommercial</xsl:when>
          
            <xsl:when test="$license-locale='ga' ">Noncommercial</xsl:when>
          
            <xsl:when test="$license-locale='es_MX' ">No comercial</xsl:when>
          
            <xsl:when test="$license-locale='eu' ">Ez merkataritzarako</xsl:when>
          
            <xsl:when test="$license-locale='zh' ">非商业性使用</xsl:when>
          
            <xsl:when test="$license-locale='gl' ">Non comercial</xsl:when>
          
            <xsl:when test="$license-locale='sr_LATN' ">Nekomercijalno</xsl:when>
          
            <xsl:when test="$license-locale='de_CH' ">Keine kommerzielle Nutzung</xsl:when>
          
            <xsl:when test="$license-locale='nl' ">Niet-commercieel</xsl:when>
          
            <xsl:when test="$license-locale='pt' ">Uso Não-Comercial</xsl:when>
          
            <xsl:when test="$license-locale='no' ">Noncommercial</xsl:when>
          
            <xsl:when test="$license-locale='nso' ">E sego ya kgwebo</xsl:when>
          
            <xsl:when test="$license-locale='es_CO' ">No comercial</xsl:when>
          
            <xsl:when test="$license-locale='es_CL' ">No Comercial</xsl:when>
          
            <xsl:when test="$license-locale='es' ">No comercial</xsl:when>
          
            <xsl:when test="$license-locale='th' ">ไม่ใช้เพื่อการค้า</xsl:when>
          
            <xsl:when test="$license-locale='es_AR' ">No Comercial</xsl:when>
          
            <xsl:when test="$license-locale='zu' ">Awunakusetshenziselwa ezentengiselwano</xsl:when>
          
            <xsl:when test="$license-locale='ro' ">Necomercial</xsl:when>
          
            <xsl:when test="$license-locale='pt_PT' ">Uso Não-Comercial</xsl:when>
          
            <xsl:when test="$license-locale='en_GB' ">Non-Commercial</xsl:when>
          
            <xsl:when test="$license-locale='en_CA' ">Noncommercial</xsl:when>
          
            <xsl:when test="$license-locale='fr' ">Pas d'Utilisation Commerciale</xsl:when>
          
            <xsl:when test="$license-locale='bg' ">Некомерсиално</xsl:when>
          
            <xsl:when test="$license-locale='de_AT' ">Keine kommerzielle Nutzung</xsl:when>
          
            <xsl:when test="$license-locale='hr' ">Nekomercijalno</xsl:when>
          
            <xsl:when test="$license-locale='zh_TW' ">非商業性</xsl:when>
          
            <xsl:when test="$license-locale='da' ">Ikke-kommerciel</xsl:when>
          
            <xsl:when test="$license-locale='fr_CH' ">Pas d'Utilisation Commerciale</xsl:when>
          
            <xsl:when test="$license-locale='fi' ">Epäkaupallinen</xsl:when>
          
            <xsl:when test="$license-locale='hu' ">Ne add el!</xsl:when>
          
            <xsl:when test="$license-locale='ja' ">非営利</xsl:when>
          
            <xsl:when test="$license-locale='fr_CA' ">Pas d'Utilisation Commerciale</xsl:when>
          
            <xsl:when test="$license-locale='he' ">שימוש לא מסחרי</xsl:when>
          
            <xsl:when test="$license-locale='fr_LU' ">Pas d'Utilisation Commerciale</xsl:when>
          
            <xsl:when test="$license-locale='de' ">Keine kommerzielle Nutzung</xsl:when>
          
            <xsl:when test="$license-locale='sr' ">Некомерцијално</xsl:when>
          
            <xsl:when test="$license-locale='ko' ">비영리</xsl:when>
          
            <xsl:when test="$license-locale='sv' ">Ickekommersiell</xsl:when>
          
            <xsl:when test="$license-locale='mk' ">Некомерцијално</xsl:when>
          
            <xsl:when test="$license-locale='st' ">Noncommercial</xsl:when>
          
            <xsl:when test="$license-locale='it_CH' ">Non commerciale</xsl:when>
          
            <xsl:when test="$license-locale='pl' ">Użycie niekomercyjne</xsl:when>
          
            <xsl:when test="$license-locale='ms' ">Bukan komersial</xsl:when>
          
            <xsl:when test="$license-locale='sl' ">Nekomercialno</xsl:when>
          
          <xsl:otherwise>NonCommercial</xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:variable>

    <xsl:if test="string-length($prettystring) &gt; 0">
      <xsl:value-of select="concat('-', $prettystring)" />
    </xsl:if>

  </xsl:template>

  <xsl:template name="thiswork">
     <xsl:param name="license_name" />
     <xsl:param name="license_url" />

     <xsl:variable name="work_type_raw" select="/answers/work-info/type" />
     <xsl:variable name="work_title_raw" select="/answers/work-info/title" />

     <xsl:variable name="attribution_name" select="/answers/work-info/attribution_name" />
     <xsl:variable name="attribution_url" select="/answers/work-info/attribution_url" />
     <xsl:variable name="more_perms_url" select="/answers/work-info/more_permissions_url" />
     <xsl:variable name="source_url" select="/answers/work-info/source_work_url" />
     <xsl:variable name="source_domain" select="/answers/work-info/source_work_domain" />

<xsl:variable name="work_title">
   <xsl:choose>
      <xsl:when test="$work_title_raw != ''">

       <xsl:choose>
	 <xsl:when test="$work_type_raw=''">
	   <!-- no work type provided -->
           <span property="dc:title" xmlns:dc="http://purl.org/dc/elements/1.1/"><xsl:value-of select="$work_title_raw" /></span>
	 </xsl:when>

	 <xsl:otherwise>
           <span href="http://purl.org/dc/dcmitype/{$work_type_raw}" property="dc:title" rel="dc:type" xmlns:dc="http://purl.org/dc/elements/1.1/">
              <xsl:value-of select="$work_title_raw" />
           </span>
	 </xsl:otherwise>

       </xsl:choose>
      </xsl:when>

      <xsl:otherwise></xsl:otherwise>
   </xsl:choose>
</xsl:variable>

<xsl:variable name="work_author">
   <xsl:choose>
      <xsl:when test="$attribution_url != ''">
        <a href="{$attribution_url}" xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName" rel="cc:attributionURL">
         <xsl:choose>
            <xsl:when test="$attribution_name != ''">
              <xsl:value-of select="$attribution_name" />
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="$attribution_url" />
            </xsl:otherwise>
         </xsl:choose></a>
      </xsl:when>
      <xsl:when test="$attribution_name != ''">
        <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">
          <xsl:value-of select="$attribution_name" />
        </span>
      </xsl:when>
      <xsl:otherwise></xsl:otherwise>
   </xsl:choose>
</xsl:variable>

<xsl:variable name="more_perms_link">
   <xsl:choose>
      <xsl:when test="$more_perms_url != ''">
         <a xmlns:cc="http://creativecommons.org/ns#" href="{$more_perms_url}" rel="cc:morePermissions"><xsl:value-of select="$more_perms_url" /></a>
      </xsl:when>
      <xsl:otherwise></xsl:otherwise>
   </xsl:choose>
</xsl:variable>

     <xsl:variable name="work_type_word">

       <!-- translate "work" -->
       <xsl:choose>
	 
           <xsl:when test="$license-locale='el' ">έργο</xsl:when>
         
           <xsl:when test="$license-locale='eo' ">verko</xsl:when>
         
           <xsl:when test="$license-locale='en' ">work</xsl:when>
         
           <xsl:when test="$license-locale='es_PR' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='af' ">werk</xsl:when>
         
           <xsl:when test="$license-locale='tr' ">work</xsl:when>
         
           <xsl:when test="$license-locale='ca' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='it' ">opera</xsl:when>
         
           <xsl:when test="$license-locale='es_PE' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='en_US' ">work</xsl:when>
         
           <xsl:when test="$license-locale='ga' ">work</xsl:when>
         
           <xsl:when test="$license-locale='es_MX' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='eu' ">lana</xsl:when>
         
           <xsl:when test="$license-locale='zh' ">作品</xsl:when>
         
           <xsl:when test="$license-locale='gl' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='sr_LATN' ">delo</xsl:when>
         
           <xsl:when test="$license-locale='de_CH' ">Werk</xsl:when>
         
           <xsl:when test="$license-locale='nl' ">werk</xsl:when>
         
           <xsl:when test="$license-locale='pt' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='no' ">work</xsl:when>
         
           <xsl:when test="$license-locale='nso' ">mošomo</xsl:when>
         
           <xsl:when test="$license-locale='es_CO' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='es_CL' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='es' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='th' ">ผลงาน</xsl:when>
         
           <xsl:when test="$license-locale='es_AR' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='zu' ">umsebenzi</xsl:when>
         
           <xsl:when test="$license-locale='ro' ">operă</xsl:when>
         
           <xsl:when test="$license-locale='pt_PT' ">obra</xsl:when>
         
           <xsl:when test="$license-locale='en_GB' ">work</xsl:when>
         
           <xsl:when test="$license-locale='en_CA' ">work</xsl:when>
         
           <xsl:when test="$license-locale='fr' ">création</xsl:when>
         
           <xsl:when test="$license-locale='bg' ">произведение</xsl:when>
         
           <xsl:when test="$license-locale='de_AT' ">Werk</xsl:when>
         
           <xsl:when test="$license-locale='hr' ">djelo</xsl:when>
         
           <xsl:when test="$license-locale='zh_TW' ">著作</xsl:when>
         
           <xsl:when test="$license-locale='da' ">værk</xsl:when>
         
           <xsl:when test="$license-locale='fr_CH' ">création</xsl:when>
         
           <xsl:when test="$license-locale='fi' ">teos</xsl:when>
         
           <xsl:when test="$license-locale='hu' ">Mű</xsl:when>
         
           <xsl:when test="$license-locale='ja' ">作品</xsl:when>
         
           <xsl:when test="$license-locale='fr_CA' ">création</xsl:when>
         
           <xsl:when test="$license-locale='he' ">יצירה</xsl:when>
         
           <xsl:when test="$license-locale='fr_LU' ">création</xsl:when>
         
           <xsl:when test="$license-locale='de' ">Werk</xsl:when>
         
           <xsl:when test="$license-locale='sr' ">дело</xsl:when>
         
           <xsl:when test="$license-locale='ko' ">저작물</xsl:when>
         
           <xsl:when test="$license-locale='sv' ">verk</xsl:when>
         
           <xsl:when test="$license-locale='mk' ">дело</xsl:when>
         
           <xsl:when test="$license-locale='st' ">work</xsl:when>
         
           <xsl:when test="$license-locale='it_CH' ">opera</xsl:when>
         
           <xsl:when test="$license-locale='pl' ">utwór</xsl:when>
         
           <xsl:when test="$license-locale='ms' ">karya</xsl:when>
         
           <xsl:when test="$license-locale='sl' ">delo</xsl:when>
         

         <xsl:otherwise>work</xsl:otherwise>
       </xsl:choose>

     </xsl:variable>

     <xsl:variable name="work_type">
       <xsl:choose>
	 <xsl:when test="$work_type_raw=''">
	   <!-- no work type provided, don't create any RDFa -->
	   <xsl:value-of select="$work_type_word" />
	 </xsl:when>

	 <xsl:otherwise>
	   <span href="http://purl.org/dc/dcmitype/{$work_type_raw}" rel="dc:type" xmlns:dc="http://purl.org/dc/elements/1.1/">
	     <xsl:value-of select="$work_type_word" /></span>
	 </xsl:otherwise>

       </xsl:choose>
     </xsl:variable>


<!-- actual selection of appropriate string occurs in the following block -->
<xsl:choose>
  <xsl:when test="$work_author != ''">
    <!-- attribution -->

    <xsl:choose>
       <xsl:when test="$work_title != ''">
          <!-- title -->

      <xsl:choose>
       <!-- generated locale choice lines -->
       

            <xsl:when test="$license-locale='el' "><xsl:copy-of select="$work_title"/> αναφορά <xsl:copy-of select="$work_author"/> διέπεται από άδεια <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_namel"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='eo' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PR' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='af' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='tr' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ca' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PE' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_US' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ga' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_MX' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='eu' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='gl' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sr_LATN' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_CH' "><xsl:copy-of select="$work_title"/> von <xsl:copy-of select="$work_author"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='nl' ">$ {werk_titel} van $ {werk_maker} is in licentie gegeven volgens een <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$licentie_naam"/> licentie</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pt' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='no' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='nso' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CO' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CL' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='th' "><xsl:copy-of select="$work_title"/> โดย <xsl:copy-of select="$work_author"/> อนุญาตให้ใช้ได้ตาม <a rel="license" href="{$license_url}">สัญญาอนุญาตของครีเอทีฟคอมมอนส์แบบ <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_AR' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='zu' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ro' "><xsl:copy-of select="$work_title"/> de <xsl:copy-of select="$work_author"/> este licenţiat printr-o <a rel="license" href="{$license_url}">Licenţă Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='pt_PT' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_GB' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_CA' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='bg' ">Произведението <xsl:copy-of select="$work_title"/> създадено от <xsl:copy-of select="$work_author"/> ползва <a rel="license" href="{$license_url}">Криейтив Комънс <xsl:copy-of select="$license_name"/> договор</a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_AT' "><xsl:copy-of select="$work_title"/> von <xsl:copy-of select="$work_author"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='hr' ">Djelo <xsl:copy-of select="$work_title"/>, čiji je autor <xsl:copy-of select="$work_author"/>, ustupljeno je pod licencom <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh_TW' "><xsl:copy-of select="$work_title"/>由<xsl:copy-of select="$work_author"/>製作，以<a rel="license" href="{$license_url}">創用CC <xsl:copy-of select="$license_name"/> 授權條款</a>釋出。</xsl:when>

       

            <xsl:when test="$license-locale='da' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_CH' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='fi' "><xsl:copy-of select="$work_title"/> jonka tekijä on <xsl:copy-of select="$work_author"/> on lisensoitu <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> lisenssillä</a>.</xsl:when>

       

            <xsl:when test="$license-locale='hu' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ja' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_CA' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='he' ">היצירה <xsl:copy-of select="$work_title"/> של <xsl:copy-of select="$work_author"/> מוצעת תחת <a rel="license" href="{$license_url}">רישיון <xsl:copy-of select="$license_name"/> של Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_LU' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='de' "><xsl:copy-of select="$work_title"/> von <xsl:copy-of select="$work_author"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sr' ">Ово <xsl:copy-of select="$work_title"/> , чији је аутор <xsl:copy-of select="$work_author"/>, је лиценцирано под условима лиценце <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='ko' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sv' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='mk' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='st' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it_CH' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pl' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ms' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sl' "><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       
            <xsl:otherwise><xsl:copy-of select="$work_title"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:otherwise>
      </xsl:choose>


       </xsl:when>
       <xsl:otherwise>
          <!-- no title -->

      <xsl:choose>
       <!-- generated locale choice lines -->
       

            <xsl:when test="$license-locale='el' ">Αυτό <xsl:copy-of select="$work_type"/>αναφορά <xsl:copy-of select="$work_author"/> χορηγείται με άδεια<a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='eo' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PR' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='af' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='tr' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ca' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PE' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_US' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ga' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_MX' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='eu' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='gl' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sr_LATN' ">Ovo <xsl:copy-of select="$work_type"/> , čiji je autor <xsl:copy-of select="$work_author"/>, je licencirano pod uslovima licence<a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_CH' ">Diese(s) <xsl:copy-of select="$work_type"/> von <xsl:copy-of select="$work_author"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='nl' ">$ {werk_type} van $ {werk_maker} is in licentie gegeven volgens een <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$licentie_naam"/> licentie</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pt' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='no' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='nso' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CO' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CL' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='th' "><xsl:copy-of select="$work_type"/>นี้ โดย {$work_author} ใช้<a rel="license" href="{$license_url}">สัญญาอนุญาตของครีเอทีฟคอมมอนส์แบบ <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_AR' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='zu' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ro' ">Această <xsl:copy-of select="$work_type"/> creată de <xsl:copy-of select="$work_author"/> este licenţiată sub o <a rel="license" href="{$license_url}">Licenţă <xsl:copy-of select="$license_name"/> Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pt_PT' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_GB' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_CA' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr' ">Ce/tte{work_type} par <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='bg' ">Произведението <xsl:copy-of select="$work_type"/> с автор <xsl:copy-of select="$work_author"/> е лицензирано под <a rel="license" href="{$license_url}">Криейтив Комънс <xsl:copy-of select="$license_name"/> договор</a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_AT' ">Diese(s) <xsl:copy-of select="$work_type"/> von <xsl:copy-of select="$work_author"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='hr' ">Ovo <xsl:copy-of select="$work_type"/>, čiji je autor <xsl:copy-of select="$work_author"/>, ustupljeno je pod licencom <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh_TW' ">本<xsl:copy-of select="$work_type"/>由<xsl:copy-of select="$work_author"/>製作，以<a rel="license" href="{$license_url}">創用CC <xsl:copy-of select="$license_name"/> 授權條款</a>釋出。</xsl:when>

       

            <xsl:when test="$license-locale='da' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_CH' ">Ce/tte{work_type} par <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='fi' ">Tämä <xsl:copy-of select="$work_type"/> jonka tekijä on <xsl:copy-of select="$work_author"/> on lisensoitu <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> lisenssillä</a>.</xsl:when>

       

            <xsl:when test="$license-locale='hu' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ja' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_CA' ">Ce/tte{work_type} par <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='he' ">יצירת <xsl:copy-of select="$work_type"/> זו של <xsl:copy-of select="$work_author"/> מוצע תחת <a rel="license" href="{$license_url}">רישיון <xsl:copy-of select="$license_name"/> של Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_LU' ">Ce/tte{work_type} par <xsl:copy-of select="$work_author"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='de' ">Diese(s) <xsl:copy-of select="$work_type"/> von <xsl:copy-of select="$work_author"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sr' ">Ово <xsl:copy-of select="$work_type"/>, чији је аутор <xsl:copy-of select="$work_author"/>, је лиценцирано под условима лиценце<a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='ko' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sv' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='mk' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='st' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it_CH' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pl' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ms' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sl' ">This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       
            <xsl:otherwise>This <xsl:copy-of select="$work_type"/> by <xsl:copy-of select="$work_author"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:otherwise>
      </xsl:choose>


       </xsl:otherwise>

    </xsl:choose>

  </xsl:when>
  <xsl:otherwise>
    <!-- no attribution -->

    <xsl:choose>
       <xsl:when test="$work_title != ''">
          <!-- title -->


      <xsl:choose>
       <!-- generated locale choice lines -->
       

            <xsl:when test="$license-locale='el' "><xsl:copy-of select="$work_title"/>είναι υπό άδεια <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Άδεια</a>.</xsl:when>

       

            <xsl:when test="$license-locale='eo' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PR' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='af' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='tr' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ca' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PE' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_US' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ga' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_MX' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='eu' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='gl' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sr_LATN' ">Ovo <xsl:copy-of select="$work_title"/> je licencirano pod uslovima licence<a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_CH' "><xsl:copy-of select="$work_title"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='nl' ">$ {werk_titel} is in licentie gegeven volgens een <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$licentie_naam"/> licentie</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pt' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='no' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='nso' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CO' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CL' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='th' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_AR' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='zu' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ro' "><xsl:copy-of select="$work_title"/> este licenţiat printr-o <a rel="license" href="{$license_url}">Licenţă Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='pt_PT' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_GB' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_CA' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr' "><xsl:copy-of select="$work_title"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='bg' ">Произведението <xsl:copy-of select="$work_title"/> ползва <a rel="license" href="{$license_url}">Криейтив Комънс <xsl:copy-of select="$license_name"/> договор</a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_AT' "><xsl:copy-of select="$work_title"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='hr' ">Djelo <xsl:copy-of select="$work_title"/> ustupljeno je pod licencom <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh_TW' "><xsl:copy-of select="$work_title"/>以<a rel="license" href="{$license_url}">創用CC <xsl:copy-of select="$license_name"/> 授權條款</a>釋出。</xsl:when>

       

            <xsl:when test="$license-locale='da' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_CH' "><xsl:copy-of select="$work_title"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='fi' "><xsl:copy-of select="$work_title"/> on lisensoitu <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> lisenssillä</a>.</xsl:when>

       

            <xsl:when test="$license-locale='hu' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ja' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_CA' "><xsl:copy-of select="$work_title"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='he' ">היצירה <xsl:copy-of select="$work_title"/> מוצעת תחת <a rel="license" href="{$license_url}">רישיון <xsl:copy-of select="$license_name"/> של Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_LU' "><xsl:copy-of select="$work_title"/> est mis à disposition selon les termes de la <a rel="license" href="{$license_url}">licence Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='de' "><xsl:copy-of select="$work_title"/> steht unter einer <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Lizenz</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sr' ">Ово <xsl:copy-of select="$work_title"/> је лиценцирано под условима лиценце<a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='ko' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sv' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='mk' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='st' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it_CH' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pl' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ms' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sl' "><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       
            <xsl:otherwise><xsl:copy-of select="$work_title"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:otherwise>
      </xsl:choose>


       </xsl:when>
       <xsl:otherwise>
          <!-- no title -->


      <xsl:choose>
       <!-- generated locale choice lines -->
       

            <xsl:when test="$license-locale='el' ">Αυτό <xsl:copy-of select="$work_type"/> χορηγείται με άδεια <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='eo' ">Tiu ĉi <xsl:copy-of select="$work_type"/> havas permesilon <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Permesilo</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PR' ">Esta <xsl:copy-of select="$work_type"/> está bajo una <a rel="license" href="{$license_url}">licencia de Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='af' ">Hierdie <xsl:copy-of select="$work_type"/> is gelisensieer ingevolge 'n <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/>-lisensie</a>.</xsl:when>

       

            <xsl:when test="$license-locale='tr' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ca' ">Aquesta <xsl:copy-of select="$work_type"/> està subjecta a una <a rel="license" href="{$license_url}">Llicència de Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it' ">Questo/a <xsl:copy-of select="$work_type"/> è pubblicato sotto una <a rel="license" href="{$license_url}">Licenza Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_PE' ">Esta <xsl:copy-of select="$work_type"/> está bajo una <a rel="license" href="{$license_url}">licencia de Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_US' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ga' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_MX' ">Esta <xsl:copy-of select="$work_type"/> está bajo una <a rel="license" href="{$license_url}">licencia de Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='eu' "><xsl:copy-of select="$work_type"/> lan hau <a rel="license" href="{$license_url}">Creative Commons-en baimen baten mende dago</a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh' ">本<xsl:copy-of select="$work_type"/>采用<a rel="license" href="{$license_url}">知识共享<xsl:copy-of select="$license_name"/>许可协议</a>进行许可。</xsl:when>

       

            <xsl:when test="$license-locale='gl' ">Esta <xsl:copy-of select="$work_type"/> está baixo unha licenza <a rel="license" href="{$license_url}"><xsl:copy-of select="$license_name"/> de Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sr_LATN' ">Ovo <xsl:copy-of select="$work_type"/> je licencirano pod uslovima licence<a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_CH' ">Dieser <xsl:copy-of select="$work_type"/> ist unter einer <a rel="license" href="{$license_url}">Creative Commons-Lizenz</a> lizenziert.</xsl:when>

       

            <xsl:when test="$license-locale='nl' ">Op dit <xsl:copy-of select="$work_type"/> is een <a rel="license" href="{$license_url}">Creative Commons Licentie</a> van toepassing.</xsl:when>

       

            <xsl:when test="$license-locale='pt' ">Esta <xsl:copy-of select="$work_type"/> está licenciada sob uma <a rel="license" href="{$license_url}">Licença Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='no' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='nso' ">O <xsl:copy-of select="$work_type"/> o tsentšwe laesense ka tlase ga <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CO' ">Esta <xsl:copy-of select="$work_type"/> está bajo una <a rel="license" href="{$license_url}">licencia de Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_CL' ">Esta <xsl:copy-of select="$work_type"/> es publicada bajo una <a rel="license" href="{$license_url}">licencia Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='es' ">Esta <xsl:copy-of select="$work_type"/> está bajo una <a rel="license" href="{$license_url}">licencia de Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='th' "><xsl:copy-of select="$work_type"/>นี้ ใช้<a rel="license" href="{$license_url}">สัญญาอนุญาตของครีเอทีฟคอมมอนส์แบบ <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='es_AR' ">Esta <xsl:copy-of select="$work_type"/> está licenciada bajo una <a rel="license" href="{$license_url}">Licencia Creative Commons <xsl:copy-of select="$license_name"/> </a>.</xsl:when>

       

            <xsl:when test="$license-locale='zu' ">Lolu <xsl:copy-of select="$work_type"/> lufakwa ilayisensi ngaphansi kwale <a rel="license" href="{$license_url}">Layisensi Yakwa-Creative Commons ethi <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='ro' ">Această <xsl:copy-of select="$work_type"/> este licenţiată sub o licenţă <a rel="license" href="{$license_url}">Licenţa <xsl:copy-of select="$license_name"/> Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pt_PT' ">Esta <xsl:copy-of select="$work_type"/> está licenciada sob uma <a rel="license" href="{$license_url}">Licença Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_GB' ">This <xsl:copy-of select="$work_type"/> is licenced under a <a rel="license" href="{$license_url}">Creative Commons Licence</a>.</xsl:when>

       

            <xsl:when test="$license-locale='en_CA' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons Licence</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr' ">Ce/tte <xsl:copy-of select="$work_type"/> est mis/e à disposition sous un <a rel="license" href="{$license_url}">contrat Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='bg' ">Произведението <xsl:copy-of select="$work_type"/> ползва условията на <a rel="license" href="{$license_url}">Криейтив Комънс договор</a>.</xsl:when>

       

            <xsl:when test="$license-locale='de_AT' ">Dieser <xsl:copy-of select="$work_type"/> ist unter einer <a rel="license" href="{$license_url}">Creative Commons-Lizenz</a> lizenziert.</xsl:when>

       

            <xsl:when test="$license-locale='hr' ">Ovo <xsl:copy-of select="$work_type"/> je dano na korištenje pod licencom <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='zh_TW' ">本 <xsl:copy-of select="$work_type"/> 係採用<a rel="license" href="{$license_url}">創用 CC <xsl:copy-of select="$license_name"/> 授權條款</a>授權.</xsl:when>

       

            <xsl:when test="$license-locale='da' ">Dette <xsl:copy-of select="$work_type"/> er licensieret under en <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Licens</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fr_CH' ">Ce/tte <xsl:copy-of select="$work_type"/> est mis/e à disposition sous un <a rel="license" href="{$license_url}">contrat Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='fi' ">Tämän <xsl:copy-of select="$work_type"/>teoksen käyttöoikeutta koskee <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/>-lisenssi</a>.</xsl:when>

       

            <xsl:when test="$license-locale='hu' ">Ez a <xsl:copy-of select="$work_type"/> a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Licenc feltételeinek megfelelően szabadon felhasználható</a>.</xsl:when>

       

            <xsl:when test="$license-locale='ja' ">この<xsl:copy-of select="$work_type"/>は、<a rel="license" href="{$license_url}">クリエイティブ・コモンズ・ライセンス</a>の下でライセンスされています。</xsl:when>

       

            <xsl:when test="$license-locale='fr_CA' ">Cette <xsl:copy-of select="$work_type"/> est mise à disposition sous un <a rel="license" href="{$license_url}">contrat Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='he' "><span dir="rtl"><xsl:copy-of select="$work_type"/> זו מופצת תחת <a rel="license" href="{$license_url}"> רישיון <xsl:copy-of select="$license_name"/> של Creative Commons</a>.</span></xsl:when>

       

            <xsl:when test="$license-locale='fr_LU' ">Ce/tte <xsl:copy-of select="$work_type"/> est mis/e à disposition sous un <a rel="license" href="{$license_url}">contrat Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='de' ">Dieser <xsl:copy-of select="$work_type"/> ist unter einer <a rel="license" href="{$license_url}">Creative Commons-Lizenz</a> lizenziert.</xsl:when>

       

            <xsl:when test="$license-locale='sr' ">Ово <xsl:copy-of select="$work_type"/> је лиценцирано под условима лиценце<a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='ko' ">이 <xsl:copy-of select="$work_type"/>은 <a rel="license" href="{$license_url}">크리에이티브 커먼즈 코리아 <xsl:copy-of select="$license_name"/> 라이센스</a>에 따라 이용하실 수 있습니다.</xsl:when>

       

            <xsl:when test="$license-locale='sv' ">Detta <xsl:copy-of select="$work_type"/> är licensierat under en <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> Licens</a>.</xsl:when>

       

            <xsl:when test="$license-locale='mk' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='st' ">This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:when>

       

            <xsl:when test="$license-locale='it_CH' ">Questo/a <xsl:copy-of select="$work_type"/> è pubblicato sotto una <a rel="license" href="{$license_url}">Licenza Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='pl' ">Ten <xsl:copy-of select="$work_type"/> jest dostępny na <a rel="license" href="{$license_url}">licencji Creative Commons <xsl:copy-of select="$license_name"/></a>.</xsl:when>

       

            <xsl:when test="$license-locale='ms' "><xsl:copy-of select="$work_type"/> ini dilesen dibawah satu <a rel="license" href="{$license_url}">Lesen <xsl:copy-of select="$license_name"/> Creative Commons</a>.</xsl:when>

       

            <xsl:when test="$license-locale='sl' ">To <xsl:copy-of select="$work_type"/> je licencirano z <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> licenco</a></xsl:when>

       
            <xsl:otherwise>This <xsl:copy-of select="$work_type"/> is licensed under a <a rel="license" href="{$license_url}">Creative Commons <xsl:copy-of select="$license_name"/> License</a>.</xsl:otherwise>
      </xsl:choose>


       </xsl:otherwise>

    </xsl:choose>

  </xsl:otherwise>
</xsl:choose>

<!-- Source Information -->
   <xsl:if test="$source_url != ''">
<br />

<xsl:variable name="source_link">
   <a href="{$source_url}" rel="dc:source" xmlns:dc="http://purl.org/dc/elements/1.1/"><xsl:value-of select="$source_domain" /></a>
</xsl:variable>


      <xsl:choose>
       <!-- generated locale choice lines -->
       
	
            <xsl:when test="$license-locale='el' ">Βασισμένο σε ένα έργο στο <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='eo' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_PR' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='af' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='tr' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ca' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='it' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_PE' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en_US' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ga' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_MX' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='eu' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='zh' ">基于<xsl:copy-of select="$source_link"/>上的作品创作。</xsl:when>

       
	
            <xsl:when test="$license-locale='gl' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sr_LATN' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='de_CH' ">Beruht auf einem Werk unter <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='nl' ">Gebaseerd op een werk op <xsl:copy-of select="$bron_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='pt' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='no' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='nso' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_CO' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_CL' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='th' ">ตั้งอยู่บนพื้นฐานของงาน</xsl:when>

       
	
            <xsl:when test="$license-locale='es_AR' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='zu' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ro' ">Bazată pe opera disponibilă la <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='pt_PT' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en_GB' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en_CA' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr' ">Basé(e) sur une oeuvre à</xsl:when>

       
	
            <xsl:when test="$license-locale='bg' ">Базирано на следната творба:<xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='de_AT' ">Beruht auf einem Werk unter <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='hr' ">Bazirano na djelu koje se nalazi na <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='zh_TW' ">此作品衍生自<xsl:copy-of select="$source_link"/>。</xsl:when>

       
	
            <xsl:when test="$license-locale='da' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr_CH' ">Basé(e) sur une oeuvre à</xsl:when>

       
	
            <xsl:when test="$license-locale='fi' ">Teos on muunnelma teoksesta <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='hu' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ja' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr_CA' ">Basé(e) sur une oeuvre à</xsl:when>

       
	
            <xsl:when test="$license-locale='he' ">מבוסס על יצירה הנמצאת בכתובת <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr_LU' ">Basé(e) sur une oeuvre à</xsl:when>

       
	
            <xsl:when test="$license-locale='de' ">Beruht auf einem Werk unter <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sr' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ko' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sv' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='mk' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='st' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='it_CH' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='pl' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ms' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sl' ">Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:when>

       
            <xsl:otherwise>Based on a work at <xsl:copy-of select="$source_link"/>.</xsl:otherwise>
      </xsl:choose>
      
   </xsl:if>

<!-- More Permissions Information -->
   <xsl:if test="$more_perms_link != ''">
<br />
      <xsl:choose>
       <!-- generated locale choice lines -->
       
	
            <xsl:when test="$license-locale='el' ">Παραχωρήσεις πέρα από τα πλαίσα αυτής της άδειας ενδεχομένως να είναι διαθέσιμες στο<xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='eo' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_PR' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='af' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='tr' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ca' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='it' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_PE' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en_US' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ga' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_MX' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='eu' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='zh' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='gl' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sr_LATN' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='de_CH' ">Über diese Lizenz hinausgehende Erlaubnisse erhalten Sie möglicherweise unter <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='nl' ">Toestemming met betrekking tot rechten die niet onder deze licentie vallen zijn beschikbaar voor $ {more_perms_link}.</xsl:when>

       
	
            <xsl:when test="$license-locale='pt' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='no' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='nso' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_CO' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_CL' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='th' ">การอนุญาตนอกเหนือจากที่ระบุไว้ในสัญญาอนุญาตนี้ อาจมีอยู่ที่ <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='es_AR' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='zu' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ro' ">Permisiuni peste scopul acestei licenţe pot fi disponibile la <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='pt_PT' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en_GB' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='en_CA' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr' ">Les autorisations au-delà du champ de cette licence peuvent être obtenues à <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='bg' ">За разрешения извън обсега на този договор, проверете на  <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='de_AT' ">Über diese Lizenz hinausgehende Erlaubnisse erhalten Sie möglicherweise unter <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='hr' ">Dopuštenja koja prelaze okvire ove licence možda su dostupna na <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='zh_TW' ">超出此條款範圍外的授權可於<xsl:copy-of select="$more_perms_link"/>查閱。</xsl:when>

       
	
            <xsl:when test="$license-locale='da' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr_CH' ">Les autorisations au-delà du champ de cette licence peuvent être obtenues à <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fi' ">Voit myös hankkia muita oikeuksia teokseen <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='hu' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ja' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr_CA' ">Les autorisations au-delà du champ de cette licence peuvent être obtenues à <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='he' ">ייתכן וניתן למצוא הרשאות מעבר לאלו הניתנות ברישיון זה בכתובת <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='fr_LU' ">Les autorisations au-delà du champ de cette licence peuvent être obtenues à <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='de' ">Über diese Lizenz hinausgehende Erlaubnisse erhalten Sie möglicherweise unter <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sr' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ko' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sv' ">Tillstånd utöver denna licens kan vara tillgängligt från <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='mk' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='st' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='it_CH' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='pl' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='ms' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
	
            <xsl:when test="$license-locale='sl' ">Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:when>

       
            <xsl:otherwise>Permissions beyond the scope of this license may be available at <xsl:copy-of select="$more_perms_link"/>.</xsl:otherwise>
      </xsl:choose>
      
   </xsl:if>

  </xsl:template>

</xsl:stylesheet>