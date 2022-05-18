.class public Lb/a/b/c/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/c/b/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/k$c;,
        Lb/a/b/c/b/k$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/video/list/app/a;

.field private b:Lb/a/b/c/b/g;

.field private final c:[Lb/a/b/c/b/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lb/a/b/e/d;

.field private j:Landroid/os/Handler;

.field private k:I

.field private l:Z

.field private m:Lb/a/b/c/b/k$b;

.field private n:I


# direct methods
.method public constructor <init>(ILcn/nubia/video/list/app/a;Lb/a/b/c/b/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/b/c/b/k;->d:I

    .line 3
    iput v0, p0, Lb/a/b/c/b/k;->e:I

    .line 4
    iput v0, p0, Lb/a/b/c/b/k;->f:I

    .line 5
    iput v0, p0, Lb/a/b/c/b/k;->g:I

    .line 6
    iput v0, p0, Lb/a/b/c/b/k;->h:I

    .line 7
    iput v0, p0, Lb/a/b/c/b/k;->k:I

    .line 8
    iput-boolean v0, p0, Lb/a/b/c/b/k;->l:Z

    .line 9
    iput-object p2, p0, Lb/a/b/c/b/k;->a:Lcn/nubia/video/list/app/a;

    .line 10
    iput p1, p0, Lb/a/b/c/b/k;->n:I

    .line 11
    iput-object p3, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    .line 12
    invoke-virtual {p3, p0}, Lb/a/b/c/b/g;->J(Lb/a/b/c/b/g$b;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/16 p1, 0x14

    new-array p1, p1, [Lb/a/b/c/b/c;

    .line 13
    iput-object p1, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    goto :goto_0

    :cond_0
    const/16 p1, 0x50

    new-array p1, p1, [Lb/a/b/c/b/c;

    .line 14
    iput-object p1, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    .line 15
    :goto_0
    iget-object p1, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    invoke-virtual {p1}, Lb/a/b/c/b/g;->L()I

    move-result p1

    iput p1, p0, Lb/a/b/c/b/k;->h:I

    .line 16
    iget-object p1, p0, Lb/a/b/c/b/k;->a:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->c()Lb/a/b/e/d;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/k;->i:Lb/a/b/e/d;

    .line 17
    new-instance p1, Lb/a/b/c/b/k$a;

    invoke-direct {p1, p0}, Lb/a/b/c/b/k$a;-><init>(Lb/a/b/c/b/k;)V

    iput-object p1, p0, Lb/a/b/c/b/k;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lb/a/b/c/b/k;)Lb/a/b/c/b/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    return-object p0
.end method

.method static synthetic b(Lb/a/b/c/b/k;)Lb/a/b/e/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/k;->i:Lb/a/b/e/d;

    return-object p0
.end method

.method static synthetic e(Lb/a/b/c/b/k;)Lcn/nubia/video/list/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/k;->a:Lcn/nubia/video/list/app/a;

    return-object p0
.end method

.method static synthetic f(Lb/a/b/c/b/k;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/k;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lb/a/b/c/b/k;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/c/b/k;->p(I)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lb/a/b/c/b/k;)Lb/a/b/c/b/k$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/k;->m:Lb/a/b/c/b/k$b;

    return-object p0
.end method

.method static synthetic i(Lb/a/b/c/b/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/b/c/b/k;->k:I

    return p0
.end method

.method static synthetic j(Lb/a/b/c/b/k;)I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/b/c/b/k;->k:I

    return v0
.end method

.method static synthetic k(Lb/a/b/c/b/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/b/c/b/k;->t()V

    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->g:I

    iget v1, p0, Lb/a/b/c/b/k;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lb/a/b/c/b/k;->d:I

    iget v2, p0, Lb/a/b/c/b/k;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget v2, p0, Lb/a/b/c/b/k;->e:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lb/a/b/c/b/k;->m(I)V

    .line 3
    iget v2, p0, Lb/a/b/c/b/k;->d:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lb/a/b/c/b/k;->m(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m(I)V
    .locals 2

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->f:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lb/a/b/c/b/k;->g:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lb/a/b/c/b/c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private n(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freeSlotContent slotIndex is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoad"

    invoke-static {v1, v0}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    .line 3
    array-length v1, v0

    rem-int/2addr p1, v1

    .line 4
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lb/a/b/c/b/c;->f()V

    const/4 v1, 0x0

    .line 6
    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method private o(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/a/b/c/b/c;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private p(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->d:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lb/a/b/c/b/k;->e:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private s(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSlotContent slotIndex is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoad"

    invoke-static {v1, v0}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    invoke-virtual {v0, p1}, Lb/a/b/c/b/g;->A(I)Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lb/a/b/c/b/k$c;

    iget v1, p0, Lb/a/b/c/b/k;->n:I

    invoke-direct {v0, p0, p1, v1}, Lb/a/b/c/b/k$c;-><init>(Lb/a/b/c/b/k;II)V

    .line 4
    iget-object v1, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    array-length v2, v1

    rem-int/2addr p1, v2

    aput-object v0, v1, p1

    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->g:I

    iget v1, p0, Lb/a/b/c/b/k;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lb/a/b/c/b/k;->d:I

    iget v2, p0, Lb/a/b/c/b/k;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget v2, p0, Lb/a/b/c/b/k;->e:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lb/a/b/c/b/k;->u(I)Z

    .line 3
    iget v2, p0, Lb/a/b/c/b/k;->d:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lb/a/b/c/b/k;->u(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->f:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    iget v0, p0, Lb/a/b/c/b/k;->g:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    array-length v2, v0

    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lb/a/b/c/b/c;->g()V

    .line 4
    invoke-virtual {p1}, Lb/a/b/c/b/c;->d()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private x(II)V
    .locals 2

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->f:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lb/a/b/c/b/k;->g:I

    if-ne p2, v1, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    invoke-virtual {v0, p1, p2}, Lb/a/b/c/b/g;->H(II)V

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lb/a/b/c/b/k;->l:Z

    if-nez v1, :cond_1

    .line 4
    iput p1, p0, Lb/a/b/c/b/k;->f:I

    .line 5
    iput p2, p0, Lb/a/b/c/b/k;->g:I

    .line 6
    iget-object v0, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    invoke-virtual {v0, p1, p2}, Lb/a/b/c/b/g;->H(II)V

    return-void

    .line 7
    :cond_1
    iget v1, p0, Lb/a/b/c/b/k;->g:I

    if-ge p1, v1, :cond_6

    if-lt v0, p2, :cond_2

    goto :goto_4

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_3

    .line 8
    invoke-direct {p0, v0}, Lb/a/b/c/b/k;->n(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget v0, p0, Lb/a/b/c/b/k;->g:I

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 10
    invoke-direct {p0, v1}, Lb/a/b/c/b/k;->n(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    invoke-virtual {v0, p1, p2}, Lb/a/b/c/b/g;->H(II)V

    .line 12
    iget v0, p0, Lb/a/b/c/b/k;->f:I

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 13
    invoke-direct {p0, v1}, Lb/a/b/c/b/k;->s(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_5
    iget v0, p0, Lb/a/b/c/b/k;->g:I

    :goto_3
    if-ge v0, p2, :cond_8

    .line 15
    invoke-direct {p0, v0}, Lb/a/b/c/b/k;->s(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v0, v1, :cond_7

    .line 16
    invoke-direct {p0, v0}, Lb/a/b/c/b/k;->n(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 17
    :cond_7
    iget-object v0, p0, Lb/a/b/c/b/k;->b:Lb/a/b/c/b/g;

    invoke-virtual {v0, p1, p2}, Lb/a/b/c/b/g;->H(II)V

    move v0, p1

    :goto_5
    if-ge v0, p2, :cond_8

    .line 18
    invoke-direct {p0, v0}, Lb/a/b/c/b/k;->s(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 19
    :cond_8
    iput p1, p0, Lb/a/b/c/b/k;->f:I

    .line 20
    iput p2, p0, Lb/a/b/c/b/k;->g:I

    return-void
.end method

.method private z()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lb/a/b/c/b/k;->k:I

    .line 2
    iget v0, p0, Lb/a/b/c/b/k;->d:I

    iget v1, p0, Lb/a/b/c/b/k;->e:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lb/a/b/c/b/k;->u(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lb/a/b/c/b/k;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/a/b/c/b/k;->k:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lb/a/b/c/b/k;->k:I

    if-nez v0, :cond_2

    .line 5
    invoke-direct {p0}, Lb/a/b/c/b/k;->t()V

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0}, Lb/a/b/c/b/k;->l()V

    :goto_1
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->h:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lb/a/b/c/b/k;->h:I

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/k;->m:Lb/a/b/c/b/k$b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lb/a/b/c/b/k$b;->c(I)V

    .line 5
    :cond_0
    iget p1, p0, Lb/a/b/c/b/k;->g:I

    iget v0, p0, Lb/a/b/c/b/k;->h:I

    if-le p1, v0, :cond_1

    .line 6
    iput v0, p0, Lb/a/b/c/b/k;->g:I

    .line 7
    :cond_1
    iget p1, p0, Lb/a/b/c/b/k;->e:I

    if-le p1, v0, :cond_2

    .line 8
    iput v0, p0, Lb/a/b/c/b/k;->e:I

    :cond_2
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget v0, p0, Lb/a/b/c/b/k;->f:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lb/a/b/c/b/k;->g:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lb/a/b/c/b/k;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lb/a/b/c/b/k;->n(I)V

    .line 3
    invoke-direct {p0, p1}, Lb/a/b/c/b/k;->s(I)V

    .line 4
    invoke-direct {p0}, Lb/a/b/c/b/k;->z()V

    .line 5
    iget-object v0, p0, Lb/a/b/c/b/k;->m:Lb/a/b/c/b/k$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lb/a/b/c/b/k;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lb/a/b/c/b/k;->m:Lb/a/b/c/b/k$b;

    invoke-direct {p0, p1}, Lb/a/b/c/b/k;->o(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lb/a/b/c/b/k$b;->d(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public q(ILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/c/b/k;->o(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0801cd

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause mContentStart is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/b/c/b/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContentEnd is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/b/c/b/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoad"

    invoke-static {v1, v0}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/b/c/b/k;->l:Z

    .line 3
    iget v1, p0, Lb/a/b/c/b/k;->f:I

    iget v2, p0, Lb/a/b/c/b/k;->g:I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lb/a/b/c/b/k;->n(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lb/a/b/c/b/k;->g:I

    iput v0, p0, Lb/a/b/c/b/k;->f:I

    return-void
.end method

.method public v()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/b/c/b/k;->l:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume mContentStart is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/b/c/b/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContentEnd is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/b/c/b/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoad"

    invoke-static {v1, v0}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lb/a/b/c/b/k;->f:I

    iget v1, p0, Lb/a/b/c/b/k;->g:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lb/a/b/c/b/k;->s(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lb/a/b/c/b/k;->z()V

    return-void
.end method

.method public w(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lb/a/b/c/b/k;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-gt p1, p2, :cond_2

    sub-int v2, p2, p1

    .line 2
    iget-object v3, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    array-length v4, v3

    if-gt v2, v4, :cond_2

    iget v2, p0, Lb/a/b/c/b/k;->h:I

    if-gt p2, v2, :cond_2

    .line 3
    iput p1, p0, Lb/a/b/c/b/k;->d:I

    .line 4
    iput p2, p0, Lb/a/b/c/b/k;->e:I

    add-int/2addr p1, p2

    .line 5
    div-int/2addr p1, v0

    array-length p2, v3

    div-int/2addr p2, v0

    sub-int/2addr p1, p2

    array-length p2, v3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, v1, p2}, Lb/a/b/d/e;->d(III)I

    move-result p1

    .line 6
    array-length p2, v3

    add-int/2addr p2, p1

    iget v0, p0, Lb/a/b/c/b/k;->h:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/k;->x(II)V

    .line 8
    iget-boolean p1, p0, Lb/a/b/c/b/k;->l:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lb/a/b/c/b/k;->z()V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    iget-object p1, p0, Lb/a/b/c/b/k;->c:[Lb/a/b/c/b/c;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x3

    iget p2, p0, Lb/a/b/c/b/k;->h:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "%s, %s, %s, %s"

    invoke-static {p1, v2}, Lb/a/b/d/e;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public y(Lb/a/b/c/b/k$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/k;->m:Lb/a/b/c/b/k$b;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lb/a/b/c/b/k;->m:Lb/a/b/c/b/k$b;

    :cond_0
    return-void
.end method
