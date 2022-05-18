.class public Lcom/android/gallery3d/filtershow/filters/s;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/filters/s$b;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "s"


# instance fields
.field m:Lcom/android/gallery3d/filtershow/filters/s$b;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/s;->n0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/s;-><init>(Lcom/android/gallery3d/filtershow/filters/s$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/s$b;)V
    .locals 2

    const-string v0, "MIRROR"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/filters/s;->n:Z

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f080184

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/s;->o0(Lcom/android/gallery3d/filtershow/filters/s$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/s;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/s;->m0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/s;-><init>(Lcom/android/gallery3d/filtershow/filters/s$b;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/filters/s;->n:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/s;->n:Z

    return-void
.end method

.method public static n0()Lcom/android/gallery3d/filtershow/filters/s$b;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->b:Lcom/android/gallery3d/filtershow/filters/s$b;

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/filters/s;-><init>(Lcom/android/gallery3d/filtershow/filters/s;)V

    return-object v0
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 3

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

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/filters/s$b;->s(C)Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/s;->o0(Lcom/android/gallery3d/filtershow/filters/s$b;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s;->o:Ljava/lang/String;

    const-string v1, "WARNING: bad value when deserializing MIRROR"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/s;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public S()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/s;->n0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

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

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/s$b;->t()C

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/s;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/s;->m0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/s;->o0(Lcom/android/gallery3d/filtershow/filters/s$b;)V

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/filters/s;->n:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/s;->n:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$a;->a:[I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

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
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->b:Lcom/android/gallery3d/filtershow/filters/s$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->c:Lcom/android/gallery3d/filtershow/filters/s$b;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->e:Lcom/android/gallery3d/filtershow/filters/s$b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->d:Lcom/android/gallery3d/filtershow/filters/s$b;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

    :goto_1
    return-void
.end method

.method public l0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/s;->n:Z

    return v0
.end method

.method public m0()Lcom/android/gallery3d/filtershow/filters/s$b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

    return-object v0
.end method

.method public o0(Lcom/android/gallery3d/filtershow/filters/s$b;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/s;->m:Lcom/android/gallery3d/filtershow/filters/s$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument to setMirror is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
