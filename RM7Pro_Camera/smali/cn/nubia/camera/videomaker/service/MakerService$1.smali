.class Lcn/nubia/camera/videomaker/service/MakerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/service/MakerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/service/MakerService;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/service/MakerService;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService$1;->a:Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService$1;->a:Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->stopSelf()V

    :cond_0
    return-void
.end method
