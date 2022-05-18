.class Lcn/nubia/camera/three_a/b/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/b/a;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/three_a/b/a;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/three_a/b/a$b;->a:Lcn/nubia/camera/three_a/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/three_a/b/a;Lcn/nubia/camera/three_a/b/a$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/b/a$b;-><init>(Lcn/nubia/camera/three_a/b/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a$b;->a:Lcn/nubia/camera/three_a/b/a;

    invoke-static {p1}, Lcn/nubia/camera/three_a/b/a;->a(Lcn/nubia/camera/three_a/b/a;)Lcn/nubia/camera/three_a/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a$b;->a:Lcn/nubia/camera/three_a/b/a;

    invoke-static {p1}, Lcn/nubia/camera/three_a/b/a;->a(Lcn/nubia/camera/three_a/b/a;)Lcn/nubia/camera/three_a/b/a$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/three_a/b/a$a;->W()V

    :cond_1
    :goto_0
    return-void
.end method
