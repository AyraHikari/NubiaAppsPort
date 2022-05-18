.class public Lcom/android/gallery3d/filtershow/editors/f;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""


# instance fields
.field private A:Ljava/lang/String;

.field y:[I

.field private z:Lcom/android/gallery3d/filtershow/editors/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080107

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(I)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/android/gallery3d/filtershow/filters/h;->r:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/gallery3d/filtershow/filters/h;->s:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/gallery3d/filtershow/filters/h;->t:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/gallery3d/filtershow/filters/h;->u:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/gallery3d/filtershow/filters/h;->v:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/f;->y:[I

    return-void
.end method

.method static synthetic V(Lcom/android/gallery3d/filtershow/editors/f;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/f;->Z(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private Z(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v1, 0x7f0c0003

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance p1, Lcom/android/gallery3d/filtershow/editors/f$b;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/editors/f$b;-><init>(Lcom/android/gallery3d/filtershow/editors/f;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B1(Landroid/widget/PopupMenu;)V

    return-void
.end method


# virtual methods
.method public E(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v2, 0x7f0e004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/f$a;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/f$a;-><init>(Lcom/android/gallery3d/filtershow/editors/f;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public F()V
    .locals 3

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/h;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/h;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/f;->z:Lcom/android/gallery3d/filtershow/editors/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/editors/g;->m(Lcom/android/gallery3d/filtershow/filters/h;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/h;->t0(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v2, 0x7f0e004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/f;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/h;->n0()Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/a0;->Q(Lcom/android/gallery3d/filtershow/controller/h;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 1

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
    new-instance p1, Lcom/android/gallery3d/filtershow/editors/g;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/gallery3d/filtershow/editors/g;-><init>(Lcom/android/gallery3d/filtershow/editors/f;Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/f;->z:Lcom/android/gallery3d/filtershow/editors/g;

    return-void
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public W()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method X()Lcom/android/gallery3d/filtershow/filters/h;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/h;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Y(Landroid/view/MenuItem;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/m0;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/f;->X()Lcom/android/gallery3d/filtershow/filters/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/h;->t0(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/f;->W()V

    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f08008f

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/f;->A:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/controller/e;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/e;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/e;->f()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/f;->y:[I

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/h;->n0()Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/editors/a0;->Q(Lcom/android/gallery3d/filtershow/controller/h;Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/controller/e;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/e;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/f;->y:[I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/controller/e;->i([I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f08008f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/f;->X()Lcom/android/gallery3d/filtershow/filters/h;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/f;->A:Ljava/lang/String;

    if-nez p3, :cond_1

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/f;->A:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/h;->p0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/f;->A:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method
