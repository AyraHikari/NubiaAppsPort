.class public Lc/c/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/e/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/e$a;,
        Lc/c/a/e/e$c;,
        Lc/c/a/e/e$b;
    }
.end annotation


# static fields
.field private static final C:Ljava/lang/String; = "e"

.field private static final D:[F

.field private static final E:Lc/c/a/e/g;


# instance fields
.field private final A:[F

.field private final B:[I

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/c/a/g/c;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/c/a/g/c;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:[F

.field private d:[F

.field private e:Lc/c/a/e/h;

.field private f:I

.field private g:I

.field private h:[F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lc/c/a/g/c;

.field private o:Lc/c/a/e/c$c;

.field p:[Lc/c/a/e/e$b;

.field q:[Lc/c/a/e/e$b;

.field r:[Lc/c/a/e/e$b;

.field s:[Lc/c/a/e/e$b;

.field private final t:Lc/c/a/e/h;

.field private u:I

.field private v:[I

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/c/a/e/i;",
            ">;"
        }
    .end annotation
.end field

.field private final x:[F

.field private final y:Landroid/graphics/RectF;

.field private final z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lc/c/a/e/e;->D:[F

    .line 2
    new-instance v0, Lc/c/a/e/f;

    invoke-direct {v0}, Lc/c/a/e/f;-><init>()V

    sput-object v0, Lc/c/a/e/e;->E:Lc/c/a/e/g;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/e/e;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/e/e;->b:Ljava/util/Map;

    const/16 v0, 0x80

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lc/c/a/e/e;->c:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lc/c/a/e/e;->d:[F

    .line 7
    new-instance v0, Lc/c/a/e/h;

    invoke-direct {v0}, Lc/c/a/e/h;-><init>()V

    iput-object v0, p0, Lc/c/a/e/e;->e:Lc/c/a/e/h;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lc/c/a/e/e;->f:I

    .line 9
    iput v0, p0, Lc/c/a/e/e;->g:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 10
    iput-object v2, p0, Lc/c/a/e/e;->h:[F

    const/4 v2, 0x3

    new-array v3, v2, [Lc/c/a/e/e$b;

    .line 11
    new-instance v4, Lc/c/a/e/e$a;

    const-string v5, "aPosition"

    invoke-direct {v4, v5}, Lc/c/a/e/e$a;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Lc/c/a/e/e$c;

    const-string v6, "uMatrix"

    invoke-direct {v4, v6}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v4, v3, v7

    new-instance v4, Lc/c/a/e/e$c;

    const-string v8, "uColor"

    invoke-direct {v4, v8}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    aput-object v4, v3, v8

    iput-object v3, p0, Lc/c/a/e/e;->p:[Lc/c/a/e/e$b;

    const/4 v3, 0x5

    new-array v4, v3, [Lc/c/a/e/e$b;

    .line 12
    new-instance v9, Lc/c/a/e/e$a;

    invoke-direct {v9, v5}, Lc/c/a/e/e$a;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v0

    new-instance v9, Lc/c/a/e/e$c;

    invoke-direct {v9, v6}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v7

    new-instance v9, Lc/c/a/e/e$c;

    const-string v10, "uTextureMatrix"

    invoke-direct {v9, v10}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v8

    new-instance v9, Lc/c/a/e/e$c;

    const-string v11, "uTextureSampler"

    invoke-direct {v9, v11}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v2

    new-instance v9, Lc/c/a/e/e$c;

    const-string v12, "uAlpha"

    invoke-direct {v9, v12}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x4

    aput-object v9, v4, v13

    iput-object v4, p0, Lc/c/a/e/e;->q:[Lc/c/a/e/e$b;

    new-array v4, v3, [Lc/c/a/e/e$b;

    .line 13
    new-instance v9, Lc/c/a/e/e$a;

    invoke-direct {v9, v5}, Lc/c/a/e/e$a;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v0

    new-instance v9, Lc/c/a/e/e$c;

    invoke-direct {v9, v6}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v7

    new-instance v9, Lc/c/a/e/e$c;

    invoke-direct {v9, v10}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v8

    new-instance v9, Lc/c/a/e/e$c;

    invoke-direct {v9, v11}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v2

    new-instance v9, Lc/c/a/e/e$c;

    invoke-direct {v9, v12}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v13

    iput-object v4, p0, Lc/c/a/e/e;->r:[Lc/c/a/e/e$b;

    new-array v3, v3, [Lc/c/a/e/e$b;

    .line 14
    new-instance v4, Lc/c/a/e/e$a;

    invoke-direct {v4, v5}, Lc/c/a/e/e$a;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Lc/c/a/e/e$c;

    invoke-direct {v4, v6}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v7

    new-instance v4, Lc/c/a/e/e$a;

    const-string v5, "aTextureCoordinate"

    invoke-direct {v4, v5}, Lc/c/a/e/e$a;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v8

    new-instance v4, Lc/c/a/e/e$c;

    invoke-direct {v4, v11}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v2, Lc/c/a/e/e$c;

    invoke-direct {v2, v12}, Lc/c/a/e/e$c;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v13

    iput-object v3, p0, Lc/c/a/e/e;->s:[Lc/c/a/e/e$b;

    .line 15
    new-instance v2, Lc/c/a/e/h;

    invoke-direct {v2}, Lc/c/a/e/h;-><init>()V

    iput-object v2, p0, Lc/c/a/e/e;->t:Lc/c/a/e/h;

    .line 16
    iput v0, p0, Lc/c/a/e/e;->u:I

    new-array v2, v7, [I

    .line 17
    iput-object v2, p0, Lc/c/a/e/e;->v:[I

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc/c/a/e/e;->w:Ljava/util/ArrayList;

    const/16 v2, 0x20

    new-array v2, v2, [F

    .line 19
    iput-object v2, p0, Lc/c/a/e/e;->x:[F

    .line 20
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lc/c/a/e/e;->y:Landroid/graphics/RectF;

    .line 21
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lc/c/a/e/e;->z:Landroid/graphics/RectF;

    new-array v1, v1, [F

    .line 22
    iput-object v1, p0, Lc/c/a/e/e;->A:[F

    new-array v2, v7, [I

    .line 23
    iput-object v2, p0, Lc/c/a/e/e;->B:[I

    .line 24
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 25
    iget-object v0, p0, Lc/c/a/e/e;->c:[F

    iget v1, p0, Lc/c/a/e/e;->g:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 26
    iget-object v0, p0, Lc/c/a/e/e;->d:[F

    iget v1, p0, Lc/c/a/e/e;->f:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v1

    .line 27
    iget-object v0, p0, Lc/c/a/e/e;->w:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lc/c/a/e/e;->D:[F

    invoke-static {v0}, Lc/c/a/e/e;->y([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lc/c/a/e/e;->R(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lc/c/a/e/e;->m:I

    const v0, 0x8b31

    const-string v1, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    .line 30
    invoke-static {v0, v1}, Lc/c/a/e/e;->H(ILjava/lang/String;)I

    move-result v1

    const v3, 0x8b30

    const-string v4, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    invoke-static {v3, v4}, Lc/c/a/e/e;->H(ILjava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lc/c/a/e/e;->p:[Lc/c/a/e/e$b;

    invoke-static {v1, v4, v5, v2}, Lc/c/a/e/e;->t(II[Lc/c/a/e/e$b;[I)I

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 31
    invoke-static {v3, v1}, Lc/c/a/e/e;->H(ILjava/lang/String;)I

    move-result v1

    const-string v2, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    .line 32
    invoke-static {v0, v2}, Lc/c/a/e/e;->H(ILjava/lang/String;)I

    move-result v0

    .line 33
    invoke-direct {p0, v0, v1}, Lc/c/a/e/e;->O(II)V

    const/16 v0, 0x303

    .line 34
    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 35
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method

.method private A(Lc/c/a/e/a;Landroid/graphics/RectF;Landroid/graphics/RectF;Lc/c/a/e/c$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/e;->A:[F

    invoke-static {p2, v0}, Lc/c/a/e/k;->c(Landroid/graphics/RectF;[F)V

    .line 2
    iget-object p2, p0, Lc/c/a/e/e;->A:[F

    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/e/e;->B(Lc/c/a/e/a;[FLandroid/graphics/RectF;Lc/c/a/e/c$a;)V

    return-void
.end method

.method private B(Lc/c/a/e/a;[FLandroid/graphics/RectF;Lc/c/a/e/c$a;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/e/e;->J(Lc/c/a/e/a;)[Lc/c/a/e/e$b;

    move-result-object v1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v1, v0}, Lc/c/a/e/e;->M([Lc/c/a/e/e$b;I)V

    const/4 v2, 0x2

    .line 3
    aget-object v3, v1, v2

    iget v3, v3, Lc/c/a/e/e$b;->a:I

    const/4 v9, 0x1

    invoke-static {v3, v9, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 4
    iget-object p2, p0, Lc/c/a/e/e;->o:Lc/c/a/e/c$c;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    const/16 v3, 0xde1

    if-ne v0, v3, :cond_0

    iget v0, p0, Lc/c/a/e/e;->k:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lc/c/a/e/e;->l:I

    :goto_0
    iget-object v3, p0, Lc/c/a/e/e;->n:Lc/c/a/g/c;

    invoke-interface {p2, v0, p1, v3}, Lc/c/a/e/c$c;->a(ILc/c/a/e/a;Lc/c/a/g/c;)V

    .line 6
    :cond_1
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 7
    invoke-virtual {p1}, Lc/c/a/e/a;->j()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lc/c/a/e/e;->K(I)V

    .line 9
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lc/c/a/e/e;->c(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p0, v2, p2, v2}, Lc/c/a/e/e;->j(FFF)V

    .line 11
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0, v0, p2}, Lc/c/a/e/e;->c(FF)V

    :cond_2
    const/4 v2, 0x5

    const/4 v3, 0x4

    .line 12
    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    .line 13
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    move-object v8, p4

    .line 14
    invoke-direct/range {v0 .. v8}, Lc/c/a/e/e;->z([Lc/c/a/e/e$b;IIFFFFLc/c/a/e/c$a;)V

    .line 15
    invoke-virtual {p1}, Lc/c/a/e/a;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lc/c/a/e/e;->a()V

    .line 17
    :cond_3
    iget p1, p0, Lc/c/a/e/e;->u:I

    add-int/2addr p1, v9

    iput p1, p0, Lc/c/a/e/e;->u:I

    return-void
.end method

.method private static C(Z)V
    .locals 1

    const/16 v0, 0xbe2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 4
    invoke-static {}, Lc/c/a/e/e;->v()V

    :goto_0
    return-void
.end method

.method private E()Lc/c/a/e/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/e;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/i;

    return-object v0
.end method

.method private F([Lc/c/a/e/e$b;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const v0, 0x8b31

    .line 1
    invoke-static {v0, p2}, Lc/c/a/e/e;->H(ILjava/lang/String;)I

    move-result p2

    const v0, 0x8b30

    .line 2
    invoke-static {v0, p3}, Lc/c/a/e/e;->H(ILjava/lang/String;)I

    move-result p3

    .line 3
    iget-object v0, p0, Lc/c/a/e/e;->B:[I

    invoke-static {p2, p3, p1, v0}, Lc/c/a/e/e;->t(II[Lc/c/a/e/e$b;[I)I

    move-result p1

    return p1
.end method

.method private static G([Lc/c/a/e/e$b;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lc/c/a/e/e$b;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static H(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 4
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 5
    invoke-static {}, Lc/c/a/e/e;->v()V

    return p0
.end method

.method private I(Lc/c/a/e/a;I[Lc/c/a/e/e$b;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 3
    invoke-interface {p1}, Lc/c/a/e/j;->a()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lc/c/a/e/e;->D()F

    move-result p2

    const v1, 0x3f733333    # 0.95f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Lc/c/a/e/e;->C(Z)V

    const p2, 0x84c0

    .line 4
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 5
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 6
    invoke-virtual {p1, p0}, Lc/c/a/e/a;->m(Lc/c/a/e/c;)Z

    .line 7
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result p2

    invoke-virtual {p1}, Lc/c/a/e/a;->d()I

    move-result p1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 8
    invoke-static {}, Lc/c/a/e/e;->v()V

    const/4 p1, 0x3

    .line 9
    aget-object p1, p3, p1

    iget p1, p1, Lc/c/a/e/e$b;->a:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    invoke-static {}, Lc/c/a/e/e;->v()V

    const/4 p1, 0x4

    .line 11
    aget-object p1, p3, p1

    iget p1, p1, Lc/c/a/e/e$b;->a:I

    invoke-virtual {p0}, Lc/c/a/e/e;->D()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method

.method private J(Lc/c/a/e/a;)[Lc/c/a/e/e$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/e/e;->q:[Lc/c/a/e/e$b;

    .line 3
    iget v1, p0, Lc/c/a/e/e;->k:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/c/a/e/e;->r:[Lc/c/a/e/e$b;

    .line 5
    iget v1, p0, Lc/c/a/e/e;->l:I

    .line 6
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lc/c/a/e/e;->I(Lc/c/a/e/a;I[Lc/c/a/e/e$b;)V

    return-object v0
.end method

.method private L([Lc/c/a/e/e$b;FFFFLc/c/a/e/c$a;)V
    .locals 12

    move-object v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    .line 1
    aget-object v3, p1, v1

    iget v10, v3, Lc/c/a/e/e$b;->a:I

    iget v4, v0, Lc/c/a/e/e;->i:I

    iget v5, v0, Lc/c/a/e/e;->j:I

    move-object/from16 v3, p6

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lc/c/a/e/c$a;->a(IIFFFF)[F

    move-result-object v3

    invoke-static {v10, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void

    .line 3
    :cond_0
    iget v3, v0, Lc/c/a/e/e;->i:I

    iget v4, v0, Lc/c/a/e/e;->j:I

    invoke-static {v2, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4
    iget-object v5, v0, Lc/c/a/e/e;->x:[F

    const/4 v6, 0x0

    iget-object v7, v0, Lc/c/a/e/e;->c:[F

    iget v8, v0, Lc/c/a/e/e;->g:I

    const/4 v11, 0x0

    move v9, p2

    move v10, p3

    invoke-static/range {v5 .. v11}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 5
    iget-object v3, v0, Lc/c/a/e/e;->x:[F

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static {v3, v2, v5, v6, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 6
    iget-object v9, v0, Lc/c/a/e/e;->x:[F

    const/16 v6, 0x10

    iget-object v7, v0, Lc/c/a/e/e;->h:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v9

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 7
    aget-object v3, p1, v1

    iget v3, v3, Lc/c/a/e/e$b;->a:I

    iget-object v4, v0, Lc/c/a/e/e;->x:[F

    const/16 v5, 0x10

    invoke-static {v3, v1, v2, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 8
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method

.method private M([Lc/c/a/e/e$b;I)V
    .locals 8

    .line 1
    iget v0, p0, Lc/c/a/e/e;->m:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    iget v2, p1, Lc/c/a/e/e$b;->a:I

    mul-int/lit8 v7, p2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 4
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 5
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 6
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method

.method private N(Lc/c/a/e/a;Lc/c/a/e/i;)V
    .locals 4

    const/16 v0, 0xde1

    const/4 v1, 0x1

    const v2, 0x8d40

    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lc/c/a/e/i;->e()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/e/e;->v:[I

    invoke-static {v1, p1, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 3
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 4
    iget-object p1, p0, Lc/c/a/e/e;->v:[I

    aget p1, p1, v3

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 5
    invoke-static {}, Lc/c/a/e/e;->v()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lc/c/a/e/e;->v:[I

    invoke-static {v1, p1, v3}, Landroid/opengl/GLES11Ext;->glGenFramebuffersOES(I[II)V

    .line 7
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 8
    iget-object p1, p0, Lc/c/a/e/e;->v:[I

    aget p1, p1, v3

    invoke-static {v2, p1}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    .line 9
    invoke-static {}, Lc/c/a/e/e;->v()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 10
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 11
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 12
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 13
    iget-object p1, p0, Lc/c/a/e/e;->v:[I

    invoke-static {v1, p1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 14
    invoke-static {}, Lc/c/a/e/e;->v()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    .line 16
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 17
    iget-object p1, p0, Lc/c/a/e/e;->v:[I

    invoke-static {v1, p1, v3}, Landroid/opengl/GLES11Ext;->glDeleteFramebuffersOES(I[II)V

    .line 18
    invoke-static {}, Lc/c/a/e/e;->v()V

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 19
    iget p1, p0, Lc/c/a/e/e;->i:I

    iget p2, p0, Lc/c/a/e/e;->j:I

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/e;->d(II)V

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p2}, Lc/c/a/e/a;->h()I

    move-result p1

    invoke-virtual {p2}, Lc/c/a/e/a;->c()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lc/c/a/e/e;->d(II)V

    .line 21
    invoke-virtual {p2}, Lc/c/a/e/a;->k()Z

    move-result p1

    if-nez p1, :cond_5

    .line 22
    invoke-virtual {p2, p0}, Lc/c/a/e/i;->r(Lc/c/a/e/c;)V

    .line 23
    :cond_5
    invoke-virtual {p2}, Lc/c/a/e/i;->e()I

    move-result p1

    const v1, 0x8ce0

    if-ne p1, v0, :cond_6

    .line 24
    invoke-virtual {p2}, Lc/c/a/e/i;->e()I

    move-result p1

    invoke-virtual {p2}, Lc/c/a/e/a;->d()I

    move-result p2

    .line 25
    invoke-static {v2, v1, p1, p2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 26
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 27
    invoke-static {}, Lc/c/a/e/e;->w()V

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {p2}, Lc/c/a/e/i;->e()I

    move-result p1

    invoke-virtual {p2}, Lc/c/a/e/a;->d()I

    move-result p2

    .line 29
    invoke-static {v2, v1, p1, p2, v3}, Landroid/opengl/GLES11Ext;->glFramebufferTexture2DOES(IIIII)V

    .line 30
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 31
    invoke-static {}, Lc/c/a/e/e;->x()V

    :goto_1
    return-void
.end method

.method private O(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/e;->s:[Lc/c/a/e/e$b;

    iget-object v1, p0, Lc/c/a/e/e;->B:[I

    invoke-static {p1, p2, v0, v1}, Lc/c/a/e/e;->t(II[Lc/c/a/e/e$b;[I)I

    return-void
.end method

.method private P(ILc/c/a/g/c;)V
    .locals 2

    const-string v0, "Texture filter is null."

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lc/c/a/e/e;->n:Lc/c/a/g/c;

    const/16 v0, 0xde1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lc/c/a/e/e;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lc/c/a/e/e;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lc/c/a/e/e;->k:I

    .line 5
    iget-object p2, p0, Lc/c/a/e/e;->q:[Lc/c/a/e/e$b;

    invoke-static {p2, p1}, Lc/c/a/e/e;->G([Lc/c/a/e/e$b;I)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lc/c/a/e/e;->q:[Lc/c/a/e/e$b;

    invoke-interface {p2}, Lc/c/a/g/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lc/c/a/g/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lc/c/a/e/e;->F([Lc/c/a/e/e$b;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/c/a/e/e;->k:I

    .line 7
    iget-object v0, p0, Lc/c/a/e/e;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lc/c/a/e/e;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lc/c/a/e/e;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lc/c/a/e/e;->l:I

    .line 10
    iget-object p2, p0, Lc/c/a/e/e;->r:[Lc/c/a/e/e$b;

    invoke-static {p2, p1}, Lc/c/a/e/e;->G([Lc/c/a/e/e$b;I)V

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lc/c/a/e/e;->r:[Lc/c/a/e/e$b;

    invoke-interface {p2}, Lc/c/a/g/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lc/c/a/g/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lc/c/a/e/e;->F([Lc/c/a/e/e$b;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/c/a/e/e;->l:I

    .line 12
    iget-object v0, p0, Lc/c/a/e/e;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private Q(Ljava/nio/Buffer;I)I
    .locals 4

    .line 1
    sget-object v0, Lc/c/a/e/e;->E:Lc/c/a/e/g;

    iget-object v1, p0, Lc/c/a/e/e;->B:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lc/c/a/e/g;->a(I[II)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 3
    iget-object v0, p0, Lc/c/a/e/e;->B:[I

    aget v0, v0, v3

    const v1, 0x8892

    .line 4
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 5
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/2addr v2, p2

    const p2, 0x88e4

    invoke-static {v1, v2, p1, p2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 7
    invoke-static {}, Lc/c/a/e/e;->v()V

    return v0
.end method

.method private static t(II[Lc/c/a/e/e$b;[I)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 4
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 5
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 6
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 8
    invoke-static {}, Lc/c/a/e/e;->v()V

    const p0, 0x8b82

    const/4 p1, 0x0

    .line 9
    invoke-static {v0, p0, p3, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 10
    aget p0, p3, p1

    const/4 p3, 0x1

    if-eq p0, p3, :cond_0

    .line 11
    sget-object p0, Lc/c/a/e/e;->C:Ljava/lang/String;

    const-string p3, "Could not link program: "

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, p1

    .line 14
    :cond_0
    invoke-static {p2, v0}, Lc/c/a/e/e;->G([Lc/c/a/e/e$b;I)V

    return v0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create GL program: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static u(Landroid/graphics/RectF;Landroid/graphics/RectF;Lc/c/a/e/a;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lc/c/a/e/a;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lc/c/a/e/a;->f()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p2}, Lc/c/a/e/a;->h()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lc/c/a/e/a;->g()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 3
    iget p2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    .line 4
    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v2, v1

    add-float/2addr p2, v2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 5
    :cond_0
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 6
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr v1, p0

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public static v()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 3
    sget-object v2, Lc/c/a/e/e;->C:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static w()V
    .locals 4

    const v0, 0x8d40

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const-string v1, ""

    goto :goto_0

    :sswitch_0
    const-string v1, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :sswitch_1
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :sswitch_2
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_0

    :sswitch_3
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 2
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8cd6 -> :sswitch_3
        0x8cd7 -> :sswitch_2
        0x8cd9 -> :sswitch_1
        0x8cdd -> :sswitch_0
    .end sparse-switch
.end method

.method private static x()V
    .locals 4

    const v0, 0x8d40

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES11Ext;->glCheckFramebufferStatusOES(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const-string v1, ""

    goto :goto_0

    :sswitch_0
    const-string v1, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :sswitch_1
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :sswitch_2
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_0

    :sswitch_3
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 2
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8cd6 -> :sswitch_3
        0x8cd7 -> :sswitch_2
        0x8cd9 -> :sswitch_1
        0x8cdd -> :sswitch_0
    .end sparse-switch
.end method

.method private static y([F)Ljava/nio/FloatBuffer;
    .locals 3

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private z([Lc/c/a/e/e$b;IIFFFFLc/c/a/e/c$a;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    .line 1
    invoke-direct/range {v0 .. v6}, Lc/c/a/e/e;->L([Lc/c/a/e/e$b;FFFFLc/c/a/e/c$a;)V

    const/4 p4, 0x0

    .line 2
    aget-object p1, p1, p4

    iget p1, p1, Lc/c/a/e/e$b;->a:I

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 5
    invoke-static {p2, p4, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 6
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 7
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 8
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method


# virtual methods
.method public D()F
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/e;->d:[F

    iget v1, p0, Lc/c/a/e/e;->f:I

    aget v0, v0, v1

    return v0
.end method

.method public K(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/e;->D()F

    move-result v0

    .line 2
    iget v4, p0, Lc/c/a/e/e;->f:I

    add-int/2addr v4, v2

    iput v4, p0, Lc/c/a/e/e;->f:I

    .line 3
    iget-object v5, p0, Lc/c/a/e/e;->d:[F

    array-length v6, v5

    if-gt v6, v4, :cond_1

    .line 4
    array-length v4, v5

    mul-int/2addr v4, v3

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lc/c/a/e/e;->d:[F

    .line 5
    :cond_1
    iget-object v4, p0, Lc/c/a/e/e;->d:[F

    iget v5, p0, Lc/c/a/e/e;->f:I

    aput v0, v4, v5

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_5

    .line 6
    iget v0, p0, Lc/c/a/e/e;->g:I

    add-int/lit8 v1, v0, 0x10

    .line 7
    iput v1, p0, Lc/c/a/e/e;->g:I

    .line 8
    iget-object v2, p0, Lc/c/a/e/e;->c:[F

    array-length v4, v2

    if-gt v4, v1, :cond_4

    .line 9
    array-length v1, v2

    mul-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lc/c/a/e/e;->c:[F

    .line 10
    :cond_4
    iget-object v1, p0, Lc/c/a/e/e;->c:[F

    iget v2, p0, Lc/c/a/e/e;->g:I

    const/16 v3, 0x10

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_5
    iget-object v0, p0, Lc/c/a/e/e;->e:Lc/c/a/e/h;

    invoke-virtual {v0, p1}, Lc/c/a/e/h;->a(I)V

    return-void
.end method

.method public R(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lc/c/a/e/e;->Q(Ljava/nio/Buffer;I)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/e/e;->e:Lc/c/a/e/h;

    invoke-virtual {v0}, Lc/c/a/e/h;->b()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget v1, p0, Lc/c/a/e/e;->f:I

    sub-int/2addr v1, v3

    iput v1, p0, Lc/c/a/e/e;->f:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 3
    iget v0, p0, Lc/c/a/e/e;->g:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lc/c/a/e/e;->g:I

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lc/c/a/e/e;->K(I)V

    return-void
.end method

.method public c(FF)V
    .locals 6

    .line 1
    iget v0, p0, Lc/c/a/e/e;->g:I

    .line 2
    iget-object v1, p0, Lc/c/a/e/e;->c:[F

    add-int/lit8 v2, v0, 0xc

    .line 3
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x0

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xd

    .line 4
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xe

    .line 5
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xf

    .line 6
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v0, v0, 0x7

    aget p1, v1, v0

    mul-float/2addr p1, p2

    add-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v1, v2

    return-void
.end method

.method public d(II)V
    .locals 10

    .line 1
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/e;->c:[F

    iget v1, p0, Lc/c/a/e/e;->g:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    iget-object v2, p0, Lc/c/a/e/e;->h:[F

    int-to-float v5, p1

    int-to-float v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v7, v0

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 4
    invoke-direct {p0}, Lc/c/a/e/e;->E()Lc/c/a/e/i;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iput p1, p0, Lc/c/a/e/e;->i:I

    .line 6
    iput p2, p0, Lc/c/a/e/e;->j:I

    .line 7
    iget-object p1, p0, Lc/c/a/e/e;->c:[F

    iget p2, p0, Lc/c/a/e/e;->g:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 8
    iget-object p1, p0, Lc/c/a/e/e;->c:[F

    iget p2, p0, Lc/c/a/e/e;->g:I

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v1, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_0
    return-void
.end method

.method public e(Lc/c/a/e/i;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/e;->b()V

    .line 2
    invoke-direct {p0}, Lc/c/a/e/e;->E()Lc/c/a/e/i;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/c/a/e/e;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, v0, p1}, Lc/c/a/e/e;->N(Lc/c/a/e/a;Lc/c/a/e/i;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/e;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/i;

    .line 2
    invoke-direct {p0}, Lc/c/a/e/e;->E()Lc/c/a/e/i;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lc/c/a/e/e;->N(Lc/c/a/e/a;Lc/c/a/e/i;)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/e/e;->a()V

    return-void
.end method

.method public g(FFFF)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lc/c/a/e/e;->x:[F

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 3
    iget-object p1, p0, Lc/c/a/e/e;->c:[F

    .line 4
    iget p2, p0, Lc/c/a/e/e;->g:I

    const/16 v2, 0x10

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, v0

    .line 5
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p3, 0x10

    .line 6
    invoke-static {v0, p3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public h(Lc/c/a/e/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/a;->d()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    invoke-static {}, Lc/c/a/e/e;->v()V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 4
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 5
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    const v1, 0x46180400    # 9729.0f

    .line 6
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    .line 7
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public i(Lc/c/a/e/c$b;)V
    .locals 0

    return-void
.end method

.method public j(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/e;->c:[F

    iget v1, p0, Lc/c/a/e/e;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public k(Lc/c/a/e/a;II)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/a;->d()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 4
    invoke-virtual {p1}, Lc/c/a/e/a;->g()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Lc/c/a/e/a;->f()I

    move-result v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v6, p2

    move v7, p3

    .line 6
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public l(Lc/c/a/e/a;IIIILc/c/a/g/c;Lc/c/a/e/c$a;)V
    .locals 2

    if-lez p4, :cond_1

    if-gtz p5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    invoke-direct {p0, v0, p6}, Lc/c/a/e/e;->P(ILc/c/a/g/c;)V

    .line 2
    iget-object p6, p0, Lc/c/a/e/e;->y:Landroid/graphics/RectF;

    invoke-static {p1, p6}, Lc/c/a/e/k;->b(Lc/c/a/e/a;Landroid/graphics/RectF;)V

    .line 3
    iget-object p6, p0, Lc/c/a/e/e;->z:Landroid/graphics/RectF;

    int-to-float v0, p2

    int-to-float v1, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p6, v0, v1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object p2, p0, Lc/c/a/e/e;->y:Landroid/graphics/RectF;

    invoke-static {p2, p1}, Lc/c/a/e/k;->a(Landroid/graphics/RectF;Lc/c/a/e/a;)V

    .line 5
    iget-object p2, p0, Lc/c/a/e/e;->y:Landroid/graphics/RectF;

    iget-object p3, p0, Lc/c/a/e/e;->z:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lc/c/a/e/e;->u(Landroid/graphics/RectF;Landroid/graphics/RectF;Lc/c/a/e/a;)V

    .line 6
    iget-object p2, p0, Lc/c/a/e/e;->y:Landroid/graphics/RectF;

    iget-object p3, p0, Lc/c/a/e/e;->z:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3, p7}, Lc/c/a/e/e;->A(Lc/c/a/e/a;Landroid/graphics/RectF;Landroid/graphics/RectF;Lc/c/a/e/c$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m(Lc/c/a/e/a;[FIIIILc/c/a/g/c;Lc/c/a/e/c$a;)V
    .locals 2

    if-lez p5, :cond_1

    if-gtz p6, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    invoke-direct {p0, v0, p7}, Lc/c/a/e/e;->P(ILc/c/a/g/c;)V

    .line 2
    iget-object p7, p0, Lc/c/a/e/e;->z:Landroid/graphics/RectF;

    int-to-float v0, p3

    int-to-float v1, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    add-int/2addr p4, p6

    int-to-float p4, p4

    invoke-virtual {p7, v0, v1, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object p3, p0, Lc/c/a/e/e;->z:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3, p8}, Lc/c/a/e/e;->B(Lc/c/a/e/a;[FLandroid/graphics/RectF;Lc/c/a/e/c$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n(Lc/c/a/e/a;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/a;->d()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    invoke-static {}, Lc/c/a/e/e;->v()V

    const/4 p1, 0x0

    .line 4
    invoke-static {v0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public o(Lc/c/a/e/a;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lc/c/a/e/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/c/a/e/e;->t:Lc/c/a/e/h;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lc/c/a/e/e;->t:Lc/c/a/e/h;

    invoke-virtual {p1}, Lc/c/a/e/a;->d()I

    move-result p1

    invoke-virtual {v2, p1}, Lc/c/a/e/h;->a(I)V

    .line 4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return v0
.end method

.method public p([F)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    const/16 p1, 0x4000

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 4
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method

.method public q(Lc/c/a/e/a;IILandroid/graphics/Bitmap;II)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lc/c/a/e/a;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/a;->d()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    invoke-static {}, Lc/c/a/e/e;->v()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 4
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public r(Lc/c/a/e/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/e;->o:Lc/c/a/e/c$c;

    return-void
.end method

.method public s()Lc/c/a/e/g;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/e/e;->E:Lc/c/a/e/g;

    return-object v0
.end method
