.class Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "ReportTrackerTask.java"


# instance fields
.field private entity:[B

.field private isLastRequest:Z

.field private mDnsBeans:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAddTrack:Z

.field private mIsAdhub:Z

.field private mTracks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "trackUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 29
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAdhub:Z

    .line 31
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->entity:[B

    .line 33
    iput-boolean v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAddTrack:Z

    .line 38
    iput-object p1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mTracks:Ljava/util/Set;

    .line 40
    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->setReTry(Z)V

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Z)V
    .locals 3
    .param p2, "isAdhub"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "trackUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 29
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAdhub:Z

    .line 31
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->entity:[B

    .line 33
    iput-boolean v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAddTrack:Z

    .line 53
    iput-boolean p2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAdhub:Z

    .line 54
    iput-object p1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mTracks:Ljava/util/Set;

    .line 56
    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->setReTry(Z)V

    .line 57
    return-void
.end method

.method constructor <init>(ZLjava/util/Set;)V
    .locals 3
    .param p1, "isAddTrack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "trackUrls":Ljava/util/Set;, "Ljava/util/Set<Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 29
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAdhub:Z

    .line 31
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->entity:[B

    .line 33
    iput-boolean v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAddTrack:Z

    .line 45
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAddTrack:Z

    .line 46
    iput-object p2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBeans:Ljava/util/Set;

    .line 48
    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->setReTry(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->entity:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->entity:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method protected getId()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->id:J

    return-wide v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method isLastRequest()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest:Z

    return v0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 96
    :try_start_0
    const-string v1, ""

    .line 97
    .local v1, "userAgentString":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 99
    :try_start_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    const-string v2, "user-agent"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    .end local v1    # "userAgentString":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    :goto_2
    return-void

    .line 100
    .restart local v1    # "userAgentString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_0

    .line 109
    .end local v1    # "userAgentString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "Host"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->host:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "i":I
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mIsAddTrack:Z

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mTracks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "track":Ljava/lang/String;
    new-instance v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    invoke-direct {v4}, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;-><init>()V

    iput-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    .line 133
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    .line 134
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->addTracker(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->id:J

    .line 135
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    const-string v5, "nubia.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&is_failed=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    .line 138
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mTracks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 141
    iput-boolean v8, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest:Z

    .line 144
    :cond_1
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->run()V

    goto/16 :goto_0

    .line 147
    .end local v2    # "track":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBeans:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    .line 148
    .local v0, "dnsBean":Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;
    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    .line 150
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v5, v0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    .line 151
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    const-string v5, "nubia.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&is_failed=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    .line 154
    :cond_3
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-wide v6, v0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->id:J

    iput-wide v6, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->id:J

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->mDnsBeans:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 158
    iput-boolean v8, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest:Z

    .line 161
    :cond_4
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->run()V

    goto :goto_1

    .line 164
    .end local v0    # "dnsBean":Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;
    :cond_5
    return-void
.end method

.method public setEntity([B)V
    .locals 0
    .param p1, "entity"    # [B

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->entity:[B

    .line 65
    return-void
.end method

.method public setIsGzip(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isGzipRequest:Z

    .line 73
    return-void
.end method

.method public setReqType(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V
    .locals 0
    .param p1, "reqType"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->reqType:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    .line 69
    return-void
.end method
