.class public Lcn/nubia/SportsGameEvents/SportsDB;
.super Ljava/lang/Object;
.source "SportsDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/SportsGameEvents/SportsDB$DataBaseHelp;
    }
.end annotation


# static fields
.field public static final OBJECTSlOCK:Ljava/lang/Object;

.field public static final OBJECTSlOCK_TABLE2:Ljava/lang/Object;

.field private static final SPRORTSDB_NAME:Ljava/lang/String; = "calendarpresetDB_name.db"

.field private static final SPRORTSDB_VERSION:I = 0x1

.field private static final SPRORTSSERVERSWITCHTABLE_NAME:Ljava/lang/String; = "calendarpresetserverswitchTABLE_name"

.field private static final SPRORTSTABLE_NAME:Ljava/lang/String; = "calendarpresetTABLE_name"

.field private static SportsDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field private static mSportsDB:Lcn/nubia/SportsGameEvents/SportsDB;

.field private static switchlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->OBJECTSlOCK:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    .line 331
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->OBJECTSlOCK_TABLE2:Ljava/lang/Object;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->switchlist:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/SportsGameEvents/SportsDB;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/SportsGameEvents/SportsDB;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataListFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/SportsGameEvents/SportsDB;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/SportsGameEvents/SportsDB;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/SportsGameEvents/SportsDB;->synchronizeSportsDataList(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/SportsGameEvents/SportsDB;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/SportsGameEvents/SportsDB;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlistFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/SportsGameEvents/SportsDB;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/SportsGameEvents/SportsDB;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/SportsGameEvents/SportsDB;->synchronizeswitchlist(ILjava/util/List;)V

    return-void
.end method

.method public static declared-synchronized getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-class v2, Lcn/nubia/SportsGameEvents/SportsDB;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcn/nubia/SportsGameEvents/SportsDB;->mSportsDB:Lcn/nubia/SportsGameEvents/SportsDB;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB;

    invoke-direct {v1}, Lcn/nubia/SportsGameEvents/SportsDB;-><init>()V

    sput-object v1, Lcn/nubia/SportsGameEvents/SportsDB;->mSportsDB:Lcn/nubia/SportsGameEvents/SportsDB;

    .line 50
    :cond_0
    sget-object v1, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 51
    new-instance v0, Lcn/nubia/SportsGameEvents/SportsDB$DataBaseHelp;

    invoke-direct {v0, p0}, Lcn/nubia/SportsGameEvents/SportsDB$DataBaseHelp;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "mDataBaseHelp":Lcn/nubia/SportsGameEvents/SportsDB$DataBaseHelp;
    invoke-virtual {v0}, Lcn/nubia/SportsGameEvents/SportsDB$DataBaseHelp;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    .end local v0    # "mDataBaseHelp":Lcn/nubia/SportsGameEvents/SportsDB$DataBaseHelp;
    :cond_1
    sget-object v1, Lcn/nubia/SportsGameEvents/SportsDB;->mSportsDB:Lcn/nubia/SportsGameEvents/SportsDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getSportsDataListFromDB()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const-string v4, "select * from calendarpresetTABLE_name"

    .line 95
    .local v4, "querySQL":Ljava/lang/String;
    sget-object v5, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 97
    .local v2, "mCursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    if-nez v2, :cond_0

    .line 121
    :goto_0
    return-object v1

    .line 102
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    new-instance v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-direct {v3}, Lcom/nubia/nucms/bean/NuCmsSportsItem;-><init>()V

    .line 104
    .local v3, "mSportsBean":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    const-string v5, "id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setId(I)V

    .line 105
    const-string v5, "tag"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setTag(Ljava/lang/String;)V

    .line 106
    const-string v5, "matchtime"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setMatchTime(Ljava/lang/String;)V

    .line 107
    const-string v5, "matchtype"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setMatchType(Ljava/lang/String;)V

    .line 108
    const-string v5, "home"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setHome(Ljava/lang/String;)V

    .line 109
    const-string v5, "homeimg"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setHomeImg(Ljava/lang/String;)V

    .line 110
    const-string v5, "guest"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setGuest(Ljava/lang/String;)V

    .line 111
    const-string v5, "guestimg"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setGuestImg(Ljava/lang/String;)V

    .line 112
    const-string v5, "homescore"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setHomeScore(I)V

    .line 113
    const-string v5, "guestscore"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setGuestScore(I)V

    .line 114
    new-instance v0, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    new-instance v5, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-direct {v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;-><init>(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    .line 115
    .local v0, "detail":Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;
    const-string v5, "type"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->setType(I)V

    .line 116
    const-string v5, "url"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->setUrl(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setDetail(Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;)V

    .line 118
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 120
    .end local v0    # "detail":Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;
    .end local v3    # "mSportsBean":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private getSwitchlistFromDB()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    const-string v3, "select * from calendarpresetserverswitchTABLE_name"

    .line 356
    .local v3, "querySQL":Ljava/lang/String;
    sget-object v4, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 358
    .local v1, "mCursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    if-nez v1, :cond_0

    .line 377
    :goto_0
    return-object v0

    .line 363
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    new-instance v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;

    invoke-direct {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;-><init>()V

    .line 367
    .local v2, "mSportsServerSwitchBean":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    const-string v4, "id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setId(I)V

    .line 368
    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setName(Ljava/lang/String;)V

    .line 369
    const-string v4, "image"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setImage(Ljava/lang/String;)V

    .line 370
    const-string v4, "begintime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setBeginTime(Ljava/lang/String;)V

    .line 371
    const-string v4, "endtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setEndTime(Ljava/lang/String;)V

    .line 372
    const-string v4, "status"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setStatus(Ljava/lang/String;)V

    .line 373
    const-string v4, "updateuser"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setUpdateUser(Ljava/lang/String;)V

    .line 374
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    .end local v2    # "mSportsServerSwitchBean":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private synchronizeSportsDataList(ILjava/lang/Object;)V
    .locals 6
    .param p1, "oprateType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 166
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 135
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lcn/nubia/SportsGameEvents/SportsDB;->OBJECTSlOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 165
    .end local p2    # "object":Ljava/lang/Object;
    :cond_1
    :goto_1
    :pswitch_0
    :try_start_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 142
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    move-object v2, v0

    .line 143
    .local v2, "mSportsBean":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 144
    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v5

    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v3}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v3

    if-ne v5, v3, :cond_2

    .line 145
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setId(I)V

    .line 146
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setTag(Ljava/lang/String;)V

    .line 147
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setMatchTime(Ljava/lang/String;)V

    .line 148
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setMatchType(Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHome()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setHome(Ljava/lang/String;)V

    .line 150
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setHomeImg(Ljava/lang/String;)V

    .line 151
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setGuest(Ljava/lang/String;)V

    .line 152
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setGuestImg(Ljava/lang/String;)V

    .line 153
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeScore()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setHomeScore(I)V

    .line 154
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestScore()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setGuestScore(I)V

    .line 155
    sget-object v3, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->setDetail(Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;)V

    goto/16 :goto_1

    .line 143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 161
    .end local v1    # "i":I
    .end local v2    # "mSportsBean":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    :pswitch_2
    check-cast p2, Ljava/util/List;

    .end local p2    # "object":Ljava/lang/Object;
    sput-object p2, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synchronizeswitchlist(ILjava/util/List;)V
    .locals 2
    .param p1, "oprateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p2, "switchlist2":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    sget-object v1, Lcn/nubia/SportsGameEvents/SportsDB;->OBJECTSlOCK_TABLE2:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 425
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 426
    return-void

    .line 422
    :pswitch_0
    sput-object p2, Lcn/nubia/SportsGameEvents/SportsDB;->switchlist:Ljava/util/List;

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deleteAllDatabase()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$1;

    invoke-direct {v1, p0}, Lcn/nubia/SportsGameEvents/SportsDB$1;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public deleteData(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 2
    .param p1, "mSportsBean"    # Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .prologue
    .line 199
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcn/nubia/SportsGameEvents/SportsDB;->synchronizeSportsDataList(ILjava/lang/Object;)V

    .line 201
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/SportsGameEvents/SportsDB$4;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public getSportsDataList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$2;

    invoke-direct {v1, p0}, Lcn/nubia/SportsGameEvents/SportsDB$2;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :cond_1
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->SportsDataList:Ljava/util/List;

    return-object v0
.end method

.method public getSportsDataListForce()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataListFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchlist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->switchlist:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->switchlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$7;

    invoke-direct {v1, p0}, Lcn/nubia/SportsGameEvents/SportsDB$7;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 350
    :cond_1
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->switchlist:Ljava/util/List;

    return-object v0
.end method

.method public insertData(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 2
    .param p1, "mSportsBean"    # Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcn/nubia/SportsGameEvents/SportsDB;->synchronizeSportsDataList(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/SportsGameEvents/SportsDB$3;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/SportsGameEvents/SportsDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    :cond_0
    return-void
.end method

.method public replaceData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "SportsDataListParameter":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcn/nubia/SportsGameEvents/SportsDB;->synchronizeSportsDataList(ILjava/lang/Object;)V

    .line 237
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/SportsGameEvents/SportsDB$6;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public replaceServerSwitchData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "listSportsServerSwitchBean":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcn/nubia/SportsGameEvents/SportsDB;->synchronizeswitchlist(ILjava/util/List;)V

    .line 384
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$8;

    invoke-direct {v1, p0, p1}, Lcn/nubia/SportsGameEvents/SportsDB$8;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method public updateData(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 2
    .param p1, "mSportsBean"    # Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .prologue
    .line 211
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcn/nubia/SportsGameEvents/SportsDB;->synchronizeSportsDataList(ILjava/lang/Object;)V

    .line 212
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsDB$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/SportsGameEvents/SportsDB$5;-><init>(Lcn/nubia/SportsGameEvents/SportsDB;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method
