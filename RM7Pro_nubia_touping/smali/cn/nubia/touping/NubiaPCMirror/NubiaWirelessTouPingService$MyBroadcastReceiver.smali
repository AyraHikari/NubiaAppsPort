.class public Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NubiaWirelessTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 235
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    if-nez p2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->sendCurrentPackageInfo()V

    goto :goto_0
.end method
