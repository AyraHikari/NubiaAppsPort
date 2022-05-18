.class public Lcn/nubia/modules/videoRender/e/p;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


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

    const-string v0, "precision highp float; \nuniform sampler2D uTextureSampler;\nvarying highp vec2 vTextureCoord;\n   void main() { \n   vec2 uv = vTextureCoord; \n   if (uv.x <= 1.0/3.0) { \n       uv.x = (uv.x + 1.0/3.0) * 3.0; \n    } else if(uv.x <= 2.0/3.0){ \n       uv.x = (uv.x) * 3.0; \n    } else if(uv.x >= 2.0/3.0){ \n       uv.x = (uv.x -1.0/3.0) * 3.0;} \n   if (uv.y <= 0.5) {\n       uv.y = uv.y * 2.0;\n    } else{ \n        uv.y = (uv.y - 0.5) * 2.0;}\n   gl_FragColor = texture2D(uTextureSampler,fract(uv));\n  }"

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

    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method
