.class Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;
.super Landroid/content/BroadcastReceiver;
.source "NubiaDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/NubiaDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;->this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;->this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->access$100(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;->this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->access$202(Lcn/nubia/deskclock/ui/NubiaDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 84
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;->this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->access$300(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;->this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->updateTime()V

    .line 88
    :cond_1
    return-void
.end method
