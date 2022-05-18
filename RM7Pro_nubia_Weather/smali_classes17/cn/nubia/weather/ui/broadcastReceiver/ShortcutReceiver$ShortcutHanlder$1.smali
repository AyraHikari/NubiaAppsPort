.class Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;
.super Landroid/os/AsyncTask;
.source "ShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;

.field final synthetic val$iContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;->this$1:Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder;

    iput-object p2, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;->val$iContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/weather/ui/broadcastReceiver/ShortcutReceiver$ShortcutHanlder$1;->val$iContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/NotifyCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/NotifyCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/NotifyCenter;->setForceTouchInfo()V

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
