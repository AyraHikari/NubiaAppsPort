.class public Lcom/android/gallery3d/filtershow/filters/b0;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# static fields
.field private static final n:Ljava/lang/String; = "b0"


# instance fields
.field m:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/b0;->k0()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/b0;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const-string v0, "STRAIGHTEN"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    const v0, 0x7f0e018c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/b0;->n0(F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/b0;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/b0;->l0()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/b0;-><init>(F)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    return-void
.end method

.method public static k0()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private m0(D)Z
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


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/filters/b0;-><init>(Lcom/android/gallery3d/filtershow/filters/b0;)V

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

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/filters/b0;->m0(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/b0;->n0(F)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/b0;->n:Ljava/lang/String;

    const-string v1, "WARNING: bad value when deserializing STRAIGHTEN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/b0;

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/b0;->m:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/b0;->m:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public S()Z
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/b0;->m:F

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/b0;->k0()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

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

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/b0;->m:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/b0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/b0;->l0()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/b0;->n0(F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l0()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/b0;->m:F

    return v0
.end method

.method public n0(F)V
    .locals 2

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/b0;->m0(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/b0;->m:F

    return-void
.end method
