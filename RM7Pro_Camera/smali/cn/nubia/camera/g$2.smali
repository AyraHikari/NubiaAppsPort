.class Lcn/nubia/camera/g$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/g;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcn/nubia/camera/g$2;->a:Lcn/nubia/camera/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 134
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/g$2;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->e(Lcn/nubia/camera/g;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/g$2;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->f(Lcn/nubia/camera/g;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lcn/nubia/camera/g$2;->a:Lcn/nubia/camera/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/g;->b(Lcn/nubia/camera/g;Z)Z

    .line 138
    iget-object p1, p0, Lcn/nubia/camera/g$2;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->d(Lcn/nubia/camera/g;)V

    :cond_1
    :goto_0
    return-void
.end method
