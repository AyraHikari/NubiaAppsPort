.class public Lcn/nubia/weather/utils/AdSetting;
.super Ljava/lang/Object;
.source "AdSetting.java"


# static fields
.field private static APP_ID:Ljava/lang/String;

.field private static NATIVE_ID:Ljava/lang/String;

.field private static SEARCH_ID:Ljava/lang/String;

.field private static final bannerIDs:[Ljava/lang/String;

.field private static final ids:[Ljava/lang/String;

.field private static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/weather/utils/AdSetting;->bannerIDs:[Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcn/nubia/weather/utils/AdSetting;->random:Ljava/util/Random;

    .line 24
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->initID()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getBannerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getImageBannerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->isDefaultAppID()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->bannerIDs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getInsertID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getMixBannerID()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->isDefaultAppID()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->bannerIDs:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getNativeID()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 79
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->isDefaultAppID()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->NATIVE_ID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static getProperties()Ljava/util/Properties;
    .locals 5

    .prologue
    .line 99
    :try_start_0
    const-string v3, "init_ids_true"

    .line 100
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/app/WeatherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 101
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 102
    .local v2, "p":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "p":Ljava/util/Properties;
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSearchID()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 85
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->isDefaultAppID()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->SEARCH_ID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getSplashID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static initID()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 28
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 29
    .local v0, "p":Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 31
    const-string v5, "IDS"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "s_ids":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "split_ids":[Ljava/lang/String;
    aget-object v5, v4, v7

    sput-object v5, Lcn/nubia/weather/utils/AdSetting;->APP_ID:Ljava/lang/String;

    .line 34
    sget-object v5, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    sget-object v6, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    const-string v5, "BANNER_IDS"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "s_banner_id":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "split_banner_ids":[Ljava/lang/String;
    sget-object v5, Lcn/nubia/weather/utils/AdSetting;->bannerIDs:[Ljava/lang/String;

    sget-object v6, Lcn/nubia/weather/utils/AdSetting;->bannerIDs:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    const-string v5, "NATIVE_ID"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/weather/utils/AdSetting;->NATIVE_ID:Ljava/lang/String;

    .line 41
    const-string v5, "SEARCH_ID"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/weather/utils/AdSetting;->SEARCH_ID:Ljava/lang/String;

    .line 43
    .end local v1    # "s_banner_id":Ljava/lang/String;
    .end local v2    # "s_ids":Ljava/lang/String;
    .end local v3    # "split_banner_ids":[Ljava/lang/String;
    .end local v4    # "split_ids":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isDefaultAppID()Z
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->APP_ID:Ljava/lang/String;

    sget-object v1, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static reSet()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->initID()V

    .line 51
    return-void
.end method

.method static setID(Ljava/lang/String;I)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 90
    const-string v0, "123qwe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 92
    sget-object v0, Lcn/nubia/weather/utils/AdSetting;->ids:[Ljava/lang/String;

    aput-object p0, v0, p1

    .line 94
    :cond_0
    return-void
.end method
