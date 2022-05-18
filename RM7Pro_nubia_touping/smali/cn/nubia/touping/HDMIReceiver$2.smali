.class Lcn/nubia/touping/HDMIReceiver$2;
.super Ljava/lang/Object;
.source "HDMIReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/HDMIReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/HDMIReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/touping/HDMIReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/HDMIReceiver;

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/touping/HDMIReceiver$2;->this$0:Lcn/nubia/touping/HDMIReceiver;

    iput-object p2, p0, Lcn/nubia/touping/HDMIReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 102
    new-instance v2, Ljava/io/File;

    const-string v5, "sys/devices/platform/soc/soc:nubia_usb_switch_dp_gpio_ctrl/enable"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 105
    .local v3, "reader":Ljava/io/FileReader;
    const/4 v5, 0x1

    new-array v0, v5, [C

    .line 106
    .local v0, "buffer":[C
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    move-result v5

    if-lez v5, :cond_0

    .line 107
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 108
    .local v4, "result":Ljava/lang/String;
    const-string v5, "[HDMIReceiver]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcn/nubia/touping/HDMIReceiver$2;->this$0:Lcn/nubia/touping/HDMIReceiver;

    iget-object v6, p0, Lcn/nubia/touping/HDMIReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcn/nubia/touping/HDMIReceiver;->access$000(Lcn/nubia/touping/HDMIReceiver;Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->onHdmiPluggedChanged(Z)V

    .line 112
    invoke-static {}, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->getInstance()Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/touping/HDMIReceiver$2;->val$context:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->HdmiPluggedChanged(Landroid/content/Context;Z)V

    .line 113
    iget-object v5, p0, Lcn/nubia/touping/HDMIReceiver$2;->val$context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPrramWiredForGameCollectedData(Landroid/content/Context;Z)V

    .line 125
    .end local v0    # "buffer":[C
    .end local v3    # "reader":Ljava/io/FileReader;
    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v0    # "buffer":[C
    .restart local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcn/nubia/touping/HDMIReceiver$2;->val$context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPrramWiredForGameCollectedData(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 118
    .end local v0    # "buffer":[C
    .end local v3    # "reader":Ljava/io/FileReader;
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "[HDMIReceiver]"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "[HDMIReceiver]"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
