.class Lcn/nubia/camera/ag/d$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ag/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ag/d;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcn/nubia/camera/ag/d$b;->a:Lcn/nubia/camera/ag/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V
    .locals 0

    .line 858
    invoke-direct {p0, p1}, Lcn/nubia/camera/ag/d$b;-><init>(Lcn/nubia/camera/ag/d;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 861
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ag/d$b;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->s(Lcn/nubia/camera/ag/d;)V

    goto :goto_0

    .line 863
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d$b;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->t(Lcn/nubia/camera/ag/d;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcn/nubia/camera/ag/d$b;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->t(Lcn/nubia/camera/ag/d;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 865
    iget-object v0, p0, Lcn/nubia/camera/ag/d$b;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->t(Lcn/nubia/camera/ag/d;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    :goto_0
    return-void
.end method
