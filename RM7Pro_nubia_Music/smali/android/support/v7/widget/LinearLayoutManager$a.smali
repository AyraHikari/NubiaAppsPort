.class Landroid/support/v7/widget/LinearLayoutManager$a;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 2359
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    .line 2361
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2364
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 2365
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2366
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 2367
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    .line 2368
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2397
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->b()I

    move-result v0

    .line 2398
    if-ltz v0, :cond_1

    .line 2399
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$a;->b(Landroid/view/View;)V

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2402
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 2403
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v1, :cond_2

    .line 2404
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v1}, Landroid/support/v7/widget/h;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 2405
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v1

    .line 2406
    sub-int/2addr v0, v1

    .line 2407
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v1}, Landroid/support/v7/widget/h;->d()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2409
    if-lez v0, :cond_0

    .line 2410
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v1

    .line 2411
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    sub-int v1, v2, v1

    .line 2412
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    .line 2413
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2415
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2416
    sub-int/2addr v1, v2

    .line 2417
    if-gez v1, :cond_0

    .line 2419
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    .line 2423
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v1

    .line 2424
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    sub-int v2, v1, v2

    .line 2425
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2426
    if-lez v2, :cond_0

    .line 2427
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 2428
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2429
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->d()I

    move-result v3

    sub-int v0, v3, v0

    .line 2431
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 2432
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2433
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->d()I

    move-result v3

    .line 2434
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2435
    sub-int/2addr v0, v1

    .line 2436
    if-gez v0, :cond_0

    .line 2437
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0
.end method

.method a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 2

    .prologue
    .line 2391
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2392
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2393
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2375
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 2376
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    .line 2377
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2378
    return-void

    .line 2376
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 2377
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2444
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 2446
    invoke-virtual {v1}, Landroid/support/v7/widget/h;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2451
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 2452
    return-void

    .line 2448
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
