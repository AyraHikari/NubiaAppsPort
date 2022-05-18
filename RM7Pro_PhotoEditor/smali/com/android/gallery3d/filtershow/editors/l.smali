.class public Lcom/android/gallery3d/filtershow/editors/l;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/controller/i;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/editors/l$e;
    }
.end annotation


# instance fields
.field A:Lcom/android/gallery3d/filtershow/imageshow/ImageGrad;

.field B:[Lcom/android/gallery3d/filtershow/editors/l$e;

.field private C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/widget/PopupWindow;

.field private E:Landroid/widget/Button;

.field y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f08010c

    const v1, 0x7f0b0040

    const v2, 0x7f080160

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/editors/l$e;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->B:[Lcom/android/gallery3d/filtershow/editors/l$e;

    return-void
.end method

.method static synthetic V(Lcom/android/gallery3d/filtershow/editors/l;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/l;->c0(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic W(Lcom/android/gallery3d/filtershow/editors/l;)Lcom/android/gallery3d/filtershow/filters/q;
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object p0

    return-object p0
.end method

.method static synthetic X(Lcom/android/gallery3d/filtershow/editors/l;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    return p0
.end method

.method static synthetic Y(Lcom/android/gallery3d/filtershow/editors/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    return p1
.end method

.method private a0()Lcom/android/gallery3d/filtershow/filters/q;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/q;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/q;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b0(Landroid/widget/LinearLayout;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/q;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->C:Ljava/util/HashMap;

    const v1, 0x7f080164

    const v2, 0x7f080165

    const v3, 0x7f080163

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->C:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v6, 0x7f0e008e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->C:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v6, 0x7f0e0091

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->C:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v6, 0x7f0e008f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/editors/l;->Z(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/q;->r0(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r2(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f0b004e

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-direct {v4, v0, v5, p1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/editors/l;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l;->D:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l;->D:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/l$d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/l$d;-><init>(Lcom/android/gallery3d/filtershow/editors/l;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private c0(Landroid/widget/LinearLayout;)V
    .locals 5

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->E:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->D:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/l;->b0(Landroid/widget/LinearLayout;)V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->E:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->D:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->E:Landroid/widget/Button;

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x1

    aget p1, p1, v4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private d0(Lcom/android/gallery3d/filtershow/filters/q;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/q;->q0()I

    return-void
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    return-void
.end method

.method public E(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/l$a;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/l$a;-><init>(Lcom/android/gallery3d/filtershow/editors/l;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/l;->b0(Landroid/widget/LinearLayout;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/l;->K()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v1, 0x7f0e00f9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/q;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->h0()Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->A:Lcom/android/gallery3d/filtershow/imageshow/ImageGrad;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGrad;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/q;)V

    :cond_0
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->I(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    const p1, 0x7f0801f7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0041

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/l;->B:[Lcom/android/gallery3d/filtershow/editors/l$e;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/l$e;

    const v4, 0x7f08015d

    const v5, 0x7f08015e

    const/4 v7, 0x2

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/editors/l$e;-><init>(Lcom/android/gallery3d/filtershow/editors/l;IILandroid/widget/LinearLayout;I)V

    const/4 v8, 0x0

    aput-object v0, p2, v8

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/l;->B:[Lcom/android/gallery3d/filtershow/editors/l$e;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/l$e;

    const v4, 0x7f08015a

    const v5, 0x7f08015b

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/editors/l$e;-><init>(Lcom/android/gallery3d/filtershow/editors/l;IILandroid/widget/LinearLayout;I)V

    aput-object v0, p2, v1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/l;->B:[Lcom/android/gallery3d/filtershow/editors/l$e;

    const/4 v0, 0x2

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/l$e;

    const v4, 0x7f080161

    const v5, 0x7f080162

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/editors/l$e;-><init>(Lcom/android/gallery3d/filtershow/editors/l;IILandroid/widget/LinearLayout;I)V

    aput-object v1, p2, v0

    const p2, 0x7f080159

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/l$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/l$b;-><init>(Lcom/android/gallery3d/filtershow/editors/l;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08015f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/gallery3d/filtershow/editors/l$c;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/editors/l$c;-><init>(Lcom/android/gallery3d/filtershow/editors/l;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Z(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f0e008f

    return p1

    :cond_1
    const p1, 0x7f0e0091

    return p1

    :cond_2
    const p1, 0x7f0e008e

    return p1
.end method

.method public e0()V
    .locals 4

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/l;->B:[Lcom/android/gallery3d/filtershow/editors/l$e;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/editors/l$e;->b(Lcom/android/gallery3d/filtershow/filters/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    return-object p1
.end method

.method public f0(Lcom/android/gallery3d/filtershow/filters/q;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/l;->e0()V

    :goto_0
    return-void
.end method

.method public getValue()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q;->r0(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q;->t0(I)I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/q;->m0()V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/l;->d0(Lcom/android/gallery3d/filtershow/filters/q;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/l;->f0(Lcom/android/gallery3d/filtershow/filters/q;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public l(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/filters/q;->A0(II)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterActionAndInt"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/q;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->C:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/l;->f0(Lcom/android/gallery3d/filtershow/filters/q;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/l;->K()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l;->D:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080163
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    instance-of p3, p1, Lcom/android/gallery3d/filtershow/filters/q;

    if-eqz p3, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/q;

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/filters/q;->t0(I)I

    move-result p3

    add-int/2addr p2, p3

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {p1, p3, p2}, Lcom/android/gallery3d/filtershow/filters/q;->A0(II)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    :cond_0
    return-void
.end method

.method public p()I
    .locals 1

    const v0, 0x7f070149

    return v0
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/ImageGrad;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l;->A:Lcom/android/gallery3d/filtershow/imageshow/ImageGrad;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGrad;->setEditor(Lcom/android/gallery3d/filtershow/editors/l;)V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public x()I
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/l;->z:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q;->s0(I)I

    move-result v0

    return v0
.end method

.method public y()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/l;->a0()Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/q;->k0(Landroid/graphics/Rect;)I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/l;->d0(Lcom/android/gallery3d/filtershow/filters/q;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/l;->f0(Lcom/android/gallery3d/filtershow/filters/q;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public z()I
    .locals 1

    const v0, 0x7f07014a

    return v0
.end method
