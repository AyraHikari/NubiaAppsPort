.class Lcn/nubia/camera/m/d$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/m/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/m/d;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/m/d$2;->a:Lcn/nubia/camera/m/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/m/d$2;->a:Lcn/nubia/camera/m/d;

    invoke-static {p1}, Lcn/nubia/camera/m/d;->a(Lcn/nubia/camera/m/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/m/a;->a(J)V

    :goto_0
    return-void
.end method
