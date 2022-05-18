.class Lcn/nubia/camera/n/b$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/n/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/n/b;Lcn/nubia/camera/n/b$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcn/nubia/camera/n/b$d;-><init>(Lcn/nubia/camera/n/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->i(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/ZtemtFunEffectSlider;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->q(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 486
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->q(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$e;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/n/b$e;->s()V

    .line 488
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->r(Lcn/nubia/camera/n/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 489
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    iget-object p1, p1, Lcn/nubia/camera/n/b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    invoke-interface {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->b()V

    .line 491
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq p1, v0, :cond_6

    .line 492
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/q/h;->a()V

    goto :goto_0

    .line 477
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->i(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/ZtemtFunEffectSlider;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setVisibility(I)V

    .line 478
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->q(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$e;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 479
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->q(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$e;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/n/b$e;->r()V

    .line 481
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/n/b$d;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/q/h;->a()V

    :cond_6
    :goto_0
    return-void
.end method
