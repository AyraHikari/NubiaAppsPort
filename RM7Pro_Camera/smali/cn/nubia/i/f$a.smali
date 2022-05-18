.class public Lcn/nubia/i/f$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method public constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 492
    iget-object v0, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 504
    iget-object p2, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcn/nubia/i/q$e;->f:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 505
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v0, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    .line 506
    invoke-static {v0}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/i/q$b;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    .line 507
    invoke-static {v1}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/i/q$b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 508
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    new-instance p3, Lcn/nubia/i/f$b;

    iget-object v0, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    invoke-direct {p3, v0}, Lcn/nubia/i/f$b;-><init>(Lcn/nubia/i/f;)V

    .line 510
    sget v0, Lcn/nubia/i/q$d;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcn/nubia/i/f$b;->a:Landroid/widget/ImageView;

    .line 511
    sget v0, Lcn/nubia/i/q$d;->u:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcn/nubia/i/f$b;->c:Landroid/widget/TextView;

    .line 512
    sget v0, Lcn/nubia/i/q$d;->f:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcn/nubia/i/f$b;->b:Landroid/widget/ImageView;

    .line 513
    sget v0, Lcn/nubia/i/q$d;->x:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p3, Lcn/nubia/i/f$b;->d:Landroid/widget/ProgressBar;

    .line 514
    sget v0, Lcn/nubia/i/q$d;->o:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcn/nubia/i/f$b;->e:Landroid/widget/TextView;

    .line 515
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/i/f$b;

    .line 521
    :goto_0
    iget-object v0, p0, Lcn/nubia/i/f$a;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/i/i;

    .line 522
    iget-object v0, p3, Lcn/nubia/i/f$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {p1}, Lcn/nubia/i/i;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p3, Lcn/nubia/i/f$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcn/nubia/i/i;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 527
    :cond_1
    iget-object v0, p3, Lcn/nubia/i/f$b;->a:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/i/q$c;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    :goto_1
    iget-object v0, p3, Lcn/nubia/i/f$b;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 530
    iget-object v0, p3, Lcn/nubia/i/f$b;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    invoke-virtual {p1}, Lcn/nubia/i/i;->h()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 534
    :cond_2
    iget-object v0, p3, Lcn/nubia/i/f$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 535
    iget-object v0, p3, Lcn/nubia/i/f$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v3, v2

    .line 539
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/i/i;->k()I

    move-result p1

    const/16 v0, 0xfa0

    if-ne p1, v0, :cond_4

    .line 540
    iget-object p1, p3, Lcn/nubia/i/f$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 541
    iget-object p1, p3, Lcn/nubia/i/f$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object p1, p3, Lcn/nubia/i/f$b;->a:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 544
    iget-object p1, p3, Lcn/nubia/i/f$b;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 546
    :cond_4
    iget-object p1, p3, Lcn/nubia/i/f$b;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object p1, p3, Lcn/nubia/i/f$b;->a:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    move v2, v3

    .line 549
    :goto_2
    iget-object p1, p3, Lcn/nubia/i/f$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-object p2
.end method
