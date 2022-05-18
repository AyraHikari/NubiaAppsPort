.class public Lcom/android/gallery3d/filtershow/editors/d;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/controller/m;


# instance fields
.field A:Ljava/lang/String;

.field private B:I

.field C:Lcom/android/gallery3d/filtershow/imageshow/ImageAdjustColor;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080105

    const v1, 0x7f0b0021

    const v2, 0x7f08001a

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->A:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    return-void
.end method

.method static synthetic V(Lcom/android/gallery3d/filtershow/editors/d;I)I
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    return p1
.end method

.method static synthetic W(Lcom/android/gallery3d/filtershow/editors/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->a0()V

    return-void
.end method

.method private X()Lcom/android/gallery3d/filtershow/filters/e;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private Y()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->D:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->E:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/d;->F:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->z:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->E:Landroid/widget/Button;

    :goto_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->F:Landroid/widget/Button;

    :goto_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->z:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->D:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->z:I

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->E:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->D:Landroid/widget/Button;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private Z()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    return-void
.end method

.method private a0()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/d;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/d;->l(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->Y()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->Z()V

    return-void
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    return-void
.end method

.method public E(Landroid/widget/LinearLayout;)V
    .locals 4

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b0022

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->D:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/d$a;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/editors/d$a;-><init>(Lcom/android/gallery3d/filtershow/editors/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->E:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/d$b;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/editors/d$b;-><init>(Lcom/android/gallery3d/filtershow/editors/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->F:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/d$c;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/editors/d$c;-><init>(Lcom/android/gallery3d/filtershow/editors/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->Y()V

    return-void
.end method

.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/e;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->h0()Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->C:Lcom/android/gallery3d/filtershow/imageshow/ImageAdjustColor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageAdjustColor;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/e;)V

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
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditorAdjustColor valueChanged value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lyg"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/d;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/d;->h()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float p1, p1

    int-to-float v4, v3

    div-float/2addr p1, v4

    sub-int v4, v0, v2

    int-to-float v4, v4

    mul-float/2addr v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/d;->getValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/editors/d;->l(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EditorAdjustColor max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " min="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  w = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rate = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->Z()V

    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->X()Lcom/android/gallery3d/filtershow/filters/e;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d;->A:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->X()Lcom/android/gallery3d/filtershow/filters/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e;->o0(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->X()Lcom/android/gallery3d/filtershow/filters/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e;->q0(I)I

    move-result v0

    return v0
.end method

.method public l(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->X()Lcom/android/gallery3d/filtershow/filters/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/filters/e;->z0(II)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/d;->A:Ljava/lang/String;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    instance-of p3, p1, Lcom/android/gallery3d/filtershow/filters/e;

    if-eqz p3, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e;

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/filters/e;->q0(I)I

    move-result p3

    add-int/2addr p2, p3

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    invoke-virtual {p1, p3, p2}, Lcom/android/gallery3d/filtershow/filters/e;->z0(II)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/ImageAdjustColor;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d;->C:Lcom/android/gallery3d/filtershow/imageshow/ImageAdjustColor;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageAdjustColor;->setEditor(Lcom/android/gallery3d/filtershow/editors/d;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050027

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/d;->y:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050051

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/d;->z:I

    return-void
.end method

.method public x()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/d;->X()Lcom/android/gallery3d/filtershow/filters/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/d;->B:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e;->p0(I)I

    move-result v0

    return v0
.end method
