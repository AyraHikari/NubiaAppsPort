.class public Lcn/nubia/weather/data/CityOrderCenter;
.super Ljava/lang/Object;
.source "CityOrderCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;,
        Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;,
        Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;
    }
.end annotation


# static fields
.field private static final KEY_PREFS_CITY_ORDER:Ljava/lang/String; = "CITY_ORDER"

.field private static final MESSAGE_CITY_ORDER_CLEAR:I = 0x1200002

.field private static final MESSAGE_CITY_ORDER_UPDATE:I = 0x1200001

.field private static final TAG:Ljava/lang/String; = "CityOrderCenter"

.field private static mInstance:Lcn/nubia/weather/data/CityOrderCenter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/data/CityOrderCenter;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;

    invoke-direct {v0, p0, v2}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;-><init>(Lcn/nubia/weather/data/CityOrderCenter;Lcn/nubia/weather/data/CityOrderCenter$1;)V

    iput-object v0, p0, Lcn/nubia/weather/data/CityOrderCenter;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcn/nubia/weather/data/CityOrderCenter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    new-instance v1, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;

    invoke-direct {v1, p0, v2}, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;-><init>(Lcn/nubia/weather/data/CityOrderCenter;Lcn/nubia/weather/data/CityOrderCenter$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->addObserver(Ljava/util/Observer;)V

    .line 43
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/data/CityOrderCenter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/data/CityOrderCenter;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/weather/data/CityOrderCenter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/data/CityOrderCenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/data/CityOrderCenter;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/weather/data/CityOrderCenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-class v1, Lcn/nubia/weather/data/CityOrderCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/data/CityOrderCenter;->mInstance:Lcn/nubia/weather/data/CityOrderCenter;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcn/nubia/weather/data/CityOrderCenter;

    invoke-direct {v0, p0}, Lcn/nubia/weather/data/CityOrderCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/weather/data/CityOrderCenter;->mInstance:Lcn/nubia/weather/data/CityOrderCenter;

    .line 49
    :cond_0
    sget-object v0, Lcn/nubia/weather/data/CityOrderCenter;->mInstance:Lcn/nubia/weather/data/CityOrderCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseCityOrderStr(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 80
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "citys":[Ljava/lang/String;
    array-length v5, v1

    if-lez v5, :cond_2

    .line 82
    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v1, v5

    .line 83
    .local v3, "s":Ljava/lang/String;
    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cityUnit":[Ljava/lang/String;
    new-instance v4, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    aget-object v8, v0, v6

    aget-object v9, v0, v10

    invoke-direct {v4, p0, v8, v9}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;-><init>(Lcn/nubia/weather/data/CityOrderCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v4, "unit":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    invoke-virtual {v4}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmType()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmType()I

    move-result v8

    if-ne v10, v8, :cond_1

    .line 86
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "cityUnit":[Ljava/lang/String;
    .end local v1    # "citys":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "unit":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public clearCityOrder()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcn/nubia/weather/data/CityOrderCenter;->updateCityOrder()V

    .line 110
    return-void
.end method

.method public getCitysOrder()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/data/CityOrderCenter;->mContext:Landroid/content/Context;

    const-string v4, "CITY_ORDER"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "orderStr":Ljava/lang/String;
    const-string v3, "CityOrderCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get CityOrder Pref, value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v1}, Lcn/nubia/weather/data/CityOrderCenter;->parseCityOrderStr(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 68
    .end local v1    # "orderStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "CityOrderCenter"

    const-string v4, "OutOfMemoryError"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcn/nubia/weather/data/CityOrderCenter;->mContext:Landroid/content/Context;

    const-string v4, "CITY_ORDER"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCityOrder()V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcn/nubia/weather/data/CityOrderCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->getOrderStr()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "orderStr":Ljava/lang/String;
    const-string v1, "CityOrderCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update CityOrder Pref, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcn/nubia/weather/data/CityOrderCenter;->mContext:Landroid/content/Context;

    const-string v2, "CITY_ORDER"

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
