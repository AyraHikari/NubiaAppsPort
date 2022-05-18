.class public Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;
.super Ljava/lang/Object;
.source "AppRepository.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonRepository;


# instance fields
.field mIsClick:Z

.field mIsDwnl:Z

.field mIsDwnlst:Z

.field mIsIntl:Z

.field mIsShow:Z

.field private mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

.field mRepositoryJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;)V
    .locals 1
    .param p1, "repositoryInfo"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsShow:Z

    .line 43
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsClick:Z

    .line 44
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnlst:Z

    .line 45
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnl:Z

    .line 46
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsIntl:Z

    .line 49
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    .line 50
    return-void
.end method

.method private reportTrackers([Ljava/lang/String;IIIII)V
    .locals 9
    .param p1, "trackers"    # [Ljava/lang/String;
    .param p2, "down_x"    # I
    .param p3, "up_x"    # I
    .param p4, "down_y"    # I
    .param p5, "up_y"    # I
    .param p6, "clickType"    # I

    .prologue
    const/4 v8, -0x1

    .line 248
    const-string v2, "reportTrackers"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 249
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v2, "reportTrackers start"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 254
    .local v1, "trackSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p1, v2

    .line 255
    .local v0, "track":Ljava/lang/String;
    if-eq p2, v8, :cond_2

    if-eq p3, v8, :cond_2

    if-eq p4, v8, :cond_2

    if-eq p5, v8, :cond_2

    .line 257
    const-string v4, "__TS__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__DOWN_X__"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__DOWN_Y__"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__UP_X__"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__UP_Y__"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__CLICK_TYPE__"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 264
    :cond_2
    const-string v4, "__TS__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    .end local v0    # "track":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public appClick(IIII)V
    .locals 7
    .param p1, "down_x"    # I
    .param p2, "down_y"    # I
    .param p3, "up_x"    # I
    .param p4, "up_y"    # I

    .prologue
    const/4 v6, 0x1

    .line 71
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_1

    .line 72
    const-string v0, "appClick mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appClick mIsClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsClick:Z

    if-nez v0, :cond_0

    .line 77
    iput-boolean v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsClick:Z

    .line 78
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getClktrackers()[Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->reportTrackers([Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public appDownloadComplete()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 110
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_1

    .line 111
    const-string v0, "appDownloadComplete mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appDownloadComplete mIsDwnl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 115
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnl:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnl:Z

    .line 117
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getDwnltrackers()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->reportTrackers([Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public appInstallComplete()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 123
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_1

    .line 124
    const-string v0, "appInstallComplete mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appInstallComplete mIsIntl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsIntl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsIntl:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsIntl:Z

    .line 130
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getIntltrackers()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->reportTrackers([Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public appShow()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_1

    .line 59
    const-string v0, "appShow mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appShow mIsShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsShow:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsShow:Z

    .line 65
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getImptrackers()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->reportTrackers([Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public appStartDownload()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 97
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_1

    .line 98
    const-string v0, "appStartDownload mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appStartDownload mIsDwnlst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnlst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnlst:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsDwnlst:Z

    .line 104
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getDwnlst()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->reportTrackers([Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public appStopDowload()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public appSubItemClick(IIII)V
    .locals 7
    .param p1, "down_x"    # I
    .param p2, "down_y"    # I
    .param p3, "up_x"    # I
    .param p4, "up_y"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_1

    .line 85
    const-string v0, "appClick mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appClick mIsClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsClick:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mIsClick:Z

    .line 91
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getClktrackers()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->reportTrackers([Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public getAppApkMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 205
    const-string v0, "getAppApkMd5 mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 206
    const-string v0, ""

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getApk_md5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppApkSize()J
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "getAppApkSize mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 215
    const-wide/16 v0, 0x0

    .line 217
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getApk_size()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAppDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "getAppDeveloper mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 224
    const-string v0, ""

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "getAppDownloadUrl mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 179
    const-string v0, ""

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getApk_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppExtend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "getAppExtend mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 242
    const-string v0, ""

    .line 244
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getExtend()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "getAppId mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "getAppName mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 170
    const-string v0, ""

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getApp_name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "getAppPackageName mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 161
    const-string v0, ""

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppRepositoryJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 232
    const-string v0, "getAppDeveloper mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 233
    const-string v0, ""

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getJson()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "getAppSource mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 152
    const-string v0, ""

    .line 154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getApp_source()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppVerCode()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "getAppVerCode mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 197
    const/4 v0, -0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getVersion_code()I

    move-result v0

    goto :goto_0
.end method

.method public getAppVerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    if-nez v0, :cond_0

    .line 187
    const-string v0, "getAppVerName mRepositoryInfo is null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 188
    const-string v0, ""

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryInfo:Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->getVersion_name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setRepositoryJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "repositoryJson"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;->mRepositoryJson:Ljava/lang/String;

    .line 54
    return-void
.end method
