.class Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;
.super Landroid/os/Handler;
.source "LatticeAlarmArrow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/LatticeAlarmArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->access$000(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)[[I

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->access$100(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)I

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->access$200(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V

    .line 91
    :goto_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->invalidate()V

    .line 92
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->access$400(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->access$100(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcn/nubia/deskclock/ui/LatticeAlarmArrow$1;->this$0:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->access$300(Lcn/nubia/deskclock/ui/LatticeAlarmArrow;)V

    goto :goto_1
.end method
