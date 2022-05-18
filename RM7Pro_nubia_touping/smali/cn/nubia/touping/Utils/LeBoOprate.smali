.class public Lcn/nubia/touping/Utils/LeBoOprate;
.super Ljava/lang/Object;
.source "LeBoOprate.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "12691"

.field private static final APP_SECRET:Ljava/lang/String; = "d99f087d265b4b4657ff58a4f5ba9c8f"

.field public static final EXTREMELY_QUALITYBITRATE:I = 0x1900000

.field public static final EXTREMELY_QUALITYBITRATE_PC:I = 0x1400000

.field private static final HIGH_QUALITYBITRATE:I = 0xa00000

.field public static final HIGH_QUALITYBITRATE_PC:I = 0xa00000

.field private static final IFRAME_TOUPING:I = 0x5

.field private static final LOD_QUALITYBITRATE:I = 0x400000

.field public static final LOD_QUALITYBITRATE_PC:I = 0x400000

.field private static final MIDDLE_QUALITYBITRATE:I = 0x800000

.field public static final MIDDLE_QUALITYBITRATE_PC:I = 0x800000

.field public static final STARTBrowseStatus:I = 0x1

.field public static final STOPBrowseStatus:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LeBoOprate"

.field public static final UHD_QUALITYBITRATE:I = 0x1900000

.field public static final UHD_QUALITYBITRATE_PC:I = 0x1200000

.field public static flagSuperClean:Z = false

.field public static initSuccess:Z = false

.field private static linkType:I = 0x0

.field public static final linkeTypeCamera:I = 0x2

.field public static final linkeTypeSearch:I = 0x1

.field private static statusBrowse:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-boolean v1, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    .line 38
    sput v1, Lcn/nubia/touping/Utils/LeBoOprate;->statusBrowse:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcn/nubia/touping/Utils/LeBoOprate;->linkType:I

    .line 171
    sput-boolean v1, Lcn/nubia/touping/Utils/LeBoOprate;->flagSuperClean:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lcn/nubia/touping/Utils/LeBoOprate;->statusBrowse:I

    return p0
.end method

.method public static ajustFrameRate()V
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getStatusBrowse()I

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :cond_0
    return-void
.end method

.method public static changeMirrorQuality(I)V
    .locals 9
    .param p0, "mirrorQuality"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 410
    const-string v0, "LeBoOprate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int MirrorQuality mirrorQuality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    if-nez p0, :cond_2

    .line 412
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100031

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 413
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0xa00000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0xa00000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_2
    if-ne p0, v5, :cond_4

    .line 420
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100031

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 421
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x800000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    :cond_3
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x800000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 427
    :cond_4
    if-ne p0, v6, :cond_6

    .line 428
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100031

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 429
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x400000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 433
    :cond_5
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x400000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 435
    :cond_6
    if-ne p0, v8, :cond_8

    .line 436
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100031

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 437
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 438
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x1200000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 441
    :cond_7
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x1900000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 443
    :cond_8
    if-ne p0, v7, :cond_0

    .line 444
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100031

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 445
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 446
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x1400000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 449
    :cond_9
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100046

    new-array v2, v8, [Ljava/lang/Object;

    const/high16 v3, 0x1900000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static changeMirrorQuality(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 385
    :try_start_0
    const-string v3, "LeBoOprate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    .line 390
    .local v2, "nubiaPCMirrorStatus":Z
    if-eqz v2, :cond_2

    .line 391
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->changeCatchScreenBitrate(Landroid/content/Context;)V

    .line 392
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->getCanResetWidthAndHeightStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 393
    const/4 v3, 0x1

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isPortrait()Z

    move-result v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->getWidthAndHeight(Landroid/content/Context;IZZ)[I

    .line 394
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isPortrait()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resetWidthHeight(Z)V

    .line 396
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->changeCatchScreenRate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v2    # "nubiaPCMirrorStatus":Z
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    const-string v3, "LeBoOprate"

    const-string v4, "changeMirrorQuality exception"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "nubiaPCMirrorStatus":Z
    :cond_2
    :try_start_1
    const-string v3, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 399
    .local v1, "mirrorQuality":I
    const-string v3, "LeBoOprate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mirrorQuality = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {v1}, Lcn/nubia/touping/Utils/LeBoOprate;->changeMirrorQuality(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static compareDeviceInfo(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lelinkServiceInfo"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 345
    if-nez p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v6

    .line 349
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "LELINKSERVER_UID"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "lastUid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "currentUid":Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 353
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 354
    goto :goto_0

    .line 358
    :cond_2
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "LELINKSERVER_NAME_IP"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "lastname_deviceip":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "deviceIp":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "currentName_deviceIp":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 365
    goto :goto_0
.end method

.method public static disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .prologue
    .line 151
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    .line 152
    return-void
.end method

.method public static getAPP_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "12691"

    return-object v0
.end method

.method public static getCurrentLinkDeviceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 5

    .prologue
    .line 312
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getConnectInfos()Ljava/util/List;

    move-result-object v0

    .line 313
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 316
    :goto_0
    return-object v1

    .line 314
    :cond_1
    const-string v2, "LeBoOprate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 316
    .local v1, "mSelectInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    goto :goto_0
.end method

.method public static getLinkType()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcn/nubia/touping/Utils/LeBoOprate;->linkType:I

    return v0
.end method

.method public static getMirrorPlayingStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 271
    sget-boolean v2, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    if-nez v2, :cond_1

    .line 272
    const-string v2, "LeBoOprate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v2

    const v3, 0x100032

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "objectStatus":Ljava/lang/Object;
    const-string v2, "LeBoOprate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objectStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-eqz v0, :cond_0

    .line 280
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "objectStatus":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getMirrorTypeIsPC()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getConnectInfos()Ljava/util/List;

    move-result-object v2

    .line 286
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v4

    .line 287
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 288
    .local v3, "mSelectInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getRcvPlf()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "info":Ljava/lang/String;
    const-string v5, "LeBoOprate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "Windows"

    .line 291
    .local v0, "flagPCString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getMorrorTypeIsPC(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 6
    .param p0, "mSelectInfo"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .prologue
    const/4 v2, 0x0

    .line 298
    if-nez p0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v2

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getRcvPlf()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "info":Ljava/lang/String;
    const-string v3, "LeBoOprate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "Windows"

    .line 304
    .local v0, "flagPCString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getStatusBrowse()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcn/nubia/touping/Utils/LeBoOprate;->statusBrowse:I

    return v0
.end method

.method public static initLeBoSDK(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-string v0, "LeBoOprate"

    const-string v1, " iinitLeBoSDK = start"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "udid":Ljava/lang/String;
    const-string v0, "LeBoOprate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-nez v4, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentGnssTimeClock()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    .line 91
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "12691"

    const-string v3, "d99f087d265b4b4657ff58a4f5ba9c8f"

    new-instance v5, Lcn/nubia/touping/Utils/LeBoOprate$1;

    invoke-direct {v5}, Lcn/nubia/touping/Utils/LeBoOprate$1;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    .line 101
    return-void
.end method

.method public static reInitLeboSDK(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-boolean v0, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    if-nez v0, :cond_0

    .line 78
    invoke-static {p0}, Lcn/nubia/touping/Utils/LeBoOprate;->initLeBoSDK(Landroid/content/Context;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static saveCurrentLinkDevice(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    if-nez p0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const-string v5, "lastMirracastTouPIngDeviceInfo"

    const-string v6, "66_77_88"

    invoke-static {p0, v5, v6}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v5, "LeBoOprate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getConnectInfos()Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    const-string v5, "LeBoOprate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 330
    const-string v5, "LeBoOprate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "list.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 332
    .local v2, "mSelectInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    const-string v5, "LeBoOprate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSelectInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "uid":Ljava/lang/String;
    const-string v5, "LeBoOprate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v5, "LELINKSERVER_UID"

    invoke-static {p0, v5, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "name":Ljava/lang/String;
    const-string v5, "LeBoOprate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "deviceIp":Ljava/lang/String;
    const-string v5, "LELINKSERVER_NAME_IP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static setLinkType(I)V
    .locals 0
    .param p0, "linkTypeTemp"    # I

    .prologue
    .line 45
    sput p0, Lcn/nubia/touping/Utils/LeBoOprate;->linkType:I

    .line 46
    return-void
.end method

.method public static startBrowse(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 113
    sget-boolean v0, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->startBrowse(ZZ)V

    .line 115
    sput v2, Lcn/nubia/touping/Utils/LeBoOprate;->statusBrowse:I

    .line 136
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "LeBoOprate"

    const-string v1, " iinitLeBoSDK = start"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "udid":Ljava/lang/String;
    const-string v0, "LeBoOprate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-nez v4, :cond_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentGnssTimeClock()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const-string v2, "12691"

    const-string v3, "d99f087d265b4b4657ff58a4f5ba9c8f"

    new-instance v5, Lcn/nubia/touping/Utils/LeBoOprate$2;

    invoke-direct {v5}, Lcn/nubia/touping/Utils/LeBoOprate$2;-><init>()V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    goto :goto_0
.end method

.method public static startConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .prologue
    .line 146
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 147
    return-void
.end method

.method public static startMirrorTouPing(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSelectInfo"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .prologue
    const v13, 0x100029

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 174
    const-string v6, "LeBoOprate"

    const-string v7, "startMirrorTouPing"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;-><init>()V

    .line 177
    .local v2, "lelinkPlayerInfo":Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;
    const v6, 0x100031

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2, v6, v7}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v2, p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLelinkServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 182
    const-string v6, "SCREEN_PROJECTION_QUALITY_20210706"

    invoke-static {p0, v6, v10}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 183
    .local v3, "mirrorQuality":I
    invoke-static {p1}, Lcn/nubia/touping/Utils/LeBoOprate;->getMorrorTypeIsPC(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v1

    .line 184
    .local v1, "isPC":Z
    const-string v6, "LeBoOprate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mirrorQuality = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isPC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-nez v3, :cond_1

    .line 187
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setResolutionLevel(I)V

    .line 188
    if-eqz v1, :cond_0

    .line 189
    const/high16 v6, 0xa00000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    .line 226
    :goto_0
    const/16 v6, 0x3c

    :try_start_0
    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setFrame(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    const-string v6, "SOUND_SOURCE"

    invoke-static {p0, v6, v11}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 232
    .local v5, "voiceBy":I
    if-ne v5, v9, :cond_a

    .line 233
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v13, v7}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setMirrorAudioEnable(Z)V

    .line 252
    :goto_2
    const-string v6, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "nubia_small_window_open"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 253
    .local v4, "smallPIP":Z
    const-string v6, "LeBoOprate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startMirrorTouPing smallPIP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz v4, :cond_d

    .line 255
    const v6, 0x100010

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2, v6, v7}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :goto_3
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->startMirror(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 261
    return-void

    .line 191
    .end local v4    # "smallPIP":Z
    .end local v5    # "voiceBy":I
    :cond_0
    const/high16 v6, 0xa00000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto :goto_0

    .line 193
    :cond_1
    if-ne v3, v9, :cond_3

    .line 194
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setResolutionLevel(I)V

    .line 195
    if-eqz v1, :cond_2

    .line 196
    const/high16 v6, 0x800000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto :goto_0

    .line 198
    :cond_2
    const/high16 v6, 0x800000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto :goto_0

    .line 200
    :cond_3
    if-ne v3, v11, :cond_5

    .line 201
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setResolutionLevel(I)V

    .line 202
    if-eqz v1, :cond_4

    .line 203
    const/high16 v6, 0x400000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto/16 :goto_0

    .line 205
    :cond_4
    const/high16 v6, 0x400000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto/16 :goto_0

    .line 207
    :cond_5
    const/4 v6, 0x4

    if-ne v3, v6, :cond_7

    .line 208
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setResolutionLevel(I)V

    .line 209
    if-eqz v1, :cond_6

    .line 210
    const/high16 v6, 0x1200000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto/16 :goto_0

    .line 212
    :cond_6
    const/high16 v6, 0x1900000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto/16 :goto_0

    .line 214
    :cond_7
    if-ne v3, v12, :cond_9

    .line 215
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setResolutionLevel(I)V

    .line 216
    if-eqz v1, :cond_8

    .line 217
    const/high16 v6, 0x1400000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto/16 :goto_0

    .line 219
    :cond_8
    const/high16 v6, 0x1900000

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setBitRate(I)V

    goto/16 :goto_0

    .line 222
    :cond_9
    invoke-virtual {v2, v12}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setResolutionLevel(I)V

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "voiceBy":I
    :cond_a
    if-ne v5, v11, :cond_b

    .line 236
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v13, v7}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setMirrorAudioEnable(Z)V

    goto/16 :goto_2

    .line 238
    :cond_b
    if-ne v5, v12, :cond_c

    .line 239
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v13, v7}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v2, v9}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setMirrorAudioEnable(Z)V

    goto/16 :goto_2

    .line 242
    :cond_c
    invoke-virtual {v2, v10}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setMirrorAudioEnable(Z)V

    goto/16 :goto_2

    .line 257
    .restart local v4    # "smallPIP":Z
    :cond_d
    const v6, 0x100010

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2, v6, v7}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public static startMirrorTouPing(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 7
    .param p0, "mSelectInfo"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .prologue
    const/4 v6, 0x1

    .line 158
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v2

    const v3, 0x100029

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x1

    .line 166
    .local v0, "audioEnable":Z
    const/4 v1, 0x0

    .line 167
    .local v1, "isAutoBitrate":Z
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->startMirror(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;ZZ)V

    .line 168
    return-void
.end method

.method public static stopBrose()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->stopBrowse()V

    .line 141
    const/4 v0, 0x0

    sput v0, Lcn/nubia/touping/Utils/LeBoOprate;->statusBrowse:I

    .line 142
    return-void
.end method

.method public static stopMirrorTouPing()V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->stopPlay()V

    .line 267
    return-void
.end method

.method public static unbindLeBoSDK()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "LeBoOprate"

    const-string v1, " unbindLeBoSDK = start"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->unBindSdk()V

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    .line 108
    const-string v0, "LeBoOprate"

    const-string v1, " unbindLeBoSDK = end"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
