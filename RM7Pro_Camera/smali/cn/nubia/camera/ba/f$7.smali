.class Lcn/nubia/camera/ba/f$7;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ba/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ba/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcn/nubia/camera/ba/f$7;->a:Lcn/nubia/camera/ba/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 627
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 628
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ba/f$7;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->n(Lcn/nubia/camera/ba/f;)V

    :goto_0
    return-void
.end method
