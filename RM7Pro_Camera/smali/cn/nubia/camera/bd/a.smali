.class public Lcn/nubia/camera/bd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field private q:[I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/camera/bd/a;->r:I

    const-string v0, "#extension GL_OES_EGL_image_external: require\nprecision highp float;\nvarying vec2 vTexCoor;\nuniform int uSnap;\nuniform float uWidth;\nuniform float uHeight;\nuniform float uDensity;\nuniform float uScale;\nuniform vec2 uCenter;\nuniform samplerExternalOES tex;\nvoid main()\n{\n    float ratio = uHeight / uWidth;\n    float stepMin = 1.0f / uWidth;\n    float lenNowToFocus;\n    vec2 posNow = vTexCoor;\n    vec2 posBefore = vec2(0.0f, 0.0f);\n    vec2 posFocus = uCenter;\n    vec4 colorSample = vec4(0.0f);\n\n    lenNowToFocus = distance(vec2(vTexCoor.x, vTexCoor.y * ratio), \n            vec2(uCenter.x, uCenter.y * ratio));\n\n    if (lenNowToFocus >= uDensity)\n    {\n        float lengthBlur = uScale * (lenNowToFocus - uDensity);\n\n        if(posNow.x != posFocus.x)\n        {\n            float k = (posNow.y - posFocus.y) / (posNow.x - posFocus.x);\n            float signX = sign(posNow.x - posFocus.x);\n            posBefore.x = posNow.x - signX * lengthBlur / sqrt((1.0 + k * k));\n            posBefore.y = posFocus.y + k * (posBefore.x - posFocus.x);\n        }\n        else\n        {\n            float signY = sign(posNow.y - posFocus.y);\n            posBefore.y = posNow.y - signY * lengthBlur;\n            posBefore.x = posNow.x;\n        }\n\n        int sampleNums = int(lengthBlur / stepMin);\n\n        if(sampleNums < 1)\n        {\n           sampleNums = 1;\n        }\n\n        if(1 == uSnap)\n        {\n            if(sampleNums > 40)\n            {\n               sampleNums = 40;\n            }\n        }\n        else\n        {\n            if(sampleNums > 16)\n            {\n               sampleNums = 16;\n            }\n        }\n\n        vec2 step = (posNow - posBefore) / float(sampleNums);\n        vec2 posSample = posBefore;\n\n        for(int i = 0; i < sampleNums; i++)\n        {\n            colorSample += texture2D(tex, posSample);\n            posSample += step;\n        }\n\n        gl_FragColor = colorSample / float(sampleNums);\n    }\n    else\n    {\n        colorSample = texture2D(tex, vTexCoor);\n        gl_FragColor = colorSample;\n    }\n}\n"

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/bd/a;->k:Ljava/lang/String;

    const-string v0, "#extension GL_OES_EGL_image_external: require\nprecision highp float;\n\nvarying vec2 vTexCoor;\n\nuniform int uSnap;\nuniform float uWidth;\nuniform float uHeight;\nuniform float uDensity;\nuniform float uScale;\nuniform vec2 uCenter;\nuniform samplerExternalOES tex;\n\nvoid main()\n{\n    float ratio = uHeight / uWidth;\n    float stepMin = 1.0f / uWidth;\n    vec2 posBefore = (vTexCoor - uCenter) / uScale + uCenter;\n\n    float lengthBlur = distance(vec2(vTexCoor.x, vTexCoor.y * ratio), \n            vec2(posBefore.x, posBefore.y * ratio));\n    int sampleNums = int(lengthBlur / stepMin);\n\n    if(sampleNums < 1)\n    {\n        sampleNums = 1;\n    }\n\n    if(1 == uSnap)\n    {\n        if(sampleNums > 250)\n        {\n           sampleNums = 150;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n    else\n    {\n        if(sampleNums > 150)\n        {\n           sampleNums = 100;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n\n    vec2 step = (vTexCoor- posBefore) / float(sampleNums);\n    vec2 posSample = posBefore;\n    vec3 color;\n    vec3 colorSum = vec3(0.0f);\n    vec3 grayCoeff = vec3(0.299f, 0.587f, 0.114f);\n    float gray;\n\n    for (int i = 0; i < sampleNums; i++)\n    {\n        color = texture2D(tex, posSample).rgb;\n        gray = dot(color, grayCoeff);\n\n        if (gray > 0.96f)\n        {\n            color += ((gray - 0.96f) * uDensity);\n        }\n\n        colorSum += color;\n        posSample += step;\n    }\n\n    vec3 colSet = colorSum / float(sampleNums);\n\n    vec3 colNow = texture2D(tex, vTexCoor).rgb;\n    vec3 colAdd = colNow + colSet + 0.0001f;\n    vec3 colBlur = (colAdd - vec3(2.0f) * colNow * colSet / colAdd);\n\n    vec3 colBefore = texture2D(tex, posBefore).rgb;\n    vec3 colBlurAddBefore =  colBefore + colBlur + 0.0001f;\n    vec3 colOverlay = (colBlurAddBefore\n            - vec3(2.0f) * colBefore * colBlur / colBlurAddBefore);\n\n    gl_FragColor = vec4(colOverlay, 1.0f);\n}"

    .line 178
    iput-object v0, p0, Lcn/nubia/camera/bd/a;->l:Ljava/lang/String;

    const-string v0, "precision highp float;\n\nvarying vec2 vTexCoor;\n\nuniform int uSnap;\nuniform float uWidth;\nuniform float uHeight;\nuniform float uDensity;\nuniform float uScale;\nuniform vec2 uCenter;\nuniform sampler2D tex;\n\nvoid main()\n{\n    float ratio = uHeight / uWidth;\n    float stepMin = 1.0f / uWidth;\n    vec2 posBefore = (vTexCoor - uCenter) / uScale + uCenter;\n\n    float lengthBlur = distance(vec2(vTexCoor.x, vTexCoor.y * ratio), \n            vec2(posBefore.x, posBefore.y * ratio));\n    int sampleNums = int(lengthBlur / stepMin);\n\n    if(sampleNums < 1)\n    {\n        sampleNums = 1;\n    }\n\n    if(1 == uSnap)\n    {\n        if(sampleNums > 250)\n        {\n           sampleNums = 150;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n    else\n    {\n        if(sampleNums > 150)\n        {\n           sampleNums = 100;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n\n    vec2 step = (vTexCoor- posBefore) / float(sampleNums);\n    vec2 posSample = posBefore;\n    vec3 color;\n    vec3 colorSum = vec3(0.0f);\n    vec3 grayCoeff = vec3(0.299f, 0.587f, 0.114f);\n    float gray;\n\n    for (int i = 0; i < sampleNums; i++)\n    {\n        color = texture2D(tex, posSample).rgb;\n        gray = dot(color, grayCoeff);\n\n        if (gray > 0.96f)\n        {\n            color += ((gray - 0.96f) * uDensity);\n        }\n\n        colorSum += color;\n        posSample += step;\n    }\n\n    vec3 colSet = colorSum / float(sampleNums);\n\n    vec3 colNow = texture2D(tex, vTexCoor).rgb;\n    vec3 colAdd = colNow + colSet + 0.0001f;\n    vec3 colBlur = (colAdd - vec3(2.0f) * colNow * colSet / colAdd);\n\n    vec3 colBefore = texture2D(tex, posBefore).rgb;\n    vec3 colBlurAddBefore =  colBefore + colBlur + 0.0001f;\n    vec3 colOverlay = (colBlurAddBefore\n            - vec3(2.0f) * colBefore * colBlur / colBlurAddBefore);\n\n    gl_FragColor = vec4(colOverlay, 1.0f);\n}"

    .line 265
    iput-object v0, p0, Lcn/nubia/camera/bd/a;->m:Ljava/lang/String;

    const-string v0, "attribute vec2 aVertex;\nattribute vec2 aTexCoor;\nvarying vec2 vTexCoor;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\n\nvoid main()\n{\n    gl_Position = uMVPMatrix * vec4(aVertex, 0.0f, 1.0f);\n    vTexCoor = (uSTMatrix * vec4(aTexCoor, 0.0f, 1.0f)).st;\n}"

    .line 351
    iput-object v0, p0, Lcn/nubia/camera/bd/a;->n:Ljava/lang/String;

    const-string v0, "precision mediump float;\n\nvarying vec2 vTexCoor;\n\nuniform sampler2D tex;\n\nvoid main()\n{\n    gl_FragColor = texture2D(tex, vTexCoor);\n}"

    .line 364
    iput-object v0, p0, Lcn/nubia/camera/bd/a;->o:Ljava/lang/String;

    const-string v0, "#extension GL_OES_EGL_image_external: require\nprecision mediump float;\n\nvarying vec2 vTexCoor;\n\nuniform samplerExternalOES tex;\n\nvoid main()\n{\n    gl_FragColor = texture2D(tex, vTexCoor);\n}"

    .line 376
    iput-object v0, p0, Lcn/nubia/camera/bd/a;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' in program"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 75
    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bd/a;->q:[I

    const/4 p2, 0x0

    .line 76
    aget v0, p1, p2

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0, p1}, Lcom/android/common/b/n;->a(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/bd/a;->r:I

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mShaders "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/bd/a;->q:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/bd/a;->q:[I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mProgram "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/bd/a;->r:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "qwe"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 79
    iget p1, p0, Lcn/nubia/camera/bd/a;->r:I

    return p1
.end method

.method public a()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/bd/a;->q:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/bd/a;->q:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/bd/a;->q:[I

    aput v1, v0, v1

    .line 87
    aput v1, v0, v2

    .line 89
    :cond_0
    iget v0, p0, Lcn/nubia/camera/bd/a;->r:I

    if-eqz v0, :cond_1

    .line 90
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 91
    iput v1, p0, Lcn/nubia/camera/bd/a;->r:I

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    const-string v0, "aVertex"

    .line 40
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->a:I

    .line 41
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "aTexCoor"

    .line 42
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->b:I

    .line 43
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uMVPMatrix"

    .line 44
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->c:I

    .line 45
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uSTMatrix"

    .line 46
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/bd/a;->j:I

    .line 47
    invoke-static {p1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const-string v0, "aVertex"

    .line 51
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->a:I

    .line 52
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "aTexCoor"

    .line 53
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->b:I

    .line 54
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uMVPMatrix"

    .line 55
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->c:I

    .line 56
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uCenter"

    .line 57
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->i:I

    .line 58
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uDensity"

    .line 59
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->g:I

    .line 60
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uHeight"

    .line 61
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->f:I

    .line 62
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uScale"

    .line 63
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->h:I

    .line 64
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uSnap"

    .line 65
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->d:I

    .line 66
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uWidth"

    .line 67
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bd/a;->e:I

    .line 68
    invoke-static {v1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    const-string v0, "uSTMatrix"

    .line 69
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/bd/a;->j:I

    .line 70
    invoke-static {p1, v0}, Lcn/nubia/camera/bd/a;->a(ILjava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method
