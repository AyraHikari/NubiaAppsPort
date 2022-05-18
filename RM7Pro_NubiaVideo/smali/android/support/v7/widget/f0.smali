.class public abstract Landroid/support/v7/widget/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/support/v7/widget/RecyclerView$m;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$m;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Landroid/support/v7/widget/f0;->b:I

    .line 4
    iput-object p1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$m;Landroid/support/v7/widget/f0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/f0;-><init>(Landroid/support/v7/widget/RecyclerView$m;)V

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$m;)Landroid/support/v7/widget/f0;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/f0$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/f0$a;-><init>(Landroid/support/v7/widget/RecyclerView$m;)V

    return-object v0
.end method

.method public static b(Landroid/support/v7/widget/RecyclerView$m;I)Landroid/support/v7/widget/f0;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Landroid/support/v7/widget/f0;->c(Landroid/support/v7/widget/RecyclerView$m;)Landroid/support/v7/widget/f0;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/support/v7/widget/f0;->a(Landroid/support/v7/widget/RecyclerView$m;)Landroid/support/v7/widget/f0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/support/v7/widget/RecyclerView$m;)Landroid/support/v7/widget/f0;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/f0$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/f0$b;-><init>(Landroid/support/v7/widget/RecyclerView$m;)V

    return-object v0
.end method


# virtual methods
.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f(Landroid/view/View;)I
.end method

.method public abstract g(Landroid/view/View;)I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public m()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/f0;->b:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/f0;->l()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/f0;->b:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract n(I)V
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/f0;->l()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/f0;->b:I

    return-void
.end method
