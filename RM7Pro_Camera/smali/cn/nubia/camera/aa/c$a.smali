.class Lcn/nubia/camera/aa/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aa/c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/aa/c;Landroid/os/Looper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/aa/c$a;->a:Lcn/nubia/camera/aa/c;

    .line 86
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aa/c$a;->a:Lcn/nubia/camera/aa/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/common/a;

    invoke-static {v0, p1}, Lcn/nubia/camera/aa/c;->a(Lcn/nubia/camera/aa/c;Lcom/android/common/a;)V

    :goto_0
    return-void
.end method
