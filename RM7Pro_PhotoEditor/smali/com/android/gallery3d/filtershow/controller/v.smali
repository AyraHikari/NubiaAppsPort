.class public Lcom/android/gallery3d/filtershow/controller/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/f;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field protected d:Lcom/android/gallery3d/filtershow/controller/m;

.field e:Lcom/android/gallery3d/filtershow/editors/c;

.field f:Landroid/view/View;

.field protected g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b002d

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->g:I

    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/controller/v;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/controller/v;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/controller/v;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/controller/v;->c:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/h;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/m;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/m;->x()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/controller/m;->h()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/m;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/controller/m;->h()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->e:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->f:Landroid/view/View;

    return-object v0
.end method

.method public c(Lcom/android/gallery3d/filtershow/controller/h;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/m;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->a:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/v;->a()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/v;->e:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p2, Lcom/android/gallery3d/filtershow/controller/m;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    const-string p2, "layout_inflater"

    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->g:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->f:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->f:Landroid/view/View;

    const p2, 0x7f0800a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->a:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->f:Landroid/view/View;

    const p2, 0x7f0800a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->b:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->f:Landroid/view/View;

    const p2, 0x7f0800a4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/v;->a()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->a:Landroid/widget/SeekBar;

    new-instance p2, Lcom/android/gallery3d/filtershow/controller/v$a;

    invoke-direct {p2, p0, p3}, Lcom/android/gallery3d/filtershow/controller/v$a;-><init>(Lcom/android/gallery3d/filtershow/controller/v;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
