.class Lcn/nubia/SportsGameEvents/SportsDB$3;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->insertData(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
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
    .line 174
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    iput-object p2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "id"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v1, "tag"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "matchtime"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "matchtype"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "home"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHome()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "homeimg"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "guest"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "guestimg"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "homescore"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v1, "guestscore"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v1, "type"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v1, "url"

    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$3;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "calendarpresetTABLE_name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 191
    return-void
.end method
