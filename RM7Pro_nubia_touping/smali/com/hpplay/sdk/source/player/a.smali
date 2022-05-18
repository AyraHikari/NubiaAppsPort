.class public abstract Lcom/hpplay/sdk/source/player/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x3

.field public static final c:I = 0x4

.field public static final d:I = 0x5

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x7

.field public static final i:I = 0x9b

.field private static final v:Ljava/lang/String; = "BaseLelinkPlayer"


# instance fields
.field public j:Landroid/content/Context;

.field public k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

.field public l:Lcom/hpplay/sdk/source/browse/b/b;

.field public m:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field public n:Lcom/hpplay/sdk/source/protocol/b;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field protected r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

.field protected s:Z

.field protected t:Z

.field public u:I

.field private w:Ljava/lang/String;

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/a;->t:Z

    .line 56
    iput v0, p0, Lcom/hpplay/sdk/source/player/a;->u:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 205
    const-string v0, "BaseLelinkPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPushSend linkeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReportSessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    const/4 v3, 0x1

    move v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushSend(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method protected a(III)V
    .locals 8

    .prologue
    .line 324
    const-string v0, "BaseLelinkPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReportSessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-nez p1, :cond_2

    .line 327
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 328
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 327
    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushSend(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, p2, p3}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 337
    :cond_1
    return-void

    .line 329
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 331
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 332
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 331
    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onMirrorSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(IIII)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->enforceEncodeParams(IIII)V

    .line 343
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a;->j:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    .line 77
    iput-object p3, p0, Lcom/hpplay/sdk/source/player/a;->m:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 78
    instance-of v0, p0, Lcom/hpplay/sdk/source/player/d;

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/player/a;->x:I

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    instance-of v0, p0, Lcom/hpplay/sdk/source/player/e;

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/sdk/source/player/a;->x:I

    goto :goto_0

    .line 82
    :cond_2
    instance-of v0, p0, Lcom/hpplay/sdk/source/player/b;

    if-eqz v0, :cond_3

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/hpplay/sdk/source/player/a;->x:I

    goto :goto_0

    .line 84
    :cond_3
    instance-of v0, p0, Lcom/hpplay/sdk/source/player/c;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x4

    iput v0, p0, Lcom/hpplay/sdk/source/player/a;->x:I

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7

    .prologue
    const v6, 0x100010

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v0, :cond_2

    .line 290
    iput-boolean v5, p0, Lcom/hpplay/sdk/source/player/a;->s:Z

    .line 292
    new-instance v1, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 294
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getResolutionLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setResolutionLevel(I)V

    .line 296
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getBitRate()I

    move-result v0

    if-lez v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getBitRate()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setBitrate(I)V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeight()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setResolution(II)V

    .line 302
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getFrame()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setFrame(I)V

    .line 303
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v2, 0x100039

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setIframeInterval(I)V

    .line 304
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v2, 0x100031

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setAutoBitRate(Z)V

    .line 305
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isMirrorAudioEnable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setAudioEnable(Z)V

    .line 306
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setSessionId(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setConnectSessionId(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setmUri(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setFullScreen(Z)V

    .line 313
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v1, v5}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setFullScreen(Z)V

    .line 316
    :cond_1
    invoke-virtual {v1, p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setScreenCode(Ljava/lang/String;)V

    .line 317
    instance-of v0, p0, Lcom/hpplay/sdk/source/player/c;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->setCloudMirror(Z)V

    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-interface {v0, p1, v2, v1}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->startMirror(Landroid/content/Intent;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V

    .line 320
    :cond_2
    return-void

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getBitRateLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setBitrateLevel(I)V

    goto/16 :goto_0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/protocol/b;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a;->n:Lcom/hpplay/sdk/source/protocol/b;

    .line 67
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    .line 94
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 223
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/a;->s:Z

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v8, ""

    .line 227
    const-string v9, ""

    .line 228
    const-string v7, ""

    .line 229
    const-string v6, ""

    .line 231
    instance-of v0, p0, Lcom/hpplay/sdk/source/player/b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    .line 232
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v2

    .line 234
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 235
    const-string v0, "dlna_mode_desc"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    const-string v1, "dlna_mode_name"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    const-string v3, "manufacturer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    move-object v9, v1

    move-object v8, v0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_4

    .line 241
    instance-of v0, p0, Lcom/hpplay/sdk/source/player/b;

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v6

    .line 250
    :cond_4
    :goto_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/a;->c()I

    move-result v4

    move-object v3, p1

    move v5, p2

    .line 250
    invoke-virtual/range {v0 .. v9}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushStop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "BaseLelinkPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "u"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v0

    goto :goto_1
.end method

.method public abstract addVolume()V
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    .line 217
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/player/a;->a(Ljava/lang/String;I)V

    .line 218
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a;->w:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x1

    .line 260
    instance-of v1, p0, Lcom/hpplay/sdk/source/player/e;

    if-eqz v1, :cond_1

    .line 261
    const/4 v0, 0x5

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    instance-of v1, p0, Lcom/hpplay/sdk/source/player/c;

    if-eqz v1, :cond_2

    .line 263
    const/4 v0, 0x7

    goto :goto_0

    .line 264
    :cond_2
    instance-of v1, p0, Lcom/hpplay/sdk/source/player/b;

    if-eqz v1, :cond_0

    .line 265
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x33838

    const/4 v2, 0x1

    .line 271
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    const v0, 0x3383b

    invoke-virtual {p0, v2, v3, v0}, Lcom/hpplay/sdk/source/player/a;->a(III)V

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 277
    const v0, 0x33839

    invoke-virtual {p0, v2, v3, v0}, Lcom/hpplay/sdk/source/player/a;->a(III)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canPlayLocalAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public canPlayLocalPhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public canPlayLocalVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public canPlayOnlieAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public canPlayOnliePhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public canPlayOnlieVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public abstract pause()V
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/a;->t:Z

    .line 347
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 348
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    .line 349
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/a;->j:Landroid/content/Context;

    .line 350
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/a;->m:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 351
    return-void
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
.end method

.method public setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 60
    return-void
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 161
    const v0, 0x100046

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 163
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 164
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 165
    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 166
    const/4 v0, 0x3

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/hpplay/sdk/source/player/a;->a(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "BaseLelinkPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    const v0, 0x100031

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 172
    aget-object v0, p2, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setAutoBitrate(Z)V

    goto :goto_0

    .line 176
    :cond_2
    const v0, 0x100039

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 177
    aget-object v0, p2, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->setKeyFrameInterval(I)V

    goto :goto_0

    .line 181
    :cond_3
    const v0, 0x120006

    if-ne p1, v0, :cond_0

    .line 183
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v2, "pt"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    const-string v2, "BaseLelinkPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPTION_MIRROR_RESIZE_SCREEN plf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    :cond_4
    const-string v0, "BaseLelinkPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPTION_MIRROR_RESIZE_SCREEN isVertical:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->resizeScreen(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    const-string v1, "BaseLelinkPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 188
    :cond_5
    if-eqz v1, :cond_4

    .line 190
    :try_start_2
    const-string v0, "BaseLelinkPlayer"

    const-string v1, "OPTION_MIRROR_RESIZE_SCREEN ignore,nubia tv"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public abstract setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
.end method

.method public abstract setVolume(I)V
.end method

.method public start()V
    .locals 6

    .prologue
    .line 105
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "102"

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/a;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onMirrorStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    :cond_0
    return-void
.end method

.method public abstract stop()V
.end method

.method public abstract subVolume()V
.end method
