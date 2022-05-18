.class Lcn/nubia/SportsGameEvents/SportsDB$5;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->updateData(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDB;

.field final synthetic val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;


# direct methods
.method constructor <init>(Lcn/nubia/SportsGameEvents/SportsDB;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/SportsGameEvents/SportsDB;

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    iput-object p2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 215
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "id"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v1, "tag"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "matchtime"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "matchtype"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "home"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHome()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "homeimg"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "guest"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "guestimg"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "homescore"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v1, "guestscore"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v1, "type"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v1, "url"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "calendarpresetTABLE_name"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/SportsGameEvents/SportsDB$5;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v7}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    return-void
.end method
