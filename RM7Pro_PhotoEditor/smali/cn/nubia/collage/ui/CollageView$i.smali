.class Lcn/nubia/collage/ui/CollageView$i;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/ui/CollageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/CollageView;


# direct methods
.method public constructor <init>(Lcn/nubia/collage/ui/CollageView;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView$i;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$i;->a:Lcn/nubia/collage/ui/CollageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/collage/ui/CollageView;->d(Lcn/nubia/collage/ui/CollageView;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$i;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->p(Lcn/nubia/collage/ui/CollageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$i;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->a(Lcn/nubia/collage/ui/CollageView;)V

    :goto_0
    return-void
.end method
