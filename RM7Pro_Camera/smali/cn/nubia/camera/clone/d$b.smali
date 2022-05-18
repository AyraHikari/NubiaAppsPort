.class Lcn/nubia/camera/clone/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/clone/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/clone/d;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/clone/d;Lcn/nubia/camera/clone/d$1;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/d$b;-><init>(Lcn/nubia/camera/clone/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "CloneFragment"

    const-string v1, "onStart"

    .line 551
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->h(Lcn/nubia/camera/clone/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 556
    iget-object v0, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "CloneFragment"

    const-string v1, "onFinish"

    .line 561
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->k()V

    .line 568
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/d$b;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->h(Lcn/nubia/camera/clone/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
