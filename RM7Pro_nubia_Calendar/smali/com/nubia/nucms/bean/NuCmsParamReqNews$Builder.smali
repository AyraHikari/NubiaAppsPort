.class public Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
.super Ljava/lang/Object;
.source "NuCmsParamReqNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/bean/NuCmsParamReqNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->refresh:Z

    .line 74
    return-void
.end method

.method public static build()Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;

    invoke-direct {v0}, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public create()Lcom/nubia/nucms/bean/NuCmsParamReqNews;
    .locals 15

    .prologue
    .line 120
    new-instance v1, Lcom/nubia/nucms/bean/NuCmsParamReqNews;

    iget-wide v2, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->cid:J

    iget-object v4, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->batchid:Ljava/lang/String;

    iget-object v5, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->origin:Ljava/lang/String;

    iget-object v6, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->groupid:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->refresh:Z

    iget-wide v8, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->articletime:J

    iget-object v10, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->userflag:Ljava/lang/String;

    iget-object v11, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->newsId:Ljava/lang/String;

    iget-object v12, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->adChannel:Ljava/lang/String;

    iget-object v13, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->commParams:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Lcom/nubia/nucms/bean/NuCmsParamReqNews;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/bean/NuCmsParamReqNews$1;)V

    return-object v1
.end method

.method public setAdChannel(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 0
    .param p1, "adChannel"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->adChannel:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setArticletime(J)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 1
    .param p1, "articletime"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->articletime:J

    .line 100
    return-object p0
.end method

.method public setBatchid(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 0
    .param p1, "batchid"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->batchid:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setChannelId(J)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 1
    .param p1, "cid"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->cid:J

    .line 80
    return-object p0
.end method

.method public setCommParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "commParams"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->commParams:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setGroupid(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 0
    .param p1, "groupid"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->groupid:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setNewsId(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 0
    .param p1, "newsId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->newsId:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->origin:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setRefresh(Z)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 0
    .param p1, "refresh"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->refresh:Z

    .line 96
    return-object p0
.end method

.method public setUserflag(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;
    .locals 0
    .param p1, "userflag"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamReqNews$Builder;->userflag:Ljava/lang/String;

    .line 104
    return-object p0
.end method
