.class Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;
.super Ljava/lang/Object;
.source "RefreshRateController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->startMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

.field final synthetic val$displayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    .prologue
    .line 136
    iput-object p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    iput-object p2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;->val$displayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 140
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 149
    const-string v2, "[RefreshRateController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-nez p1, :cond_0

    .line 151
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->access$000(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;->val$displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    float-to-int v1, v2

    .line 155
    .local v1, "num":I
    const-string v2, "[RefreshRateController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayManager.getDisplay(i).getRefreshRate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->access$000(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->setRefreshRate(I)V

    .line 164
    .end local v1    # "num":I
    :cond_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->access$100(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)I

    move-result v1

    .line 159
    .restart local v1    # "num":I
    const-string v2, "[RefreshRateController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRefreshRate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 145
    return-void
.end method
