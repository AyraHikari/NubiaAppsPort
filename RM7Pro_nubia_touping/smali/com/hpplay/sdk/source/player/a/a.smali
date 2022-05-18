.class public Lcom/hpplay/sdk/source/player/a/a;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x5

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field public static final g:I = 0x8

.field public static final h:I = 0x9

.field public static final i:I = 0xa

.field public static final j:I = 0xb

.field public static final k:I = 0xc

.field private static final l:Ljava/lang/String; = "DLNAControlHandler"

.field private static final m:Ljava/lang/String; = "NOT_IMPLEMENTED"


# instance fields
.field private n:I

.field private o:Lcom/hpplay/sdk/source/player/a/c;

.field private p:I

.field private q:Lcom/hpplay/sdk/source/player/a/b;

.field private r:Lcom/hpplay/cybergarage/upnp/Device;

.field private s:Ljava/lang/String;

.field private t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/hpplay/sdk/source/player/a/d;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/player/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    .line 64
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hpplay/sdk/source/api/LelinkPlayerInfo;I)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 327
    const-string v0, "object.item.videoItem"

    .line 329
    if-le p6, v6, :cond_0

    .line 331
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    if-ne p6, v6, :cond_2

    .line 337
    const-string v1, "\"http-get:*:video/mp4:*;DLNA.ORG_OP=01;\""

    .line 349
    :goto_1
    new-instance v4, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 350
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->D(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    .line 351
    invoke-virtual {v4, p1}, Lcom/hpplay/sdk/source/protocol/g;->E(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    .line 352
    invoke-virtual {v4, p2}, Lcom/hpplay/sdk/source/protocol/g;->H(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/a/a;->s:Ljava/lang/String;

    .line 353
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->C(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->F(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->G(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    .line 354
    invoke-virtual {v4, v0}, Lcom/hpplay/sdk/source/protocol/g;->K(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->L(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    if-eqz p4, :cond_6

    .line 356
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getSize()J

    move-result-wide v0

    :goto_2
    invoke-virtual {v4, v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(J)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 357
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getDuration()J

    move-result-wide v2

    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->b(J)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    if-eqz p4, :cond_7

    .line 358
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getResolution()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/g;->M(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 359
    invoke-static {p3}, Lcom/hpplay/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->N(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->U()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 361
    const-string v1, "DLNAControlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-object v0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    const-string v4, "DLNAControlHandler"

    invoke-static {v4, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 338
    :cond_2
    const/4 v1, 0x2

    if-ne p6, v1, :cond_3

    .line 339
    const-string v1, "\"http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_SP_AAC;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01500000000000000000000000000000\""

    goto/16 :goto_1

    .line 340
    :cond_3
    const/4 v1, 0x3

    if-ne p6, v1, :cond_4

    .line 341
    const-string v1, ""

    goto/16 :goto_1

    .line 342
    :cond_4
    const/4 v0, 0x4

    if-ne p6, v0, :cond_5

    .line 343
    const-string v1, ""

    .line 344
    const-string v0, "object.item.videoItem.movie"

    goto/16 :goto_1

    .line 346
    :cond_5
    const-string v1, "\"http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_SP_AAC;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01500000000000000000000000000000\""

    .line 347
    const-string v0, "object.item.videoItem.movie"

    goto/16 :goto_1

    :cond_6
    move-wide v0, v2

    .line 356
    goto :goto_2

    .line 358
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private declared-synchronized a(Lcom/hpplay/cybergarage/upnp/Device;I)V
    .locals 3

    .prologue
    .line 486
    monitor-enter p0

    if-nez p1, :cond_1

    .line 487
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "setVoice device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 490
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;I)Z

    move-result v0

    .line 491
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v2, 0xc

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 492
    :cond_2
    const/4 p2, -0x1

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/hpplay/cybergarage/upnp/Device;J)V
    .locals 4

    .prologue
    .line 584
    monitor-enter p0

    if-nez p1, :cond_1

    .line 585
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "seek device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 588
    :cond_1
    :try_start_1
    invoke-static {p2, p3}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->millisToFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 589
    const-string v1, "seek"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek target p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v1, p1, v0}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;)Z

    move-result v0

    .line 591
    if-eqz v0, :cond_2

    .line 592
    const-string v1, "DLNAControlHandler"

    const-string v2, "seek success"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :goto_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 594
    :cond_2
    :try_start_2
    const-string v1, "DLNAControlHandler"

    const-string v2, "seek failed.."

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "fastGoOrBack"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-eqz p3, :cond_1

    .line 565
    invoke-static {p2}, Lcom/hpplay/sdk/source/player/a/a;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 566
    iget v1, p0, Lcom/hpplay/sdk/source/player/a/a;->p:I

    if-le v0, v1, :cond_0

    .line 567
    iget v0, p0, Lcom/hpplay/sdk/source/player/a/a;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 570
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/hpplay/sdk/source/player/a/a;->b(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 571
    if-gez v0, :cond_0

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/hpplay/cybergarage/upnp/Device;Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)Z
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/16 v12, 0x66

    const/16 v11, 0x67

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Lcom/hpplay/sdk/source/player/a/a;->n:I

    .line 217
    if-nez p1, :cond_1

    .line 218
    const-string v1, "DLNAControlHandler"

    const-string v2, "play device is null"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 221
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v5, "0"

    .line 227
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setUrl(Ljava/lang/String;)V

    .line 230
    :cond_2
    const-string v2, "DLNA-Video"

    .line 231
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 235
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 236
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    :cond_3
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 240
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getId()Ljava/lang/String;

    move-result-object v1

    .line 243
    :goto_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v8

    if-ne v8, v12, :cond_4

    .line 245
    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/player/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hpplay/sdk/source/api/LelinkPlayerInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_2
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6, v0}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 289
    if-eqz v0, :cond_d

    .line 290
    const-string v1, "DLNAControlHandler"

    const-string v2, "play success"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v1

    if-eq v1, v11, :cond_f

    .line 316
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 246
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-ne v8, v11, :cond_7

    .line 249
    :try_start_3
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_6

    .line 250
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v6

    long-to-int v0, v6

    .line 258
    :cond_5
    :goto_4
    :try_start_4
    new-instance v5, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v5}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/g;->D(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v5

    iget-object v6, p0, Lcom/hpplay/sdk/source/player/a/a;->s:Ljava/lang/String;

    .line 259
    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/g;->C(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/hpplay/sdk/source/protocol/g;->N(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/hpplay/sdk/source/protocol/g;->a(J)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->S()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 251
    :cond_6
    :try_start_5
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 252
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 253
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    goto :goto_4

    .line 255
    :catch_0
    move-exception v5

    .line 256
    :try_start_6
    const-string v6, "DLNAControlHandler"

    invoke-static {v6, v5}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 261
    :cond_7
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    const/16 v8, 0x65

    if-ne v0, v8, :cond_10

    .line 262
    const-string v8, "DLNA-Audio"

    .line 263
    const-string v5, "unkown"

    .line 264
    const-string v0, ""

    .line 265
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 266
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 267
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 269
    :cond_8
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getActor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 270
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getActor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    :cond_9
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getAlbumArtURI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 273
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getAlbumArtURI()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_a
    new-instance v9, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v9}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hpplay/sdk/source/protocol/g;->D(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v9

    .line 278
    invoke-virtual {v9, v8}, Lcom/hpplay/sdk/source/protocol/g;->H(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v8

    .line 279
    invoke-virtual {v8, v5}, Lcom/hpplay/sdk/source/protocol/g;->I(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v5

    .line 280
    invoke-virtual {v5, v0}, Lcom/hpplay/sdk/source/protocol/g;->J(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/a/a;->s:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/protocol/g;->C(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    if-eqz v4, :cond_c

    .line 282
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getSize()J

    move-result-wide v8

    :goto_5
    invoke-virtual {v0, v8, v9}, Lcom/hpplay/sdk/source/protocol/g;->a(J)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    if-eqz v4, :cond_b

    .line 283
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->getDuration()J

    move-result-wide v6

    :cond_b
    invoke-virtual {v0, v6, v7}, Lcom/hpplay/sdk/source/protocol/g;->b(J)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 284
    invoke-static {v3}, Lcom/hpplay/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/protocol/g;->N(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->T()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    move-wide v8, v6

    .line 282
    goto :goto_5

    .line 292
    :cond_d
    const-string v5, "DLNAControlHandler"

    const-string v6, "play failed 1"

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v5

    if-ne v5, v12, :cond_e

    .line 294
    const/4 v6, 0x2

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/player/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hpplay/sdk/source/api/LelinkPlayerInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6, v0}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 296
    if-nez v0, :cond_e

    .line 297
    const-string v0, "DLNAControlHandler"

    const-string v5, "play failed 2"

    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v6, 0x3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/player/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hpplay/sdk/source/api/LelinkPlayerInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6, v0}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 300
    if-nez v0, :cond_e

    .line 301
    const-string v0, "DLNAControlHandler"

    const-string v5, "play failed 3"

    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v6, 0x4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/player/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hpplay/sdk/source/api/LelinkPlayerInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6, v0}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 304
    if-nez v0, :cond_e

    .line 305
    const-string v0, "DLNAControlHandler"

    const-string v5, "play failed 4"

    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v6, 0x5

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/player/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hpplay/sdk/source/api/LelinkPlayerInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 312
    :cond_e
    const-string v1, "DLNAControlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play agin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 317
    :cond_f
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v1

    if-ne v1, v11, :cond_0

    .line 318
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v2, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_10
    move-object v0, v5

    goto/16 :goto_2

    :cond_11
    move-object v1, v2

    goto/16 :goto_1

    :cond_12
    move v4, v0

    goto/16 :goto_1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 503
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 509
    :try_start_0
    array-length v1, v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 510
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    .line 511
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v1, v0

    .line 512
    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 513
    :cond_2
    :try_start_2
    array-length v1, v2

    if-ne v1, v4, :cond_0

    .line 514
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    .line 515
    const/4 v0, 0x1

    :try_start_3
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    :goto_1
    const-string v2, "DLNAControlHandler"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 517
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 530
    const-string v0, "DLNAControlHandler"

    const-string v1, "unitFormat"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    if-ltz p0, :cond_0

    if-ge p0, v2, :cond_0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    .line 534
    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x3c

    if-gt p0, v0, :cond_1

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_1
    const-string v0, "00"

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 609
    const-string v0, "DLNAControlHandler"

    const-string v1, "secToTime"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    if-gtz p0, :cond_0

    .line 615
    const-string v0, "00:00:00"

    .line 631
    :goto_0
    return-object v0

    .line 617
    :cond_0
    div-int/lit8 v0, p0, 0x3c

    .line 618
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 619
    rem-int/lit8 v1, p0, 0x3c

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/a/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/a/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_1
    div-int/lit8 v1, v0, 0x3c

    .line 623
    const/16 v2, 0x63

    if-le v1, v2, :cond_2

    .line 624
    const-string v0, "99:59:59"

    goto :goto_0

    .line 625
    :cond_2
    rem-int/lit8 v0, v0, 0x3c

    .line 626
    mul-int/lit16 v2, v1, 0xe10

    sub-int v2, p0, v2

    mul-int/lit8 v3, v0, 0x3c

    sub-int/2addr v2, v3

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/a/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/a/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 628
    invoke-static {v2}, Lcom/hpplay/sdk/source/player/a/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/player/a/a;->d(Lcom/hpplay/cybergarage/upnp/Device;)Z

    .line 167
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/a/a;->f(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 168
    return-void
.end method

.method private f(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 3

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 175
    const-string v0, "DLNAControlHandler"

    const-string v1, "getMute device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->g(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_2

    .line 180
    const-string v1, "DLNAControlHandler"

    const-string v2, "get mute failed..."

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v2, 0x9

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_2
    const-string v1, "DLNAControlHandler"

    const-string v2, "get mute success"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized g(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 4

    .prologue
    .line 366
    monitor-enter p0

    if-nez p1, :cond_1

    .line 367
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "pause device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    const/4 v0, 0x0

    .line 375
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 370
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->j(Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    .line 371
    const-string v1, "DLNAControlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause isSucess-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 4

    .prologue
    .line 379
    monitor-enter p0

    if-nez p1, :cond_1

    .line 380
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "resume device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    const/4 v0, 0x0

    .line 387
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 383
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 4

    .prologue
    .line 391
    monitor-enter p0

    if-nez p1, :cond_1

    .line 392
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "stop device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    const/4 v0, 0x0

    .line 399
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 395
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->i(Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 423
    monitor-enter p0

    if-nez p1, :cond_0

    .line 424
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "getPositionInfo device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v2, p1}, Lcom/hpplay/sdk/source/player/a/c;->e(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/util/HashMap;

    move-result-object v2

    .line 429
    iget-object v3, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 430
    const-string v0, "DLNAControlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get position info and the value is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "duration"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 433
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 434
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 435
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 436
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    .line 437
    const-string v0, "DLNAControlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start seek to startPosition : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/4 v1, 0x6

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    :try_start_2
    const-string v1, "DLNAControlHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 441
    :cond_2
    if-nez v2, :cond_3

    :try_start_3
    iget-object v3, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v3

    if-lez v3, :cond_3

    .line 442
    const-string v0, "DLNAControlHandler"

    const-string v1, "-- send seek to startPosition msg --"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 444
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 445
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 446
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setStartPosition(I)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 449
    :cond_3
    const-string v3, "DLNAControlHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start seek to startPosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private declared-synchronized k(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 4

    .prologue
    .line 457
    monitor-enter p0

    if-nez p1, :cond_1

    .line 458
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "getMediaDuration device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->f(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Lcom/hpplay/sdk/source/player/a/a;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/player/a/a;->p:I

    .line 464
    const-string v1, "DLNAControlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get media duration and the value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/player/a/a;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NOT_IMPLEMENTED"

    .line 467
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/hpplay/sdk/source/player/a/a;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_3

    .line 470
    :cond_2
    :try_start_2
    const-string v1, "DLNAControlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get media duration failed, retry later.Duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "intLength:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hpplay/sdk/source/player/a/a;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget v0, p0, Lcom/hpplay/sdk/source/player/a/a;->n:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 473
    iget v0, p0, Lcom/hpplay/sdk/source/player/a/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/player/a/a;->n:I

    .line 474
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/a/a;->k(Lcom/hpplay/cybergarage/upnp/Device;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    :cond_3
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/4 v1, 0x7

    iget v2, p0, Lcom/hpplay/sdk/source/player/a/a;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    :try_start_4
    const-string v1, "DLNAControlHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized l(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 543
    monitor-enter p0

    if-nez p1, :cond_1

    .line 544
    :try_start_0
    const-string v0, "DLNAControlHandler"

    const-string v1, "getTransportState device is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 547
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->b(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;

    move-result-object v0

    .line 549
    const-string v1, "DLNAControlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get transportState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v2, 0xb

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/player/a/c;->a()V

    .line 101
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setStartPosition(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    .line 72
    return-void
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->a(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/player/a/b;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a/a;->s:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->t:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->b(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V

    .line 88
    :cond_0
    return-void
.end method

.method public b(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->k(Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/hpplay/cybergarage/upnp/Device;)I
    .locals 4

    .prologue
    .line 197
    const/4 v0, -0x1

    .line 198
    if-eqz p1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/player/a/c;->d(Lcom/hpplay/cybergarage/upnp/Device;)I

    move-result v0

    .line 200
    if-gtz v0, :cond_0

    .line 201
    const-string v0, "DLNAControlHandler"

    const-string v1, "get Max Volumn Value failed.."

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v0, 0x64

    .line 207
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "DLNAControlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxVolumn Device vloume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v2, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V

    .line 211
    :cond_1
    return v0

    .line 205
    :cond_2
    const-string v1, "DLNAControlHandler"

    const-string v2, "getMaxVolumn Device is null"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 403
    if-nez p1, :cond_0

    .line 404
    const-string v1, "DLNAControlHandler"

    const-string v2, "updateVoice device is null"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->o:Lcom/hpplay/sdk/source/player/a/c;

    invoke-interface {v1, p1}, Lcom/hpplay/sdk/source/player/a/c;->h(Lcom/hpplay/cybergarage/upnp/Device;)I

    move-result v1

    .line 408
    const-string v2, "DLNAControlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentVoice-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v3, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V

    .line 412
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 414
    const-string v1, "DLNAControlHandler"

    const-string v2, "get current voice failed"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_2
    const-string v0, "DLNAControlHandler"

    const-string v1, "get current voice success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 150
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 151
    return-void

    .line 107
    :sswitch_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->e(Lcom/hpplay/cybergarage/upnp/Device;)V

    goto :goto_0

    .line 110
    :sswitch_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-direct {p0, v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->a(Lcom/hpplay/cybergarage/upnp/Device;Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)Z

    goto :goto_0

    .line 113
    :sswitch_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->g(Lcom/hpplay/cybergarage/upnp/Device;)Z

    goto :goto_0

    .line 116
    :sswitch_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->h(Lcom/hpplay/cybergarage/upnp/Device;)Z

    goto :goto_0

    .line 119
    :sswitch_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->i(Lcom/hpplay/cybergarage/upnp/Device;)Z

    goto :goto_0

    .line 122
    :sswitch_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->a(Lcom/hpplay/cybergarage/upnp/Device;J)V

    goto :goto_0

    .line 125
    :sswitch_6
    const-string v0, "DLNAControlHandler"

    const-string v1, "---- start get positionn ---"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->j(Lcom/hpplay/cybergarage/upnp/Device;)V

    goto :goto_0

    .line 129
    :sswitch_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->k(Lcom/hpplay/cybergarage/upnp/Device;)V

    goto :goto_0

    .line 133
    :sswitch_8
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->a(Lcom/hpplay/cybergarage/upnp/Device;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "DLNAControlHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 139
    :sswitch_9
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->r:Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/a/a;->l(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;

    goto :goto_0

    .line 142
    :sswitch_a
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 147
    :sswitch_b
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/a;->q:Lcom/hpplay/sdk/source/player/a/b;

    const/16 v1, 0x9b

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/player/a/b;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x9b -> :sswitch_b
    .end sparse-switch
.end method
