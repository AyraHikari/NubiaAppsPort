.class public Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;
.super Ljava/lang/Object;
.source "VideoEncodeConfig.java"


# static fields
.field private static AudiaFormat:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VideoEncodeConfig"

.field private static VedioFormat:Ljava/lang/String;

.field private static canResetWidthAndHeight:Z

.field public static instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

.field public static maxValue:I

.field public static minValue:I

.field private static resolution1080p_portrait:[I

.field private static resolution1080p_portrait_usb:[I

.field private static resolution720p_portrait:[I

.field private static resolution720p_portrait_usb:[I

.field public static startResolutionModeMaxValue:I

.field public static startResolutionModeMinValue:I


# instance fields
.field public bitrate:I

.field public framerate:I

.field public height:I

.field private iframeInterval:I

.field private mimeType:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 42
    const-string v0, "video/avc"

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->VedioFormat:Ljava/lang/String;

    .line 43
    const-string v0, "audio/mp4a-latm"

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->AudiaFormat:Ljava/lang/String;

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait_usb:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait_usb:[I

    .line 57
    sput v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMinValue:I

    .line 58
    sput v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMaxValue:I

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->canResetWidthAndHeight:Z

    return-void

    .line 51
    :array_0
    .array-data 4
        0x438
        0x960
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x2d0
        0x640
    .end array-data

    .line 54
    :array_2
    .array-data 4
        0x360
        0x780
    .end array-data

    .line 55
    :array_3
    .array-data 4
        0x240
        0x500
    .end array-data
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitrate"    # I
    .param p4, "framerate"    # I
    .param p5, "iframeInterval"    # I
    .param p6, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->width:I

    .line 211
    iput p2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->height:I

    .line 212
    iput p3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->bitrate:I

    .line 213
    iput p4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->framerate:I

    .line 214
    iput p5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->iframeInterval:I

    .line 215
    iput-object p6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->mimeType:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public static changeCatchScreenBirrate(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getCurrentBitrate(Landroid/content/Context;)I

    move-result v0

    .line 399
    .local v0, "bitRate":I
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v3

    .line 400
    .local v3, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    if-eqz v3, :cond_0

    .line 401
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 402
    .local v2, "param":Landroid/os/Bundle;
    const-string v4, "video-bitrate"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    iget-object v4, v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 404
    iget-object v4, v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iput v0, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->bitrate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "bitRate":I
    .end local v2    # "param":Landroid/os/Bundle;
    .end local v3    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static changeCatchScreenBitrate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getCurrentBitrate(Landroid/content/Context;)I

    move-result v0

    .line 415
    .local v0, "bitRate":I
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v2

    .line 416
    .local v2, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    if-eqz v2, :cond_0

    .line 417
    iget-object v3, v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iput v0, v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->bitrate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v0    # "bitRate":I
    .end local v2    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static changeCatchScreenRate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getCurrentRate(Landroid/content/Context;)I

    move-result v0

    .line 427
    .local v0, "rateNum":I
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v1

    .line 428
    .local v1, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v1, v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setchangeFlag(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public static getCanResetWidthAndHeightStatus()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->canResetWidthAndHeight:Z

    return v0
.end method

.method public static getCurrentWidthAndHeight(Landroid/content/Context;ZZ)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "portrait"    # Z
    .param p2, "isWired"    # Z

    .prologue
    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 274
    const/4 v6, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 275
    .local v2, "widthAndHeight":[I
    if-eqz p2, :cond_1

    .line 276
    if-eqz p1, :cond_0

    .line 277
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait_usb:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 278
    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait_usb:[I

    aget v5, v5, v4

    aput v5, v2, v4

    .line 391
    :goto_0
    return-object v2

    .line 280
    :cond_0
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait_usb:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 281
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait_usb:[I

    aget v5, v6, v5

    aput v5, v2, v4

    goto :goto_0

    .line 285
    :cond_1
    const-string v6, "SCREEN_PROJECTION_QUALITY_20210706"

    invoke-static {p0, v6, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 286
    .local v1, "mirrorQuality":I
    const-string v6, "VideoEncodeConfig222222_555 setvalue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mirrorQuality = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    packed-switch v1, :pswitch_data_0

    .line 381
    if-eqz p1, :cond_10

    .line 382
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 383
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    .line 390
    :goto_1
    const-string v6, "VideoEncodeConfig222222_555 setvalue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "width * height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v5, v2, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " x "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :pswitch_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPingStatusUtils;->isSupportHightFPS(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 291
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiGeneration(Landroid/content/Context;)I

    move-result v6

    int-to-float v3, v6

    .line 292
    .local v3, "wifiFeneration":F
    cmpg-float v6, v3, v9

    if-gez v6, :cond_3

    .line 293
    if-eqz p1, :cond_2

    .line 294
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 295
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto :goto_1

    .line 297
    :cond_2
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 298
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto :goto_1

    .line 301
    :cond_3
    if-eqz p1, :cond_4

    .line 302
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 303
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto :goto_1

    .line 305
    :cond_4
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 306
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto :goto_1

    .line 310
    .end local v3    # "wifiFeneration":F
    :cond_5
    if-eqz p1, :cond_6

    .line 311
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 312
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto :goto_1

    .line 314
    :cond_6
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 315
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 320
    :pswitch_1
    if-eqz p1, :cond_7

    .line 321
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 322
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto/16 :goto_1

    .line 324
    :cond_7
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 325
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 329
    :pswitch_2
    if-eqz p1, :cond_8

    .line 330
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 331
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto/16 :goto_1

    .line 333
    :cond_8
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 334
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 338
    :pswitch_3
    if-eqz p1, :cond_9

    .line 339
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 340
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto/16 :goto_1

    .line 342
    :cond_9
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 343
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 348
    :pswitch_4
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPingStatusUtils;->isSupportHightFPS(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 349
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiGeneration(Landroid/content/Context;)I

    move-result v6

    int-to-float v3, v6

    .line 350
    .restart local v3    # "wifiFeneration":F
    cmpg-float v6, v3, v9

    if-gez v6, :cond_a

    move v0, v4

    .line 351
    .local v0, "flag":Z
    :goto_2
    const-string v6, "VideoEncodeConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changleitest wifiFeneration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    if-eqz v0, :cond_c

    .line 353
    if-eqz p1, :cond_b

    .line 354
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 355
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto/16 :goto_1

    .end local v0    # "flag":Z
    :cond_a
    move v0, v5

    .line 350
    goto :goto_2

    .line 357
    .restart local v0    # "flag":Z
    :cond_b
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 358
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 361
    :cond_c
    if-eqz p1, :cond_d

    .line 362
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 363
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto/16 :goto_1

    .line 365
    :cond_d
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 366
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 370
    .end local v0    # "flag":Z
    .end local v3    # "wifiFeneration":F
    :cond_e
    if-eqz p1, :cond_f

    .line 371
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v5

    .line 372
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v4

    goto/16 :goto_1

    .line 374
    :cond_f
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 375
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 385
    :cond_10
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v4

    aput v6, v2, v5

    .line 386
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v6, v6, v5

    aput v6, v2, v4

    goto/16 :goto_1

    .line 274
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getVideoEncodeConfig(Landroid/content/Context;Z)Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "portrait"    # Z

    .prologue
    const/4 v12, 0x4

    .line 66
    const-class v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    monitor-enter v9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 133
    :goto_0
    monitor-exit v9

    return-object v0

    .line 67
    :cond_0
    :try_start_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    if-nez v0, :cond_5

    .line 68
    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getWidth(Landroid/content/Context;)I

    move-result v1

    .line 69
    .local v1, "width":I
    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getHeight(Landroid/content/Context;)I

    move-result v2

    .line 70
    .local v2, "height":I
    if-eqz p1, :cond_6

    .line 71
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait_usb:[I

    const/4 v10, 0x0

    const v11, 0x1fa400

    div-int/2addr v11, v2

    aput v11, v0, v10

    .line 72
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait_usb:[I

    const/4 v10, 0x0

    const v11, 0x151800

    div-int/2addr v11, v2

    aput v11, v0, v10

    .line 78
    :goto_1
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isLandForNubiaTouPingRoration(Landroid/content/Context;)Z

    move-result v7

    .line 79
    .local v7, "isLandStus":Z
    const-string v0, "VideoEncodeConfig777888"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isLandStus = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_1

    if-eqz v7, :cond_2

    .line 81
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 82
    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getWidth(Landroid/content/Context;)I

    move-result v2

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    .local v3, "bitrate":I
    const/16 v4, 0x3c

    .line 87
    .local v4, "framerate":I
    const/16 v5, 0xa

    .line 88
    .local v5, "iframeInterval":I
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v0, :cond_7

    .line 89
    sget v3, Lcn/nubia/touping/WiredTouPingMainActivity;->bitrate:I

    .line 90
    sget v0, Lcn/nubia/touping/WiredTouPingMainActivity;->height_level:I

    const/4 v10, 0x1

    invoke-static {p0, v0, p1, v10}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->getWidthAndHeight(Landroid/content/Context;IZZ)[I

    move-result-object v8

    .line 91
    .local v8, "widthAndHeight":[I
    const/4 v0, 0x0

    aget v0, v8, v0

    if-eqz v0, :cond_3

    .line 92
    const/4 v0, 0x0

    aget v1, v8, v0

    .line 94
    :cond_3
    const/4 v0, 0x1

    aget v0, v8, v0

    if-eqz v0, :cond_4

    .line 95
    const/4 v0, 0x1

    aget v2, v8, v0

    .line 120
    .end local v8    # "widthAndHeight":[I
    :cond_4
    :goto_2
    const-string v0, "VideoEncodeConfig222222_0"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "width * height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resetMinValueMaxValue(II)V

    .line 125
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    sput v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMinValue:I

    .line 126
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    sput v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMaxValue:I

    .line 128
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->VedioFormat:Ljava/lang/String;

    .line 129
    .local v6, "mimeType":Ljava/lang/String;
    const-string v0, "VideoEncodeConfig222222_1"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minValue * maxValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "VideoEncodeConfig222222_2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "width * height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-direct/range {v0 .. v6}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    .line 133
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "bitrate":I
    .end local v4    # "framerate":I
    .end local v5    # "iframeInterval":I
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "isLandStus":Z
    :cond_5
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    goto/16 :goto_0

    .line 74
    .restart local v1    # "width":I
    .restart local v2    # "height":I
    :cond_6
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution1080p_portrait_usb:[I

    const/4 v10, 0x0

    const v11, 0x1fa400

    div-int/2addr v11, v1

    aput v11, v0, v10

    .line 75
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait_usb:[I

    const/4 v10, 0x0

    const v11, 0x151800

    div-int/2addr v11, v1

    aput v11, v0, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 66
    .end local v1    # "width":I
    .end local v2    # "height":I
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 98
    .restart local v1    # "width":I
    .restart local v2    # "height":I
    .restart local v3    # "bitrate":I
    .restart local v4    # "framerate":I
    .restart local v5    # "iframeInterval":I
    .restart local v7    # "isLandStus":Z
    :cond_7
    :try_start_1
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getCurrentBitrate(Landroid/content/Context;)I

    move-result v3

    .line 99
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getCurrentRate(Landroid/content/Context;)I

    move-result v4

    .line 101
    sget-object v0, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v12, :cond_4

    .line 102
    sget-object v0, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    invoke-static {p0, v0, p1, v10}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->getWidthAndHeight(Landroid/content/Context;IZZ)[I

    move-result-object v8

    .line 103
    .restart local v8    # "widthAndHeight":[I
    const/4 v0, 0x0

    aget v0, v8, v0

    if-eqz v0, :cond_8

    .line 104
    const/4 v0, 0x0

    aget v1, v8, v0

    .line 106
    :cond_8
    const/4 v0, 0x1

    aget v0, v8, v0

    if-eqz v0, :cond_9

    .line 107
    const/4 v0, 0x1

    aget v2, v8, v0

    .line 111
    :cond_9
    sget-object v0, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_a

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->canResetWidthAndHeight:Z

    goto/16 :goto_2

    .line 114
    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->canResetWidthAndHeight:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public static getWidthAndHeight(Landroid/content/Context;IZZ)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "height_level"    # I
    .param p2, "portrait"    # Z
    .param p3, "isWired"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 137
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 138
    .local v0, "widthAndHeight":[I
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    aget v1, v0, v3

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resetMinValueMaxValue(II)V

    .line 163
    return-object v0

    .line 140
    :cond_1
    if-ne p1, v2, :cond_2

    .line 141
    invoke-static {p0, p2, p3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->getCurrentWidthAndHeight(Landroid/content/Context;ZZ)[I

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    if-ne p1, v1, :cond_0

    .line 143
    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v1, :cond_4

    .line 144
    if-eqz p2, :cond_3

    .line 145
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait_usb:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 146
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait_usb:[I

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 148
    :cond_3
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait_usb:[I

    aget v1, v1, v2

    aput v1, v0, v3

    .line 149
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait_usb:[I

    aget v1, v1, v3

    aput v1, v0, v2

    goto :goto_0

    .line 152
    :cond_4
    if-eqz p2, :cond_5

    .line 153
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 154
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 156
    :cond_5
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v1, v1, v2

    aput v1, v0, v3

    .line 157
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resolution720p_portrait:[I

    aget v1, v1, v3

    aput v1, v0, v2

    goto :goto_0

    .line 137
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static resetMinValueAndMaxValue(ZZ)V
    .locals 4
    .param p0, "isExpandingSion"    # Z
    .param p1, "portraitRotation"    # Z

    .prologue
    .line 189
    if-eqz p0, :cond_1

    .line 190
    :try_start_0
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/PhoneInfo;->getWidth(Landroid/content/Context;)I

    move-result v2

    .line 191
    .local v2, "width":I
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/PhoneInfo;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 192
    .local v1, "height":I
    if-ge v2, v1, :cond_0

    .line 193
    sput v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    .line 194
    sput v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    .line 206
    .end local v1    # "height":I
    .end local v2    # "width":I
    :goto_0
    return-void

    .line 196
    .restart local v1    # "height":I
    .restart local v2    # "width":I
    :cond_0
    sput v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    .line 197
    sput v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v1    # "height":I
    .end local v2    # "width":I
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMinValue:I

    sput v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    .line 201
    sget v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMaxValue:I

    sput v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static resetMinValueMaxValue(II)V
    .locals 0
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 169
    if-ge p0, p1, :cond_0

    .line 170
    sput p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    .line 171
    sput p1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    sput p1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    .line 174
    sput p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    goto :goto_0
.end method


# virtual methods
.method public resetWidthHeight(Z)V
    .locals 1
    .param p1, "portraitRotation"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->width:I

    .line 180
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->height:I

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->width:I

    .line 183
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->height:I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    .line 220
    return-void
.end method

.method public toFormat(Z)Landroid/media/MediaFormat;
    .locals 4
    .param p1, "isportrait"    # Z

    .prologue
    .line 238
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 239
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "mime"

    const-string v2, "video/avc"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "VideoEncodeConfig222222"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minValue * maxValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p1, :cond_1

    .line 244
    const-string v1, "width"

    sget v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 245
    const-string v1, "height"

    sget v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 251
    :goto_0
    const-string v1, "bitrate"

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->bitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 253
    const-string v1, "frame-rate"

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->framerate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 255
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 259
    const-string v1, "i-frame-interval"

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->iframeInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 261
    const-string v1, "repeat-previous-frame-after"

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 262
    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->framerate:I

    if-lez v1, :cond_0

    .line 264
    const-string v1, "max-fps-to-encoder"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 266
    :cond_0
    return-object v0

    .line 247
    :cond_1
    const-string v1, "width"

    sget v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 248
    const-string v1, "height"

    sget v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0
.end method
