.class Lcn/nubia/touping/Dialog/HdmiNodesDialog$2$1;
.super Ljava/lang/Object;
.source "HdmiNodesDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;

    .prologue
    .line 89
    iput-object p1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2$1;->this$1:Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "/sys/kernel/lcd_enhance/hpd"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    return-void
.end method
