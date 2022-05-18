.class public Lcn/nubia/algorithm/camera/IdPhoto;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IdPhoto"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native generatePhoto([BII[FIIII[I)[B
.end method

.method public static native init(Ljava/lang/String;)Z
.end method

.method public static native release()V
.end method
