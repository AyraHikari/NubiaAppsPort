.class Lcn/nubia/camera/bb/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/bb/b;Landroid/os/Looper;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcn/nubia/camera/bb/b$c;->a:Lcn/nubia/camera/bb/b;

    .line 778
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 783
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/b$c;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/b;->r()V

    :goto_0
    return-void
.end method
