.class Lcn/nubia/camera/pretty/d$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$1;->a:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 101
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$1;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->a(Lcn/nubia/camera/pretty/d;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$1;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1, v1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;Z)Z

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$1;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1, v1}, Lcn/nubia/camera/pretty/d;->a(Lcn/nubia/camera/pretty/d;Z)Z

    :goto_0
    return-void
.end method
