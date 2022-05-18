.class public Lcn/nubia/modules/videoRender/e/h;
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

    const-string v0, "precision mediump float; \nvarying highp vec2 vTextureCoord;\n\nuniform sampler2D uTextureSampler;\n\nvoid main() {\n   lowp vec4 color = texture2D(uTextureSampler, vTextureCoord);\n   float y = dot(color, vec4(0.299, 0.587, 0.114, 0)); \n   gl_FragColor = vec4(y, y, y, color.a);\n}"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/d;->g()Lcn/nubia/modules/videoRender/e/j;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/modules/videoRender/e/j;->a()I

    :cond_0
    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/modules/videoRender/e/d;->i(I)V

    return-void
.end method
