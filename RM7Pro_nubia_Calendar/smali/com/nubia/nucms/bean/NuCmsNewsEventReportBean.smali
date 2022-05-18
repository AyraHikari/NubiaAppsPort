.class public Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;
.super Ljava/lang/Object;
.source "NuCmsNewsEventReportBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NuCmsNewsEventReportBean"


# instance fields
.field private cid:J

.field private content:Ljava/lang/String;

.field private duration:J

.field private id:Ljava/lang/String;

.field private item_type:I

.field private log_extra:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private recoid:Ljava/lang/String;

.field private sub_aid:Ljava/lang/String;

.field private tm:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatchId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->recoid:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->cid:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->duration:J

    return-wide v0
.end method

.method public getHapppenTime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->tm:J

    return-wide v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->item_type:I

    return v0
.end method

.method public getLogExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->log_extra:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSubNewsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->sub_aid:Ljava/lang/String;

    return-object v0
.end method

.method public setBatchId(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchId"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->recoid:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setChannelId(J)V
    .locals 1
    .param p1, "channelId"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->cid:J

    .line 83
    return-void
.end method

.method public setDislikeInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->content:Ljava/lang/String;

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->get()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NuCmsNewsEventReportBean"

    const-string v2, "dislike info to json str error!"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->duration:J

    .line 77
    return-void
.end method

.method public setHappenTime(J)V
    .locals 3
    .param p1, "clickTime"    # J

    .prologue
    .line 73
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->tm:J

    .line 74
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "itemType"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->item_type:I

    .line 92
    return-void
.end method

.method public setLogExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "log_extra"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->log_extra:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setNewsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->id:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->origin:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSpecialContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->content:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSubNewsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subid"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;->sub_aid:Ljava/lang/String;

    .line 89
    return-void
.end method
