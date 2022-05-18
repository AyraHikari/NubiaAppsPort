.class public abstract Landroid/support/v7/widget/RecyclerView$z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "z"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Landroid/support/v7/widget/RecyclerView$z;

.field h:Landroid/support/v7/widget/RecyclerView$z;

.field private i:I

.field private j:I

.field private k:Landroid/support/v7/widget/RecyclerView$r;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    .line 3
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Landroid/support/v7/widget/RecyclerView$z;->d:J

    .line 5
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->e:I

    .line 6
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->g:Landroid/support/v7/widget/RecyclerView$z;

    .line 8
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->h:Landroid/support/v7/widget/RecyclerView$z;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$z;->j:I

    .line 10
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->k:Landroid/support/v7/widget/RecyclerView$r;

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private E()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$z;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$z;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$r;)Landroid/support/v7/widget/RecyclerView$r;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$z;->k:Landroid/support/v7/widget/RecyclerView$r;

    return-object p1
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$z;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$z;->E()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    return p0
.end method

.method private i()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method A()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    :cond_0
    return-void
.end method

.method B(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    return-void
.end method

.method public final C(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$z;->j:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$z;->j:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$z;->j:I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 4
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 5
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    :cond_3
    :goto_1
    return-void
.end method

.method D(Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$z;->k:Landroid/support/v7/widget/RecyclerView$r;

    return-void
.end method

.method F()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method G()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->k:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$r;->J(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method

.method H()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method e(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    return-void
.end method

.method f()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    .line 2
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    return-void
.end method

.method g()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    return-void
.end method

.method h()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    return-void
.end method

.method j(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    .line 3
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    return-void
.end method

.method public final k()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 4
    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView;->y(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$z;)I

    move-result v0

    return v0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$z;->d:J

    return-wide v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->e:I

    return v0
.end method

.method public final n()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    :cond_0
    return v0
.end method

.method o(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method p()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method q()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method r()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method s()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$z;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->q()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->w()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->t()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$z;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$z;->p()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "}"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->k:Landroid/support/v7/widget/RecyclerView$r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method w()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method x()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method y(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    .line 6
    :cond_2
    iget p2, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    .line 7
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    :cond_3
    return-void
.end method

.method z()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->i:I

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$z;->b:I

    .line 3
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$z;->c:I

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$z;->d:J

    .line 5
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$z;->f:I

    .line 6
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$z;->j:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->g:Landroid/support/v7/widget/RecyclerView$z;

    .line 8
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$z;->h:Landroid/support/v7/widget/RecyclerView$z;

    return-void
.end method
