.class Lcn/nubia/camera/three_a/ui/a$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/a;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/three_a/ui/a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/a$c;->a:Lcn/nubia/camera/three_a/ui/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/three_a/ui/a;Lcn/nubia/camera/three_a/ui/a$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/a$c;-><init>(Lcn/nubia/camera/three_a/ui/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/a$c;->a:Lcn/nubia/camera/three_a/ui/a;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/a;->b()V

    :goto_0
    return-void
.end method
