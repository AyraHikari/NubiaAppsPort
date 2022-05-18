.class public Lcn/nubia/modules/videoRender/e/o;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/e/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/modules/videoRender/e/o;->d:I

    .line 3
    iput v0, p0, Lcn/nubia/modules/videoRender/e/o;->e:I

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

    const-string v0, "precision highp float; \nuniform sampler2D uTextureSampler;\nvarying highp vec2 vTextureCoord;\nuniform float Time;\nvoid main() { \n   float duration = 0.7; \n   float maxScale = 1.1; \n   float offset = 0.02; \n   float progress = mod(Time, duration) / duration;  \n   vec2 offsetCoords = vec2(offset, offset) * progress;  \n   float scale = 1.0 + (maxScale - 1.0) * progress; \n   vec2 ScaleTextureCoords = vec2(0.5, 0.5) + (vTextureCoord - vec2(0.5, 0.5)) / scale;   \n   vec4 maskR = texture2D(uTextureSampler,ScaleTextureCoords + offsetCoords);\n   vec4 maskB = texture2D(uTextureSampler,ScaleTextureCoords - offsetCoords);\n   vec4 mask = texture2D(uTextureSampler,ScaleTextureCoords );\n   gl_FragColor =  vec4(maskR.r, mask.g, maskB.b, mask.a);\n  }"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    const-string p2, "width"

    .line 2
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    const-string p2, "height"

    .line 3
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    const-string p2, "Time"

    .line 4
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/modules/videoRender/e/o;->c:I

    .line 5
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/modules/videoRender/e/j;->a()I

    move-result p1

    iput p1, p0, Lcn/nubia/modules/videoRender/e/o;->e:I

    .line 7
    :cond_0
    iget p1, p0, Lcn/nubia/modules/videoRender/e/o;->e:I

    iget p2, p0, Lcn/nubia/modules/videoRender/e/o;->d:I

    sub-int p2, p1, p2

    const/16 p3, 0x30

    if-le p2, p3, :cond_1

    .line 8
    iput p1, p0, Lcn/nubia/modules/videoRender/e/o;->d:I

    const p2, 0x186a0

    .line 9
    rem-int p2, p1, p2

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/o;->f:F

    .line 10
    :cond_1
    iget p2, p0, Lcn/nubia/modules/videoRender/e/o;->d:I

    if-gt p1, p2, :cond_2

    .line 11
    iput p1, p0, Lcn/nubia/modules/videoRender/e/o;->d:I

    .line 12
    :cond_2
    iget p1, p0, Lcn/nubia/modules/videoRender/e/o;->c:I

    iget p2, p0, Lcn/nubia/modules/videoRender/e/o;->f:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method
