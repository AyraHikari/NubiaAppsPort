.class public Lcom/android/gallery3d/filtershow/filters/j;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# static fields
.field public static final s:[Ljava/lang/String;

.field public static final t:[Ljava/lang/String;

.field public static final u:[Ljava/lang/String;

.field private static final v:Landroid/graphics/RectF;


# instance fields
.field m:Landroid/graphics/RectF;

.field n:I

.field o:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "C0"

    const-string v1, "C1"

    const-string v2, "C2"

    const-string v3, "C3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/j;->s:[Ljava/lang/String;

    const-string v0, "REALWIDHT"

    const-string v1, "REALHEIGHT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/j;->t:[Ljava/lang/String;

    const-string v0, "SHAPEMODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/j;->u:[Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/j;->v:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/j;->v:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/j;-><init>(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 2

    const-string v0, "CROP"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->p0()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->o:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->p:Landroid/graphics/Path;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/j;->u0(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/j;)V
    .locals 1

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/j;-><init>(Landroid/graphics/RectF;)V

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->o:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->o:Landroid/graphics/Path;

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->p:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->p:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    return-void
.end method

.method public static k0(Landroid/graphics/RectF;II)V
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static l0(Landroid/graphics/RectF;II)V
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static p0()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/j;->v:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public static t0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/filters/j;-><init>(Lcom/android/gallery3d/filtershow/filters/j;)V

    return-object v0
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/j;->s:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/gallery3d/filtershow/filters/j;->t:[Ljava/lang/String;

    aget-object v4, v1, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    goto :goto_0

    :cond_4
    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/gallery3d/filtershow/filters/j;->u:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 5

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/j;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    iget v2, p1, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    iget v2, p1, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public S()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/j;->v:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 6

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/j;->s:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/j;->t:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/j;->u:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/j;

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/j;->u0(Landroid/graphics/RectF;)V

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/j;->y0(I)V

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->o:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/j;->v0(Landroid/graphics/Path;)V

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->p:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/j;->w0(Landroid/graphics/Path;)V

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/j;->x0(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m0()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public n0()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->o:Landroid/graphics/Path;

    return-object v0
.end method

.method public o0()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->p:Landroid/graphics/Path;

    return-object v0
.end method

.method public q0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    return v0
.end method

.method public r0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    return v0
.end method

.method public s0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CROP: mCrop is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; mShapeMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; nDrawPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/j;->o:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j;->m:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument to setCrop is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v0(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/j;->o:Landroid/graphics/Path;

    return-void
.end method

.method public w0(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/j;->p:Landroid/graphics/Path;

    return-void
.end method

.method public x0(II)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/j;->q:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/j;->r:I

    return-void
.end method

.method public y0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/j;->n:I

    return-void
.end method
