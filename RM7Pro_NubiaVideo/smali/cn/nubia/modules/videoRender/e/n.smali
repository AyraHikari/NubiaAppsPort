.class public Lcn/nubia/modules/videoRender/e/n;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:F

.field private e:Z

.field private f:F

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/e/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/modules/videoRender/e/n;->d:F

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcn/nubia/modules/videoRender/e/n;->e:Z

    .line 4
    iput v0, p0, Lcn/nubia/modules/videoRender/e/n;->f:F

    .line 5
    iput v1, p0, Lcn/nubia/modules/videoRender/e/n;->g:I

    .line 6
    iput v1, p0, Lcn/nubia/modules/videoRender/e/n;->h:I

    return-void
.end method

.method private n(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/g/a;->a()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float; \nuniform sampler2D uTextureSampler;\nvarying highp vec2 vTextureCoord;\nuniform float scale;\nvoid main() { \n   vec2 uv = vTextureCoord.xy; \n   vec2 center = vec2(0.5, 0.5); \n   uv -= center; \n   uv = uv / scale;  \n   uv += center;  \n   gl_FragColor =  texture2D(uTextureSampler, uv);\n  }"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    const-string p2, "width"

    .line 2
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    const-string p2, "height"

    .line 3
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p2

    invoke-interface {p2}, Lcn/nubia/modules/videoRender/e/j;->a()I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/n;->h:I

    .line 6
    :cond_0
    iget p2, p0, Lcn/nubia/modules/videoRender/e/n;->h:I

    iget p3, p0, Lcn/nubia/modules/videoRender/e/n;->g:I

    sub-int p3, p2, p3

    const/16 v0, 0x19

    if-le p3, v0, :cond_4

    .line 7
    iput p2, p0, Lcn/nubia/modules/videoRender/e/n;->g:I

    .line 8
    iget p2, p0, Lcn/nubia/modules/videoRender/e/n;->d:F

    iget-boolean p3, p0, Lcn/nubia/modules/videoRender/e/n;->e:Z

    if-eqz p3, :cond_1

    const p3, 0x3d75c28f    # 0.06f

    goto :goto_0

    :cond_1
    const p3, -0x428a3d71    # -0.06f

    :goto_0
    add-float/2addr p2, p3

    iput p2, p0, Lcn/nubia/modules/videoRender/e/n;->d:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p3

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcn/nubia/modules/videoRender/e/n;->e:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcn/nubia/modules/videoRender/e/n;->e:Z

    :cond_3
    :goto_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 11
    invoke-direct {p0, p2}, Lcn/nubia/modules/videoRender/e/n;->n(F)F

    move-result p2

    mul-float/2addr p2, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcn/nubia/modules/videoRender/e/n;->f:F

    .line 12
    :cond_4
    iget p2, p0, Lcn/nubia/modules/videoRender/e/n;->h:I

    iget p3, p0, Lcn/nubia/modules/videoRender/e/n;->g:I

    if-gt p2, p3, :cond_5

    .line 13
    iput p2, p0, Lcn/nubia/modules/videoRender/e/n;->g:I

    :cond_5
    const-string p2, "scale"

    .line 14
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/modules/videoRender/e/n;->c:I

    .line 15
    iget p2, p0, Lcn/nubia/modules/videoRender/e/n;->f:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method
