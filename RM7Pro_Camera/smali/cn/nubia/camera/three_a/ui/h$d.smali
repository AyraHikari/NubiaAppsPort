.class Lcn/nubia/camera/three_a/ui/h$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/h;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/three_a/ui/h;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/h$d;->a:Lcn/nubia/camera/three_a/ui/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/three_a/ui/h;Lcn/nubia/camera/three_a/ui/h$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/h$d;-><init>(Lcn/nubia/camera/three_a/ui/h;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h$d;->a:Lcn/nubia/camera/three_a/ui/h;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h;)V

    :goto_0
    return-void
.end method
