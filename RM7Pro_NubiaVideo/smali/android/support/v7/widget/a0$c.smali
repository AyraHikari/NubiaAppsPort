.class Landroid/support/v7/widget/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/a0$c;->a:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/v7/widget/a0$c;->h:I

    .line 4
    iput-boolean v0, p0, Landroid/support/v7/widget/a0$c;->i:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    return-void
.end method

.method private c()Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    iget-object v5, p0, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$z;

    .line 3
    iget-boolean v6, p0, Landroid/support/v7/widget/a0$c;->i:Z

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/a0$c;->d:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/a0$c;->e:I

    mul-int/2addr v6, v7

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    if-ge v6, v2, :cond_3

    move-object v4, v5

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 5
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/a0$c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/a0$c;->d:I

    .line 6
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    return-object v0

    :cond_5
    return-object v1
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0$c;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/a0$c;->c()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/a0$c;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$r;->p(I)Landroid/view/View;

    move-result-object p1

    .line 4
    iget v0, p0, Landroid/support/v7/widget/a0$c;->d:I

    iget v1, p0, Landroid/support/v7/widget/a0$c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/a0$c;->d:I

    return-object p1
.end method
