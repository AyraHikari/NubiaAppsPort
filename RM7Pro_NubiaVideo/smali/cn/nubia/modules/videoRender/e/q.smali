.class public Lcn/nubia/modules/videoRender/e/q;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I


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

    const-string v0, "precision highp float; \nuniform sampler2D uTextureSampler;\nvarying vec2 vTextureCoord;\nuniform float Time;\nvoid main() { \n   float duration = 3.0; \n   float time = mod(Time, duration); \n   vec4 mask = texture2D(uTextureSampler,vTextureCoord );\n   if(time== 0.0){\n       gl_FragColor =  vec4(mask.r * 2.0,mask.g,mask.b,1.0);} \n   else if(time == 1.0){\n       gl_FragColor =  vec4(mask.r,mask.g* 2.0,mask.b,1.0);} \n   else{ \n       gl_FragColor =  vec4(mask.r,mask.g,mask.b* 2.0,1.0);} \n }"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 2

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

    iput p1, p0, Lcn/nubia/modules/videoRender/e/q;->c:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x12c

    .line 6
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    rem-long/2addr p1, v0

    long-to-float p1, p1

    .line 7
    iget p2, p0, Lcn/nubia/modules/videoRender/e/q;->c:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method
