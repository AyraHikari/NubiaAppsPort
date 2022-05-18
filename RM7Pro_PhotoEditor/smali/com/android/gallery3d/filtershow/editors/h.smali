.class public Lcom/android/gallery3d/filtershow/editors/h;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/editors/h$b;
    }
.end annotation


# static fields
.field protected static final u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/gallery3d/filtershow/editors/h$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private r:Landroid/widget/Button;

.field private s:I

.field protected t:Lcom/android/gallery3d/filtershow/imageshow/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/android/gallery3d/filtershow/editors/h;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/editors/h;->u:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0017

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800aa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0018

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800ab

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0019

    invoke-direct {v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800ac

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e001a

    const/4 v3, 0x4

    invoke-direct {v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800ad

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e001b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800ae

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e001d

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e001e

    invoke-direct {v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0020

    const/16 v3, 0x9

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0016

    invoke-direct {v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800a9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0025

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0026

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0022

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0021

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0024

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v2, 0x7f0e0023

    invoke-direct {v1, v2, v3, v3}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v2, 0x7f0800b5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080109

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->r:Landroid/widget/Button;

    const v0, 0x7f0800b8

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->i:Z

    return-void
.end method

.method private Q(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->setCurrentAspectId(I)V

    sget-object v0, Lcom/android/gallery3d/filtershow/editors/h;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/h$b;

    if-eqz v0, :cond_7

    const v1, 0x7f0800b8

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->J()V

    goto :goto_0

    :cond_0
    const v1, 0x7f0800b9

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->M()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0800b3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->H()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0800b6

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->L()V

    goto :goto_0

    :cond_3
    const v1, 0x7f0800b5

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->K()V

    goto :goto_0

    :cond_4
    const v1, 0x7f0800b4

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->I()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h$b;->a:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/gallery3d/filtershow/editors/h$b;->b:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/j;->G(FF)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h$b;->c:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/h;->V(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->r:Landroid/widget/Button;

    if-eqz p1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v3, 0x7f0e0015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget v0, v0, Lcom/android/gallery3d/filtershow/editors/h$b;->c:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private R(Landroid/content/Context;)V
    .locals 4

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/editors/h;->S(II)I

    move-result v1

    div-int/2addr p1, v1

    div-int/2addr v0, v1

    sget-object v1, Lcom/android/gallery3d/filtershow/editors/h;->u:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v3, 0x7f0e0028

    invoke-direct {v2, v3, p1, v0}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const v3, 0x7f0800ba

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/h$b;

    const v3, 0x7f0e0027

    invoke-direct {v2, v3, v0, p1}, Lcom/android/gallery3d/filtershow/editors/h$b;-><init>(III)V

    const p1, 0x7f0800b7

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private S(II)I
    .locals 1

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    :goto_0
    rem-int/2addr p2, p1

    if-eqz p2, :cond_1

    move v0, p2

    move p2, p1

    move p1, v0

    goto :goto_0

    :cond_1
    return p1
.end method

.method private V(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public F()V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const-string v2, "CROP"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->q(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->setFilterCropRepresentation(Lcom/android/gallery3d/filtershow/filters/j;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public H(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/editors/c;->H(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/h;->r:Landroid/widget/Button;

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const-string p2, " "

    const p4, 0x7f0e0015

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/gallery3d/filtershow/editors/h;->u:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->getCurrentAspectId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/editors/h$b;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->r:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget p3, p3, Lcom/android/gallery3d/filtershow/editors/h$b;->c:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid resource ID: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const p4, 0x7f0e0025

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->r:Landroid/widget/Button;

    new-instance p2, Lcom/android/gallery3d/filtershow/editors/h$a;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/editors/h$a;-><init>(Lcom/android/gallery3d/filtershow/editors/h;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    move-object/from16 v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b002e

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B0()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/j;->Z()V

    :cond_0
    iget-object v2, v0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/j;->getFiltedRect()V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/j;->getCurrentAspectId()I

    move-result v2

    iput v2, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v5, 0x7f0800b9

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const v7, 0x7f0800b3

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    const v9, 0x7f0800b6

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    const v11, 0x7f0800b5

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    const v13, 0x7f0800aa

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    const v15, 0x7f0800ab

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/widget/RadioButton;

    const v15, 0x7f0800ac

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/RadioButton;

    const v13, 0x7f0800ad

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Landroid/widget/RadioButton;

    const v11, 0x7f0800ae

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Landroid/widget/RadioButton;

    const v9, 0x7f0800b0

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Landroid/widget/RadioButton;

    const v7, 0x7f0800b1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Landroid/widget/RadioButton;

    const v5, 0x7f0800b2

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v5, v21

    check-cast v5, Landroid/widget/RadioButton;

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v2, v22

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v22, v2

    const v2, 0x7f0800b4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v2, v23

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v23, v2

    const v2, 0x7f0800ba

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v2, v24

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v24, v2

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/16 v25, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    move-object/from16 v26, v1

    const v1, 0x7f0800b8

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move/from16 v1, v25

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move-object/from16 v26, v1

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b9

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move/from16 v1, v25

    :goto_2
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    if-eqz v8, :cond_6

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    move/from16 v1, v25

    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_6
    if-eqz v10, :cond_8

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b6

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    move/from16 v1, v25

    :goto_4
    invoke-virtual {v10, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_8
    if-eqz v12, :cond_a

    invoke-virtual {v12, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b5

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    move/from16 v1, v25

    :goto_5
    invoke-virtual {v12, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_a
    if-eqz v14, :cond_c

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800aa

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    move/from16 v1, v25

    :goto_6
    invoke-virtual {v14, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_c
    if-eqz v4, :cond_e

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800ab

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    move/from16 v1, v25

    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_e
    if-eqz v15, :cond_10

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800ac

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    move/from16 v1, v25

    :goto_8
    invoke-virtual {v15, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_10
    if-eqz v13, :cond_12

    invoke-virtual {v13, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800ad

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    move/from16 v1, v25

    :goto_9
    invoke-virtual {v13, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_12
    if-eqz v11, :cond_14

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800ae

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_a

    :cond_13
    move/from16 v1, v25

    :goto_a
    invoke-virtual {v11, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_14
    if-eqz v9, :cond_16

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b0

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_b

    :cond_15
    move/from16 v1, v25

    :goto_b
    invoke-virtual {v9, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_16
    if-eqz v7, :cond_18

    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_c

    :cond_17
    move/from16 v1, v25

    :goto_c
    invoke-virtual {v7, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_18
    if-eqz v5, :cond_1a

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b2

    if-ne v1, v2, :cond_19

    const/4 v1, 0x1

    goto :goto_d

    :cond_19
    move/from16 v1, v25

    :goto_d
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1a
    if-eqz v22, :cond_1c

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v3, 0x7f0800a9

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    goto :goto_e

    :cond_1b
    move/from16 v2, v25

    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1c
    if-eqz v23, :cond_1e

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v3, 0x7f0800b4

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_f

    :cond_1d
    move/from16 v2, v25

    :goto_f
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1e
    if-eqz v24, :cond_20

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v3, 0x7f0800ba

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_10

    :cond_1f
    move/from16 v2, v25

    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_20
    if-eqz v26, :cond_22

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v3, 0x7f0800b7

    if-ne v2, v3, :cond_21

    const/4 v4, 0x1

    goto :goto_11

    :cond_21
    move/from16 v4, v25

    :goto_11
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_22
    return-void
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->a0()V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/gallery3d/filtershow/editors/h;->u:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/h$b;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    const v2, 0x7f0800b8

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->a0()V

    goto :goto_0

    :cond_0
    const v2, 0x7f0800b9

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->M()V

    goto :goto_0

    :cond_1
    const v2, 0x7f0800b4

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->I()V

    goto :goto_0

    :cond_2
    const v2, 0x7f0800b3

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->H()V

    goto :goto_0

    :cond_3
    const v2, 0x7f0800b6

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->L()V

    goto :goto_0

    :cond_4
    const v2, 0x7f0800b5

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->K()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    iget v2, v0, Lcom/android/gallery3d/filtershow/editors/h$b;->a:I

    int-to-float v2, v2

    iget v0, v0, Lcom/android/gallery3d/filtershow/editors/h$b;->b:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->G(FF)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/editors/h;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/h;->Q(Landroid/view/View;)V

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/h;->R(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/j;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->setEditor(Lcom/android/gallery3d/filtershow/editors/h;)V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->getFinalRepresentation()Lcom/android/gallery3d/filtershow/filters/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->k(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/h;->t:Lcom/android/gallery3d/filtershow/imageshow/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->Z()V

    return-void
.end method
