.class public Lcom/android/gallery3d/filtershow/filters/q;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/imageshow/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/filters/q$a;
    }
.end annotation


# static fields
.field private static o:Ljava/lang/String; = "Point"


# instance fields
.field m:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/q$a;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/android/gallery3d/filtershow/filters/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Grad"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    const-string v0, "grad"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/q;->l0()V

    const v0, 0x7f070107

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/v0;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    return-void
.end method

.method private l0()V
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/q$a;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q$a;->b(Lcom/android/gallery3d/filtershow/filters/q$a;Z)Z

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->d(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    const/16 v3, 0x64

    invoke-static {v0, v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->f(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->h(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-static {v0, v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->j(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    const/16 v2, -0x32

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->l(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q$a;->n(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q$a;->p(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v2, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/q;->C0()V

    return-void
.end method


# virtual methods
.method public A0(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q$a;->b(Lcom/android/gallery3d/filtershow/filters/q$a;Z)Z

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/filters/q$a;->n(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/filters/q$a;->p(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/filters/q$a;->l(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    :goto_0
    return-void
.end method

.method public B0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/q$a;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    return-void
.end method

.method public C0()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/q;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/q;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/q;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/gallery3d/filtershow/filters/q;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/gallery3d/filtershow/filters/q;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/q$a;-><init>()V

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->b(Lcom/android/gallery3d/filtershow/filters/q$a;Z)Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->d(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->f(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->h(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->j(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->l(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->n(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->p(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/q;->C0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/q$a;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 6

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/q;->q0()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/q;->q0()I

    move-result v2

    if-eq v2, v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/q$a;

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v4

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->k(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->k(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->m(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->m(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->o(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->o(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v2

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 6

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/gallery3d/filtershow/filters/q;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->k(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->m(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->o(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public f(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/filters/q$a;->h(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/filters/q$a;->j(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 4

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/q;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    iget-object p1, p1, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/q$a;

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-direct {v3, v2}, Lcom/android/gallery3d/filtershow/filters/q$a;-><init>(Lcom/android/gallery3d/filtershow/filters/q$a;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/q$a;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    return-void
.end method

.method public k0(Landroid/graphics/Rect;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/filtershow/filters/q$a;-><init>(II)V

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/filters/q$a;->b(Lcom/android/gallery3d/filtershow/filters/q$a;Z)Z

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v2

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v5}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v5

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v5, v7

    iget-object v7, v0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    iget-object v8, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x1

    move v10, v4

    move v9, v8

    :goto_0
    if-eqz v9, :cond_9

    add-int/2addr v10, v8

    const/16 v9, 0xe

    if-le v10, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v9, v0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v11}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_2
    iget-object v9, v0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v11, v4

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v12}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v13, v12}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-eq v7, v13, :cond_6

    invoke-static {v12}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v13

    sub-int/2addr v13, v2

    int-to-double v13, v13

    invoke-static {v12}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v12

    sub-int/2addr v12, v3

    move-object v15, v9

    int-to-double v8, v12

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    cmpg-double v8, v8, v5

    if-gez v8, :cond_7

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    int-to-double v8, v3

    add-double/2addr v8, v5

    double-to-int v3, v8

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->d(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    int-to-double v8, v3

    add-double/2addr v8, v5

    double-to-int v3, v8

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->f(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    int-to-double v8, v3

    add-double/2addr v8, v5

    double-to-int v3, v8

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->h(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    int-to-double v8, v3

    add-double/2addr v8, v5

    double-to-int v3, v8

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->j(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v2

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    iget-object v8, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v8}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v8

    add-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    iget-object v8, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v8}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    iget-object v8, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-double v11, v9

    add-double/2addr v11, v5

    double-to-int v9, v11

    invoke-static {v8, v9}, Lcom/android/gallery3d/filtershow/filters/q$a;->f(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    :cond_4
    iget-object v8, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v8}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_5

    iget-object v8, v0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-double v11, v9

    add-double/2addr v11, v5

    double-to-int v9, v11

    invoke-static {v8, v9}, Lcom/android/gallery3d/filtershow/filters/q$a;->d(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    move-object v15, v9

    :cond_7
    :goto_2
    move-object v9, v15

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_3
    move v9, v11

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/q;->C0()V

    return v4
.end method

.method public m0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/q;->C0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/q;->q0()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/q;->k0(Landroid/graphics/Rect;)I

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/q$a;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    return-void
.end method

.method public n0()[I
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->k(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public o0()[I
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->m(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public p0()[Z
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public q0()I
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public r0(I)I
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/filters/q$a;->m(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/filters/q$a;->o(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/filters/q$a;->k(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result p1

    return p1
.end method

.method public s()F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public s0(I)I
    .locals 3

    const/16 v0, 0x64

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public t()F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public t0(I)I
    .locals 3

    const/16 v0, -0x64

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/q$a;->a(Lcom/android/gallery3d/filtershow/filters/q$a;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v2, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()[I
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->o(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public v(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/filters/q$a;->d(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/filters/q$a;->f(Lcom/android/gallery3d/filtershow/filters/q$a;I)I

    return-void
.end method

.method public v0()I
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->n:Lcom/android/gallery3d/filtershow/filters/q$a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public w0()[I
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->c(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public x0()[I
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->g(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public y0()[I
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->e(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public z0()[I
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/q;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/q$a;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/filters/q$a;->i(Lcom/android/gallery3d/filtershow/filters/q$a;)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
