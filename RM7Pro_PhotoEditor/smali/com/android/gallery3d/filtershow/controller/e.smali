.class public Lcom/android/gallery3d/filtershow/controller/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/f;


# instance fields
.field protected a:Lcom/android/gallery3d/filtershow/controller/k;

.field protected b:Lcom/android/gallery3d/filtershow/editors/c;

.field private c:Landroid/view/View;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:[I

.field private j:[Landroid/widget/Button;

.field k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->d:Ljava/util/Vector;

    const v0, 0x7f0b002b

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->e:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->i:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->j:[Landroid/widget/Button;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->k:I

    return-void

    :array_0
    .array-data 4
        0x7f0800eb
        0x7f0800ec
        0x7f0800ed
        0x7f0800ee
        0x7f0800ef
    .end array-data
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/k;->c()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/e;->i:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/e;->j:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/gallery3d/filtershow/controller/e;->k:I

    if-ne v4, v1, :cond_0

    iget v4, p0, Lcom/android/gallery3d/filtershow/controller/e;->h:I

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/android/gallery3d/filtershow/controller/e;->g:I

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->c:Landroid/view/View;

    return-object v0
.end method

.method public c(Lcom/android/gallery3d/filtershow/controller/h;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/k;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/e;->a()V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/controller/e;->g:I

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/controller/e;->h:I

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/e;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/e;->f:Landroid/content/Context;

    const p3, 0x7f060056

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    check-cast p2, Lcom/android/gallery3d/filtershow/controller/k;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/controller/e;->f:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->e:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->c:Landroid/view/View;

    const p2, 0x7f0801a1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->c:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->d:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    new-instance p1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/k;->c()[I

    move-result-object p1

    :goto_0
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/controller/e;->i:[I

    array-length v0, p3

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->c:Landroid/view/View;

    aget p3, p3, p2

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->j:[Landroid/widget/Button;

    aput-object p3, v0, p2

    const/4 v0, 0x4

    new-array v0, v0, [F

    aget v1, p1, p2

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v1, p1, p2

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    aget v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/e;->k:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/e;->h:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/e;->g:I

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Lcom/android/gallery3d/filtershow/controller/e$a;

    invoke-direct {v0, p0, p2}, Lcom/android/gallery3d/filtershow/controller/e$a;-><init>(Lcom/android/gallery3d/filtershow/controller/e;I)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->c:Landroid/view/View;

    const p2, 0x7f0800f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/gallery3d/filtershow/controller/e$b;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/controller/e$b;-><init>(Lcom/android/gallery3d/filtershow/controller/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e([F)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/k;->c()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v2, p1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/controller/e;->j:[Landroid/widget/Button;

    iget v5, p0, Lcom/android/gallery3d/filtershow/controller/e;->k:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v5, p0, Lcom/android/gallery3d/filtershow/controller/e;->k:I

    aput v2, v0, v5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    aget v1, p1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/k;->l(I)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    invoke-virtual {v4}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public f()[I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/k;->c()[I

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/view/View;I)V
    .locals 2

    iput p2, p0, Lcom/android/gallery3d/filtershow/controller/e;->k:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    const/4 v0, 0x3

    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/controller/k;->l(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/controller/e;->g()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public i([I)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->a:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/k;->c()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x4

    new-array v2, v2, [F

    aget v3, v0, v1

    invoke-static {v3, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x3

    aget v4, v0, v1

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/controller/e;->j:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/e;->j:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/controller/e$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/controller/e$c;-><init>(Lcom/android/gallery3d/filtershow/controller/e;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/colorpicker/b;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/e;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/filtershow/colorpicker/b;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/a;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e;->j:[Landroid/widget/Button;

    iget v2, p0, Lcom/android/gallery3d/filtershow/controller/e;->k:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/colorpicker/b;->c([F)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/colorpicker/b;->d([F)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
