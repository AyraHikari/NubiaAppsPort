.class public Lcn/nubia/weather/model/CityHelper;
.super Ljava/lang/Object;
.source "CityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHotCity(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "cityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "hotCityInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    const/4 v2, 0x0

    .line 13
    .local v2, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 32
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 16
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v3, v2

    .line 17
    .restart local v3    # "ret":I
    goto :goto_0

    .line 19
    .end local v3    # "ret":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/CityModel;

    .line 20
    .local v0, "hotCity":Lcn/nubia/weather/model/CityModel;
    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "hotCityName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    const/4 v2, 0x1

    .end local v0    # "hotCity":Lcn/nubia/weather/model/CityModel;
    .end local v1    # "hotCityName":Ljava/lang/String;
    :cond_4
    move v3, v2

    .line 32
    .restart local v3    # "ret":I
    goto :goto_0
.end method
