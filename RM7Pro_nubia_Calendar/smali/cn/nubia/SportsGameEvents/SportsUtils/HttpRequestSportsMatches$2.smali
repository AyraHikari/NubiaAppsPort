.class final Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;
.super Ljava/lang/Object;
.source "HttpRequestSportsMatches.java"

# interfaces
.implements Lcom/nubia/nucms/api/NuCmsModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requerstSportsMatchesDataApplication(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nubia/nucms/api/NuCmsModelCallback",
        "<",
        "Lcom/nubia/nucms/bean/NuCmsSportsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requerstSportsMatchesDataApplication "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataList()Ljava/util/List;

    .line 216
    return-void
.end method

.method public onSuccess(Lcom/nubia/nucms/bean/NuCmsSportsBean;)V
    .locals 4
    .param p1, "nuCmsSportsBean"    # Lcom/nubia/nucms/bean/NuCmsSportsBean;

    .prologue
    .line 192
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsBean;->getData()Lcom/nubia/nucms/bean/NuCmsSportsData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsBean;->getData()Lcom/nubia/nucms/bean/NuCmsSportsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsData;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "requestVersion":Ljava/lang/String;
    new-instance v2, Lcn/nubia/calendar/util/SharedPrefUtil;

    iget-object v3, p0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    const-string v3, "sportsMatchesVersion"

    invoke-virtual {v2, v3, v1}, Lcn/nubia/calendar/util/SharedPrefUtil;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsBean;->getData()Lcom/nubia/nucms/bean/NuCmsSportsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/bean/NuCmsSportsData;->getMatchList()Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataList()Ljava/util/List;

    .line 209
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    .end local v1    # "requestVersion":Ljava/lang/String;
    :goto_0
    return-void

    .line 201
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    .restart local v1    # "requestVersion":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/SportsGameEvents/SportsDB;->replaceData(Ljava/util/List;)V

    goto :goto_0

    .line 207
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    .end local v1    # "requestVersion":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataList()Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/nubia/nucms/bean/NuCmsStatusBean;)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Lcom/nubia/nucms/bean/NuCmsSportsBean;

    invoke-virtual {p0, p1}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;->onSuccess(Lcom/nubia/nucms/bean/NuCmsSportsBean;)V

    return-void
.end method
