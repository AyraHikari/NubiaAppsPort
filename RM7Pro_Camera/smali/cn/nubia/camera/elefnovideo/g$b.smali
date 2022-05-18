.class Lcn/nubia/camera/elefnovideo/g$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/elefnovideo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/g;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/elefnovideo/g;Landroid/os/Looper;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g$b;->a:Lcn/nubia/camera/elefnovideo/g;

    .line 541
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 546
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g$b;->a:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {p1}, Lcn/nubia/camera/elefnovideo/g;->k(Lcn/nubia/camera/elefnovideo/g;)V

    :goto_0
    return-void
.end method
