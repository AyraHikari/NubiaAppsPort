.class public Lcom/android/gallery3d/filtershow/editors/b;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/controller/m;


# instance fields
.field A:Lcom/android/gallery3d/filtershow/imageshow/CompositeAdjustColor;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080094

    const v1, 0x7f0b0029

    const v2, 0x7f080093

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->B:Ljava/util/ArrayList;

    return-void
.end method

.method private V()Lcom/android/gallery3d/filtershow/filters/c;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private W(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private X()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    return-void
.end method

.method private Y()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/b;->l(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->X()V

    return-void
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    return-void
.end method

.method protected D(I)V
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->Y()V

    :cond_0
    return-void
.end method

.method public E(Landroid/widget/LinearLayout;)V
    .locals 2

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->h0()Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/b;->A:Lcom/android/gallery3d/filtershow/imageshow/CompositeAdjustColor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/CompositeAdjustColor;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/c;)V

    :cond_0
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->I(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected P(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b;->h()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float p1, p1

    int-to-float v2, v2

    div-float/2addr p1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b;->getValue()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/b;->l(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->X()V

    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/b;->B:Ljava/util/ArrayList;

    const-string p3, ""

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->V()Lcom/android/gallery3d/filtershow/filters/c;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p3

    :cond_1
    iget-byte v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->k:B

    sget-byte v1, Lcom/android/gallery3d/filtershow/editors/c;->q:B

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result p1

    and-int/2addr p1, v0

    const-string v0, " "

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b;->B:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/c;->getValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/editors/b;->W(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/b;->B:Ljava/util/ArrayList;

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object p3
.end method

.method public getValue()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->V()Lcom/android/gallery3d/filtershow/filters/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/c;->q0(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->V()Lcom/android/gallery3d/filtershow/filters/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/c;->o0(I)I

    move-result v0

    return v0
.end method

.method public l(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->V()Lcom/android/gallery3d/filtershow/filters/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/filters/c;->s0(II)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    instance-of p3, p1, Lcom/android/gallery3d/filtershow/filters/c;

    if-eqz p3, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/c;

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/filters/c;->o0(I)I

    move-result p3

    add-int/2addr p2, p3

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {p1, p3, p2}, Lcom/android/gallery3d/filtershow/filters/c;->s0(II)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/CompositeAdjustColor;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b;->A:Lcom/android/gallery3d/filtershow/imageshow/CompositeAdjustColor;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/CompositeAdjustColor;->setEditor(Lcom/android/gallery3d/filtershow/editors/b;)V

    const-string p1, "lyg"

    const-string p2, "compositeEditor createeditor"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/c;->m0()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/b;->V()Lcom/android/gallery3d/filtershow/filters/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/b;->z:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/c;->n0(I)I

    move-result v0

    return v0
.end method
