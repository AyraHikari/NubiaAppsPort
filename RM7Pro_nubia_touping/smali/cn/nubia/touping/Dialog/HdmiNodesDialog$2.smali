.class Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;
.super Ljava/lang/Object;
.source "HdmiNodesDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Dialog/HdmiNodesDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-static {v1}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->access$000(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)Lcn/nubia/touping/Adapter/HdmiNodesAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .line 84
    .local v0, "clickNode":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->setLastNode(Lcn/nubia/touping/Utils/hdmi/HdmiNode;)V

    .line 85
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->getNodeInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/kernel/lcd_enhance/edid_modes"

    invoke-virtual {v1, v2, v3}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget v1, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    iget v2, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v3, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    invoke-static {v1, v2, v3}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setParamWired(III)V

    .line 87
    iget-object v1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-static {v1}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->access$100(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPrramWiredForGameCollectedData(Landroid/content/Context;Z)V

    .line 89
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-static {v1}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->access$200(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2$1;

    invoke-direct {v2, p0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2$1;-><init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    iget-object v1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-static {v1}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->access$200(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2$2;

    invoke-direct {v2, p0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2$2;-><init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    iget-object v1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->dismiss()V

    .line 102
    return-void
.end method
