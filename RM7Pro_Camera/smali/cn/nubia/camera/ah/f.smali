.class public Lcn/nubia/camera/ah/f;
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

.field public k:I

.field private l:[I

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcn/nubia/camera/ah/f;->k:I

    const-string v0, "MultiExposureShaderResource"

    .line 29
    iput-object v0, p0, Lcn/nubia/camera/ah/f;->m:Ljava/lang/String;

    const-string v0, "attribute vec2 aVertex;\nattribute vec2 aTexCoor;\nvarying vec2 vTexCoor;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\n\nvoid main()\n{\n   gl_Position = uMVPMatrix * vec4(aVertex, 0.0f, 1.0f);\n   vTexCoor = (uSTMatrix * vec4(aTexCoor, 1.0f, 1.0f)).st;\n}\n"

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/ah/f;->n:Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external: require\nprecision highp float;\n\nvarying vec2 vTexCoor;\nuniform samplerExternalOES tex1;\nuniform sampler2D tex2;\nuniform int inputNum;\nuniform int screenId;\nuniform float inputAlpha;\nuniform int inputMode;\nvoid main()\n{\n   if(inputMode == 1){\n       if(inputNum == 1){\n           gl_FragColor = texture2D(tex1, vTexCoor);\n       }else if(inputNum == 2){\n           vec4 color1 = texture2D(tex1, vTexCoor);\n           vec4 color2 = texture2D(tex2, vTexCoor);\n           gl_FragColor = vec4(color1.rgb*(1.0f-inputAlpha)+color2.rgb*inputAlpha, color1.a);\n       }\n   }else if(inputMode == 2){\n       if(inputNum == 1){\n           gl_FragColor = texture2D(tex1, vTexCoor);\n       }else{\n           vec4 color1 = texture2D(tex1, vTexCoor);\n           vec4 color2 = texture2D(tex2, vTexCoor);\n           gl_FragColor = vec4(color1.rgb*(1.0f-inputAlpha)+color2.rgb*inputAlpha, color1.a);\n       }\n   }else if(inputMode == 4){\n       if(inputNum == 1){\n           gl_FragColor = texture2D(tex1, vTexCoor);\n       }else if(inputNum == 2){\n           vec4 color1 = texture2D(tex1, vTexCoor);\n           vec4 color2 = texture2D(tex2, vTexCoor);\n           if((0.299*color1.r + 0.587*color1.g + 0.114*color1.b)>(0.299*color2.r + 0.587*color2.g + 0.114*color2.b)){\n               gl_FragColor = color1;\n           }else{\n               gl_FragColor = color2;\n           }\n       }\n   }else if(inputMode == 5){\n       if(inputNum == 1){\n           gl_FragColor = texture2D(tex1, vTexCoor);\n       }else if(inputNum == 2){\n           vec4 color1 = texture2D(tex1, vTexCoor);\n           vec4 color2 = texture2D(tex2, vTexCoor);\n           if((0.299*color1.r + 0.587*color1.g + 0.114*color1.b)<(0.299*color2.r + 0.587*color2.g + 0.114*color2.b)){\n               gl_FragColor = color1;\n           }else{\n               gl_FragColor = color2;\n           }\n       }\n   }else if(inputMode == 6){\n       if(screenId == 0) {\n           if(inputNum == 1){\n                   if(vTexCoor[0]>0.5){\n                       gl_FragColor = vec4(1.0f,1.0f,1.0f,0.0f);\n                   }else{\n                       gl_FragColor = texture2D(tex1, vTexCoor);\n                   }\n           }else if(inputNum == 2){\n               if(vTexCoor[0]>0.5){\n                   gl_FragColor = texture2D(tex1, vTexCoor);\n              }else{\n                  gl_FragColor = texture2D(tex2, vTexCoor);\n               }\n           }\n       } else {\n           if(inputNum == 1){\n               if(vTexCoor[0]<0.5){\n                   gl_FragColor = vec4(1.0f,1.0f,1.0f,0.0f);\n               }else{\n                   gl_FragColor = texture2D(tex1, vTexCoor);\n               }\n           }else if(inputNum == 2){\n               if(vTexCoor[0]<0.5){\n                   gl_FragColor = texture2D(tex1, vTexCoor);\n               }else{\n                   gl_FragColor = texture2D(tex2, vTexCoor);\n               }\n           }\n       }\n   }\n}\n"

    .line 50
    iput-object v1, p0, Lcn/nubia/camera/ah/f;->o:Ljava/lang/String;

    .line 32
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/ah/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ah/f;->a:I

    .line 33
    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/f;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 137
    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ah/f;->l:[I

    const/4 p2, 0x0

    .line 138
    aget v0, p1, p2

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0, p1}, Lcom/android/common/b/n;->a(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/ah/f;->a:I

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mShaders "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ah/f;->l:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/ah/f;->l:[I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mProgram "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/ah/f;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiExposureShaderResource"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 141
    iget p1, p0, Lcn/nubia/camera/ah/f;->a:I

    return p1
.end method

.method private a(I)V
    .locals 3

    const-string v0, "aVertex"

    .line 164
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->d:I

    .line 165
    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "aTexCoor"

    .line 166
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->e:I

    .line 167
    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "uMVPMatrix"

    .line 168
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->b:I

    .line 169
    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "uSTMatrix"

    .line 170
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->c:I

    .line 171
    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "inputAlpha"

    .line 172
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->f:I

    .line 173
    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "inputNum"

    .line 174
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->g:I

    const-string v1, "screenId"

    .line 175
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/camera/ah/f;->k:I

    .line 176
    invoke-static {v2, v1}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    .line 177
    iget v1, p0, Lcn/nubia/camera/ah/f;->g:I

    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "inputMode"

    .line 178
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->h:I

    .line 179
    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "tex1"

    .line 180
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ah/f;->i:I

    .line 181
    invoke-static {v1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    const-string v0, "tex2"

    .line 182
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/ah/f;->j:I

    .line 183
    invoke-static {p1, v0}, Lcn/nubia/camera/ah/f;->a(ILjava/lang/String;)V

    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    .line 159
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
.method public a()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/ah/f;->l:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/ah/f;->l:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/ah/f;->l:[I

    aput v1, v0, v1

    .line 149
    aput v1, v0, v2

    .line 151
    :cond_0
    iget v0, p0, Lcn/nubia/camera/ah/f;->a:I

    if-eqz v0, :cond_1

    .line 152
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 153
    iput v1, p0, Lcn/nubia/camera/ah/f;->a:I

    :cond_1
    return-void
.end method
