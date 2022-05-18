.class public Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;
.super Ljava/lang/Object;
.source "Forecast5dModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/model/Forecast5dModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityInfoModel"
.end annotation


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mAreaId:Ljava/lang/String;

.field private mAreaNameCN:Ljava/lang/String;

.field private mAreaNameEN:Ljava/lang/String;

.field private mCityLevel:I

.field private mCityNameCN:Ljava/lang/String;

.field private mCityNameEN:Ljava/lang/String;

.field private mCountryCN:Ljava/lang/String;

.field private mCountryEN:Ljava/lang/String;

.field private mElevation:F

.field private mLatitude:D

.field private mLongitude:D

.field private mPostCode:Ljava/lang/String;

.field private mProvinceCN:Ljava/lang/String;

.field private mProvinceEN:Ljava/lang/String;

.field private mRadarStationNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/CityJsonBean;)Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/CityJsonBean;

    .prologue
    .line 271
    new-instance v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;-><init>()V

    .line 273
    .local v1, "result":Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaId:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC2()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaNameEN:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaNameCN:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC4()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCityNameEN:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCityNameCN:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC6()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mProvinceEN:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC7()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mProvinceCN:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCountryEN:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC9()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCountryCN:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC10()I

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCityLevel:I

    .line 283
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC11()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaCode:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC12()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mPostCode:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC13()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mLongitude:D

    .line 286
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC14()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mLatitude:D

    .line 287
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/CityJsonBean;->getC15()F

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mElevation:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Forecast5dModel"

    const-string v3, "Convert CityJsonBean  To CityInfoModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getmAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmAreaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaId:Ljava/lang/String;

    return-object v0
.end method

.method public getmAreaNameCN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaNameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getmAreaNameEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mAreaNameEN:Ljava/lang/String;

    return-object v0
.end method

.method public getmCityLevel()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCityLevel:I

    return v0
.end method

.method public getmCityNameCN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCityNameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getmCityNameEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCityNameEN:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountryCN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCountryCN:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountryEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mCountryEN:Ljava/lang/String;

    return-object v0
.end method

.method public getmElevation()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mElevation:F

    return v0
.end method

.method public getmLatitude()D
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mLatitude:D

    return-wide v0
.end method

.method public getmLongitude()D
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mLongitude:D

    return-wide v0
.end method

.method public getmPostCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mPostCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmProvinceCN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mProvinceCN:Ljava/lang/String;

    return-object v0
.end method

.method public getmProvinceEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mProvinceEN:Ljava/lang/String;

    return-object v0
.end method

.method public getmRadarStationNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->mRadarStationNo:Ljava/lang/String;

    return-object v0
.end method
