.class public Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEncoder"

.field private static instance:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "videoEncoderConfig"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;
    .locals 4
    .param p0, "videoEncoderConfig"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;
    .param p1, "isportrait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->createEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 24
    .local v0, "encoder":Landroid/media/MediaCodec;
    invoke-virtual {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->toFormat(Z)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 25
    return-object v0
.end method
