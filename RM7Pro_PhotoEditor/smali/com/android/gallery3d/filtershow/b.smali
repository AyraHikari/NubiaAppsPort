.class public Lcom/android/gallery3d/filtershow/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private b:Landroid/widget/FrameLayout;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/filtershow/editors/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/b;->b:Landroid/widget/FrameLayout;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/b;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/b;->d:Ljava/util/Vector;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(I)Lcom/android/gallery3d/filtershow/editors/c;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/c;

    return-object p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/b;->b:Landroid/widget/FrameLayout;

    return-void
.end method

.method public f(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/b;->d:Ljava/util/Vector;

    return-void
.end method

.method public g(I)Lcom/android/gallery3d/filtershow/editors/c;
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->v()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->C()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/b;->d()V

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/editors/c;->J(I)V

    return-object p1
.end method
