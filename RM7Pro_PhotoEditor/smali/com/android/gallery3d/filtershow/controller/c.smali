.class public Lcom/android/gallery3d/filtershow/controller/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/f;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Lcom/android/gallery3d/filtershow/controller/m;

.field c:Lcom/android/gallery3d/filtershow/editors/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/controller/c;)Lcom/android/gallery3d/filtershow/controller/m;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/controller/c;->b:Lcom/android/gallery3d/filtershow/controller/m;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/c;->b:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/m;->x()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/c;->b:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/m;->h()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/c;->b:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/controller/m;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/controller/c;->a:Landroid/widget/SeekBar;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    sub-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/c;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/c;->a:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public c(Lcom/android/gallery3d/filtershow/controller/h;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/m;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/c;->b:Lcom/android/gallery3d/filtershow/controller/m;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/c;->a:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/c;->a()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/c;->c:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p2, Lcom/android/gallery3d/filtershow/controller/m;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/c;->b:Lcom/android/gallery3d/filtershow/controller/m;

    const-string p2, "layout_inflater"

    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0055

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0801f7

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/c;->a:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/c;->a()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/c;->a:Landroid/widget/SeekBar;

    new-instance p2, Lcom/android/gallery3d/filtershow/controller/c$a;

    invoke-direct {p2, p0, p3}, Lcom/android/gallery3d/filtershow/controller/c$a;-><init>(Lcom/android/gallery3d/filtershow/controller/c;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
