.class public Lc/c/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/c/a/g/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sampler2D"

    const-string v3, "samplerExternalOES"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 0

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    return-object v0
.end method
