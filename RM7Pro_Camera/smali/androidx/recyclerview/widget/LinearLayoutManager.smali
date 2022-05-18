.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$b;,
        Landroidx/recyclerview/widget/LinearLayoutManager$a;,
        Landroidx/recyclerview/widget/LinearLayoutManager$d;,
        Landroidx/recyclerview/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

.field private h:I

.field i:I

.field j:Landroidx/recyclerview/widget/i;

.field k:Z

.field l:I

.field m:I

.field n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

.field final o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    const/4 p1, 0x1

    .line 67
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    .line 101
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    .line 108
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    .line 114
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    const/4 p1, -0x1

    .line 120
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    const/high16 p1, -0x80000000

    .line 126
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    .line 136
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 141
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$b;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    const/4 p1, 0x2

    .line 146
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->h:I

    new-array p1, p1, [I

    .line 151
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    .line 170
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)V

    .line 171
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 183
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    .line 101
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    .line 108
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    .line 114
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    .line 126
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    .line 136
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    .line 146
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->h:I

    new-array v0, v0, [I

    .line 151
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    .line 184
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;

    move-result-object p1

    .line 185
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)V

    .line 186
    iget-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Z)V

    .line 187
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Z)V

    return-void
.end method

.method private M()V
    .locals 2

    .line 362
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    goto :goto_1

    .line 363
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    :goto_1
    return-void
.end method

.method private N()Landroid/view/View;
    .locals 1

    .line 1761
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private O()Landroid/view/View;
    .locals 1

    .line 1771
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private P()Landroid/view/View;
    .locals 1

    .line 1885
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1886
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private Q()Landroid/view/View;
    .locals 1

    .line 1892
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1893
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private R()Landroid/view/View;
    .locals 2

    .line 1897
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private S()Landroid/view/View;
    .locals 2

    .line 1901
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I
    .locals 1

    .line 961
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->d()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 964
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 972
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/i;->d()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 974
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/i;->a(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(II)V
    .locals 3

    .line 1011
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->d()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1012
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1014
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1015
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 1016
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1017
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 4

    .line 1229
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->l()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    .line 1230
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 1231
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 1232
    aput v1, v0, v2

    .line 1233
    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;[I)V

    .line 1234
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget p4, p4, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1235
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v2, :cond_0

    move v1, v2

    .line 1237
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    if-eqz v1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, p4

    :goto_0
    iput v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 1238
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    iput p4, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    const/4 p1, -0x1

    if-eqz v1, :cond_4

    .line 1241
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->g()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 1243
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object p4

    .line 1245
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v1, :cond_3

    move v2, p1

    :cond_3
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1247
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1248
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, p4}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1250
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1251
    invoke-virtual {p4}, Landroidx/recyclerview/widget/i;->d()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_3

    .line 1254
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N()Landroid/view/View;

    move-result-object p4

    .line 1255
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/i;->c()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 1256
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, p1

    :goto_2
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1258
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1259
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, p4}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1260
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1261
    invoke-virtual {p4}, Landroidx/recyclerview/widget/i;->c()I

    move-result p4

    add-int/2addr p1, p4

    .line 1263
    :goto_3
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-eqz p3, :cond_6

    .line 1265
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1267
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .locals 1

    .line 1007
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(II)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 1429
    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 1433
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V
    .locals 3

    .line 1546
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1549
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1550
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 1551
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1552
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    goto :goto_0

    .line 1554
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .locals 1

    .line 806
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 813
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 822
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b()V

    .line 823
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    .locals 4

    .line 875
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    .line 879
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    .line 890
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 891
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 894
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget-boolean p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 895
    iget-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz p1, :cond_2

    .line 896
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->d()I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    sub-int/2addr p1, v1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    .line 899
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->c()I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    add-int/2addr p1, v1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    :goto_0
    return v0

    .line 905
    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    if-ne p1, v3, :cond_c

    .line 906
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 908
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I

    move-result v2

    .line 909
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/i;->f()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 911
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b()V

    return v0

    .line 914
    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 915
    invoke-virtual {v3}, Landroidx/recyclerview/widget/i;->c()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 917
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->c()I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 918
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    return v0

    .line 921
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->d()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 922
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    .line 924
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->d()I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 925
    iput-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    return v0

    .line 928
    :cond_6
    iget-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 929
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 930
    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->b()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 931
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_3

    .line 933
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result p1

    if-lez p1, :cond_b

    .line 935
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result p1

    .line 936
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ge v2, p1, :cond_9

    move p1, v0

    goto :goto_2

    :cond_9
    move p1, v1

    :goto_2
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-ne p1, v2, :cond_a

    move v1, v0

    :cond_a
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 939
    :cond_b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b()V

    :goto_3
    return v0

    .line 944
    :cond_c
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 946
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz p1, :cond_d

    .line 947
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->d()I

    move-result p1

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    sub-int/2addr p1, v1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_4

    .line 950
    :cond_d
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->c()I

    move-result p1

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    add-int/2addr p1, v1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    :goto_4
    return v0

    .line 880
    :cond_e
    :goto_5
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 881
    iput v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    :cond_f
    :goto_6
    return v1
.end method

.method private b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I
    .locals 1

    .line 986
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 990
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 997
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/i;->c()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 999
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/i;->a(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .locals 1

    .line 1021
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(II)V

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;II)V
    .locals 4

    if-gez p2, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p3

    .line 1462
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result p3

    .line 1463
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    move v0, p3

    :goto_0
    if-ltz v0, :cond_6

    .line 1465
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1466
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1467
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/i;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1469
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_6

    .line 1475
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 1476
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1477
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/i;->c(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1479
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    :cond_6
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$u;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v3

    if-nez v3, :cond_8

    .line 756
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 761
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$p;->c()Ljava/util/List;

    move-result-object v3

    .line 762
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 763
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v6

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v4, :cond_5

    .line 765
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 766
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    .line 769
    :cond_1
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_2

    move v11, v12

    goto :goto_1

    :cond_2
    move v11, v5

    .line 770
    :goto_1
    iget-boolean v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_3

    move v12, v14

    :cond_3
    if-ne v12, v14, :cond_4

    .line 773
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 775
    :cond_4
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 783
    :cond_5
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput-object v3, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-lez v8, :cond_6

    .line 785
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N()Landroid/view/View;

    move-result-object v3

    .line 786
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(II)V

    .line 787
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v8, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 788
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 789
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a()V

    .line 790
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    :cond_6
    if-lez v9, :cond_7

    .line 794
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object v3

    .line 795
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(II)V

    .line 796
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 797
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 798
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a()V

    .line 799
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 801
    :cond_7
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    :cond_8
    :goto_3
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    .locals 4

    .line 834
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 837
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 838
    invoke-virtual {p3, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 839
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    return v2

    .line 842
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-eq v0, v3, :cond_2

    return v1

    .line 845
    :cond_2
    iget-boolean v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_3

    .line 846
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 847
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    .line 849
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V

    .line 852
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 854
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 855
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 856
    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->d()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 857
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 858
    invoke-virtual {p2}, Landroidx/recyclerview/widget/i;->c()I

    move-result p2

    if-ge p1, p2, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-eqz v1, :cond_7

    .line 860
    iget-boolean p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 861
    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->d()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 862
    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->c()I

    move-result p1

    :goto_1
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$p;II)V
    .locals 4

    .line 1502
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    .line 1510
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->e()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, p3

    .line 1511
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_6

    .line 1513
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 1514
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1515
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1517
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    .line 1523
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object p3

    .line 1524
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v2

    if-lt v2, v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1525
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I

    move-result p3

    if-ge p3, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1527
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    :cond_6
    return-void
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    .line 1823
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1824
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private g(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    .line 1840
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1841
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private h(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 6

    .line 1845
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private h(II)V
    .locals 2

    .line 1025
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->c()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1026
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1027
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1029
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 1030
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1031
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 7

    .line 1162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1165
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    .line 1166
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1167
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    xor-int/2addr v0, v2

    .line 1168
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1166
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;ZZ)I

    move-result p1

    return p1
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 7

    .line 1849
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1176
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    .line 1177
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1178
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    xor-int/2addr v0, v2

    .line 1179
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1177
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result p1

    return p1
.end method

.method private k(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .line 1184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1187
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    .line 1188
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1189
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    xor-int/2addr v0, v2

    .line 1190
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1188
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/l;->b(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .line 1113
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1116
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I
    .locals 7

    .line 1572
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1573
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1575
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-gez v1, :cond_0

    .line 1576
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v1, v3

    iput v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1578
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    .line 1580
    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v1, v3

    .line 1581
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    .line 1582
    :cond_2
    iget-boolean v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1583
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a()V

    .line 1587
    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V

    .line 1591
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1594
    :cond_4
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    iget v6, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1601
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v4, :cond_5

    .line 1602
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1603
    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1605
    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v1, v4

    .line 1608
    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    if-eq v4, v2, :cond_8

    .line 1609
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1610
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-gez v4, :cond_7

    .line 1611
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1613
    :cond_7
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    :cond_8
    if-eqz p4, :cond_2

    .line 1615
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    if-eqz v4, :cond_2

    .line 1622
    :cond_9
    :goto_0
    iget p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 1

    .line 1990
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2004
    :goto_1
    iget p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/o;

    .line 2005
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Landroidx/recyclerview/widget/o;

    .line 2007
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 3

    .line 2041
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M()V

    .line 2042
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2046
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 2050
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    const v1, 0x3eaaaaab

    .line 2051
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/i;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 2052
    invoke-direct {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 2053
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 2054
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput-boolean v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 2055
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, p4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 2063
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 2065
    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P()Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    .line 2071
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 2073
    :cond_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object p1

    .line 2075
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 5

    .line 1855
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    .line 1858
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->c()I

    move-result p1

    .line 1859
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/i;->d()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    .line 1862
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 1863
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    .line 1865
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    .line 1869
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1870
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method a(ZZ)Landroid/view/View;
    .locals 2

    .line 1783
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1787
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 2

    .line 200
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    return-object v0
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 1

    .line 1368
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 1369
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 1374
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 1376
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1377
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 1378
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$i$a;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 5

    .line 1288
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    .line 1291
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    goto :goto_0

    .line 1293
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M()V

    .line 1294
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    .line 1295
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v0, v2

    .line 1306
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->h:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1308
    invoke-interface {p2, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 279
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    .line 280
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 243
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 246
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 0

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .locals 7

    .line 1627
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1634
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    return-void

    .line 1637
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 1638
    iget-object v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1639
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1641
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    goto :goto_2

    .line 1643
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1646
    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1648
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    goto :goto_2

    .line 1650
    :cond_5
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    .line 1653
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;II)V

    .line 1654
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 1656
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne v0, p2, :cond_8

    .line 1657
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1658
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->z()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->D()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1659
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 1661
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B()I

    move-result v2

    .line 1662
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1664
    :goto_3
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_7

    .line 1665
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1666
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr p3, v3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    .line 1668
    :cond_7
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1669
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr p3, v3

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    .line 1672
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->C()I

    move-result v0

    .line 1673
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1675
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_9

    .line 1676
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1677
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr p3, v3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    goto :goto_4

    .line 1679
    :cond_9
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1680
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr p3, v3

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    .line 1685
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1692
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$j;->e()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1693
    :cond_a
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 1695
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    .line 725
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    const/4 p1, 0x0

    .line 726
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    const/4 p1, -0x1

    .line 727
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    const/high16 p1, -0x80000000

    .line 728
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    .line 729
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 1

    .line 1277
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    if-ltz v0, :cond_0

    .line 1278
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1279
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    :cond_0
    return-void
.end method

.method protected a(Landroidx/recyclerview/widget/RecyclerView$u;[I)V
    .locals 3

    .line 488
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    .line 489
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    move p1, v1

    .line 495
    :goto_0
    aput p1, p2, v1

    const/4 p1, 0x1

    .line 496
    aput v0, p2, p1

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 235
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->f:Z

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 237
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$p;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 0

    .line 502
    new-instance p2, Landroidx/recyclerview/widget/g;

    .line 503
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/g;->c(I)V

    .line 505
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$t;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1409
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    .line 1410
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 314
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    .line 315
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()V

    return-void
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .line 1125
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1128
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 1153
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method b(ZZ)Landroid/view/View;
    .locals 2

    .line 1801
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1802
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1805
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    if-nez v0, :cond_3

    .line 348
    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 349
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iput-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;

    .line 350
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    .line 351
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()V

    :cond_3
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1098
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 1099
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    .line 1100
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz p1, :cond_0

    .line 1101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b()V

    .line 1103
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 395
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 398
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    .line 399
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 2150
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 5

    .line 1382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1385
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    .line 1386
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1388
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1389
    invoke-direct {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 1390
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 1391
    invoke-virtual {p0, p2, v4, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    .line 1399
    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/i;->a(I)V

    .line 1403
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 1158
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    .line 407
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 414
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 415
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    .line 420
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method c(II)Landroid/view/View;
    .locals 3

    .line 2012
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2015
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2019
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 2020
    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    .line 2031
    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/o;

    .line 2032
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Landroidx/recyclerview/widget/o;

    .line 2034
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 8

    .line 537
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-eq v0, v1, :cond_1

    .line 538
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 539
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 547
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    .line 548
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 550
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M()V

    .line 552
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F()Landroid/view/View;

    move-result-object v0

    .line 553
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    .line 560
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 561
    invoke-virtual {v5}, Landroidx/recyclerview/widget/i;->d()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 562
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 563
    invoke-virtual {v5}, Landroidx/recyclerview/widget/i;->c()I

    move-result v5

    if-gt v3, v5, :cond_6

    .line 575
    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 555
    :cond_5
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 556
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 558
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 559
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iput-boolean v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    .line 584
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:I

    if-ltz v3, :cond_7

    move v3, v4

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 586
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aput v2, v0, v2

    .line 587
    aput v2, v0, v4

    .line 588
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;[I)V

    .line 589
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget v0, v0, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 590
    invoke-virtual {v3}, Landroidx/recyclerview/widget/i;->c()I

    move-result v3

    add-int/2addr v0, v3

    .line 591
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 592
    invoke-virtual {v5}, Landroidx/recyclerview/widget/i;->g()I

    move-result v5

    add-int/2addr v3, v5

    .line 593
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-eq v5, v1, :cond_a

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_a

    .line 598
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 602
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v6, :cond_8

    .line 603
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/i;->d()I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 604
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    .line 605
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    goto :goto_3

    .line 607
    :cond_8
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 608
    invoke-virtual {v6}, Landroidx/recyclerview/widget/i;->c()I

    move-result v6

    sub-int/2addr v5, v6

    .line 609
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    :goto_3
    sub-int/2addr v6, v5

    if-lez v6, :cond_9

    add-int/2addr v0, v6

    goto :goto_4

    :cond_9
    sub-int/2addr v3, v6

    .line 621
    :cond_a
    :goto_4
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v5, :cond_c

    .line 622
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v5, :cond_d

    :cond_b
    move v1, v4

    goto :goto_5

    .line 625
    :cond_c
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v5, :cond_b

    .line 629
    :cond_d
    :goto_5
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 630
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 631
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->l()Z

    move-result v5

    iput-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    .line 632
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v5

    iput-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->j:Z

    .line 635
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 636
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v1, :cond_f

    .line 638
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 639
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 640
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 641
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 642
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 643
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_e

    .line 644
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v5

    .line 647
    :cond_e
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 648
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v3, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 649
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v5, v6

    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 650
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v3, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 651
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 653
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_11

    .line 655
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 656
    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(II)V

    .line 657
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 658
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 659
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    goto :goto_6

    .line 663
    :cond_f
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 664
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 665
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 666
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 667
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 668
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_10

    .line 669
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v5

    .line 672
    :cond_10
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 673
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v0, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 674
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 675
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 676
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 678
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_11

    .line 679
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 681
    invoke-direct {p0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(II)V

    .line 682
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 683
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 684
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 691
    :cond_11
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v1

    if-lez v1, :cond_13

    .line 695
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v1, v5

    if-eqz v1, :cond_12

    .line 696
    invoke-direct {p0, v3, p1, p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 699
    invoke-direct {p0, v0, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v1

    goto :goto_7

    .line 703
    :cond_12
    invoke-direct {p0, v0, p1, p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 706
    invoke-direct {p0, v3, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 711
    :cond_13
    invoke-direct {p0, p1, p2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 712
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result p1

    if-nez p1, :cond_14

    .line 713
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->a()V

    goto :goto_8

    .line 715
    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 717
    :goto_8
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 1133
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 3

    .line 510
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 513
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    .line 514
    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    .line 515
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 516
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 518
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public d()Landroid/os/Parcelable;
    .locals 4

    .line 252
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$d;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$d;)V

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;-><init>()V

    .line 256
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v1

    if-lez v1, :cond_2

    .line 257
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()V

    .line 258
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    .line 259
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    if-eqz v1, :cond_1

    .line 261
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object v1

    .line 262
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/i;->d()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 263
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    .line 264
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N()Landroid/view/View;

    move-result-object v1

    .line 267
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    .line 268
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 269
    invoke-virtual {v2}, Landroidx/recyclerview/widget/i;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b()V

    :goto_0
    return-object v0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 1138
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public e(I)V
    .locals 0

    .line 1070
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    const/high16 p1, -0x80000000

    .line 1071
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    .line 1072
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz p1, :cond_0

    .line 1073
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b()V

    .line 1075
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 295
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    .line 1737
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 1743
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 1734
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    .line 1740
    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    .line 1726
    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne p1, v1, :cond_9

    return v1

    .line 1728
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    .line 1718
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne p1, v1, :cond_c

    return v0

    .line 1720
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method protected f(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->f()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 2

    .line 303
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()I
    .locals 1

    .line 330
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    return v0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 1143
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 1148
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method protected h()Z
    .locals 2

    .line 1036
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->u()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method i()V
    .locals 1

    .line 1040
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()Landroidx/recyclerview/widget/LinearLayoutManager$c;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    :cond_0
    return-void
.end method

.method j()Landroidx/recyclerview/widget/LinearLayoutManager$c;
    .locals 1

    .line 1051
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;-><init>()V

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1223
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    return v0
.end method

.method l()Z
    .locals 1

    .line 1271
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1272
    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m()Z
    .locals 2

    .line 1700
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 1701
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->x()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1702
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()I
    .locals 3

    .line 1923
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1924
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public o()I
    .locals 4

    .line 1963
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1964
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method
