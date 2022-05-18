.class public Lcom/android/gallery3d/filtershow/editors/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/editors/SwapButton$a;


# static fields
.field public static o:B = -0x1t

.field public static p:B = 0x0t

.field public static q:B = 0x1t


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field protected d:Landroid/widget/FrameLayout;

.field protected e:Landroid/widget/SeekBar;

.field f:Landroid/widget/Button;

.field protected g:Landroid/widget/Button;

.field protected h:I

.field protected i:Z

.field protected j:Lcom/android/gallery3d/filtershow/filters/x;

.field protected k:B

.field private l:Landroid/widget/Button;

.field protected m:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

.field protected n:Lcom/android/gallery3d/filtershow/ui/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    sget-byte v0, Lcom/android/gallery3d/filtershow/editors/c;->o:B

    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->k:B

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/c$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/c$a;-><init>(Lcom/android/gallery3d/filtershow/editors/c;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->m:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/c$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/c$b;-><init>(Lcom/android/gallery3d/filtershow/editors/c;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->n:Lcom/android/gallery3d/filtershow/ui/a$a;

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->h:I

    return-void
.end method

.method private t(Landroid/view/View;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 5

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v3

    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/editors/c;->t(Landroid/view/View;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public B()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->o(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    :goto_0
    iget-byte v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->k:B

    sget-byte v2, Lcom/android/gallery3d/filtershow/editors/c;->o:B

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->h0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-byte v0, Lcom/android/gallery3d/filtershow/editors/c;->q:B

    goto :goto_1

    :cond_1
    sget-byte v0, Lcom/android/gallery3d/filtershow/editors/c;->p:B

    :goto_1
    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->k:B

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    return-object v0
.end method

.method public C()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    return-object v0
.end method

.method protected D(I)V
    .locals 0

    return-void
.end method

.method public E(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->K()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->w(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->g:Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    return-void
.end method

.method protected G(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->f:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f07025b

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_1
    return-void
.end method

.method public H(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/c;->f:Landroid/widget/Button;

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/editors/c;->g:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/c;->l:Landroid/widget/Button;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/x;->w0(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->I(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    check-cast p2, Landroid/view/ViewGroup;

    const v1, 0x7f0b0055

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v0, 0x7f0801f7

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->l:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->K()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    :cond_1
    return-void
.end method

.method public J(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected M(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->t(Landroid/view/View;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->m:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setScrollInteractionListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow$f;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->n:Lcom/android/gallery3d/filtershow/ui/a$a;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setMenuItemListener(Lcom/android/gallery3d/filtershow/ui/a$a;)V

    return-void
.end method

.method protected N()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->l:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/gallery3d/filtershow/editors/c;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected P(I)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->k(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public c(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected g(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->f:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f07025a

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_1
    return-void
.end method

.method public k(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->o(Ljava/util/Collection;)V

    return-void
.end method

.method public o(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->W(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->l:Landroid/widget/Button;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    :cond_0
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->i:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w0(Z)V

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->g0()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->V()Lcom/android/gallery3d/filtershow/state/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->k(Lcom/android/gallery3d/filtershow/state/d;)V

    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

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

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->d:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->j()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->h:I

    return v0
.end method

.method public v()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v0
.end method
