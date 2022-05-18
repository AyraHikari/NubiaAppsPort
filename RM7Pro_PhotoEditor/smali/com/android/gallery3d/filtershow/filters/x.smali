.class public Lcom/android/gallery3d/filtershow/filters/x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->d:Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->e:I

    sget v1, Lcom/android/gallery3d/filtershow/editors/a;->y:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/x;->f:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->g:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->h:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->i:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->j:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->k:Z

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->J()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->i0()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->I()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->N()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->O()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->c0(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->h0()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->l:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/gallery3d/filtershow/filters/x;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->R()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->Z(Z)V

    return-void
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->G([[Ljava/lang/String;)V

    return-void
.end method

.method public G([[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v3, "Name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->c:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->b:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->b:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->i0()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->i0()Z

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->e:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->e:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->f:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->f:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->g:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->g:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->h:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->h:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->i:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->i:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/filters/x;->j:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/x;->j:Z

    if-ne v1, v2, :cond_1

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/filters/x;->k:Z

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/filters/x;->k:Z

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->f:I

    return v0
.end method

.method public J()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->b:I

    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public M(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->h:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->h:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public N()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->h:I

    return v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->i:Z

    return v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->l:Ljava/lang/String;

    return-object v0
.end method

.method public Q()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->e:I

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->k:Z

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->J()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->J()Ljava/lang/Class;

    move-result-object p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->V()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public V()[[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    return-object v1
.end method

.method public W(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->f:I

    return-void
.end method

.method public X(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->c:Ljava/lang/Class;

    return-void
.end method

.method public Y(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->b:I

    return-void
.end method

.method public Z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->k:Z

    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    return-void
.end method

.method public b0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->h:I

    return-void
.end method

.method public c0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->i:Z

    return-void
.end method

.method public d0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->l:Ljava/lang/String;

    return-void
.end method

.method public e0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->j:Z

    return-void
.end method

.method public f0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->d:Z

    return-void
.end method

.method public g0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/x;->e:I

    return-void
.end method

.method public h0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->j:Z

    return v0
.end method

.method public i0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->d:Z

    return v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/x;->a:Ljava/lang/String;

    return-object v0
.end method
