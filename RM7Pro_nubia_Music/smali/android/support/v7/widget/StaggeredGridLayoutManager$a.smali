.class Landroid/support/v7/widget/StaggeredGridLayoutManager$a;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
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

.field e:Z

.field f:[I

.field final synthetic g:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3231
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 3232
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3233
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 3234
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 3235
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 3236
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz v0, :cond_0

    .line 3237
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3239
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 3258
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    .line 3259
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3263
    :goto_0
    return-void

    .line 3261
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0
.end method

.method a([Landroid/support/v7/widget/StaggeredGridLayoutManager$b;)V
    .locals 5

    .prologue
    .line 3242
    array-length v1, p1

    .line 3243
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    array-length v0, v0

    if-ge v0, v1, :cond_1

    .line 3244
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    .line 3246
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3248
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    aget-object v3, p1, v0

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v3

    aput v3, v2, v0

    .line 3246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3250
    :cond_2
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 3253
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    .line 3254
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3255
    return-void

    .line 3253
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 3254
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    goto :goto_0
.end method
