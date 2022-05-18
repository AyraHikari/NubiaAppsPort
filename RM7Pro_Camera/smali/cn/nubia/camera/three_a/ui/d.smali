.class public Lcn/nubia/camera/three_a/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/d$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:[I

.field private d:Lcn/nubia/camera/three_a/ui/d$a;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Lcn/nubia/algorithm/camera/MultiFocus;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/d;->a:Z

    .line 14
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/d;->b:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 15
    iput-object v1, p0, Lcn/nubia/camera/three_a/ui/d;->c:[I

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcn/nubia/camera/three_a/ui/d;->d:Lcn/nubia/camera/three_a/ui/d$a;

    const/4 v1, 0x5

    .line 17
    iput v1, p0, Lcn/nubia/camera/three_a/ui/d;->e:I

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcn/nubia/camera/three_a/ui/d;->h:Z

    .line 21
    iput-boolean v2, p0, Lcn/nubia/camera/three_a/ui/d;->i:Z

    .line 23
    new-instance v3, Lcn/nubia/algorithm/camera/MultiFocus;

    invoke-direct {v3}, Lcn/nubia/algorithm/camera/MultiFocus;-><init>()V

    iput-object v3, p0, Lcn/nubia/camera/three_a/ui/d;->j:Lcn/nubia/algorithm/camera/MultiFocus;

    .line 27
    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/d;->c:[I

    const/16 v4, 0x28

    aput v4, v3, v0

    .line 28
    aput v1, v3, v2

    const/4 v0, 0x3

    .line 29
    aput v2, v3, v0

    return-void
.end method

.method private a([I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/d;->d:Lcn/nubia/camera/three_a/ui/d$a;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Lcn/nubia/camera/three_a/ui/d$a;->a([I)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/d;->c:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/d;->j:Lcn/nubia/algorithm/camera/MultiFocus;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/MultiFocus;->a()V

    .line 101
    iput-boolean v2, p0, Lcn/nubia/camera/three_a/ui/d;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/d;->b:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/d$a;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/d;->d:Lcn/nubia/camera/three_a/ui/d$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/d;->i:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 6

    .line 53
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 54
    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/d;->a:Z

    if-eqz p2, :cond_0

    .line 55
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/d;->d()V

    .line 57
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/d;->i:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/d;->h:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 70
    iget-boolean v4, p0, Lcn/nubia/camera/three_a/ui/d;->a:Z

    if-nez v4, :cond_3

    .line 71
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/d;->j:Lcn/nubia/algorithm/camera/MultiFocus;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcn/nubia/algorithm/camera/MultiFocus;->a(II)V

    .line 72
    iput-boolean v3, p0, Lcn/nubia/camera/three_a/ui/d;->a:Z

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/three_a/ui/d;->f:I

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/three_a/ui/d;->g:I

    return v3

    .line 76
    :cond_3
    iget v4, p0, Lcn/nubia/camera/three_a/ui/d;->f:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget v4, p0, Lcn/nubia/camera/three_a/ui/d;->g:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v4, v0, :cond_4

    goto :goto_1

    .line 83
    :cond_4
    iget v0, p0, Lcn/nubia/camera/three_a/ui/d;->e:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 85
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/d;->c:[I

    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/d;->j:Lcn/nubia/algorithm/camera/MultiFocus;

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result p1

    invoke-virtual {v3, p1}, Lcn/nubia/algorithm/camera/MultiFocus;->a(I)I

    move-result p1

    aput p1, v0, v2

    .line 87
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 89
    iput v1, p0, Lcn/nubia/camera/three_a/ui/d;->e:I

    .line 90
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/d;->c:[I

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/d;->a([I)V

    goto :goto_0

    :cond_5
    add-int/2addr v0, v3

    .line 92
    iput v0, p0, Lcn/nubia/camera/three_a/ui/d;->e:I

    :goto_0
    return v1

    .line 77
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/d;->a:Z

    if-eqz p1, :cond_7

    .line 78
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/d;->d()V

    :cond_7
    return v3

    .line 62
    :cond_8
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/d;->c:[I

    aget p2, p1, v2

    if-eqz p2, :cond_9

    .line 63
    aput v1, p1, v2

    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/d;->a([I)V

    :cond_9
    return v3
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/d;->h:Z

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 111
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/d;->a:Z

    if-eqz p1, :cond_0

    .line 112
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/d;->d()V

    :cond_0
    return-void
.end method
