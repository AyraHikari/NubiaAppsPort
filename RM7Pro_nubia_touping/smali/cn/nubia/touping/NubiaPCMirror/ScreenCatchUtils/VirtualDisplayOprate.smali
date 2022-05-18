.class public Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;
.super Ljava/lang/Object;
.source "VirtualDisplayOprate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualDisplayOprate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;
    .locals 12
    .param p0, "mVirtualDisplay"    # Landroid/hardware/display/VirtualDisplay;
    .param p1, "mediaProjection"    # Landroid/media/projection/MediaProjection;
    .param p2, "config"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;
    .param p3, "rotationPortrain"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    .local v10, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 20
    iget v11, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    .local v11, "width":I
    iget v9, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 22
    .local v9, "height":I
    if-eqz p3, :cond_0

    .line 23
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    if-ne v11, v0, :cond_1

    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    if-ne v9, v0, :cond_1

    .line 24
    const-string v0, "VirtualDisplayOprate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 rotationPortrain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v9    # "height":I
    .end local v10    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "width":I
    :goto_0
    return-object p0

    .line 28
    .restart local v9    # "height":I
    .restart local v10    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v11    # "width":I
    :cond_0
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    if-ne v11, v0, :cond_1

    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    if-ne v9, v0, :cond_1

    .line 29
    const-string v0, "VirtualDisplayOprate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 rotationPortrain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v9    # "height":I
    .end local v10    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "width":I
    :cond_1
    if-eqz p0, :cond_2

    .line 36
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 37
    const/4 p0, 0x0

    .line 39
    :cond_2
    if-eqz p3, :cond_3

    .line 40
    const-string v1, "ScreenCastThread-display"

    sget v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    sget v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    move-object v0, p1

    move v5, v4

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_3
    const-string v1, "ScreenCastThread-display"

    sget v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    sget v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    move-object v0, p1

    move v5, v4

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Z)Z
    .locals 3
    .param p0, "mVirtualDisplay"    # Landroid/hardware/display/VirtualDisplay;
    .param p1, "rotationPortrain"    # Z

    .prologue
    const/4 v2, 0x1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    sget v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 61
    :goto_0
    return v2

    .line 59
    :cond_0
    sget v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->maxValue:I

    sget v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->minValue:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    goto :goto_0
.end method
