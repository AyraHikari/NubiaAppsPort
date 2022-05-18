.class Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarBroadcastReceiver"
.end annotation


# instance fields
.field mCallBack:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 2528
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2529
    iput-object p1, p0, Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;->mCallBack:Ljava/lang/Runnable;

    .line 2530
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2534
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2536
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 2538
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2539
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;->mCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;->mCallBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2543
    :cond_1
    return-void
.end method
