.class public Lcn/nubia/camera/q/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/q/k$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/q/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Lcn/nubia/camera/q/k$a;)Z
    .locals 4

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    move v0, v1

    .line 32
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 33
    invoke-virtual {p1}, Lcn/nubia/camera/q/k$a;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/q/k$a;

    invoke-virtual {v3}, Lcn/nubia/camera/q/k$a;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/camera/q/k$a;
    .locals 1

    .line 68
    new-instance v0, Lcn/nubia/camera/q/k$a;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/q/k$a;-><init>(Lcn/nubia/camera/q/k;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .line 46
    invoke-static {}, Lcn/nubia/camera/ba/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 49
    iget-object v1, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/k$a;

    .line 50
    invoke-virtual {v1}, Lcn/nubia/camera/q/k$a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, Lcn/nubia/camera/q/k$a;->a(Z)V

    .line 52
    invoke-virtual {v1}, Lcn/nubia/camera/q/k$a;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v1}, Lcn/nubia/camera/q/k$a;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/camera/q/k$a;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v2, v1}, Lcn/nubia/camera/q/k;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/camera/q/k$a;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v1}, Lcn/nubia/camera/q/k$a;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/camera/q/k$a;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v1}, Lcn/nubia/camera/q/k;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/k;->b()V

    return-void
.end method

.method public a(Lcn/nubia/camera/q/k$a;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/k;->b(Lcn/nubia/camera/q/k$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/q/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
