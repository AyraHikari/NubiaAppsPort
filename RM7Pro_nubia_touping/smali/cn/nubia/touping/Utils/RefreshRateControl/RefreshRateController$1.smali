.class Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$1;
.super Ljava/lang/Object;
.source "RefreshRateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->showSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    const-string v0, "[RefreshRateController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSurface run mSurface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->access$000(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-static {v0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->access$000(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->access$100(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->setRefreshRate(I)V

    .line 67
    return-void
.end method
