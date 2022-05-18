.class Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;
.super Ljava/lang/Object;
.source "CountdownBroadCastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/CountdownBroadCastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/CountdownBroadCastReceiver;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/CountdownBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/os/PowerManager$WakeLock;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/CountdownBroadCastReceiver;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->this$0:Lcn/nubia/deskclock/CountdownBroadCastReceiver;

    iput-object p2, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    iput-object p5, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->this$0:Lcn/nubia/deskclock/CountdownBroadCastReceiver;

    iget-object v1, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->access$000(Lcn/nubia/deskclock/CountdownBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 60
    iget-object v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 61
    return-void
.end method
