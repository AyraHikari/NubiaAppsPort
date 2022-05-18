.class public Lcn/nubia/modules/videoRender/e/a;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/e/d;-><init>()V

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

    const-string v0, "precision highp float; \nuniform sampler2D uTextureSampler;\nuniform float width;\nuniform float height;\nvarying highp vec2 vTextureCoord;\n   void main() { \n   vec2 uv = vTextureCoord.xy; \n  if(height > width){ \n   float y; \n   if (uv.y >= 0.0 && uv.y <= 0.5) { \n      y = uv.y +0.25; \n    } else { \n      y = uv.y - 0.25;} \n   gl_FragColor = texture2D(uTextureSampler,vec2(uv.x,y));\n} else {\n   float x; \n   if (uv.x >= 0.0 && uv.x <= 0.5) { \n      x = uv.x +0.25; \n    } else { \n      x = uv.x - 0.25;} \n   gl_FragColor = texture2D(uTextureSampler,vec2(x,uv.y));\n} \n  }"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    const-string p3, "width"

    .line 2
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/a;->c:I

    const-string p3, "height"

    .line 3
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/modules/videoRender/e/a;->d:I

    .line 4
    iget p1, p0, Lcn/nubia/modules/videoRender/e/a;->c:I

    invoke-virtual {p2}, Lc/c/a/e/a;->h()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p3}, Lc/c/a/d;->a(IF)V

    .line 5
    iget p1, p0, Lcn/nubia/modules/videoRender/e/a;->d:I

    invoke-virtual {p2}, Lc/c/a/e/a;->c()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lc/c/a/d;->a(IF)V

    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method
