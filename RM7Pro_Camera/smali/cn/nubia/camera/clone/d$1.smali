.class Lcn/nubia/camera/clone/d$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/d;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/clone/d$1;->a:Lcn/nubia/camera/clone/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "ui_change_clone"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/clone/d$1;->a:Lcn/nubia/camera/clone/d;

    invoke-static {p1}, Lcn/nubia/camera/clone/d;->c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/clone/l;->a(Z)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/clone/d$1;->a:Lcn/nubia/camera/clone/d;

    invoke-static {p1}, Lcn/nubia/camera/clone/d;->a(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcn/nubia/camera/clone/d$1;->a:Lcn/nubia/camera/clone/d;

    invoke-static {p1}, Lcn/nubia/camera/clone/d;->b(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    .line 100
    invoke-virtual {p1, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 102
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/clone/d$1;->a:Lcn/nubia/camera/clone/d;

    invoke-static {p1, v0}, Lcn/nubia/camera/clone/d;->b(Lcn/nubia/camera/clone/d;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcn/nubia/camera/clone/d$1;->a:Lcn/nubia/camera/clone/d;

    invoke-virtual {p1}, Lcn/nubia/camera/clone/d;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/a/a;->a(Z)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/clone/d$1;->a:Lcn/nubia/camera/clone/d;

    invoke-static {p1, v0}, Lcn/nubia/camera/clone/d;->a(Lcn/nubia/camera/clone/d;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
