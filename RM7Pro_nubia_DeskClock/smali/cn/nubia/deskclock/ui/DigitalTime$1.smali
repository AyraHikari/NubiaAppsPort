.class Lcn/nubia/deskclock/ui/DigitalTime$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/DigitalTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/DigitalTime;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/DigitalTime;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/DigitalTime;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalTime$1;->this$0:Lcn/nubia/deskclock/ui/DigitalTime;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime$1;->this$0:Lcn/nubia/deskclock/ui/DigitalTime;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/DigitalTime;->access$000(Lcn/nubia/deskclock/ui/DigitalTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime$1;->this$0:Lcn/nubia/deskclock/ui/DigitalTime;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/DigitalTime;->access$102(Lcn/nubia/deskclock/ui/DigitalTime;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime$1;->this$0:Lcn/nubia/deskclock/ui/DigitalTime;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/DigitalTime;->access$300(Lcn/nubia/deskclock/ui/DigitalTime;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/ui/DigitalTime$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/DigitalTime$1$1;-><init>(Lcn/nubia/deskclock/ui/DigitalTime$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
