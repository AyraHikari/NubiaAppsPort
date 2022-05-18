.class public interface abstract Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BITRATE_HIGH:I = 0x4

.field public static final BITRATE_LOW:I = 0x6

.field public static final BITRATE_MID:I = 0x5

.field public static final RESOLUTION_2K:I = 0x64

.field public static final RESOLUTION_AUTO:I = 0x3

.field public static final RESOLUTION_HIGH:I = 0x1

.field public static final RESOLUTION_MID:I = 0x2


# virtual methods
.method public abstract enforceEncodeParams(IIII)V
.end method

.method public abstract release()V
.end method

.method public abstract resizeScreen(Z)V
.end method

.method public abstract setAutoBitrate(Z)V
.end method

.method public abstract setBitrate(I)V
.end method

.method public abstract setBitrateLevel(I)V
.end method

.method public abstract setFrame(I)V
.end method

.method public abstract setKeyFrameInterval(I)V
.end method

.method public abstract setOption(ILjava/lang/String;)V
.end method

.method public abstract setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
.end method

.method public abstract setResolution(II)V
.end method

.method public abstract setResolutionLevel(I)V
.end method

.method public abstract startMirror(Landroid/content/Intent;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V
.end method

.method public abstract stopMirror()V
.end method
