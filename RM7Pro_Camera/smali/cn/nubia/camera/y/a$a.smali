.class Lcn/nubia/camera/y/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/a;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/y/a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/y/a$a;->a:Lcn/nubia/camera/y/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/y/a;Lcn/nubia/camera/y/a$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/camera/y/a$a;-><init>(Lcn/nubia/camera/y/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/y/a$a;->a:Lcn/nubia/camera/y/a;

    invoke-static {v0}, Lcn/nubia/camera/y/a;->a(Lcn/nubia/camera/y/a;)Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;->a(I)V

    return-void
.end method
