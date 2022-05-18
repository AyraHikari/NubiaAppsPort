.class Lcn/nubia/camera/pretty/a/f$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$5;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 585
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f$5;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p1}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 588
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f$5;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p1}, Lcn/nubia/camera/pretty/a/f;->i(Lcn/nubia/camera/pretty/a/f;)V

    :goto_0
    return-void
.end method
