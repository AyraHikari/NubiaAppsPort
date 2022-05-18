.class public Landroidx/recyclerview/widget/RecyclerView$t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 12070
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$t$a;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 12090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12055
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    const/4 v0, 0x0

    .line 12059
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    .line 12063
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    .line 12091
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:I

    .line 12092
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    .line 12093
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    .line 12094
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private b()V
    .locals 2

    .line 12145
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->e:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 12146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12148
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    if-lt v0, v1, :cond_2

    return-void

    .line 12149
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 12113
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 12208
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:I

    .line 12209
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    .line 12210
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    .line 12211
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->e:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 12212
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 12121
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    .line 12123
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    .line 12124
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(I)V

    .line 12125
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    return-void

    .line 12128
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    if-eqz v0, :cond_2

    .line 12129
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t$a;->b()V

    .line 12130
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->A:Landroidx/recyclerview/widget/RecyclerView$w;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->a(IIILandroid/view/animation/Interpolator;)V

    .line 12131
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 12135
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12138
    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    goto :goto_0

    .line 12140
    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    :goto_0
    return-void
.end method

.method a()Z
    .locals 1

    .line 12117
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
