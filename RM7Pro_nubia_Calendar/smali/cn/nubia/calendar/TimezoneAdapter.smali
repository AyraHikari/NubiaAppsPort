.class public Lcn/nubia/calendar/TimezoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimezoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_RECENT_TIMEZONES:Ljava/lang/String; = "preferences_recent_timezones"

.field private static final MAX_RECENT_TIMEZONES:I = 0x3

.field private static final RECENT_TIMEZONES_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "TimezoneAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mDateTime:Ljava/util/Date;

.field private mShowingAll:Z

.field private mTime:J

.field private sTimezones:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentTimezone"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    const/4 v4, 0x0

    .line 228
    const v0, 0x1090009

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 211
    iput-boolean v4, p0, Lcn/nubia/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 230
    iput-object p1, p0, Lcn/nubia/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Lcn/nubia/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 232
    iput-wide p3, p0, Lcn/nubia/calendar/TimezoneAdapter;->mTime:J

    .line 233
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcn/nubia/calendar/TimezoneAdapter;->mTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcn/nubia/calendar/TimezoneAdapter;->mDateTime:Ljava/util/Date;

    .line 234
    iput-boolean v4, p0, Lcn/nubia/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 235
    invoke-virtual {p0}, Lcn/nubia/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/TimezoneAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/TimezoneAdapter;

    .prologue
    .line 50
    iget-wide v0, p0, Lcn/nubia/calendar/TimezoneAdapter;->mTime:J

    return-wide v0
.end method

.method private loadFromResources(Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 437
    iget-object v4, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_1

    .line 438
    const v4, 0x7f0a0037

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "ids":[Ljava/lang/String;
    const v4, 0x7f0a000d

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "labels":[Ljava/lang/String;
    array-length v3, v1

    .line 442
    .local v3, "length":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 444
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 451
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 452
    iget-object v4, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v0

    new-instance v6, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    aget-object v7, v1, v0

    aget-object v8, v2, v0

    invoke-direct {v6, p0, v7, v8}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;-><init>(Lcn/nubia/calendar/TimezoneAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "labels":[Ljava/lang/String;
    .end local v3    # "length":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 11

    .prologue
    .line 405
    const/4 v8, 0x2

    iget-object v9, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-class v9, Ljava/lang/CharSequence;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/CharSequence;

    .line 406
    .local v6, "timeZones":[[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 408
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    .local v7, "timezones":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v2, "idandtimezones":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 414
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 415
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {v8}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 423
    const/4 v0, 0x0

    .line 424
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    .line 428
    .local v4, "row":Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    const/4 v8, 0x0

    aget-object v10, v6, v8

    invoke-virtual {v4}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, v10, v0

    .line 431
    const/4 v8, 0x1

    aget-object v8, v6, v8

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v4}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v0

    move v0, v1

    .line 432
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 433
    .end local v4    # "row":Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    :cond_1
    return-object v6
.end method

.method public getRowById(Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v1, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    .line 248
    .local v0, "timezone":Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    if-nez v0, :cond_0

    .line 249
    const/4 v1, -0x1

    .line 251
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/TimezoneAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 377
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 378
    invoke-static {v3}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "recentsString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v1, "recents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 389
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 384
    .end local v1    # "recents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, ","

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "recents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 391
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v3, ","

    invoke-static {v1, v3}, Lcn/nubia/calendar/util/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v3, p0, Lcn/nubia/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    const-string v4, "preferences_recent_timezones"

    invoke-static {v3, v4, v2}, Lcn/nubia/calendar/util/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public setCurrentTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentTimezone"    # Ljava/lang/String;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iput-object p1, p0, Lcn/nubia/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 346
    iget-boolean v0, p0, Lcn/nubia/calendar/TimezoneAdapter;->mShowingAll:Z

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcn/nubia/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 350
    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 359
    iget-wide v0, p0, Lcn/nubia/calendar/TimezoneAdapter;->mTime:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 360
    iput-wide p1, p0, Lcn/nubia/calendar/TimezoneAdapter;->mTime:J

    .line 361
    iget-object v0, p0, Lcn/nubia/calendar/TimezoneAdapter;->mDateTime:Ljava/util/Date;

    iget-wide v2, p0, Lcn/nubia/calendar/TimezoneAdapter;->mTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 363
    invoke-virtual {p0}, Lcn/nubia/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 365
    :cond_0
    return-void
.end method

.method public showAllTimezones()V
    .locals 4

    .prologue
    .line 324
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 325
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 326
    .local v1, "timezones":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 327
    invoke-virtual {p0}, Lcn/nubia/calendar/TimezoneAdapter;->clear()V

    .line 328
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    .line 329
    .local v0, "timezone":Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    invoke-virtual {v0}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;->buildGmtDisplayName()V

    .line 330
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    .end local v0    # "timezone":Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 333
    return-void
.end method

.method public showInitialTimezones()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 267
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 270
    .local v2, "ids":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcn/nubia/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 271
    iget-object v9, p0, Lcn/nubia/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v9, p0, Lcn/nubia/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {v9}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 280
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "preferences_recent_timezones"

    const/4 v11, 0x0

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "recentsString":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 282
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "recents":[Ljava/lang/String;
    array-length v11, v6

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v6, v9

    .line 284
    .local v5, "recent":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 285
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 290
    .end local v5    # "recent":Ljava/lang/String;
    .end local v6    # "recents":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/TimezoneAdapter;->clear()V

    .line 292
    const-class v11, Lcn/nubia/calendar/TimezoneAdapter;

    monitor-enter v11

    .line 293
    :try_start_0
    iget-object v9, p0, Lcn/nubia/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9}, Lcn/nubia/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    .line 294
    const-string v9, "GMT"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 295
    .local v0, "gmt":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    .local v1, "id":Ljava/lang/String;
    iget-object v12, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 298
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 305
    .local v3, "newTz":Ljava/util/TimeZone;
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 306
    iget-object v12, p0, Lcn/nubia/calendar/TimezoneAdapter;->mDateTime:Ljava/util/Date;

    .line 307
    invoke-virtual {v3, v12}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    const/4 v13, 0x1

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    .line 306
    invoke-virtual {v3, v12, v13, v14}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, "tzDisplayName":Ljava/lang/String;
    iget-object v12, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    new-instance v13, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;

    invoke-direct {v13, p0, v1, v8}, Lcn/nubia/calendar/TimezoneAdapter$TimezoneRow;-><init>(Lcn/nubia/calendar/TimezoneAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v3    # "newTz":Ljava/util/TimeZone;
    .end local v8    # "tzDisplayName":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcn/nubia/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcn/nubia/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    .end local v0    # "gmt":Ljava/util/TimeZone;
    .end local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v0    # "gmt":Ljava/util/TimeZone;
    :cond_5
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    iput-boolean v10, p0, Lcn/nubia/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 318
    return-void
.end method
