.class public Lcom/android/gallery3d/filtershow/editors/s;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/editors/s$f;
    }
.end annotation


# static fields
.field protected static final x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/gallery3d/filtershow/editors/s$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field r:Lcom/android/gallery3d/filtershow/imageshow/s;

.field private s:Landroid/widget/RadioButton;

.field private t:Landroid/widget/RadioButton;

.field private u:Landroid/widget/RadioButton;

.field private v:Landroid/widget/RadioButton;

.field private w:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/editors/s;->x:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e0017

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800aa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e001b

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800ae

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e001a

    invoke-direct {v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800ad

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e001d

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800b0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e001e

    invoke-direct {v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800b1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e0020

    const/16 v3, 0x9

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800b2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e0016

    invoke-direct {v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800a9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s$f;

    const v2, 0x7f0e0025

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/s$f;-><init>(III)V

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080113

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->s:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->t:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->u:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->v:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->w:Landroid/widget/Button;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->i:Z

    return-void
.end method


# virtual methods
.method public F()V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "CROP_STRAIGHTEN"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->q(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/y;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/s;->setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/y;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public H(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/editors/c;->H(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of p2, p1, Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y;->r0()F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/s;->getAngle()F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/s;->w:Landroid/widget/Button;

    if-eqz p3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v0, 0x7f0e018d

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0e0163

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/s;->w:Landroid/widget/Button;

    new-instance p2, Lcom/android/gallery3d/filtershow/editors/s$e;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/editors/s$e;-><init>(Lcom/android/gallery3d/filtershow/editors/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0064

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B0()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/y;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/y;)V

    :cond_1
    const p2, 0x7f080054

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/s;->s:Landroid/widget/RadioButton;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/s$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/s$a;-><init>(Lcom/android/gallery3d/filtershow/editors/s;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080055

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/s;->t:Landroid/widget/RadioButton;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/s$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/s$b;-><init>(Lcom/android/gallery3d/filtershow/editors/s;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080051

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/s;->v:Landroid/widget/RadioButton;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/s$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/s$c;-><init>(Lcom/android/gallery3d/filtershow/editors/s;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080052

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/s;->u:Landroid/widget/RadioButton;

    new-instance p2, Lcom/android/gallery3d/filtershow/editors/s$d;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/editors/s$d;-><init>(Lcom/android/gallery3d/filtershow/editors/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->P()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->Q()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/s;->S(F)V

    :cond_0
    return-void
.end method

.method public S(F)V
    .locals 5

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->w:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v4, 0x7f0e018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, p1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r2(Ljava/lang/String;Z)V

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/s;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/s;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/s;->setEditor(Lcom/android/gallery3d/filtershow/editors/s;)V

    return-void
.end method

.method public r()V
    .locals 0

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/c;->r()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->getFinalRepresentation()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->o(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->P()V

    :cond_0
    return-void
.end method
