.class Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopMediaCodecRevceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/HomeActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/touping/HomeActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;->this$0:Lcn/nubia/touping/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/touping/HomeActivity;Lcn/nubia/touping/HomeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/touping/HomeActivity;
    .param p2, "x1"    # Lcn/nubia/touping/HomeActivity$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;-><init>(Lcn/nubia/touping/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v1, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StopMediaCodecRevceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;->this$0:Lcn/nubia/touping/HomeActivity;

    invoke-static {v1}, Lcn/nubia/touping/HomeActivity;->access$100(Lcn/nubia/touping/HomeActivity;)V

    .line 79
    return-void
.end method
