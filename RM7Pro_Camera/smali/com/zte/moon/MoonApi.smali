.class public Lcom/zte/moon/MoonApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewnNative"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "zspmoon"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PreviewnNative"

    const-string v2, "load zspmoon error:"

    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/zte/moon/MoonApi;->context:Landroid/content/Context;

    return-void
.end method

.method public static native calcMainHistogram(Landroid/graphics/Bitmap;II[I)V
.end method

.method public static native computeMoonEv(Ljava/nio/ByteBuffer;[I[IIIIF)V
.end method

.method public static native computeMoonEv2(Landroid/graphics/Bitmap;[I[IIIIF)V
.end method

.method public static native cropAndScaleNV21([B[BIIF)V
.end method

.method public static native detectMoonFromBitmap(Landroid/graphics/Bitmap;IZI)[Lcom/zte/moon/Box;
.end method

.method public static native detectMoonFromNV21([BIIIZI)[Lcom/zte/moon/Box;
.end method

.method public static native getMoonScale()F
.end method

.method public static native getVersion()F
.end method

.method public static native isDetectMoonAIEnable()Z
.end method

.method public static native merge(III[B[B)V
.end method

.method public static native mergeFromMainAndTel([B[BIII[BIII)I
.end method

.method public static native oclInit(Landroid/content/res/AssetManager;Lcom/zte/moon/OCLVersionManager;)V
.end method

.method public static native readNV21FromJpg([BLjava/lang/String;)V
.end method

.method public static native release()V
.end method

.method public static native saveNV21ToJpg([BLjava/lang/String;II)V
.end method

.method public static native setCenterPosRatio(FFFFF)V
.end method

.method public static native setDetectMoonParam(FFFFFZ)V
.end method

.method public static native setMoonScale(F)V
.end method
