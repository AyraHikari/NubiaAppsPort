.class public Lcn/nubia/modules/videoRender/e/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v0, v1, v2

    if-eqz v0, :cond_0

    .line 3
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v4, 0x2601

    .line 4
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 5
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 6
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 7
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 8
    aget v0, v1, v2

    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error loading texture."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
