.class public interface abstract Lcn/nubia/gallery3d/glrenderer/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# static fields
.field public static final SAVE_FLAG_ALL:I = -0x1

.field public static final SAVE_FLAG_ALPHA:I = 0x1

.field public static final SAVE_FLAG_MATRIX:I = 0x2


# virtual methods
.method public abstract beginRenderTarget(Lcn/nubia/gallery3d/glrenderer/RawTexture;)V
.end method

.method public abstract clearBuffer()V
.end method

.method public abstract clearBuffer([F)V
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteRecycledResources()V
.end method

.method public abstract drawLine(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V
.end method

.method public abstract drawMesh(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IIIIII)V
.end method

.method public abstract drawMixed(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IFIIII)V
.end method

.method public abstract drawMixed(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawRect(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V
.end method

.method public abstract drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IIII)V
.end method

.method public abstract drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;[FIIII)V
.end method

.method public abstract dumpStatisticsAndClear()V
.end method

.method public abstract endRenderTarget()V
.end method

.method public abstract fillRect(FFFFI)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getBounds(Landroid/graphics/Rect;IIII)V
.end method

.method public abstract getGLId()Lcn/nubia/gallery3d/glrenderer/GLId;
.end method

.method public abstract initializeTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
.end method

.method public abstract initializeTextureSize(Lcn/nubia/gallery3d/glrenderer/BasicTexture;II)V
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract multiplyMatrix([FI)V
.end method

.method public abstract recoverFromLightCycle()V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract save()V
.end method

.method public abstract save(I)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract setTextureParameters(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V
.end method

.method public abstract texSubImage2D(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(FFF)V
.end method

.method public abstract unloadTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)Z
.end method

.method public abstract uploadBuffer(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract uploadBuffer(Ljava/nio/FloatBuffer;)I
.end method
