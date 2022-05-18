.class Lcn/nubia/i/g$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/g;

.field private b:Z


# direct methods
.method private constructor <init>(Lcn/nubia/i/g;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 317
    iput-boolean p1, p0, Lcn/nubia/i/g$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/i/g;Lcn/nubia/i/g$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lcn/nubia/i/g$a;-><init>(Lcn/nubia/i/g;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcn/nubia/i/g$a;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcn/nubia/i/g$a;->b:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    invoke-static {v0}, Lcn/nubia/i/g;->h(Lcn/nubia/i/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 326
    iget-object v0, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    invoke-static {v0}, Lcn/nubia/i/g;->h(Lcn/nubia/i/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 338
    iget-object p2, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    invoke-static {p2}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcn/nubia/i/q$e;->d:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 339
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    .line 340
    invoke-static {v1}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/i/q$b;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    .line 341
    invoke-static {v2}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/i/q$b;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 342
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance p3, Lcn/nubia/i/g$b;

    iget-object v1, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    invoke-direct {p3, v1, v0}, Lcn/nubia/i/g$b;-><init>(Lcn/nubia/i/g;Lcn/nubia/i/g$1;)V

    .line 345
    sget v0, Lcn/nubia/i/q$d;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcn/nubia/i/g$b;->a:Landroid/widget/ImageView;

    .line 346
    sget v0, Lcn/nubia/i/q$d;->u:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcn/nubia/i/g$b;->c:Landroid/widget/TextView;

    .line 347
    sget v0, Lcn/nubia/i/q$d;->s:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcn/nubia/i/g$b;->b:Landroid/widget/ImageView;

    .line 348
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/i/g$b;

    .line 353
    :goto_0
    iget-object v0, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    invoke-static {v0}, Lcn/nubia/i/g;->h(Lcn/nubia/i/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/i/i;

    .line 354
    iget-object v0, p3, Lcn/nubia/i/g$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {p1}, Lcn/nubia/i/i;->g()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/i/i;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p3, Lcn/nubia/i/g$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcn/nubia/i/i;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object v0, p3, Lcn/nubia/i/g$b;->a:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/i/q$c;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/i/g$a;->b:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p3, Lcn/nubia/i/g$b;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcn/nubia/i/g$a;->a:Lcn/nubia/i/g;

    invoke-static {v0}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, p3, Lcn/nubia/i/g$b;->b:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/i/q$c;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object p1, p3, Lcn/nubia/i/g$b;->a:Landroid/widget/ImageView;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 368
    :cond_2
    iget-object p1, p3, Lcn/nubia/i/g$b;->b:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/i/q$c;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object p1, p3, Lcn/nubia/i/g$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 372
    :cond_3
    iget-object p1, p3, Lcn/nubia/i/g$b;->b:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object p1, p3, Lcn/nubia/i/g$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_2
    return-object p2
.end method
