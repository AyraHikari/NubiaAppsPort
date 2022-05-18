.class public Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
.super Landroid/app/Service;
.source "ManagerAlarmDatabaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;
    }
.end annotation


# static fields
.field private static final DELETED_ENTRY:Ljava/lang/String; = "C0"

.field private static final DESKCLOCK_FEATURE:Ljava/lang/String; = "nubia_deskclock_feature"

.field private static final REPET_ALARM:Ljava/lang/String; = "repet_alarm"

.field private static final SHOW_COUNTRY:Ljava/lang/String; = "DeskClock_showWolrdcountry"

.field private static final TAG:Ljava/lang/String; = "ManagerAlarmDatabase"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAllTheCitiesList:[Ljava/lang/Object;

.field private mBinder:Landroid/os/IBinder;

.field private mFilterAllCitiesList:[Ljava/lang/Object;

.field private mIsShowCountry:Ljava/lang/String;

.field private mTempCityList:[Lcn/nubia/deskclock/model/City;

.field private mUserSelectedCities:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/deskclock/model/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;-><init>(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)V

    iput-object v0, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/ContentValues;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->addAlarm(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/ContentValues;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->setAlarm(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->getIsShowCountryFlag()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->loadCitiesDataBase(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->getCityInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mAllTheCitiesList:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Lcn/nubia/deskclock/model/City;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    .param p1, "x1"    # Lcn/nubia/deskclock/model/City;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->cityHasSelected(Lcn/nubia/deskclock/model/City;)Z

    move-result v0

    return v0
.end method

.method private addAlarm(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 246
    const-string v0, ""

    .line 247
    .local v0, "backUri":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->hasSameTime(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    const-string v0, "repet_alarm"

    move-object v1, v0

    .line 263
    .end local v0    # "backUri":Ljava/lang/String;
    .local v1, "backUri":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 251
    .end local v1    # "backUri":Ljava/lang/String;
    .restart local v0    # "backUri":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 253
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 254
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_1
    const-string v4, "ManagerAlarmDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " addAlarm   ; uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 259
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v3, :cond_1

    .line 261
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 263
    .end local v0    # "backUri":Ljava/lang/String;
    .restart local v1    # "backUri":Ljava/lang/String;
    goto :goto_0

    .line 255
    .end local v1    # "backUri":Ljava/lang/String;
    .restart local v0    # "backUri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private cityHasSelected(Lcn/nubia/deskclock/model/City;)Z
    .locals 5
    .param p1, "city"    # Lcn/nubia/deskclock/model/City;

    .prologue
    .line 351
    iget-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 352
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;>;"
    const/4 v1, 0x0

    .line 353
    .local v1, "hasCity":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 355
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 356
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p1, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    const/4 v1, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private getCityInfo(Ljava/lang/String;)V
    .locals 8
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 364
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 365
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v1, "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 368
    .local v3, "lItems":[Ljava/lang/Object;
    iget-object v5, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mFilterAllCitiesList:[Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 369
    iget-object v5, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mFilterAllCitiesList:[Ljava/lang/Object;

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lItems":[Ljava/lang/Object;
    check-cast v3, [Ljava/lang/Object;

    .line 371
    .restart local v3    # "lItems":[Ljava/lang/Object;
    :cond_0
    array-length v4, v3

    .line 372
    .local v4, "size":I
    const-string v5, "ManagerAlarmDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " performFiltering : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 374
    aget-object v0, v3, v2

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 375
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    const-string v5, "ManagerAlarmDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " city.mCityName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v5, v0, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 378
    const-string v5, "ManagerAlarmDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " add city --- city.mCityName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    :cond_1
    if-eqz v1, :cond_2

    .line 391
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mAllTheCitiesList:[Ljava/lang/Object;

    .line 394
    .end local v1    # "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "i":I
    .end local v3    # "lItems":[Ljava/lang/Object;
    .end local v4    # "size":I
    :cond_2
    return-void

    .line 381
    .restart local v0    # "city":Lcn/nubia/deskclock/model/City;
    .restart local v1    # "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2    # "i":I
    .restart local v3    # "lItems":[Ljava/lang/Object;
    .restart local v4    # "size":I
    :cond_3
    iget-object v5, v0, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 382
    iget-object v5, v0, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 384
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 385
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getIsShowCountryFlag()V
    .locals 4

    .prologue
    .line 341
    const-string v1, "true"

    iput-object v1, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mIsShowCountry:Ljava/lang/String;

    .line 343
    :try_start_0
    const-string v1, "nubia_deskclock_feature"

    const-string v2, "DeskClock_showWolrdcountry"

    invoke-static {v1, v2}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mIsShowCountry:Ljava/lang/String;

    .line 344
    const-string v1, "ManagerAlarmDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mIsShowCountry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mIsShowCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ManagerAlarmDatabase"

    const-string v2, "reyun error"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hasSameTime(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 288
    const/4 v6, 0x0

    .line 290
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "hour"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "minutes"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "daysofweek"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hour = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "hour"

    .line 293
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and minutes = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "minutes"

    .line 294
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and daysofweek = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "daysofweek"

    .line 295
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 290
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 300
    :goto_0
    const/4 v8, 0x0

    .line 301
    .local v8, "isSameTime":Z
    if-eqz v6, :cond_1

    .line 303
    :try_start_1
    const-string v0, "ManagerAlarmDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getCount()  ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 305
    const/4 v8, 0x1

    .line 310
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_1
    :goto_1
    return v8

    .line 297
    .end local v8    # "isSameTime":Z
    :catch_0
    move-exception v7

    .line 298
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "isSameTime":Z
    :catch_1
    move-exception v7

    .line 308
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 311
    throw v0
.end method

.method private loadCitiesDataBase(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 318
    iget-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mTempCityList:[Lcn/nubia/deskclock/model/City;

    if-nez v4, :cond_0

    .line 319
    invoke-static {p1}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->loadAllSupportedCities(Landroid/content/Context;)[Lcn/nubia/deskclock/model/City;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mTempCityList:[Lcn/nubia/deskclock/model/City;

    .line 321
    :cond_0
    iget-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mTempCityList:[Lcn/nubia/deskclock/model/City;

    if-nez v4, :cond_1

    .line 338
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/model/City;>;"
    const/4 v1, 0x0

    .line 327
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mTempCityList:[Lcn/nubia/deskclock/model/City;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 328
    iget-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mTempCityList:[Lcn/nubia/deskclock/model/City;

    aget-object v0, v4, v2

    .line 329
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    iget-object v4, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    const-string v5, "C0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 336
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mAllTheCitiesList:[Ljava/lang/Object;

    .line 337
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mFilterAllCitiesList:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private setAlarm(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 268
    const-string v4, "ManagerAlarmDatabase"

    const-string v5, " setAlarm "

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 270
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-wide/16 v2, 0x0

    .line 272
    .local v2, "rowsUpdated":J
    :try_start_0
    sget-object v4, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    .line 273
    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v2, v4

    .line 279
    :goto_0
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 280
    const-string v4, "ManagerAlarmDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error updating alarm  ;; rowsUpdated : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_1
    return-wide v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    sput-object p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method
