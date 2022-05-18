.class Lcn/nubia/camera/f/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/f/b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/f/b;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/nubia/camera/f/b$a;->a:Lcn/nubia/camera/f/b;

    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/f/b$a;->a:Lcn/nubia/camera/f/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/b;Z)V

    :goto_0
    return-void
.end method
