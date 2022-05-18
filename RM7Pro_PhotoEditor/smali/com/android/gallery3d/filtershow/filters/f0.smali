.class public Lcom/android/gallery3d/filtershow/filters/f0;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Landroid/graphics/Bitmap;

.field private r:Ljava/lang/String;

.field private s:Landroid/graphics/Rect;

.field private t:Lcom/android/gallery3d/filtershow/words/c;

.field private u:I

.field private v:I

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Matrix;

.field private y:Landroid/content/Context;

.field private z:Lcom/android/gallery3d/filtershow/materials/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;Ljava/lang/String;)V
    .locals 3

    const-string v0, "WORD"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->m:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->o:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->p:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->q:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->r:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/gallery3d/filtershow/words/c;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/words/c;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->u:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->v:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->x:Landroid/graphics/Matrix;

    const-string v2, "offline"

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->B:Ljava/lang/String;

    const-class v0, Lcom/android/gallery3d/filtershow/filters/b1;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->y:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/g;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/g;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    const p1, 0x7f080114

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->c0(Z)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/g;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A0(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->o:F

    return-void
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public B0(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method public C0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->r:Ljava/lang/String;

    return-void
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/f0;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->y:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/f0;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method public D0(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->m:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/f0;->n:F

    return-void
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public E0(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->p:F

    return-void
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 3

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->m:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->n:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->o:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->p:F

    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_0
    const-string v1, "rectImageView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    const-string v1, "textItem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->h(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->i(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/words/c;->k(Z)V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->k(Z)V

    :goto_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/words/c;->l(Z)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->l(Z)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    const-string v2, "online"

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->y:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/materials/g;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :cond_5
    const-string v1, "bubble/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/r;->e(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->y:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->q:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    :cond_7
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    goto/16 :goto_3

    :cond_8
    const-string v1, "imageView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->u:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->v:I

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public F0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->B:Ljava/lang/String;

    return-void
.end method

.method public G0(II)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->u:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/f0;->v:I

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->r0()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/f0;->B:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public H0(Lcom/android/gallery3d/filtershow/materials/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    return-void
.end method

.method public I0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    return-void
.end method

.method public J0(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    return-void
.end method

.method public K0(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    return-void
.end method

.method public L0(Lcom/android/gallery3d/filtershow/words/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    return-void
.end method

.method public M(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/g;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public M0(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->x:Landroid/graphics/Matrix;

    return-void
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "postion"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->m:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->n:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->o:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->p:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "rectImageView"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "textItem"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->e()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "rect"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "imageView"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->u:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->v:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->H0(Lcom/android/gallery3d/filtershow/materials/g;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->I0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->o0()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->m:F

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->p0()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->n:F

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->l0()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->A0(F)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->q0()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->E0(F)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->m0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->B0(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->n0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->C0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->x0()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->K0(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->y0()Lcom/android/gallery3d/filtershow/words/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->L0(Lcom/android/gallery3d/filtershow/words/c;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->F0(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;->u:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->u:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;->v:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->v:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->w0()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->J0(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f0;->z0()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f0;->M0(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public k0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->q:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->q:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/g;->e()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    :cond_1
    return-void
.end method

.method public l0()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->o:F

    return v0
.end method

.method public m0()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o0()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->m:F

    return v0
.end method

.method public p0()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->n:F

    return v0
.end method

.method public q0()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->p:F

    return v0
.end method

.method public r0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->B:Ljava/lang/String;

    return-object v0
.end method

.method public s0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->v:I

    return v0
.end method

.method public t0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->u:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterWord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCachePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/f0;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()Lcom/android/gallery3d/filtershow/materials/g;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->z:Lcom/android/gallery3d/filtershow/materials/g;

    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->A:Ljava/lang/String;

    return-object v0
.end method

.method public w0()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->w:Landroid/graphics/Rect;

    return-object v0
.end method

.method public x0()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->s:Landroid/graphics/Rect;

    return-object v0
.end method

.method public y0()Lcom/android/gallery3d/filtershow/words/c;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->t:Lcom/android/gallery3d/filtershow/words/c;

    return-object v0
.end method

.method public z0()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/f0;->x:Landroid/graphics/Matrix;

    return-object v0
.end method
