.class public Lcn/nubia/algorithm/utils/RGBAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Algorithm"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;
    .locals 1

    .line 20
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    iget-object p0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0, p1, p2}, Lcn/nubia/algorithm/utils/RGBAlgorithm;->rgba2rgb(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static native rgba2rgb(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method
