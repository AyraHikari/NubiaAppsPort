.class public final Lcom/loc/ej;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static l:Z

.field static m:Z

.field private static final n:[Ljava/lang/String;

.field private static o:Lcom/loc/t;

.field private static p:Z

.field private static q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "http://apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/ej;->a:Ljava/lang/String;

    const-string v0, "http://dualstack.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/ej;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/ej;->c:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.amap.api.location"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.loc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.amap.api.fence"

    aput-object v2, v0, v1

    sput-object v0, Lcom/loc/ej;->n:[Ljava/lang/String;

    const-string v0, "11G;11K;13J;13S;15O;15U;17J;17Y"

    sput-object v0, Lcom/loc/ej;->d:Ljava/lang/String;

    sput-object v4, Lcom/loc/ej;->e:Ljava/lang/String;

    sput-object v4, Lcom/loc/ej;->f:Ljava/lang/String;

    const/16 v0, 0x7530

    sput v0, Lcom/loc/ej;->g:I

    sput-object v4, Lcom/loc/ej;->h:Ljava/lang/String;

    sput-object v4, Lcom/loc/ej;->i:Ljava/lang/String;

    sput-object v4, Lcom/loc/ej;->o:Lcom/loc/t;

    sput-boolean v3, Lcom/loc/ej;->p:Z

    sput-boolean v3, Lcom/loc/ej;->q:Z

    sput-boolean v3, Lcom/loc/ej;->l:Z

    sput-boolean v3, Lcom/loc/ej;->m:Z

    return-void
.end method

.method public static a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    new-instance p0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "opt"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "CoreUtil"

    const-string v3, "getOptionBundle"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getRoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getPoiName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setStreet(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getStreetNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAoiName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setAoiName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "citycode"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "desc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adcode"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "citycode"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "desc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adcode"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-class v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "opt"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CoreUtil"

    const-string v3, "getOptionFromBundle"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/ej;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://abroad.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/ej;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    :cond_2
    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    const-string v1, "fe643c382e5c3b3962141f1a2e815a78"

    const-string v2, "FB923EE67A8B4032DAA517DD8CD7A26FF7C25B0C3663F92A0B61251C4FFFA858DF169D61321C3E7919CB67DF8EFEC827"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    const-string v1, "9a571aa113ad987d626c0457828962e6"

    const-string v2, "D2FF99A88BEB04683D89470D4FA72B1749DA456AB0D0F1A476477CE5A6874F53A9106423D905F9D808C0FCE8E7F1E04AC642F01FE41D0C7D933971F45CBA72B7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    const-string v1, "668319f11506def6208d6afe320dfd52"

    const-string v2, "53E53D46011A6BBAEA4FAE5442E659E0577CDD336F930C28635C322FB3F51C3C63F7FBAC9EAE448DFA2E5E5D716C4807"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/ej;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/ej;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v0}, Lcom/loc/ej;->a(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/loc/dy;->b([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/loc/ej;->c:Ljava/lang/String;

    sput-object v0, Lcom/loc/ej;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "CoreUtil"

    const-string v2, "checkUrl"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "checkUrl"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "CoreUtil"

    const-string v2, "initUrlHash"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V
    .locals 8

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    :try_start_0
    const-string v0, "lat"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "lon"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-string v4, "provider"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const-string v4, "altitude"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "accuracy"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    :try_start_2
    const-string v4, "speed"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    :try_start_3
    const-string v4, "bearing"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    :try_start_4
    const-string v4, "adcode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    const-string v4, "citycode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    const-string v4, "address"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    const-string v4, "desc"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "country"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    const-string v5, "province"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    const-string v5, "city"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    const-string v5, "district"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    const-string v5, "road"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getRoad()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    const-string v5, "street"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setStreet(Ljava/lang/String;)V

    const-string v5, "number"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreetNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setNumber(Ljava/lang/String;)V

    const-string v5, "poiname"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getPoiName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    const-string v5, "aoiname"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAoiName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setAoiName(Ljava/lang/String;)V

    const-string v5, "errorCode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v5, "errorInfo"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setErrorInfo(Ljava/lang/String;)V

    const-string v5, "locationType"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const-string v5, "locationDetail"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-string v5, "time"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    const-string v5, "isOffset"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->isOffset()Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    const-string v6, "poiid"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getBuildingId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amap/api/location/AMapLocation;->setBuildingId(Ljava/lang/String;)V

    const-string v6, "floor"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getFloor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    const-string v6, "description"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amap/api/location/AMapLocation;->setDescription(Ljava/lang/String;)V

    const-string v6, "coordType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v0, "coordType"

    const-string v1, "GCJ02"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "citycode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adcode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    invoke-static {v0, v1, v2, v3}, Lcom/loc/ej;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    const-string v0, "GCJ02"

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "transformLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    :try_start_5
    const-string v0, "WGS84"

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_1
    move-exception v4

    goto/16 :goto_2

    :catch_2
    move-exception v4

    goto/16 :goto_1

    :catch_3
    move-exception v4

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reportError"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/loc/j;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(DD)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x4052400000000000L    # 73.0

    sub-double v2, p2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    sub-double v4, p0, v4

    div-double/2addr v4, v6

    double-to-int v3, v4

    if-ltz v3, :cond_0

    const/16 v4, 0x65

    if-ge v3, v4, :cond_0

    if-ltz v2, :cond_0

    const/16 v4, 0x7c

    if-lt v2, v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    mul-int/lit8 v3, v3, 0x7c

    add-int/2addr v2, v3

    :try_start_0
    const-string v3, "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111101111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100110001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000010111110100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000001111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111000000111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111101111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000101111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000011110000000001111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000011000011111100000000111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000001111111100111111111100110111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000101111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011100000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011111110000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111111110000000000000000000000111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000011111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111010000000000000000000000111111111111111111111111111111111111111111110000000000000001111111111111111111111111111111111111111111100000000000000000000011111111111111111111111111111111100000000000000000000000000001111111111111111111111111111111111111111110000000000000000000001111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111111111111000000000000000000000111111111111111111111111111111110000000000000000000000000000001111111111111111111111111111111111111111100000000000000000000111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111000000000000000000001111111111111111111111111110000000000000000000000000000000000001110011111111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000001111111111111111111111111111111111111000000000000000000001111111111111111111000000000000000000000000000000000000000000000000011111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000000011111111111111111111111111111111111000000000000000000001111111111111111100000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000000000000000000000000111111111100000000000000000000000000000000000000000000000000111111111111111111111111111111111111111000000000000000000000000011111111100000000000000000000000000000000000000000000000000011111111111111111111111111111110001111100000000000000000000000000111110000000000000000000000000000000000000000000000000000001111111111111111111111111111111000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000011111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110000000000000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CoreUtil"

    const-string v3, "isChina"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(DDDDDD)Z
    .locals 8

    const/4 v0, 0x0

    sub-double v2, p4, p0

    sub-double v4, p10, p2

    mul-double/2addr v2, v4

    sub-double v4, p8, p0

    sub-double v6, p6, p2

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    sub-double v2, p0, p4

    sub-double v4, p0, p8

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    sub-double v2, p2, p6

    sub-double v4, p2, p10

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Lcom/amap/api/location/DPoint;Ljava/util/List;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/location/DPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;)Z"
        }
    .end annotation

    const/16 v28, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v24

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/location/DPoint;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/location/DPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v6, 0x0

    move/from16 v26, v7

    move/from16 v27, v6

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v27

    if-ge v0, v6, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/location/DPoint;

    invoke-virtual {v6}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/location/DPoint;

    invoke-virtual {v8}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v8

    add-int/lit8 v10, v27, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/location/DPoint;

    invoke-virtual {v10}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v10

    add-int/lit8 v12, v27, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/location/DPoint;

    invoke-virtual {v12}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lcom/loc/ej;->a(DDDDDD)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    sub-double v14, v12, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_6

    const-wide v22, 0x4066800000000000L    # 180.0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    invoke-static/range {v14 .. v25}, Lcom/loc/ej;->a(DDDDDD)Z

    move-result v14

    if-eqz v14, :cond_2

    cmpl-double v6, v8, v12

    if-lez v6, :cond_6

    add-int/lit8 v26, v26, 0x1

    move/from16 v6, v26

    :goto_2
    add-int/lit8 v7, v27, 0x1

    move/from16 v26, v6

    move/from16 v27, v7

    goto :goto_0

    :cond_2
    const-wide v18, 0x4066800000000000L    # 180.0

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v20, v24

    invoke-static/range {v10 .. v21}, Lcom/loc/ej;->a(DDDDDD)Z

    move-result v14

    if-eqz v14, :cond_3

    cmpl-double v6, v12, v8

    if-lez v6, :cond_6

    add-int/lit8 v26, v26, 0x1

    move/from16 v6, v26

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    sub-double v16, v10, v6

    sub-double v18, v24, v4

    mul-double v16, v16, v18

    sub-double v18, v12, v8

    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v20, v20, v2

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    const-wide/16 v18, 0x0

    cmpl-double v15, v16, v18

    if-eqz v15, :cond_7

    sub-double v18, v8, v4

    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v20, v20, v2

    mul-double v18, v18, v20

    sub-double v20, v6, v2

    sub-double v22, v24, v4

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    div-double v18, v18, v16

    sub-double v20, v8, v4

    sub-double/2addr v10, v6

    mul-double v10, v10, v20

    sub-double/2addr v6, v2

    sub-double v8, v12, v8

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    div-double v6, v6, v16

    const-wide/16 v8, 0x0

    cmpl-double v8, v18, v8

    if-ltz v8, :cond_7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v18, v8

    if-gtz v8, :cond_7

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_6

    add-int/lit8 v26, v26, 0x1

    move/from16 v6, v26

    goto :goto_2

    :cond_4
    rem-int/lit8 v2, v26, 0x2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v2, v28

    goto/16 :goto_1

    :cond_6
    move/from16 v6, v26

    goto/16 :goto_2

    :cond_7
    move v6, v14

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    :cond_0
    new-array v0, v1, [B

    :cond_1
    return-object v0

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    new-array v0, v3, [B

    :goto_0
    if-ge v1, v3, :cond_1

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->h(Ljava/lang/String;)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/ej;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/loc/k;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/loc/t;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/loc/ej;->o:Lcom/loc/t;

    if-nez v0, :cond_0

    new-instance v1, Lcom/loc/t$a;

    const-string v0, "loc"

    const-string v2, "5.2.0"

    const-string v3, "AMAP_Location_SDK_Android 5.2.0"

    invoke-direct {v1, v0, v2, v3}, Lcom/loc/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/ej;->n:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/loc/t$a;->a([Ljava/lang/String;)Lcom/loc/t$a;

    move-result-object v0

    const-string v1, "5.2.0"

    invoke-virtual {v0, v1}, Lcom/loc/t$a;->a(Ljava/lang/String;)Lcom/loc/t$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/t$a;->a()Lcom/loc/t;

    move-result-object v0

    sput-object v0, Lcom/loc/ej;->o:Lcom/loc/t;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/loc/ej;->o:Lcom/loc/t;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "getSDKInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/loc/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://abroad.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/ej;->a:Ljava/lang/String;

    const-string v0, "http://abroad.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/ej;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "http://apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/ej;->a:Ljava/lang/String;

    const-string v0, "http://dualstack.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/ej;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "changeUrl"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/ej;->d:Ljava/lang/String;

    return-object v0
.end method
