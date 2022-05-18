.class public Lcom/nubia/nucms/bean/NuCmsNewsItem;
.super Ljava/lang/Object;
.source "NuCmsNewsItem.java"


# instance fields
.field private ad_id:J

.field private ad_identify:I

.field private bundle:Ljava/lang/String;

.field private card_type:I

.field private content:Ljava/lang/String;

.field private dislikeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dl_type:I

.field private dl_url:Ljava/lang/String;

.field private dplk:Ljava/lang/String;

.field private enter_desc:Ljava/lang/String;

.field private h:I

.field private id:Ljava/lang/String;

.field private interaction_type:I

.field private item_type:I

.field private log_extra:Ljava/lang/String;

.field private op_mark:Ljava/lang/String;

.field private op_mark_iurl:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private p_time:J

.field private s_title:Ljava/lang/String;

.field private showDislike:I

.field private show_impression_url:Ljava/lang/String;

.field private soft_src:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private sspData:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:J

.field private title:Ljava/lang/String;

.field private top:I

.field private url:Ljava/lang/String;

.field private video_duration:J

.field private video_id:Ljava/lang/String;

.field private video_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private video_watch_count:J

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdDeeplinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->dplk:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->ad_id:J

    return-wide v0
.end method

.method public getAdJumpType()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->interaction_type:I

    return v0
.end method

.method public getAppAdDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->dl_url:Ljava/lang/String;

    return-object v0
.end method

.method public getAppAdPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->bundle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getDislikeTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsDislikeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->dislikeInfos:Ljava/util/List;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->item_type:I

    return v0
.end method

.method public getNewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsTime()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->time:J

    return-wide v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPicHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->h:I

    return v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->w:I

    return v0
.end method

.method public getPublishTime()J
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->p_time:J

    return-wide v0
.end method

.method public getRealSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getReportHeadLineLogExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->log_extra:Ljava/lang/String;

    return-object v0
.end method

.method public getReportUcPvUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->show_impression_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSepcialSubjectOpMarkIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->op_mark_iurl:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialSubjectEnterDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->enter_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialSubjectOpMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->op_mark:Ljava/lang/String;

    return-object v0
.end method

.method public getSspAdLabel()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->ad_identify:I

    return v0
.end method

.method public getSspAppAdSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->soft_src:Ljava/lang/String;

    return-object v0
.end method

.method public getSspOriginData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->sspData:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleType()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->card_type:I

    return v0
.end method

.method public getSubTile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->s_title:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUCVideoClickReportContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->video_duration:J

    return-wide v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->video_url:Ljava/util/List;

    return-object v0
.end method

.method public getVideoWatchCount()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->video_watch_count:J

    return-wide v0
.end method

.method public isAppAdForceDownload()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->dl_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowDislikeTags()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->showDislike:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTop()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 188
    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->top:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nubia/nucms/bean/NuCmsNewsItem;->isTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nitem type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/nubia/nucms/bean/NuCmsNewsItem;->getItemType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nstyle type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nubia/nucms/bean/NuCmsNewsItem;->getStyleType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    return-object v0
.end method
