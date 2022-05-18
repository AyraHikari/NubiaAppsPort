.class public Lcn/nubia/modules/videoRender/e/k;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/e/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/modules/videoRender/e/k;->c:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/nubia/modules/videoRender/e/k;->f:I

    return-void
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

    const-string v0, "precision mediump float; \nuniform sampler2D uTextureSampler;\nvarying highp vec2 vTextureCoord;\nuniform float WinHeight;\nuniform mat4 uTexMatrix;\nvoid main() { \n   vec4 color = texture2D(uTextureSampler, vTextureCoord);\nvec2 texCoord = (uTexMatrix * vec4(vTextureCoord, 1.0, 1.0)).st;\n   color = abs(texCoord.y-0.5) > WinHeight/2.0 ? vec4(0.0, 0.0, 0.0, 1.0) : color;   gl_FragColor = color;  }"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 7

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

    iput p2, p0, Lcn/nubia/modules/videoRender/e/k;->e:I

    .line 4
    :cond_0
    iget p2, p0, Lcn/nubia/modules/videoRender/e/k;->e:I

    iget p3, p0, Lcn/nubia/modules/videoRender/e/k;->f:I

    sub-int/2addr p2, p3

    rem-int/lit16 p2, p2, 0x3e8

    int-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    const-string p3, "WinHeight"

    .line 6
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/k;->d:I

    .line 7
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p2, "uTexMatrix"

    .line 8
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    const/16 p2, 0x10

    new-array p2, p2, [F

    const/4 p3, 0x0

    .line 9
    invoke-static {p2, p3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 10
    invoke-static {p2, p3, v0, v0, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v1, 0x0

    .line 11
    iget v0, p0, Lcn/nubia/modules/videoRender/e/k;->c:I

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 12
    invoke-static {p2, p3, v0, v0, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v0, p3, p2, p3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x3e8

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
    iput p1, p0, Lcn/nubia/modules/videoRender/e/k;->f:I

    .line 3
    iput p1, p0, Lcn/nubia/modules/videoRender/e/k;->e:I

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
    iput p1, p0, Lcn/nubia/modules/videoRender/e/k;->c:I

    return-void
.end method
