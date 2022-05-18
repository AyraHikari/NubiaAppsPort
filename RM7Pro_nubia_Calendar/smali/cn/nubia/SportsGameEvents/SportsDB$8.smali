.class Lcn/nubia/SportsGameEvents/SportsDB$8;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->replaceServerSwitchData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDB;

.field final synthetic val$listSportsServerSwitchBean:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/SportsGameEvents/SportsDB;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/SportsGameEvents/SportsDB;

    .prologue
    .line 384
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$8;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    iput-object p2, p0, Lcn/nubia/SportsGameEvents/SportsDB$8;->val$listSportsServerSwitchBean:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 389
    iget-object v4, p0, Lcn/nubia/SportsGameEvents/SportsDB$8;->val$listSportsServerSwitchBean:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 391
    :try_start_0
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 392
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "delete from calendarpresetserverswitchTABLE_name"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/SportsGameEvents/SportsDB$8;->val$listSportsServerSwitchBean:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 394
    iget-object v4, p0, Lcn/nubia/SportsGameEvents/SportsDB$8;->val$listSportsServerSwitchBean:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;

    .line 395
    .local v2, "item":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "id"

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string v4, "name"

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v4, "image"

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v4, "begintime"

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getBeginTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v4, "endtime"

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getEndTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v4, "status"

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v4, "updateuser"

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getUpdateUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "calendarpresetserverswitchTABLE_name"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v2    # "item":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    .end local v3    # "value":Landroid/content/ContentValues;
    :cond_0
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 413
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v4, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 410
    throw v4
.end method
