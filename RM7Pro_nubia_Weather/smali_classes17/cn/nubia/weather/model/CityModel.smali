.class public Lcn/nubia/weather/model/CityModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "CityModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HONGKONG_KEY:Ljava/lang/String; = "1123655"

.field private static final MACAO_KEY:Ljava/lang/String; = "60090"

.field private static final TAG:Ljava/lang/String; = "CityModel"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private city_cn:Ljava/lang/String;

.field private city_pinyin:Ljava/lang/String;

.field private city_py:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private id:I

.field private mCountryCode:Ljava/lang/String;

.field private mGmtOffSet:Ljava/lang/String;

.field private mParentCityKey:Ljava/lang/String;

.field private mSupAdminAreasName:Ljava/lang/String;

.field private name_cn:Ljava/lang/String;

.field private name_pinyin:Ljava/lang/String;

.field private name_py:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 34
    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mSupAdminAreasName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name_cn"    # Ljava/lang/String;
    .param p2, "areaId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 34
    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mSupAdminAreasName:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcn/nubia/weather/model/CityModel;->mAreaID:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "city_cn"    # Ljava/lang/String;
    .param p3, "city_pinyin"    # Ljava/lang/String;
    .param p4, "city_py"    # Ljava/lang/String;
    .param p5, "name_cn"    # Ljava/lang/String;
    .param p6, "name_pinyin"    # Ljava/lang/String;
    .param p7, "name_py"    # Ljava/lang/String;
    .param p8, "areaId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 34
    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mSupAdminAreasName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcn/nubia/weather/model/CityModel;->mAreaID:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private static buildForHuaFeng(Lcn/nubia/weather/jsonbean/CityInfo;)Lcn/nubia/weather/model/CityModel;
    .locals 9
    .param p0, "bean"    # Lcn/nubia/weather/jsonbean/CityInfo;

    .prologue
    const/4 v6, 0x0

    .line 264
    const/4 v3, 0x0

    .line 266
    .local v3, "result":Lcn/nubia/weather/model/CityModel;
    if-eqz p0, :cond_8

    .line 267
    :try_start_0
    new-instance v4, Lcn/nubia/weather/model/CityModel;

    invoke-direct {v4}, Lcn/nubia/weather/model/CityModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .local v4, "result":Lcn/nubia/weather/model/CityModel;
    :try_start_1
    invoke-virtual {v4, p0}, Lcn/nubia/weather/model/CityModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 269
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 270
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcn/nubia/weather/model/CityModel;->setmAreaID(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1123655"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "60090"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 278
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 293
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 294
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 295
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    .line 300
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 301
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 302
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    .line 307
    :cond_3
    :goto_2
    iget-object v6, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 309
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 310
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 312
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 315
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getTimeZone()Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 316
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getTimeZone()Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->getGmtOffset()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 317
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getTimeZone()Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 330
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getSupplementalAdminAreas()[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    move-result-object v5

    .line 331
    .local v5, "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    if-eqz v5, :cond_11

    .line 332
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_f

    move-object v3, v4

    .line 350
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .end local v5    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    :goto_4
    return-object v4

    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_6
    move-object v3, v4

    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    move-object v4, v6

    .line 273
    goto :goto_4

    .line 279
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 280
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 281
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 346
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 347
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    :goto_5
    const-string v6, "CityModel"

    const-string v7, "Convert CityInfoBean To CityModel Fail. "

    invoke-static {v6, v7, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 348
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    move-object v4, v3

    .line 350
    goto :goto_4

    .line 284
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_9
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 285
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    goto/16 :goto_0

    .line 286
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getEnglishName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 287
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    move-object v3, v4

    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    move-object v4, v6

    .line 289
    goto :goto_4

    .line 296
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_c
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 297
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 298
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    goto/16 :goto_1

    .line 303
    :cond_d
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 304
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 305
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    goto/16 :goto_2

    .line 318
    :cond_e
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 319
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getID()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "countryID":Ljava/lang/String;
    const-string v0, "CN"

    .line 321
    .local v0, "chinaId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 322
    const-string v6, "Asia/Shanghai"

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    goto/16 :goto_3

    .line 335
    .end local v0    # "chinaId":Ljava/lang/String;
    .end local v1    # "countryID":Ljava/lang/String;
    .restart local v5    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :cond_f
    array-length v6, v5

    if-lez v6, :cond_11

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->getLevel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 336
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->getLevel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_10

    move-object v3, v4

    .line 337
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    goto/16 :goto_4

    .line 339
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_10
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/nubia/weather/model/CityModel;->setmSupAdminAreasName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_11
    move-object v3, v4

    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    goto/16 :goto_6

    .line 346
    .end local v5    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :catch_1
    move-exception v2

    goto/16 :goto_5
.end method

.method public static buildForHuaFeng(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 211
    const/4 v7, 0x0

    .line 234
    :cond_0
    return-object v7

    .line 213
    :cond_1
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 214
    .local v6, "gson":Lcom/google/gson/Gson;
    const/4 v2, 0x0

    .line 216
    .local v2, "beans":[Lcn/nubia/weather/jsonbean/CityInfo;
    :try_start_0
    const-class v8, [Lcn/nubia/weather/jsonbean/CityInfo;

    invoke-virtual {v6, p0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lcn/nubia/weather/jsonbean/CityInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    invoke-static {v2}, Lcn/nubia/weather/model/CityModel;->getCitySearchResults([Lcn/nubia/weather/jsonbean/CityInfo;)Ljava/util/List;

    move-result-object v5

    .line 222
    .local v5, "filteredCityBeans":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/CityInfo;>;"
    const/4 v7, 0x0

    .line 223
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    const/4 v3, 0x0

    .line 224
    .local v3, "city":Lcn/nubia/weather/model/CityModel;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 225
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .restart local v7    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/jsonbean/CityInfo;

    .line 227
    .local v1, "bean":Lcn/nubia/weather/jsonbean/CityInfo;
    invoke-virtual {v1, p0}, Lcn/nubia/weather/jsonbean/CityInfo;->setmJsonStr(Ljava/lang/String;)V

    .line 228
    invoke-static {v1}, Lcn/nubia/weather/model/CityModel;->buildForHuaFeng(Lcn/nubia/weather/jsonbean/CityInfo;)Lcn/nubia/weather/model/CityModel;

    move-result-object v3

    .line 229
    if-eqz v3, :cond_2

    .line 230
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    .end local v1    # "bean":Lcn/nubia/weather/jsonbean/CityInfo;
    .end local v3    # "city":Lcn/nubia/weather/model/CityModel;
    .end local v5    # "filteredCityBeans":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/CityInfo;>;"
    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    :catch_0
    move-exception v4

    .line 218
    .local v4, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v8, "CityModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildForHuaFeng e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildForHuaFengWithSingleCity(Ljava/lang/String;)Lcn/nubia/weather/model/CityModel;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    const/4 v4, 0x0

    .line 206
    :cond_0
    :goto_0
    return-object v4

    .line 193
    :cond_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 194
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 196
    .local v1, "bean":Lcn/nubia/weather/jsonbean/CityInfo;
    :try_start_0
    const-class v5, Lcn/nubia/weather/jsonbean/CityInfo;

    invoke-virtual {v3, p0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcn/nubia/weather/jsonbean/CityInfo;

    move-object v1, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    const/4 v4, 0x0

    .line 202
    .local v4, "result":Lcn/nubia/weather/model/CityModel;
    if-eqz v1, :cond_0

    .line 203
    new-instance v4, Lcn/nubia/weather/model/CityModel;

    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    invoke-direct {v4}, Lcn/nubia/weather/model/CityModel;-><init>()V

    .line 204
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    invoke-static {v1}, Lcn/nubia/weather/model/CityModel;->buildForHuaFeng(Lcn/nubia/weather/jsonbean/CityInfo;)Lcn/nubia/weather/model/CityModel;

    move-result-object v4

    goto :goto_0

    .line 197
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v5, "CityModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildForHuaFeng e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCitySearchResults([Lcn/nubia/weather/jsonbean/CityInfo;)Ljava/util/List;
    .locals 8
    .param p0, "cityInfos"    # [Lcn/nubia/weather/jsonbean/CityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/nubia/weather/jsonbean/CityInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 239
    if-nez p0, :cond_1

    .line 240
    const/4 v1, 0x0

    .line 260
    :cond_0
    return-object v1

    .line 242
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/CityInfo;>;"
    array-length v5, p0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, p0, v3

    .line 245
    .local v0, "cityInfo":Lcn/nubia/weather/jsonbean/CityInfo;
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1123655"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 246
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/CityInfo;->getSupplementalAdminAreas()[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 247
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/CityInfo;->getSupplementalAdminAreas()[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    move-result-object v2

    .line 248
    .local v2, "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    array-length v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 243
    .end local v2    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .restart local v2    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :cond_3
    array-length v6, v2

    if-lez v6, :cond_4

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->getLevel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 252
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->getLevel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_2

    .line 258
    .end local v2    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public equalsByPublishTimeAndID(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getCity_cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_pinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_py()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtOffSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcn/nubia/weather/model/CityModel;->id:I

    return v0
.end method

.method public getName_cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getName_pinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getName_py()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmParentCityKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmSupAdminAreasName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mSupAdminAreasName:Ljava/lang/String;

    return-object v0
.end method

.method public setCity_cn(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_cn"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCity_pinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_pinyin"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCity_py(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_py"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setGmtOffSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmtOffSet"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 88
    iput p1, p0, Lcn/nubia/weather/model/CityModel;->id:I

    .line 89
    return-void
.end method

.method public setName_cn(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_cn"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setName_pinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_pinyin"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setName_py(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_py"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 1
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected setType()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public setmCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCountryCode"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->mCountryCode:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setmParentCityKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParentCityKey"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setmSupAdminAreasName(Ljava/lang/String;)V
    .locals 0
    .param p1, "supAdminAreasName"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->mSupAdminAreasName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "City [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/weather/model/CityModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_pinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_py="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_pinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_py="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->mAreaID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SupAdminAreasName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->mSupAdminAreasName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
