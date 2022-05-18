.class public Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;
.super Ljava/lang/Object;
.source "GLES20IdImpl.java"

# interfaces
.implements Lcn/nubia/gallery3d/glrenderer/GLId;


# instance fields
.field private final mTempIntArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    return-void
.end method


# virtual methods
.method public generateTexture()I
    .locals 3

    .line 13
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 14
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 15
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    aget v0, v0, v2

    return v0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0

    .line 33
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 34
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
    .locals 0

    .line 39
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 40
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0

    .line 26
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 27
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 0

    .line 20
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 21
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method
