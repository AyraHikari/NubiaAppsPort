.class public Lcn/nubia/camera/elefnovideo/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:[F

.field static final c:[F


# instance fields
.field private A:I

.field private final B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:[F

.field private R:[F

.field private final S:I

.field private final T:I

.field private U:Ljava/nio/FloatBuffer;

.field private V:Ljava/nio/FloatBuffer;

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field public a:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:Z

.field private aj:I

.field private ak:[F

.field private final d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 94
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/elefnovideo/b;->b:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 101
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/elefnovideo/b;->c:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 7

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 63
    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/b;->Q:[F

    new-array v0, v0, [F

    .line 64
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/b;->R:[F

    .line 65
    sget-object v0, Lcn/nubia/camera/elefnovideo/b;->b:[F

    array-length v2, v0

    const/4 v3, 0x3

    div-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/camera/elefnovideo/b;->S:I

    const/16 v2, 0xc

    .line 66
    iput v2, p0, Lcn/nubia/camera/elefnovideo/b;->T:I

    const v2, 0x822e

    .line 78
    iput v2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    const/4 v2, 0x0

    .line 83
    iput v2, p0, Lcn/nubia/camera/elefnovideo/b;->a:I

    .line 85
    iput-boolean v2, p0, Lcn/nubia/camera/elefnovideo/b;->ai:Z

    const/16 v4, 0x9

    new-array v5, v4, [F

    .line 89
    iput-object v5, p0, Lcn/nubia/camera/elefnovideo/b;->ak:[F

    .line 109
    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    .line 110
    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    .line 111
    iput p4, p0, Lcn/nubia/camera/elefnovideo/b;->ah:I

    .line 113
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 114
    iget-object p2, p0, Lcn/nubia/camera/elefnovideo/b;->R:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 116
    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/b;->U:Ljava/nio/FloatBuffer;

    .line 117
    sget-object p2, Lcn/nubia/camera/elefnovideo/b;->c:[F

    invoke-static {p2}, Lcn/nubia/camera/elefnovideo/k;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/b;->V:Ljava/nio/FloatBuffer;

    .line 119
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->W:I

    .line 120
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->X:I

    .line 121
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->Y:I

    .line 122
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->Z:I

    .line 123
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->aa:I

    .line 124
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->ab:I

    .line 125
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->ac:I

    .line 126
    iget p2, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    iget p3, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    iget p4, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/elefnovideo/k;->a(III)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->ad:I

    const p2, 0x7f0e0002

    .line 128
    invoke-static {p1, p2}, Lcn/nubia/camera/elefnovideo/k;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x91b9

    .line 129
    invoke-static {p3, p2}, Lcn/nubia/camera/elefnovideo/k;->a(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->e:I

    const/4 p4, 0x1

    new-array v0, p4, [I

    aput p2, v0, v2

    .line 130
    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/k;->a([I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->d:I

    const-string v0, "uTextureSampler"

    .line 131
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/elefnovideo/b;->f:I

    const-string v0, "width"

    .line 132
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/elefnovideo/b;->g:I

    const-string v1, "height"

    .line 133
    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcn/nubia/camera/elefnovideo/b;->h:I

    const-string v5, "H"

    .line 134
    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcn/nubia/camera/elefnovideo/b;->i:I

    const-string v5, "Hwidth"

    .line 135
    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcn/nubia/camera/elefnovideo/b;->j:I

    const-string v5, "Hheight"

    .line 136
    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcn/nubia/camera/elefnovideo/b;->k:I

    const-string v5, "overlayNum"

    .line 137
    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcn/nubia/camera/elefnovideo/b;->l:I

    const-string v6, "over"

    .line 138
    invoke-static {p2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->m:I

    .line 140
    iput v2, p0, Lcn/nubia/camera/elefnovideo/b;->n:I

    .line 141
    iput p4, p0, Lcn/nubia/camera/elefnovideo/b;->o:I

    const/4 p2, 0x2

    .line 142
    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->p:I

    const/4 v6, 0x5

    .line 143
    iput v6, p0, Lcn/nubia/camera/elefnovideo/b;->q:I

    const/4 v6, 0x6

    .line 144
    iput v6, p0, Lcn/nubia/camera/elefnovideo/b;->r:I

    const/4 v6, 0x7

    .line 145
    iput v6, p0, Lcn/nubia/camera/elefnovideo/b;->s:I

    const/16 v6, 0x8

    .line 146
    iput v6, p0, Lcn/nubia/camera/elefnovideo/b;->t:I

    .line 147
    iput v4, p0, Lcn/nubia/camera/elefnovideo/b;->u:I

    const v4, 0x7f0e0017

    .line 151
    invoke-static {p1, v4}, Lcn/nubia/camera/elefnovideo/k;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {p3, v4}, Lcn/nubia/camera/elefnovideo/k;->a(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->w:I

    new-array v4, p4, [I

    aput p3, v4, v2

    .line 152
    invoke-static {v4}, Lcn/nubia/camera/elefnovideo/k;->a([I)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->v:I

    .line 153
    iput v2, p0, Lcn/nubia/camera/elefnovideo/b;->x:I

    .line 154
    iput p4, p0, Lcn/nubia/camera/elefnovideo/b;->y:I

    .line 155
    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->z:I

    .line 156
    iput v3, p0, Lcn/nubia/camera/elefnovideo/b;->A:I

    .line 158
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/b;->a()V

    const p3, 0x7f0e0004

    .line 163
    invoke-static {p1, p3}, Lcn/nubia/camera/elefnovideo/k;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p3

    const v4, 0x8b31

    .line 162
    invoke-static {v4, p3}, Lcn/nubia/camera/elefnovideo/k;->a(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->C:I

    const p3, 0x7f0e0003

    .line 165
    invoke-static {p1, p3}, Lcn/nubia/camera/elefnovideo/k;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x8b30

    .line 164
    invoke-static {p3, p1}, Lcn/nubia/camera/elefnovideo/k;->a(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/elefnovideo/b;->D:I

    new-array p3, p2, [I

    .line 166
    iget v4, p0, Lcn/nubia/camera/elefnovideo/b;->C:I

    aput v4, p3, v2

    aput p1, p3, p4

    invoke-static {p3}, Lcn/nubia/camera/elefnovideo/k;->a([I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/elefnovideo/b;->B:I

    const-string p3, "aPosition"

    .line 167
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->E:I

    const-string p3, "aTextureCoord"

    .line 168
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->F:I

    const-string p3, "uMVPMatrix"

    .line 169
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->G:I

    const-string p3, "uSTMatrix"

    .line 170
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->H:I

    .line 171
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->I:I

    .line 172
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->J:I

    .line 173
    invoke-static {p1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/elefnovideo/b;->K:I

    const-string p3, "isGray"

    .line 174
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/elefnovideo/b;->L:I

    .line 175
    iput v2, p0, Lcn/nubia/camera/elefnovideo/b;->M:I

    .line 176
    iput p4, p0, Lcn/nubia/camera/elefnovideo/b;->N:I

    .line 177
    iput p2, p0, Lcn/nubia/camera/elefnovideo/b;->O:I

    .line 178
    iput v3, p0, Lcn/nubia/camera/elefnovideo/b;->P:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    .line 183
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->v:I

    invoke-static {v0}, Landroid/opengl/GLES31;->glUseProgram(I)V

    .line 185
    iget v1, p0, Lcn/nubia/camera/elefnovideo/b;->x:I

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->W:I

    iget v7, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x88ba

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 186
    iget v8, p0, Lcn/nubia/camera/elefnovideo/b;->y:I

    iget v9, p0, Lcn/nubia/camera/elefnovideo/b;->X:I

    iget v14, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x88ba

    invoke-static/range {v8 .. v14}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 187
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->z:I

    iget v1, p0, Lcn/nubia/camera/elefnovideo/b;->Y:I

    iget v6, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    const/4 v2, 0x0

    const v5, 0x88ba

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 188
    iget v7, p0, Lcn/nubia/camera/elefnovideo/b;->A:I

    iget v8, p0, Lcn/nubia/camera/elefnovideo/b;->Z:I

    iget v13, p0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    const/4 v9, 0x0

    const v12, 0x88ba

    invoke-static/range {v7 .. v13}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 190
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->af:I

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES31;->glDispatchCompute(III)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcn/nubia/camera/elefnovideo/b;->ah:I

    return-void
.end method

.method public a(I[F)V
    .locals 0

    .line 215
    iput p1, p0, Lcn/nubia/camera/elefnovideo/b;->aj:I

    .line 216
    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/b;->ak:[F

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcn/nubia/camera/elefnovideo/b;->ai:Z

    return-void
.end method

.method public a([F)V
    .locals 19

    move-object/from16 v0, p0

    .line 221
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->B:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 224
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->E:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 226
    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->E:I

    iget-object v7, v0, Lcn/nubia/camera/elefnovideo/b;->U:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 230
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->F:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 231
    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->F:I

    iget-object v7, v0, Lcn/nubia/camera/elefnovideo/b;->V:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v6, 0x8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 235
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->G:I

    iget-object v2, v0, Lcn/nubia/camera/elefnovideo/b;->Q:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 236
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->H:I

    move-object/from16 v2, p1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 237
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->I:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->af:I

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 238
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->J:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 239
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->K:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->ah:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 240
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->L:I

    iget-boolean v2, v0, Lcn/nubia/camera/elefnovideo/b;->ai:Z

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 241
    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->M:I

    iget v6, v0, Lcn/nubia/camera/elefnovideo/b;->W:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x88b8

    iget v11, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 242
    iget v12, v0, Lcn/nubia/camera/elefnovideo/b;->N:I

    iget v13, v0, Lcn/nubia/camera/elefnovideo/b;->X:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0x88b8

    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    move/from16 v18, v1

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 243
    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->O:I

    iget v6, v0, Lcn/nubia/camera/elefnovideo/b;->Y:I

    iget v11, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 244
    iget v12, v0, Lcn/nubia/camera/elefnovideo/b;->P:I

    iget v13, v0, Lcn/nubia/camera/elefnovideo/b;->Z:I

    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    move/from16 v18, v1

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    const/4 v1, 0x5

    .line 247
    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->S:I

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 250
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->E:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 251
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->F:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public b()V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 194
    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->W:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->X:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->Y:I

    const/4 v4, 0x2

    aput v2, v1, v4

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->Z:I

    const/4 v4, 0x3

    aput v2, v1, v4

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->aa:I

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->ab:I

    const/4 v4, 0x5

    aput v2, v1, v4

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->ac:I

    const/4 v4, 0x6

    aput v2, v1, v4

    iget v2, p0, Lcn/nubia/camera/elefnovideo/b;->ad:I

    const/4 v4, 0x7

    aput v2, v1, v4

    .line 196
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 197
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 198
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 199
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->v:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 200
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->w:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 201
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->B:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 202
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->C:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 203
    iget v0, p0, Lcn/nubia/camera/elefnovideo/b;->D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method

.method public c()V
    .locals 18

    move-object/from16 v0, p0

    .line 256
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->d:I

    invoke-static {v1}, Landroid/opengl/GLES31;->glUseProgram(I)V

    .line 258
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->g:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->af:I

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 259
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->h:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 261
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->j:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->af:I

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 262
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->k:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 264
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->l:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->ah:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 265
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->m:I

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->a:I

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 267
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->i:I

    iget-object v2, v0, Lcn/nubia/camera/elefnovideo/b;->ak:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES31;->glUniformMatrix3fv(IIZ[FI)V

    const v1, 0x84c3

    .line 269
    invoke-static {v1}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 270
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->aj:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    .line 271
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->f:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 273
    iget v4, v0, Lcn/nubia/camera/elefnovideo/b;->n:I

    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->W:I

    iget v10, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x88ba

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 274
    iget v11, v0, Lcn/nubia/camera/elefnovideo/b;->o:I

    iget v12, v0, Lcn/nubia/camera/elefnovideo/b;->X:I

    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v16, 0x88ba

    move/from16 v17, v1

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 275
    iget v4, v0, Lcn/nubia/camera/elefnovideo/b;->p:I

    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->Y:I

    iget v10, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 276
    iget v11, v0, Lcn/nubia/camera/elefnovideo/b;->q:I

    iget v12, v0, Lcn/nubia/camera/elefnovideo/b;->Z:I

    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    move/from16 v17, v1

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 277
    iget v4, v0, Lcn/nubia/camera/elefnovideo/b;->r:I

    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->aa:I

    iget v10, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 278
    iget v11, v0, Lcn/nubia/camera/elefnovideo/b;->s:I

    iget v12, v0, Lcn/nubia/camera/elefnovideo/b;->ab:I

    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    move/from16 v17, v1

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 279
    iget v4, v0, Lcn/nubia/camera/elefnovideo/b;->t:I

    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->ac:I

    iget v10, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 280
    iget v11, v0, Lcn/nubia/camera/elefnovideo/b;->u:I

    iget v12, v0, Lcn/nubia/camera/elefnovideo/b;->ad:I

    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->ae:I

    move/from16 v17, v1

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    .line 282
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->af:I

    div-int/lit8 v1, v1, 0x4

    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->ag:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES31;->glDispatchCompute(III)V

    .line 284
    iget v1, v0, Lcn/nubia/camera/elefnovideo/b;->aa:I

    .line 285
    iget v2, v0, Lcn/nubia/camera/elefnovideo/b;->ab:I

    .line 286
    iget v3, v0, Lcn/nubia/camera/elefnovideo/b;->ac:I

    .line 287
    iget v4, v0, Lcn/nubia/camera/elefnovideo/b;->ad:I

    .line 288
    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->W:I

    iput v5, v0, Lcn/nubia/camera/elefnovideo/b;->aa:I

    .line 289
    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->X:I

    iput v5, v0, Lcn/nubia/camera/elefnovideo/b;->ab:I

    .line 290
    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->Y:I

    iput v5, v0, Lcn/nubia/camera/elefnovideo/b;->ac:I

    .line 291
    iget v5, v0, Lcn/nubia/camera/elefnovideo/b;->Z:I

    iput v5, v0, Lcn/nubia/camera/elefnovideo/b;->ad:I

    .line 292
    iput v1, v0, Lcn/nubia/camera/elefnovideo/b;->W:I

    .line 293
    iput v2, v0, Lcn/nubia/camera/elefnovideo/b;->X:I

    .line 294
    iput v3, v0, Lcn/nubia/camera/elefnovideo/b;->Y:I

    .line 295
    iput v4, v0, Lcn/nubia/camera/elefnovideo/b;->Z:I

    return-void
.end method
