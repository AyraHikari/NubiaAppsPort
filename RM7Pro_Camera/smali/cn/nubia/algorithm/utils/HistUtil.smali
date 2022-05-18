.class public Lcn/nubia/algorithm/utils/HistUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "histutil"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native getMaxHis(Landroid/graphics/Bitmap;[III)I
.end method
