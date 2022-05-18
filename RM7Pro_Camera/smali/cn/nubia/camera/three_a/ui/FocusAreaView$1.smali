.class Lcn/nubia/camera/three_a/ui/FocusAreaView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/FocusAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/FocusAreaView;


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/FocusAreaView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView$1;->a:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 110
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView$1;->a:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->invalidate()V

    :goto_0
    return-void
.end method
