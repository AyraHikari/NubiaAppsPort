.class public Lcom/android/gallery3d/filtershow/filters/y;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/filters/y$b;,
        Lcom/android/gallery3d/filtershow/filters/y$c;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "y"

.field private static final r:Landroid/graphics/RectF;


# instance fields
.field m:F

.field n:Landroid/graphics/RectF;

.field o:Lcom/android/gallery3d/filtershow/filters/y$c;

.field private p:Lcom/android/gallery3d/filtershow/filters/y$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/y;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "CROP_STRAIGHTEN"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/y;->p0()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    sget-object v2, Lcom/android/gallery3d/filtershow/filters/y$b;->b:Lcom/android/gallery3d/filtershow/filters/y$b;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v3, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    const v0, 0x7f0e018c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/y;->A0(F)V

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y;->r:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/y;->x0(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/y;->z0(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/y;->y0(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Lcom/android/gallery3d/filtershow/filters/y$c;Lcom/android/gallery3d/filtershow/filters/y$b;)V
    .locals 2

    const-string v0, "CROP_STRAIGHTEN"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/y;->p0()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$b;->b:Lcom/android/gallery3d/filtershow/filters/y$b;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    const v0, 0x7f0e018c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/y;->A0(F)V

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/y;->x0(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/y;->z0(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    invoke-virtual {p0, p4}, Lcom/android/gallery3d/filtershow/filters/y;->y0(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/y;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->r0()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->n0()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/y;-><init>(FLandroid/graphics/RectF;Lcom/android/gallery3d/filtershow/filters/y$c;Lcom/android/gallery3d/filtershow/filters/y$b;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    return-void
.end method

.method private k0()Z
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y;->r:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p0()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y;->r:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method private s0(D)Z
    .locals 2

    const-wide v0, -0x3fb9800000000000L    # -45.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4046800000000000L    # 45.0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private v0()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$a;->a:[I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->c:Lcom/android/gallery3d/filtershow/filters/y$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->d:Lcom/android/gallery3d/filtershow/filters/y$c;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->e:Lcom/android/gallery3d/filtershow/filters/y$c;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    :goto_1
    return-void
.end method

.method private w0()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$a;->a:[I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->d:Lcom/android/gallery3d/filtershow/filters/y$c;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->e:Lcom/android/gallery3d/filtershow/filters/y$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->c:Lcom/android/gallery3d/filtershow/filters/y$c;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    :goto_1
    return-void
.end method


# virtual methods
.method public A0(F)V
    .locals 2

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/y;->s0(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/y;->m:F

    return-void
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/filters/y;-><init>(Lcom/android/gallery3d/filtershow/filters/y;)V

    return-object v0
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "straighten"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/filters/y;->s0(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/y;->A0(F)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "crop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_6
    const-string v2, "rotation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/filters/y$c;->t(I)Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/y;->z0(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "mirror"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/filters/y$b;->r(C)Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/y;->y0(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y;->q:Ljava/lang/String;

    const-string v1, "WARNING: bad value when deserializing CROP_STRAIGHTEN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 5

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/y;

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/y;->m:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/y;->m:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y$c;->v()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/y$c;->v()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y$b;->s()C

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y$b;->s()C

    move-result p1

    if-eq v0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public S()Z
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$b;->b:Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 3

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "straighten"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->m:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/filters/y$c;->r(Lcom/android/gallery3d/filtershow/filters/y$c;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "mirror"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    iget-char v1, v1, Lcom/android/gallery3d/filtershow/filters/y$b;->a:C

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "crop"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->r0()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/y;->A0(F)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->n0()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/y;->x0(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/y;->z0(Lcom/android/gallery3d/filtershow/filters/y$c;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/y;->y0(Lcom/android/gallery3d/filtershow/filters/y$b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l0()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$a;->b:[I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->e:Lcom/android/gallery3d/filtershow/filters/y$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->c:Lcom/android/gallery3d/filtershow/filters/y$b;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->b:Lcom/android/gallery3d/filtershow/filters/y$b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->d:Lcom/android/gallery3d/filtershow/filters/y$b;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    :goto_1
    return-void
.end method

.method public m0()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$a;->b:[I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->b:Lcom/android/gallery3d/filtershow/filters/y$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->d:Lcom/android/gallery3d/filtershow/filters/y$b;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->e:Lcom/android/gallery3d/filtershow/filters/y$b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->c:Lcom/android/gallery3d/filtershow/filters/y$b;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    :goto_1
    return-void
.end method

.method public n0()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public o0()Lcom/android/gallery3d/filtershow/filters/y$b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    return-object v0
.end method

.method public q0()Lcom/android/gallery3d/filtershow/filters/y$c;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    return-object v0
.end method

.method public r0()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->m:F

    return v0
.end method

.method public t0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$b;->d:Lcom/android/gallery3d/filtershow/filters/y$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$b;->c:Lcom/android/gallery3d/filtershow/filters/y$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y;->v0()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y;->w0()V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CROP_STRAIGHTEN: mStraighten is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCrop is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/filters/y$c;->r(Lcom/android/gallery3d/filtershow/filters/y$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMirror = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    iget-char v1, v1, Lcom/android/gallery3d/filtershow/filters/y$b;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$b;->d:Lcom/android/gallery3d/filtershow/filters/y$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$b;->c:Lcom/android/gallery3d/filtershow/filters/y$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y;->w0()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y;->v0()V

    :goto_1
    return-void
.end method

.method public x0(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/y;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument to setCrop is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y0(Lcom/android/gallery3d/filtershow/filters/y$b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/y;->p:Lcom/android/gallery3d/filtershow/filters/y$b;

    return-void
.end method

.method public z0(Lcom/android/gallery3d/filtershow/filters/y$c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/y;->o:Lcom/android/gallery3d/filtershow/filters/y$c;

    return-void
.end method
