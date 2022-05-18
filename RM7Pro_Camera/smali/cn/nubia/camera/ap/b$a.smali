.class final Lcn/nubia/camera/ap/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ap/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ap/b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ap/b;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcn/nubia/camera/ap/b$a;->a:Lcn/nubia/camera/ap/b;

    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 195
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ap/b$a;->a:Lcn/nubia/camera/ap/b;

    invoke-static {p1}, Lcn/nubia/camera/ap/b;->d(Lcn/nubia/camera/ap/b;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ap/b$a;->a:Lcn/nubia/camera/ap/b;

    invoke-static {p1}, Lcn/nubia/camera/ap/b;->c(Lcn/nubia/camera/ap/b;)V

    :goto_0
    return-void
.end method
