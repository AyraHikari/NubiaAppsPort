.class public Lcn/nubia/modules/videoRender/e/s;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/e/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/modules/videoRender/e/s;->c:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/nubia/modules/videoRender/e/s;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/g/a;->a()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/s;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sampler2D"

    const-string v3, "samplerExternalOES"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float; \nvarying highp vec2 vTextureCoord;\nuniform sampler2D uTextureSampler;\nuniform float sOffset;//s\u504f\u79fb\nuniform float tOffset;//t\u504f\u79fb\nvoid main() { \nvec2 coord = vTextureCoord + vec2(sOffset, tOffset);\ncoord = mod(coord + 1.0, 1.0);\ngl_FragColor = texture2D(uTextureSampler, coord);\n  }"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p2

    invoke-interface {p2}, Lcn/nubia/modules/videoRender/e/j;->a()I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/s;->d:I

    .line 4
    :cond_0
    iget p2, p0, Lcn/nubia/modules/videoRender/e/s;->d:I

    iget p3, p0, Lcn/nubia/modules/videoRender/e/s;->e:I

    sub-int/2addr p2, p3

    rem-int/lit16 p2, p2, 0x1f4

    int-to-float p2, p2

    const/high16 p3, 0x43fa0000    # 500.0f

    div-float/2addr p2, p3

    .line 5
    iget p3, p0, Lcn/nubia/modules/videoRender/e/s;->c:I

    rem-int/lit16 p3, p3, 0x168

    const/4 v0, 0x0

    if-nez p3, :cond_1

    neg-float p2, p2

    :goto_0
    move v2, v0

    move v0, p2

    move p2, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x5a

    if-ne p3, v1, :cond_2

    neg-float p2, p2

    goto :goto_1

    :cond_2
    const/16 v1, 0xb4

    if-ne p3, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x10e

    if-ne p3, v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    const-string p3, "sOffset"

    .line 6
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    .line 7
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p2, "tOffset"

    .line 8
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 9
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/modules/videoRender/e/d;->i(I)V

    .line 2
    iput p1, p0, Lcn/nubia/modules/videoRender/e/s;->e:I

    .line 3
    iput p1, p0, Lcn/nubia/modules/videoRender/e/s;->d:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/modules/videoRender/e/d;->k(I)V

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/modules/videoRender/e/d;->l(I)V

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/modules/videoRender/e/d;->m(I)V

    .line 2
    iput p1, p0, Lcn/nubia/modules/videoRender/e/s;->c:I

    return-void
.end method
