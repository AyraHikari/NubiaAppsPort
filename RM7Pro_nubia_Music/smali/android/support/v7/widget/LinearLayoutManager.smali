.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$b;,
        Landroid/support/v7/widget/LinearLayoutManager$a;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Landroid/support/v7/widget/LinearLayoutManager$b;

.field private h:I

.field i:I

.field j:Landroid/support/v7/widget/h;

.field k:Z

.field l:I

.field m:I

.field n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final o:Landroid/support/v7/widget/LinearLayoutManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    .line 97
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 104
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 111
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 117
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 129
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 139
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    .line 144
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    .line 167
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 168
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    .line 170
    return-void
.end method

.method private K()Landroid/view/View;
    .locals 1

    .prologue
    .line 1672
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L()Landroid/view/View;
    .locals 1

    .prologue
    .line 1682
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    sub-int/2addr v0, p1

    .line 889
    if-lez v0, :cond_1

    .line 890
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    neg-int v0, v0

    .line 895
    add-int v1, p1, v0

    .line 896
    if-eqz p4, :cond_0

    .line 898
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 899
    if-lez v1, :cond_0

    .line 900
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/h;->a(I)V

    .line 901
    add-int/2addr v0, v1

    .line 904
    :cond_0
    :goto_0
    return v0

    .line 892
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1694
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    .line 1695
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1698
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 937
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 938
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 940
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 943
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 944
    return-void

    :cond_0
    move v0, v1

    .line 938
    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/RecyclerView$r;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1158
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    .line 1159
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1160
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 1162
    if-ne p1, v1, :cond_2

    .line 1163
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v4}, Landroid/support/v7/widget/h;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1165
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v2

    .line 1167
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 1169
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 1170
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1173
    invoke-virtual {v1}, Landroid/support/v7/widget/h;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1185
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1186
    if-eqz p3, :cond_0

    .line 1187
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1189
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1190
    return-void

    :cond_1
    move v0, v1

    .line 1167
    goto :goto_0

    .line 1176
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()Landroid/view/View;

    move-result-object v2

    .line 1177
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v5}, Landroid/support/v7/widget/h;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1178
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 1180
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 1181
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1182
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1183
    invoke-virtual {v1}, Landroid/support/v7/widget/h;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1178
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    .prologue
    .line 933
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 934
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1370
    if-gez p2, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    .line 1380
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_4

    .line 1381
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 1382
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    .line 1383
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1384
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/h;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_3

    .line 1386
    :cond_2
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1381
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1391
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1392
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    .line 1393
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1394
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/h;->c(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_6

    .line 1396
    :cond_5
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1391
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;II)V
    .locals 1

    .prologue
    .line 1342
    if-ne p2, p3, :cond_1

    .line 1357
    :cond_0
    return-void

    .line 1348
    :cond_1
    if-le p3, p2, :cond_2

    .line 1349
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1350
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;)V

    .line 1349
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1353
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1354
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;)V

    .line 1353
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;)V
    .locals 2

    .prologue
    .line 1459
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-eqz v0, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1463
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1465
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 1

    .prologue
    .line 732
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    .line 749
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 801
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    .line 879
    :goto_0
    return v1

    .line 805
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 806
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 807
    iput v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    move v1, v2

    .line 811
    goto :goto_0

    .line 816
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 817
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 821
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_4

    .line 822
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    .line 825
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    .line 831
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ne v0, v4, :cond_e

    .line 832
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_a

    .line 834
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v3

    .line 835
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v4}, Landroid/support/v7/widget/h;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 837
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    goto :goto_0

    .line 840
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 841
    invoke-virtual {v4}, Landroid/support/v7/widget/h;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 842
    if-gez v3, :cond_7

    .line 843
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 844
    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto :goto_0

    .line 847
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 848
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 849
    if-gez v2, :cond_8

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 851
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto/16 :goto_0

    .line 854
    :cond_8
    iget-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 855
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 856
    invoke-virtual {v2}, Landroid/support/v7/widget/h;->b()I

    move-result v2

    add-int/2addr v0, v2

    .line 857
    :goto_1
    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 856
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 857
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 859
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_c

    .line 861
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 862
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 865
    :cond_c
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 862
    goto :goto_2

    .line 870
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 872
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_f

    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 876
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I
    .locals 4

    .prologue
    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 914
    if-lez v0, :cond_1

    .line 916
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    neg-int v0, v0

    .line 920
    add-int v1, p1, v0

    .line 921
    if-eqz p4, :cond_0

    .line 923
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 924
    if-lez v1, :cond_0

    .line 925
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/h;->a(I)V

    .line 926
    sub-int/2addr v0, v1

    .line 929
    :cond_0
    :goto_0
    return v0

    .line 918
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1712
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    .line 1713
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1716
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 352
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    .prologue
    .line 947
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 948
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1415
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    .line 1416
    if-gez p2, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->e()I

    move-result v0

    sub-int v3, v0, p2

    .line 1424
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 1425
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1426
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v4

    .line 1427
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1428
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/h;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 1430
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1425
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1435
    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 1436
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    .line 1437
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1438
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/h;->d(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_6

    .line 1440
    :cond_5
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1435
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V
    .locals 9

    .prologue
    .line 681
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 687
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->c()Ljava/util/List;

    move-result-object v5

    .line 688
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v7

    .line 690
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    .line 691
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 692
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    .line 690
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 695
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getLayoutPosition()I

    move-result v1

    .line 696
    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    .line 698
    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 699
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 696
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    .line 701
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    .line 709
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-object v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 710
    if-lez v3, :cond_7

    .line 711
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()Landroid/view/View;

    move-result-object v0

    .line 712
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 719
    :cond_7
    if-lez v2, :cond_8

    .line 720
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v0

    .line 721
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 722
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    .line 725
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 727
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 760
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    if-nez v2, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 763
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->E()Landroid/view/View;

    move-result-object v2

    .line 764
    if-eqz v2, :cond_2

    invoke-virtual {p3, v2, p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 765
    invoke-virtual {p3, v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;)V

    move v0, v1

    .line 766
    goto :goto_0

    .line 768
    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v2, v3, :cond_0

    .line 771
    iget-boolean v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_6

    .line 772
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v2

    .line 774
    :goto_1
    if-eqz v2, :cond_0

    .line 775
    invoke-virtual {p3, v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b(Landroid/view/View;)V

    .line 778
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 780
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 781
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 782
    invoke-virtual {v4}, Landroid/support/v7/widget/h;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 783
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 784
    invoke-virtual {v3}, Landroid/support/v7/widget/h;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 785
    :cond_4
    if-eqz v0, :cond_5

    .line 786
    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 787
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    .line 788
    :goto_2
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    :cond_5
    move v0, v1

    .line 791
    goto :goto_0

    .line 773
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 787
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 788
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    goto :goto_2
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1734
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    .line 1735
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1751
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    .line 1752
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 951
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 953
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 955
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 956
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 957
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 959
    return-void

    :cond_0
    move v0, v1

    .line 953
    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1756
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1091
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :goto_0
    return v4

    .line 1094
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1095
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1096
    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1097
    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    move-object v0, p1

    move-object v4, p0

    .line 1095
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/i;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/h;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1760
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1102
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    :goto_0
    return v4

    .line 1105
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1106
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1107
    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1108
    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1106
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/i;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/h;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1797
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    .line 1798
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->m(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1113
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :goto_0
    return v4

    .line 1116
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1117
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1118
    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1119
    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1117
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/i;->b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/h;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1805
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->m(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    .line 1806
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private m(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1816
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2

    .prologue
    .line 1042
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1043
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    .line 1483
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1484
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v0, v6, :cond_1

    .line 1486
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v0, :cond_0

    .line 1487
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1489
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    .line 1491
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v0, v2

    .line 1492
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    .line 1493
    :cond_2
    iget-boolean v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1494
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$b;->a()V

    .line 1498
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V

    .line 1502
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    if-eqz v3, :cond_5

    .line 1533
    :cond_4
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int v0, v1, v0

    return v0

    .line 1505
    :cond_5
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1512
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v3, :cond_6

    .line 1513
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1514
    :cond_6
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1516
    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v0, v3

    .line 1519
    :cond_7
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v3, v6, :cond_9

    .line 1520
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1521
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v3, :cond_8

    .line 1522
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1524
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    .line 1526
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 194
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/16 v0, 0x140

    .line 1905
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1907
    const/4 v1, 0x0

    .line 1908
    if-eqz p3, :cond_0

    .line 1909
    const/16 v2, 0x6003

    .line 1915
    :goto_0
    if-eqz p4, :cond_2

    .line 1919
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Landroid/support/v7/widget/k;

    .line 1920
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/k;->a(IIII)Landroid/view/View;

    move-result-object v0

    .line 1922
    :goto_2
    return-object v0

    :cond_0
    move v2, v0

    .line 1912
    goto :goto_0

    .line 1920
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/k;

    .line 1922
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/k;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1766
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1769
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v5

    .line 1770
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v6

    .line 1771
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1772
    :goto_1
    if-eq p3, p4, :cond_3

    .line 1773
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    .line 1774
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1775
    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    .line 1776
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1777
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1772
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1771
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1780
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1781
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1782
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1783
    goto :goto_2

    .line 1790
    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    .line 1956
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 1957
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1997
    :cond_0
    :goto_0
    return-object v0

    .line 1961
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)I

    move-result v0

    .line 1962
    if-ne v0, v4, :cond_2

    move-object v0, v1

    .line 1963
    goto :goto_0

    .line 1965
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1966
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1967
    const v2, 0x3eaaaaab

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1968
    invoke-direct {p0, v0, v2, v6, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$r;)V

    .line 1969
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v4, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1970
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 1971
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v3, 0x1

    invoke-virtual {p0, p3, v2, p4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 1978
    if-ne v0, v5, :cond_3

    .line 1979
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v2

    .line 1986
    :goto_1
    if-ne v0, v5, :cond_4

    .line 1987
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()Landroid/view/View;

    move-result-object v0

    .line 1991
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1992
    if-nez v2, :cond_0

    move-object v0, v1

    .line 1993
    goto :goto_0

    .line 1981
    :cond_3
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 1989
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 1997
    goto :goto_0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$h$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1290
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_1

    .line 1291
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 1300
    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, p2

    .line 1290
    goto :goto_0

    .line 1296
    :cond_2
    if-lez p1, :cond_3

    move v0, v1

    .line 1297
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1298
    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$r;)V

    .line 1299
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p3, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$h$a;)V

    goto :goto_1

    .line 1296
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$h$a;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1210
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 1213
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 1224
    :goto_0
    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    move v2, v1

    .line 1228
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    if-ge v2, v4, :cond_4

    .line 1229
    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1230
    invoke-interface {p2, v3, v1}, Landroid/support/v7/widget/RecyclerView$h$a;->b(II)V

    .line 1234
    add-int/2addr v3, v0

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1215
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 1216
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 1217
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v0, v2, :cond_2

    .line 1218
    if-eqz v4, :cond_1

    add-int/lit8 v0, p1, -0x1

    :goto_3
    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    .line 1220
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    move v0, v4

    goto :goto_0

    .line 1224
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1236
    :cond_4
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 273
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 274
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    .line 282
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1538
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$n;)Landroid/view/View;

    move-result-object v1

    .line 1539
    if-nez v1, :cond_0

    .line 1545
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    .line 1607
    :goto_0
    return-void

    .line 1548
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1549
    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1550
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    .line 1552
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    .line 1564
    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;II)V

    .line 1565
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    .line 1567
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v7, :cond_a

    .line 1568
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1569
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->C()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1570
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/h;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .line 1575
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v4, :cond_9

    .line 1576
    iget v5, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1577
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    move v4, v0

    :goto_4
    move-object v0, p0

    .line 1596
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1603
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1604
    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    .line 1606
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1550
    goto :goto_1

    .line 1554
    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1557
    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    .line 1559
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1557
    goto :goto_5

    .line 1561
    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 1572
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->A()I

    move-result v2

    .line 1573
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/h;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    .line 1579
    :cond_9
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1580
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v5, v4

    move v4, v0

    goto :goto_4

    .line 1583
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->B()I

    move-result v3

    .line 1584
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/h;->f(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1586
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_b

    .line 1587
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1588
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v2, v4

    move v4, v0

    goto :goto_4

    .line 1590
    :cond_b
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1591
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1

    .prologue
    .line 651
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 653
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 654
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    .line 656
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$h$a;)V
    .locals 3

    .prologue
    .line 1199
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 1200
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1201
    const/4 v1, 0x0

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Landroid/support/v7/widget/RecyclerView$h$a;->b(II)V

    .line 1203
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 229
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 231
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$n;->a()V

    .line 233
    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 240
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1331
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 1333
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 389
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1057
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->f()I

    move-result v0

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 1927
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1928
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 1929
    :goto_0
    if-nez v0, :cond_2

    .line 1930
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    .line 1949
    :goto_1
    return-object v0

    .line 1928
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1934
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1935
    invoke-virtual {v1}, Landroid/support/v7/widget/h;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1936
    const/16 v1, 0x4104

    .line 1938
    const/16 v0, 0x4004

    .line 1946
    :goto_2
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Landroid/support/v7/widget/k;

    .line 1947
    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/k;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1941
    :cond_3
    const/16 v1, 0x1041

    .line 1943
    const/16 v0, 0x1001

    goto :goto_2

    .line 1947
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/k;

    .line 1949
    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/k;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 333
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_1

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 341
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    goto :goto_0
.end method

.method c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1303
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1325
    :goto_0
    return p1

    .line 1306
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 1308
    if-lez p1, :cond_2

    move v0, v1

    .line 1309
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1310
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$r;)V

    .line 1311
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    .line 1312
    invoke-virtual {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1313
    if-gez v1, :cond_3

    move p1, v2

    .line 1317
    goto :goto_0

    .line 1308
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1319
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1320
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/h;->a(I)V

    .line 1324
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1062
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    .line 398
    if-nez v0, :cond_1

    .line 399
    const/4 v0, 0x0

    .line 410
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 402
    sub-int v1, p1, v1

    .line 403
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 404
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 410
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v0, v3, :cond_1

    .line 480
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 481
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 647
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 489
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 490
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 492
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 496
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    .line 497
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 500
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    .line 510
    :cond_4
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    .line 513
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    if-ltz v2, :cond_a

    move v2, v1

    .line 520
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v5}, Landroid/support/v7/widget/h;->c()I

    move-result v5

    add-int/2addr v2, v5

    .line 521
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v5}, Landroid/support/v7/widget/h;->g()I

    move-result v5

    add-int/2addr v0, v5

    .line 522
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v5, v3, :cond_5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_5

    .line 527
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v5

    .line 528
    if-eqz v5, :cond_5

    .line 531
    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v6, :cond_b

    .line 532
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v6}, Landroid/support/v7/widget/h;->d()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 533
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v5

    sub-int v5, v6, v5

    .line 534
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v5, v6

    .line 540
    :goto_2
    if-lez v5, :cond_c

    .line 541
    add-int/2addr v2, v5

    .line 550
    :cond_5
    :goto_3
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v5, :cond_d

    .line 551
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v5, :cond_6

    move v3, v4

    .line 558
    :cond_6
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 559
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 560
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    .line 561
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->i:Z

    .line 562
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v3, :cond_e

    .line 564
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 565
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 566
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 567
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 568
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 569
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v3, :cond_7

    .line 570
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v3

    .line 573
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 574
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 576
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 577
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v0, :cond_12

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 582
    invoke-direct {p0, v5, v2}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 583
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 584
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    :goto_5
    move v2, v0

    move v0, v3

    .line 617
    :cond_8
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v3

    if-lez v3, :cond_9

    .line 621
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v3, v5

    if-eqz v3, :cond_10

    .line 622
    invoke-direct {p0, v0, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v3

    .line 623
    add-int/2addr v2, v3

    .line 624
    add-int/2addr v0, v3

    .line 625
    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v1

    .line 626
    add-int/2addr v2, v1

    .line 627
    add-int/2addr v0, v1

    .line 637
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V

    .line 638
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 639
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->a()V

    .line 643
    :goto_8
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    goto/16 :goto_0

    :cond_a
    move v2, v0

    move v0, v1

    .line 518
    goto/16 :goto_1

    .line 536
    :cond_b
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 537
    invoke-virtual {v6}, Landroid/support/v7/widget/h;->c()I

    move-result v6

    sub-int/2addr v5, v6

    .line 538
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int v5, v6, v5

    goto/16 :goto_2

    .line 543
    :cond_c
    sub-int/2addr v0, v5

    goto/16 :goto_3

    .line 554
    :cond_d
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-nez v5, :cond_6

    move v3, v4

    goto/16 :goto_4

    .line 589
    :cond_e
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 590
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 593
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 594
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_f

    .line 595
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v2, v5

    .line 598
    :cond_f
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 599
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 600
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 601
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 602
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 604
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_8

    .line 605
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 607
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 608
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 609
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 610
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    goto/16 :goto_6

    .line 629
    :cond_10
    invoke-direct {p0, v2, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v3

    .line 630
    add-int/2addr v2, v3

    .line 631
    add-int/2addr v0, v3

    .line 632
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v1

    .line 633
    add-int/2addr v2, v1

    .line 634
    add-int/2addr v0, v1

    goto/16 :goto_7

    .line 641
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    goto/16 :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_5
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 2066
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public d()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 268
    :goto_0
    return-object v0

    .line 249
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 250
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    if-lez v1, :cond_2

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 252
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    .line 253
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 254
    if-eqz v1, :cond_1

    .line 255
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v1

    .line 256
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 257
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 258
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()Landroid/view/View;

    move-result-object v1

    .line 261
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 262
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 263
    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 999
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 1000
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 1001
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    .line 1004
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    .line 1005
    return-void
.end method

.method e(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 1627
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1660
    :cond_0
    :goto_0
    return v0

    .line 1629
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v2, :cond_0

    .line 1631
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1632
    goto :goto_0

    .line 1637
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 1638
    goto :goto_0

    .line 1639
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1642
    goto :goto_0

    .line 1645
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1648
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1651
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1654
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 1627
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1077
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    return v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method protected h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 962
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    .line 967
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()Landroid/support/v7/widget/LinearLayoutManager$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    .line 969
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    if-nez v0, :cond_1

    .line 970
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/h;->a(Landroid/support/v7/widget/RecyclerView$h;I)Landroid/support/v7/widget/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 972
    :cond_1
    return-void
.end method

.method j()Landroid/support/v7/widget/LinearLayoutManager$c;
    .locals 1

    .prologue
    .line 980
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;-><init>()V

    return-object v0
.end method

.method k()Z
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/h;

    .line 1194
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1611
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1612
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1613
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1838
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1839
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public n()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1878
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1879
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
