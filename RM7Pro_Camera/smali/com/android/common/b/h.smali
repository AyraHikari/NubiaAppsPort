.class public Lcom/android/common/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 24
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 25
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 26
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 27
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 28
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 31
    aget v0, v1, v2

    return v0
.end method

.method public static varargs a([I)V
    .locals 2

    .line 36
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
