.class public Lcn/nubia/algorithm/utils/BufferManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "buffer_manager"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getData(I)[B
.end method

.method public static native getRemainImages()I
.end method

.method public static native initDataBuffer(JI)Z
.end method

.method public static native putData(I[B)Z
.end method

.method public static native releaseBuffer()V
.end method
