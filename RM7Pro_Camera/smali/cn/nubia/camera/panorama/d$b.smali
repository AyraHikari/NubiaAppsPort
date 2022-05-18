.class Lcn/nubia/camera/panorama/d$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/panorama/d;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/camera/panorama/d$b;->a:Lcn/nubia/camera/panorama/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/panorama/d;Lcn/nubia/camera/panorama/d$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/d$b;-><init>(Lcn/nubia/camera/panorama/d;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$b;->a:Lcn/nubia/camera/panorama/d;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcn/nubia/camera/panorama/d;->a(Lcn/nubia/camera/panorama/d;I)V

    return-void
.end method
