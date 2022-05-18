.class public Lcn/nubia/algorithm/camera/EletronicAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ElectronicFno"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native asyncPutYuvData([B)I
.end method

.method public native cancel()I
.end method

.method public native getPreivewBitmap(Landroid/graphics/Bitmap;[I)V
.end method

.method public native init(IIIIIZII)I
.end method

.method public native quit()I
.end method

.method public native stop(Landroid/graphics/Bitmap;)I
.end method
