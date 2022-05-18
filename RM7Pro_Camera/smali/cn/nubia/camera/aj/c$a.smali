.class public Lcn/nubia/camera/aj/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 561
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5

    const/4 p1, 0x4

    if-eq v0, p1, :cond_4

    const/4 p1, 0x5

    if-eq v0, p1, :cond_3

    const/4 p1, 0x6

    const/16 v3, 0x8

    if-eq v0, p1, :cond_2

    if-eq v0, v3, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/c;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 586
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/c;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Z)V

    goto :goto_0

    .line 580
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/c;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 581
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/c;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(Z)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1, v3}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;I)V

    goto :goto_0

    .line 574
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1, v1}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;I)V

    goto :goto_0

    .line 571
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/c;->I()V

    goto :goto_0

    .line 568
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->p(Lcn/nubia/camera/aj/c;)V

    goto :goto_0

    .line 563
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->o(Lcn/nubia/camera/aj/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->o(Lcn/nubia/camera/aj/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 565
    iget-object v0, p0, Lcn/nubia/camera/aj/c$a;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->o(Lcn/nubia/camera/aj/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    :cond_7
    :goto_0
    return-void
.end method
