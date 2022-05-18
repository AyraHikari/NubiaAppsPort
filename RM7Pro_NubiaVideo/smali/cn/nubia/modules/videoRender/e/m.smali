.class public Lcn/nubia/modules/videoRender/e/m;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I


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

    const-string v0, "precision mediump float; \nvarying  vec2 vTextureCoord;\n\nuniform sampler2D uTextureSampler;\nuniform float width;\nuniform float height;\nvoid main() {\nfloat xDistance = 2.0 / height;\nfloat yDistance = 2.0 / width;\nfloat beta = 1.0f;\nfloat beta_a = 0.25f;\nfloat beta_b = 1.0f;\nvec2 pos = vTextureCoord.st;\nvec3 s00 = texture2D(uTextureSampler, pos + vec2(-xDistance, yDistance)).rgb;\nvec3 s10 = texture2D(uTextureSampler, pos + vec2(xDistance, yDistance)).rgb;\nvec3 s20 = texture2D(uTextureSampler, pos + vec2(-xDistance, -yDistance)).rgb;\nvec3 s01 = texture2D(uTextureSampler, pos + vec2(xDistance, -yDistance)).rgb;\nvec3 color = texture2D(uTextureSampler, pos).rgb;\nvec3 maxcolor;\nvec3 color_T;\nmaxcolor.rgb = max(s00.rgb, s10.rgb);\nmaxcolor.rgb = max(maxcolor.rgb, s20.rgb);\nmaxcolor.rgb = max(maxcolor.rgb, s01.rgb);\nfloat maxc = max(max(maxcolor.r, maxcolor.b), maxcolor.g);\nif (maxcolor.r > 0.0) color_T.r = color.r / (maxcolor.r + (maxc - maxcolor.r) / 4.0);\nif (maxcolor.g > 0.0) color_T.g = color.g / (maxcolor.g + (maxc - maxcolor.g) / 4.0);\nif (maxcolor.b > 0.0) color_T.b = color.b / (maxcolor.b + (maxc - maxcolor.b) / 4.0);\nfloat Y_c = 0.299 * color_T.r + 0.587 * color_T.g + 0.114 * color_T.b;\nfloat alpha = min(Y_c, 57.0 / 255.0) / (57.0 / 255.0);\ncolor_T.rgb = alpha * color_T.rgb + (1.0 - alpha) * color.rgb;\nfloat YY = 0.299 * color_T.r + 0.587 * color_T.g + 0.114 * color_T.b;\nfloat II = 0.596 * color_T.r - 0.275 * color_T.g - 0.321 * color_T.b;\nfloat QQ = 0.212 * color_T.r - 0.523 * color_T.g + 0.311 * color_T.b;\nII = II * beta;\nQQ = QQ * beta;\nfloat Y = max(0.0, min(1.0, pow(1.0 * YY, 5.0 * beta_a)));\nvec3 color_o;\ncolor_o.r = Y + 0.956 * II + 0.621 * QQ;\ncolor_o.g = Y - 0.272 * II - 1.703 * QQ;\ncolor_o.b = Y - 1.106 * II + 0.000 * QQ;\ncolor.r = (1.0 - beta_b) * color.r + (beta_b) * color_o.r;\ncolor.g = (1.0 - beta_b) * color.g + (beta_b) * color_o.g;\ncolor.b = (1.0 - beta_b) * color.b + (beta_b) * color_o.b;\ncolor.rgb = min(color.rgb, 1.0);\ncolor.rgb = max(color.rgb, 0.0);\ngl_FragColor = vec4(color.rgb, 1.0);\n}"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    const-string p3, "width"

    .line 2
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/m;->c:I

    const-string p3, "height"

    .line 3
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/modules/videoRender/e/m;->d:I

    .line 4
    iget p1, p0, Lcn/nubia/modules/videoRender/e/m;->c:I

    invoke-virtual {p2}, Lc/c/a/e/a;->h()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p3}, Lc/c/a/d;->a(IF)V

    .line 5
    iget p1, p0, Lcn/nubia/modules/videoRender/e/m;->d:I

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
