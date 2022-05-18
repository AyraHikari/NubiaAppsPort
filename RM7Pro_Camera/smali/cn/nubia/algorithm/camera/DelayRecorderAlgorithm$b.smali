.class Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;


# direct methods
.method private constructor <init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;-><init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-static {v0}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->access$100(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;)Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;->a(I)V

    return-void
.end method
