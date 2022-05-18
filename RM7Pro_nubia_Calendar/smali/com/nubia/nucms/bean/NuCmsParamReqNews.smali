.class public Lcom/nubia/nucms/bean/NuCmsParamReqNews;
.super Ljava/lang/Object;
.source "NuCmsParamReqNews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    }
.end annotation


# instance fields
.field adChannel:Ljava/lang/String;

.field articletime:J

.field batchid:Ljava/lang/String;

.field cid:J

.field commParams:Ljava/lang/String;

.field groupid:Ljava/lang/String;

.field newsId:Ljava/lang/String;

.field origin:Ljava/lang/String;

.field refresh:Z

.field userflag:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # J
    .param p3, "batchid"    # Ljava/lang/String;
    .param p4, "origin"    # Ljava/lang/String;
    .param p5, "groupid"    # Ljava/lang/String;
    .param p6, "refresh"    # Z
    .param p7, "articletime"    # J
    .param p9, "userflag"    # Ljava/lang/String;
    .param p10, "newsId"    # Ljava/lang/String;
    .param p11, "adChannel"    # Ljava/lang/String;
    .param p12, "commParams"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->refresh:Z

    .line 19
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->cid:J

    .line 20
    iput-object p3, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->batchid:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->origin:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->groupid:Ljava/lang/String;

    .line 23
    iput-boolean p6, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->refresh:Z

    .line 24
    iput-wide p7, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->articletime:J

    .line 25
    iput-object p9, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->userflag:Ljava/lang/String;

    .line 26
    iput-object p10, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->newsId:Ljava/lang/String;

    .line 27
    iput-object p11, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->adChannel:Ljava/lang/String;

    .line 28
    iput-object p12, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->commParams:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/bean/NuCmsParamReqNews$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Z
    .param p7, "x5"    # J
    .param p9, "x6"    # Ljava/lang/String;
    .param p10, "x7"    # Ljava/lang/String;
    .param p11, "x8"    # Ljava/lang/String;
    .param p12, "x9"    # Ljava/lang/String;
    .param p13, "x10"    # Lcom/nubia/nucms/bean/NuCmsParamReqNews$1;

    .prologue
    .line 5
    invoke-direct/range {p0 .. p12}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->adChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->adChannel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getArticletime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->articletime:J

    return-wide v0
.end method

.method public getBatchid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->batchid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->batchid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getChannelId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->cid:J

    return-wide v0
.end method

.method public getCommParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->commParams:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->groupid:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getUserflag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->userflag:Ljava/lang/String;

    return-object v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews;->refresh:Z

    return v0
.end method
