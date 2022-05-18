.class public Lcom/hpplay/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/a/h$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x9

.field private static final b:Z = false

.field private static final c:Ljava/lang/String; = "Texture2dProgram"

.field private static final d:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

.field private static final e:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final f:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final g:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

.field private static final h:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    gl_FragColor = vec4(color, color + 0.15, color, 1.0);\n}\n"

.field private static final i:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    if(tc.g > 0.6 && tc.b < 0.6 && tc.r < 0.6){ \n        gl_FragColor = vec4(0, 0, 0, 0.0);\n    }else{ \n        gl_FragColor = texture2D(sTexture, vTextureCoord);\n    }\n}\n"

.field private static final j:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = pow(r, 1.0/1.8) * 0.8;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final k:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    phi = phi + (1.0 - smoothstep(-0.5, 0.5, r)) * 4.0;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final l:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    if (r > 0.5) r = 0.5;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final m:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * smoothstep(-0.1, 0.5, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final n:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = 2.0 * r - r * smoothstep(0.0, 0.7, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final o:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * r / sqrt(2.0);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final p:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    vec2 s = sign(normCoord + uPosition);\n    normCoord = abs(normCoord);\n    normCoord = 0.5 * normCoord + 0.5 * smoothstep(0.25, 0.5, normCoord) * normCoord;\n    normCoord = s * normCoord;\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final q:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    normCoord.x = normCoord.x * sign(normCoord.x + uPosition.x);\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field private static final r:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n    }\n    sum += uColorAdjust;\n    gl_FragColor = sum;\n}\n"

.field private static final s:Ljava/lang/String; = "#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n    }\n    sum += uColorAdjust;\n    gl_FragColor = sum;\n}\n"


# instance fields
.field private A:I

.field private B:I

.field private final C:I

.field private final D:I

.field private E:I

.field private F:I

.field private final G:[F

.field private final H:[F

.field private final I:[F

.field private J:[F

.field private K:F

.field private final t:Lcom/hpplay/a/h$a;

.field private u:F

.field private v:F

.field private w:I

.field private final x:I

.field private final y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/hpplay/a/h$a;)V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x9

    const/4 v1, 0x2

    const/4 v3, -0x1

    const v2, 0x8d65

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hpplay/a/h;->G:[F

    .line 310
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/hpplay/a/h;->H:[F

    .line 311
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/hpplay/a/h;->I:[F

    .line 320
    iput-object p1, p0, Lcom/hpplay/a/h;->t:Lcom/hpplay/a/h$a;

    .line 322
    sget-object v0, Lcom/hpplay/a/h$1;->a:[I

    invoke-virtual {p1}, Lcom/hpplay/a/h$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_0
    const/16 v0, 0xde1

    iput v0, p0, Lcom/hpplay/a/h;->F:I

    .line 325
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    .line 386
    :goto_0
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_1
    const/16 v0, 0xde1

    iput v0, p0, Lcom/hpplay/a/h;->F:I

    .line 329
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n    }\n    sum += uColorAdjust;\n    gl_FragColor = sum;\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 332
    :pswitch_2
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 333
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 336
    :pswitch_3
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 337
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 340
    :pswitch_4
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 341
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    gl_FragColor = vec4(color, color + 0.15, color, 1.0);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 344
    :pswitch_5
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 345
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    if(tc.g > 0.6 && tc.b < 0.6 && tc.r < 0.6){ \n        gl_FragColor = vec4(0, 0, 0, 0.0);\n    }else{ \n        gl_FragColor = texture2D(sTexture, vTextureCoord);\n    }\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 348
    :pswitch_6
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 349
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = pow(r, 1.0/1.8) * 0.8;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 352
    :pswitch_7
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 353
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    phi = phi + (1.0 - smoothstep(-0.5, 0.5, r)) * 4.0;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 356
    :pswitch_8
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 357
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    if (r > 0.5) r = 0.5;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto :goto_0

    .line 360
    :pswitch_9
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 361
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * smoothstep(-0.1, 0.5, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto/16 :goto_0

    .line 364
    :pswitch_a
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 365
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * r / sqrt(2.0);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto/16 :goto_0

    .line 368
    :pswitch_b
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 369
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = 2.0 * r - r * smoothstep(0.0, 0.7, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto/16 :goto_0

    .line 372
    :pswitch_c
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 373
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    normCoord.x = normCoord.x * sign(normCoord.x + uPosition.x);\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto/16 :goto_0

    .line 376
    :pswitch_d
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 377
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    vec2 s = sign(normCoord + uPosition);\n    normCoord = abs(normCoord);\n    normCoord = 0.5 * normCoord + 0.5 * smoothstep(0.25, 0.5, normCoord) * normCoord;\n    normCoord = s * normCoord;\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto/16 :goto_0

    .line 380
    :pswitch_e
    iput v2, p0, Lcom/hpplay/a/h;->F:I

    .line 381
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 vCoord = vec4(aPosition.x, aPosition.y, 1.0, 1.0);\n    vec4 tCoord = vec4(aTextureCoord.x, aTextureCoord.y, 1.0, 1.0);\n    gl_Position = uMVPMatrix * vCoord;\n    vTextureCoord = (uTexMatrix * tCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n    }\n    sum += uColorAdjust;\n    gl_FragColor = sum;\n}\n"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    goto/16 :goto_0

    .line 395
    :cond_0
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->C:I

    .line 396
    iget v0, p0, Lcom/hpplay/a/h;->C:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->b(ILjava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->D:I

    .line 398
    iget v0, p0, Lcom/hpplay/a/h;->D:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->b(ILjava/lang/String;)V

    .line 399
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->x:I

    .line 400
    iget v0, p0, Lcom/hpplay/a/h;->x:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->b(ILjava/lang/String;)V

    .line 401
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->y:I

    .line 402
    iget v0, p0, Lcom/hpplay/a/h;->y:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->b(ILjava/lang/String;)V

    .line 403
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "uKernel"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->z:I

    .line 404
    iget v0, p0, Lcom/hpplay/a/h;->z:I

    if-gez v0, :cond_2

    .line 406
    iput v3, p0, Lcom/hpplay/a/h;->z:I

    .line 407
    iput v3, p0, Lcom/hpplay/a/h;->A:I

    .line 408
    iput v3, p0, Lcom/hpplay/a/h;->B:I

    .line 422
    :goto_1
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "uPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->E:I

    .line 423
    iget v0, p0, Lcom/hpplay/a/h;->E:I

    if-gez v0, :cond_1

    .line 425
    iput v3, p0, Lcom/hpplay/a/h;->E:I

    .line 431
    :cond_1
    return-void

    .line 412
    :cond_2
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "uTexOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->A:I

    .line 413
    iget v0, p0, Lcom/hpplay/a/h;->A:I

    const-string v1, "uTexOffset"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->b(ILjava/lang/String;)V

    .line 414
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    const-string v1, "uColorAdjust"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/h;->B:I

    .line 415
    iget v0, p0, Lcom/hpplay/a/h;->B:I

    const-string v1, "uColorAdjust"

    invoke-static {v0, v1}, Lcom/hpplay/a/f;->b(ILjava/lang/String;)V

    .line 418
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/a/h;->a([FF)V

    .line 419
    invoke-virtual {p0, v5, v5}, Lcom/hpplay/a/h;->a(II)V

    goto :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 418
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 441
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/a/h;->w:I

    .line 442
    return-void
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 517
    int-to-float v0, p2

    iput v0, p0, Lcom/hpplay/a/h;->v:F

    .line 518
    int-to-float v0, p1

    iput v0, p0, Lcom/hpplay/a/h;->u:F

    .line 519
    int-to-float v0, p1

    div-float v0, v2, v0

    .line 520
    int-to-float v1, p2

    div-float v1, v2, v1

    .line 523
    const/16 v2, 0x12

    new-array v2, v2, [F

    const/4 v3, 0x0

    neg-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    neg-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v3, 0x5

    neg-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x6

    neg-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput v5, v2, v3

    const/16 v3, 0xa

    aput v0, v2, v3

    const/16 v3, 0xb

    aput v5, v2, v3

    const/16 v3, 0xc

    neg-float v4, v0

    aput v4, v2, v3

    const/16 v3, 0xd

    aput v1, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput v1, v2, v3

    const/16 v3, 0x10

    aput v0, v2, v3

    const/16 v0, 0x11

    aput v1, v2, v0

    iput-object v2, p0, Lcom/hpplay/a/h;->J:[F

    .line 525
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 482
    iget v0, p0, Lcom/hpplay/a/h;->v:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/a/h;->u:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/hpplay/a/h;->H:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/hpplay/a/h;->I:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/hpplay/a/h;->u:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 484
    iget-object v0, p0, Lcom/hpplay/a/h;->H:[F

    aget v1, v0, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/hpplay/a/h;->I:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/hpplay/a/h;->v:F

    neg-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 485
    iget-object v0, p0, Lcom/hpplay/a/h;->I:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v4

    .line 486
    iget-object v0, p0, Lcom/hpplay/a/h;->I:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v5

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/hpplay/a/h;->I:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v4

    .line 492
    iget-object v0, p0, Lcom/hpplay/a/h;->I:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v5

    goto :goto_0
.end method

.method public a([FF)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x9

    .line 504
    array-length v0, p1

    if-eq v0, v3, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kernel size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/hpplay/a/h;->G:[F

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iput p2, p0, Lcom/hpplay/a/h;->K:F

    .line 511
    return-void
.end method

.method public a([F[FIII)V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v1, 0x2

    const v7, 0x8892

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 529
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 532
    iget v0, p0, Lcom/hpplay/a/h;->w:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 533
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 536
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 537
    iget v0, p0, Lcom/hpplay/a/h;->F:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 538
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 541
    iget v0, p0, Lcom/hpplay/a/h;->x:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 542
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 545
    iget v0, p0, Lcom/hpplay/a/h;->y:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 546
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 548
    invoke-static {v7, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 549
    iget v0, p0, Lcom/hpplay/a/h;->C:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 550
    iget v0, p0, Lcom/hpplay/a/h;->C:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 552
    invoke-static {v7, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 553
    iget v0, p0, Lcom/hpplay/a/h;->D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 554
    iget v0, p0, Lcom/hpplay/a/h;->D:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 557
    iget v0, p0, Lcom/hpplay/a/h;->z:I

    if-ltz v0, :cond_0

    .line 558
    iget v0, p0, Lcom/hpplay/a/h;->z:I

    iget-object v1, p0, Lcom/hpplay/a/h;->G:[F

    invoke-static {v0, v8, v1, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 559
    iget v0, p0, Lcom/hpplay/a/h;->A:I

    iget-object v1, p0, Lcom/hpplay/a/h;->J:[F

    invoke-static {v0, v8, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 560
    iget v0, p0, Lcom/hpplay/a/h;->B:I

    iget v1, p0, Lcom/hpplay/a/h;->K:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 564
    :cond_0
    iget v0, p0, Lcom/hpplay/a/h;->E:I

    if-ltz v0, :cond_1

    .line 565
    iget v0, p0, Lcom/hpplay/a/h;->E:I

    iget-object v1, p0, Lcom/hpplay/a/h;->H:[F

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 569
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 570
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 573
    iget v0, p0, Lcom/hpplay/a/h;->C:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 574
    iget v0, p0, Lcom/hpplay/a/h;->D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 575
    iget v0, p0, Lcom/hpplay/a/h;->F:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 576
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 577
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 578
    return-void
.end method

.method public b()Lcom/hpplay/a/h$a;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/hpplay/a/h;->t:Lcom/hpplay/a/h$a;

    return-object v0
.end method

.method public c()I
    .locals 5

    .prologue
    const v4, 0x812f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    new-array v0, v1, [I

    .line 458
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 459
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 461
    aget v0, v0, v2

    .line 462
    iget v1, p0, Lcom/hpplay/a/h;->F:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 465
    iget v1, p0, Lcom/hpplay/a/h;->F:I

    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 466
    iget v1, p0, Lcom/hpplay/a/h;->F:I

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 467
    iget v1, p0, Lcom/hpplay/a/h;->F:I

    const/16 v2, 0x2802

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 468
    iget v1, p0, Lcom/hpplay/a/h;->F:I

    const/16 v2, 0x2803

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 469
    const-string v1, "glTexParameter"

    invoke-static {v1}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 471
    return v0
.end method
