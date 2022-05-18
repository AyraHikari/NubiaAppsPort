.class public Lcom/android/gallery3d/filtershow/editors/w;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/SeekBar;

.field private B:Landroid/widget/SeekBar;

.field private C:Landroid/widget/SeekBar;

.field private D:Landroid/widget/SeekBar;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/Button;

.field private final K:Landroid/os/Handler;

.field private L:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/widget/PopupWindow;

.field private N:I

.field O:[I

.field y:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

.field private z:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080287

    const v1, 0x7f0b005a

    const v2, 0x7f08018b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->K:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->N:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->O:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e01a6
        0x7f0e01a4
        0x7f0e01a7
        0x7f0e01a3
        0x7f0e01a5
    .end array-data
.end method

.method static synthetic V(Lcom/android/gallery3d/filtershow/editors/w;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/w;->a0(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic W(Lcom/android/gallery3d/filtershow/editors/w;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    return-object p0
.end method

.method private Y()Lcom/android/gallery3d/filtershow/filters/e0;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/e0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/e0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private a0(Landroid/widget/LinearLayout;)V
    .locals 8

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->L:Ljava/util/HashMap;

    const v0, 0x7f08012a

    const v1, 0x7f080126

    const v2, 0x7f080128

    const v3, 0x7f080129

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->L:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v6, 0x7f0e01a6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->L:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v6, 0x7f0e01a5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->L:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v6, 0x7f0e01a3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->L:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v6, 0x7f0e01a7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0600db

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/w;->L:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int p1, v4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f0b004f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-direct {v5, v4, v6, p1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/w$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/w$b;-><init>(Lcom/android/gallery3d/filtershow/editors/w;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    const/4 v2, 0x0

    aget v3, p1, v2

    aget p1, p1, v7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private c0(Lcom/android/gallery3d/filtershow/filters/e0;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    return-void
.end method


# virtual methods
.method public E(Landroid/widget/LinearLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    :cond_0
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/w$a;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/w$a;-><init>(Lcom/android/gallery3d/filtershow/editors/w;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/w;->K()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/w;->Y()Lcom/android/gallery3d/filtershow/filters/e0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->O:[I

    iget v2, p0, Lcom/android/gallery3d/filtershow/editors/w;->N:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->N:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/filtershow/editors/w;->b0(Lcom/android/gallery3d/filtershow/filters/e0;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    return-void
.end method

.method public F()V
    .locals 11

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/e0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/e0;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->y:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/e0;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/e0;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/e0;

    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v3, v1, [Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/w;->z:Landroid/widget/SeekBar;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/w;->A:Landroid/widget/SeekBar;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/w;->B:Landroid/widget/SeekBar;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/w;->C:Landroid/widget/SeekBar;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/w;->D:Landroid/widget/SeekBar;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v4, v1, [Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/editors/w;->E:Landroid/widget/TextView;

    aput-object v10, v4, v5

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/editors/w;->F:Landroid/widget/TextView;

    aput-object v10, v4, v6

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/w;->G:Landroid/widget/TextView;

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/w;->H:Landroid/widget/TextView;

    aput-object v6, v4, v8

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/w;->I:Landroid/widget/TextView;

    aput-object v6, v4, v9

    :goto_0
    if-ge v5, v1, :cond_2

    aget v6, v2, v5

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v7

    aget-object v8, v3, v5

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/controller/b;->x()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v8, v3, v5

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result v6

    sub-int v6, v7, v6

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    aget-object v6, v4, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->y:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/e0;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->I(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->f:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p2, 0x7f0801ba

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->z:Landroid/widget/SeekBar;

    const/16 v0, 0xc8

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->z:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0801bb

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->E:Landroid/widget/TextView;

    const p2, 0x7f080144

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->A:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->A:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080145

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->F:Landroid/widget/TextView;

    const p2, 0x7f080216

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->B:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->B:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080217

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->G:Landroid/widget/TextView;

    const p2, 0x7f08009d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->C:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->C:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08009e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->H:Landroid/widget/TextView;

    const p2, 0x7f080147

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->D:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/w;->D:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080148

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->I:Landroid/widget/TextView;

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected R(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/controller/h;
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/e0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public T()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->N:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/w;->Y()Lcom/android/gallery3d/filtershow/filters/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/e0;->p0()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M0()Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public X(I)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, -0x1

    return p1

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :pswitch_4
    return v4

    :pswitch_5
    return v0

    :pswitch_6
    return v1

    :pswitch_7
    return v2

    :pswitch_8
    return v3

    :pswitch_9
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x7f080126
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080132
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected Z(Landroid/view/MenuItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/e0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/editors/w;->X(I)I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/editors/w;->b0(Lcom/android/gallery3d/filtershow/filters/e0;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b0(Lcom/android/gallery3d/filtershow/filters/e0;ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/filters/e0;->r0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/w;->R(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/filtershow/editors/a0;->Q(Lcom/android/gallery3d/filtershow/controller/h;Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/w;->c0(Lcom/android/gallery3d/filtershow/filters/e0;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(Landroid/view/MenuItem;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->c(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/w$d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/w$d;-><init>(Lcom/android/gallery3d/filtershow/editors/w;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->K:Landroid/os/Handler;

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/w;->Z(Landroid/view/MenuItem;)V

    return-void
.end method

.method public d(Landroid/view/MenuItem;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->d(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/w$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/w$c;-><init>(Lcom/android/gallery3d/filtershow/editors/w;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->K:Landroid/os/Handler;

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/w;->Z(Landroid/view/MenuItem;)V

    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p2, p1, Lcom/android/gallery3d/filtershow/filters/e0;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->O:[I

    aget p2, v0, p2

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->h0()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e0;->k0()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    if-lez p1, :cond_1

    const-string v0, " +"

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/e0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/editors/w;->X(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/w;->N:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/w;->L:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/editors/w;->b0(Lcom/android/gallery3d/filtershow/filters/e0;ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/w;->K()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->M:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/w;->Y()Lcom/android/gallery3d/filtershow/filters/e0;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->r0(I)V

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->G:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->r0(I)V

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->r0(I)V

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->I:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->r0(I)V

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->F:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_4
    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->r0(I)V

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/filters/e0;->m0()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->l0(I)Lcom/android/gallery3d/filtershow/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->H:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p3, p2}, Lcom/android/gallery3d/filtershow/filters/e0;->q0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08009d -> :sswitch_4
        0x7f080144 -> :sswitch_3
        0x7f080147 -> :sswitch_2
        0x7f0801ba -> :sswitch_1
        0x7f080216 -> :sswitch_0
    .end sparse-switch
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w;->y:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->setEditor(Lcom/android/gallery3d/filtershow/editors/w;)V

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w;->J:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
