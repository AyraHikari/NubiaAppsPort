.class Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "NubiaAlertDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$1;->this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$1;->this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->access$000(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$1;->this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->access$102(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$1;->this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->updateTime()V

    .line 76
    return-void
.end method
