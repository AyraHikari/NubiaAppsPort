.class Lcn/nubia/camera/aj/f$7;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 562
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 563
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->q(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/i;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 576
    iget-object p1, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->q(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/i;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/aj/i;->a()V

    goto :goto_1

    .line 570
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->q(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/i;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 571
    iget-object p1, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->q(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/i;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/aj/i;->b()V

    goto :goto_1

    .line 565
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->q(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcn/nubia/camera/aj/f$7;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->q(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_3
    const-wide/16 v1, -0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/aj/i;->a(J)V

    :cond_4
    :goto_1
    return-void
.end method
