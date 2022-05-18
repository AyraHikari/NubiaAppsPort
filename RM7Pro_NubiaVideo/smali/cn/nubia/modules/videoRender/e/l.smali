.class public Lcn/nubia/modules/videoRender/e/l;
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

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method
