.class Lcn/nubia/camera/r/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/i;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/r/i;Landroid/os/Looper;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcn/nubia/camera/r/i$a;->a:Lcn/nubia/camera/r/i;

    .line 441
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 446
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/r/i$a;->a:Lcn/nubia/camera/r/i;

    invoke-static {p1}, Lcn/nubia/camera/r/i;->d(Lcn/nubia/camera/r/i;)V

    :goto_0
    return-void
.end method
