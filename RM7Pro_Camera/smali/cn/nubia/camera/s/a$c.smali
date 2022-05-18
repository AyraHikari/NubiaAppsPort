.class Lcn/nubia/camera/s/a$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/s/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/s/a;Landroid/os/Looper;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    .line 516
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 520
    iget-object p1, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    invoke-static {p1}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/s/a;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    invoke-static {p1}, Lcn/nubia/camera/s/a;->b(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    .line 525
    invoke-static {p1}, Lcn/nubia/camera/s/a;->b(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    .line 526
    invoke-static {p1}, Lcn/nubia/camera/s/a;->b(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_2

    .line 527
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/f/b;->b()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 537
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    invoke-static {p1}, Lcn/nubia/camera/s/a;->h(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 538
    iget-object p1, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    invoke-static {p1}, Lcn/nubia/camera/s/a;->h(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/c;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/s/a$c;->a:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->d(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/s/c;->a(Lcn/nubia/camera/s/a$b;)V

    :cond_2
    :goto_0
    return-void
.end method
