.class public Lcn/nubia/modules/videoRender/e/e;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/e/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/modules/videoRender/e/e;->d:Z

    .line 3
    iput-boolean v0, p0, Lcn/nubia/modules/videoRender/e/e;->e:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/nubia/modules/videoRender/e/e;->g:I

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

    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/e;->c()Ljava/lang/String;

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

    const-string v0, "precision mediump float; \nuniform sampler2D uTextureSampler;\nvarying highp vec2 vTextureCoord;\nuniform float blur_step;\nvoid main() { \nvec2 coord = vTextureCoord;\n   vec4 color = texture2D(uTextureSampler, vec2(coord.s-blur_step, coord.t+blur_step));\n   color += texture2D(uTextureSampler, vec2(coord.s, coord.t+blur_step));\n   color += texture2D(uTextureSampler, vec2(coord.s+blur_step, coord.t+blur_step));\n   color += texture2D(uTextureSampler, vec2(coord.s-blur_step, coord.t));\n   color += texture2D(uTextureSampler, vec2(coord.s, coord.t));\n   color += texture2D(uTextureSampler, vec2(coord.s+blur_step, coord.t));\n   color += texture2D(uTextureSampler, vec2(coord.s-blur_step, coord.t-blur_step));\n   color += texture2D(uTextureSampler, vec2(coord.s, coord.t-blur_step));\n   color += texture2D(uTextureSampler, vec2(coord.s+blur_step, coord.t-blur_step));\ncolor /= 9.0;\n   gl_FragColor = vec4(color.rgb, 1.0);\n  }"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 2

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

    iput p2, p0, Lcn/nubia/modules/videoRender/e/e;->f:I

    .line 4
    :cond_0
    iget p2, p0, Lcn/nubia/modules/videoRender/e/e;->f:I

    iget p3, p0, Lcn/nubia/modules/videoRender/e/e;->g:I

    sub-int/2addr p2, p3

    rem-int/lit16 p2, p2, 0x3e8

    int-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    .line 5
    iget-boolean p3, p0, Lcn/nubia/modules/videoRender/e/e;->d:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcn/nubia/modules/videoRender/e/e;->e:Z

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p0, Lcn/nubia/modules/videoRender/e/e;->e:Z

    :cond_1
    const p3, 0x3f333333    # 0.7f

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v1, p2, p3

    if-gez v1, :cond_2

    mul-float/2addr p2, v0

    div-float/2addr p2, p3

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v1, v0

    mul-float p2, v1, p3

    :goto_0
    const-string p3, "blur_step"

    .line 7
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/modules/videoRender/e/e;->c:I

    .line 8
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/nubia/modules/videoRender/e/e;->d:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/nubia/modules/videoRender/e/e;->d:Z

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/modules/videoRender/e/d;->i(I)V

    .line 2
    iput p1, p0, Lcn/nubia/modules/videoRender/e/e;->g:I

    .line 3
    iput p1, p0, Lcn/nubia/modules/videoRender/e/e;->f:I

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

    return-void
.end method
