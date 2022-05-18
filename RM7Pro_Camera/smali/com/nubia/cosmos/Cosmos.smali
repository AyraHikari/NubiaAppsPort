.class public Lcom/nubia/cosmos/Cosmos;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Cosmos"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native StarTraceEffectCreate()J
.end method

.method public static native StarTraceEffectDestroy(J)V
.end method

.method public static native StarTraceEffectInit(JIIIZ)V
.end method

.method public static native StarTraceEffectLoadResource(J)J
.end method

.method public static native StarTraceEffectOnProcess(JI)V
.end method

.method public static native StarTraceEffectSetParam(J[I[F)I
.end method

.method public static native StarTraceEffectSetSkyImage(JIILjava/nio/ByteBuffer;)V
.end method

.method public static native StarTraceEffectSetSkyMask(JIILjava/nio/ByteBuffer;)V
.end method

.method public static native StarTraceEffectTakePictureBitmap(JLandroid/graphics/Bitmap;ZI)V
.end method

.method public static native StarTraceEffectUnInit(J)V
.end method

.method public static native changeSkyInit()J
.end method

.method public static native changeSkyProgress(JLandroid/graphics/Bitmap;IIIIILandroid/graphics/Bitmap;IZ[I)Landroid/graphics/Bitmap;
.end method

.method public static native changeSkyRelease(J)V
.end method

.method public static native eraseTailInit()J
.end method

.method public static native eraseTailProgress(JLandroid/graphics/Bitmap;IIIIF[F[FFFFF)Landroid/graphics/Bitmap;
.end method

.method public static native eraseTailRelease(J)V
.end method

.method public static native getSky(Landroid/graphics/Bitmap;I[B)Z
.end method

.method public static native starrySkyEffect(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method
