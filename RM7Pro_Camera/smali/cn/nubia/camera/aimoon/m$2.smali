.class Lcn/nubia/camera/aimoon/m$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aimoon/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/m;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/nubia/camera/aimoon/m$2;->a:Lcn/nubia/camera/aimoon/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 207
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m$2;->a:Lcn/nubia/camera/aimoon/m;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/m;->a(I)V

    :goto_0
    return-void
.end method
