.class Lcn/nubia/camera/m/a$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/m/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/m/a;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcn/nubia/camera/m/a$2;->a:Lcn/nubia/camera/m/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 305
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 306
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/m/a$2;->a:Lcn/nubia/camera/m/a;

    invoke-static {p1}, Lcn/nubia/camera/m/a;->a(Lcn/nubia/camera/m/a;)V

    :goto_0
    return-void
.end method
