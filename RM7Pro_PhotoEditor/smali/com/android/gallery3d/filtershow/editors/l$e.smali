.class Lcom/android/gallery3d/filtershow/editors/l$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/editors/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Landroid/widget/SeekBar;

.field b:Landroid/widget/TextView;

.field c:I

.field d:I

.field e:I

.field final synthetic f:Lcom/android/gallery3d/filtershow/editors/l;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/editors/l;IILandroid/widget/LinearLayout;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->c:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->d:I

    invoke-virtual {p4, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->a:Landroid/widget/SeekBar;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->a:Landroid/widget/SeekBar;

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->d:I

    iget p4, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->c:I

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    iput p5, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->e:I

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/l;->W(Lcom/android/gallery3d/filtershow/editors/l;)Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/l$e;->b(Lcom/android/gallery3d/filtershow/filters/q;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->a:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private a(I)I
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


# virtual methods
.method public b(Lcom/android/gallery3d/filtershow/filters/q;)V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->e:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/q;->r0(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->c:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/l;->W(Lcom/android/gallery3d/filtershow/editors/l;)Lcom/android/gallery3d/filtershow/filters/q;

    move-result-object p1

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->c:I

    add-int/2addr p2, p3

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->e:I

    invoke-virtual {p1, p3, p2}, Lcom/android/gallery3d/filtershow/filters/q;->A0(II)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/l;->X(Lcom/android/gallery3d/filtershow/editors/l;)I

    move-result p1

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->e:I

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    invoke-static {p1, p3}, Lcom/android/gallery3d/filtershow/editors/l;->Y(Lcom/android/gallery3d/filtershow/editors/l;I)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    iget-object p3, p1, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->e:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/l$e;->a(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    iget-object p3, p1, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/gallery3d/filtershow/editors/l;->y:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->b:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/l$e;->f:Lcom/android/gallery3d/filtershow/editors/l;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
