.class public abstract Landroidx/recyclerview/widget/RecyclerView$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "x"
.end annotation


# static fields
.field private static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field f:I

.field g:I

.field h:Landroidx/recyclerview/widget/RecyclerView$x;

.field i:Landroidx/recyclerview/widget/RecyclerView$x;

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroidx/recyclerview/widget/RecyclerView$p;

.field n:Z

.field o:I

.field p:Landroidx/recyclerview/widget/RecyclerView;

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$x;->q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 11086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10953
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 10954
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    const-wide/16 v1, -0x1

    .line 10955
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:J

    .line 10956
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:I

    .line 10957
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    const/4 v1, 0x0

    .line 10960
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->h:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 10962
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->i:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 11061
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->k:Ljava/util/List;

    .line 11062
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->l:Ljava/util/List;

    const/4 v2, 0x0

    .line 11064
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->r:I

    .line 11068
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 11070
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    .line 11074
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->s:I

    .line 11077
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->o:I

    if-eqz p1, :cond_0

    .line 11090
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    return-void

    .line 11088
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private B()V
    .locals 1

    .line 11309
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->k:Ljava/util/List;

    .line 11311
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->l:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method A()Z
    .locals 1

    .line 11460
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a()V
    .locals 1

    const/4 v0, -0x1

    .line 11116
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    .line 11117
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    return-void
.end method

.method a(II)V
    .locals 2

    .line 11292
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    return-void
.end method

.method a(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 11094
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    .line 11095
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$x;->a(IZ)V

    .line 11096
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    return-void
.end method

.method a(IZ)V
    .locals 2

    .line 11100
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11101
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    .line 11103
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    if-ne v0, v1, :cond_1

    .line 11104
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    :cond_1
    if-eqz p2, :cond_2

    .line 11107
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    .line 11109
    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 11110
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11111
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    :cond_3
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Z)V
    .locals 0

    .line 11255
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 11256
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 11356
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11357
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->s:I

    goto :goto_0

    .line 11359
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 11360
    invoke-static {v0}, Landroidx/core/f/u;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->s:I

    :goto_0
    const/4 v0, 0x4

    .line 11362
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$x;I)Z

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11301
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    goto :goto_0

    .line 11302
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11303
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->B()V

    .line 11304
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 11414
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->r:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->r:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 11416
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->r:I

    .line 11421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11424
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 11426
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    :cond_3
    :goto_1
    return-void
.end method

.method a(I)Z
    .locals 1

    .line 11276
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()V
    .locals 2

    .line 11121
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11122
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    .line 11296
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 11370
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->s:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$x;I)Z

    const/4 p1, 0x0

    .line 11372
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->s:I

    return-void
.end method

.method c()Z
    .locals 1

    .line 11127
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()I
    .locals 2

    .line 11166
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    :cond_0
    return v0
.end method

.method public final e()I
    .locals 1

    .line 11192
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 11195
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView$x;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .line 11210
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    return v0
.end method

.method public final g()J
    .locals 2

    .line 11220
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .line 11227
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:I

    return v0
.end method

.method i()Z
    .locals 1

    .line 11231
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j()V
    .locals 1

    .line 11235
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void
.end method

.method k()Z
    .locals 1

    .line 11239
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l()V
    .locals 1

    .line 11243
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    return-void
.end method

.method m()V
    .locals 1

    .line 11247
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    return-void
.end method

.method n()Z
    .locals 1

    .line 11260
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method o()Z
    .locals 1

    .line 11264
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method p()Z
    .locals 2

    .line 11268
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method q()Z
    .locals 1

    .line 11272
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method r()Z
    .locals 1

    .line 11280
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method s()Z
    .locals 2

    .line 11284
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method t()Z
    .locals 1

    .line 11288
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 11378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11379
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11380
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    .line 11383
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    if-eqz v2, :cond_1

    const-string v2, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v2, "[attachedScrap]"

    .line 11384
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11386
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11387
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->p()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11388
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11389
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11390
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11391
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11392
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->x()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11393
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11395
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "}"

    .line 11396
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 1

    .line 11316
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11317
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11319
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    return-void
.end method

.method v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11323
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11324
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11329
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->l:Ljava/util/List;

    return-object v0

    .line 11326
    :cond_1
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$x;->q:Ljava/util/List;

    return-object v0

    .line 11332
    :cond_2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$x;->q:Ljava/util/List;

    return-object v0
.end method

.method w()V
    .locals 4

    const/4 v0, 0x0

    .line 11337
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    const/4 v1, -0x1

    .line 11338
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 11339
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:I

    const-wide/16 v2, -0x1

    .line 11340
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:J

    .line 11341
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    .line 11342
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->r:I

    const/4 v2, 0x0

    .line 11343
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->h:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 11344
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->i:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 11345
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->u()V

    .line 11346
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->s:I

    .line 11347
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->o:I

    .line 11348
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void
.end method

.method public final x()Z
    .locals 1

    .line 11439
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 11440
    invoke-static {v0}, Landroidx/core/f/u;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method y()Z
    .locals 1

    .line 11448
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method z()Z
    .locals 1

    .line 11456
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/f/u;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
