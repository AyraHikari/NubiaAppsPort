.class Lcn/nubia/collage/CollageActivity$o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/CollageActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$o;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/CollageActivity;Lcn/nubia/collage/CollageActivity$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity$o;-><init>(Lcn/nubia/collage/CollageActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$o;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->N(Lcn/nubia/collage/CollageActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$o;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->C(Lcn/nubia/collage/CollageActivity;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$o;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->q(Lcn/nubia/collage/CollageActivity;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$o;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->f(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/ui/CollageView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$o;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->f(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/ui/CollageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method
