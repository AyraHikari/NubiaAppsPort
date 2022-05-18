.class Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;
.super Landroid/os/Handler;
.source "ShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;->this$0:Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;
    .param p2, "x1"    # Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;-><init>(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;->this$0:Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;

    invoke-static {v1}, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;->access$100(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver;)Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "iContext":Landroid/content/Context;
    new-instance v1, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;-><init>(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 50
    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
