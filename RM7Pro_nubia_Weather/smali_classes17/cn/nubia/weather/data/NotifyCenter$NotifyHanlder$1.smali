.class Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;
.super Landroid/os/AsyncTask;
.source "NotifyCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;->handleMessage(Landroid/os/Message;)V
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
.field final synthetic this$1:Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;


# direct methods
.method constructor <init>(Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;

    .prologue
    .line 146
    iput-object p1, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;->this$1:Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;->this$1:Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;

    iget-object v0, v0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-virtual {v0}, Lcn/nubia/weather/data/NotifyCenter;->notifyByBroadcast()V

    .line 151
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;->this$1:Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;

    iget-object v0, v0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-static {v0}, Lcn/nubia/weather/data/NotifyCenter;->access$500(Lcn/nubia/weather/data/NotifyCenter;)V

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method
