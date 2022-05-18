.class Lcn/nubia/SportsGameEvents/SportsDB$6;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->replaceData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDB;

.field final synthetic val$SportsDataListParameter:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/SportsGameEvents/SportsDB;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/SportsGameEvents/SportsDB;

    .prologue
    .line 237
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$6;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    iput-object p2, p0, Lcn/nubia/SportsGameEvents/SportsDB$6;->val$SportsDataListParameter:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 242
    iget-object v4, p0, Lcn/nubia/SportsGameEvents/SportsDB$6;->val$SportsDataListParameter:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 244
    :try_start_0
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 245
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "delete from calendarpresetTABLE_name"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/SportsGameEvents/SportsDB$6;->val$SportsDataListParameter:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 247
    iget-object v4, p0, Lcn/nubia/SportsGameEvents/SportsDB$6;->val$SportsDataListParameter:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .line 248
    .local v2, "item":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v4, "tag"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v4, "matchtime"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v4, "matchtype"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v4, "home"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHome()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v4, "homeimg"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v4, "guest"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "guestimg"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v4, "homescore"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeScore()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v4, "guestscore"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestScore()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v4, "type"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v4, "url"

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "calendarpresetTABLE_name"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 263
    .end local v2    # "item":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    .end local v3    # "value":Landroid/content/ContentValues;
    :cond_0
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 271
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v4, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
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

    .line 268
    throw v4
.end method
