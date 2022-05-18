.class Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;
.super Landroid/os/Handler;
.source "NotifyCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/NotifyCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/data/NotifyCenter;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/data/NotifyCenter;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/data/NotifyCenter;Lcn/nubia/weather/data/NotifyCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/data/NotifyCenter;
    .param p2, "x1"    # Lcn/nubia/weather/data/NotifyCenter$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;-><init>(Lcn/nubia/weather/data/NotifyCenter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 146
    :pswitch_0
    new-instance v0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;-><init>(Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 154
    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 171
    :pswitch_1
    new-instance v0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$2;

    invoke-direct {v0, p0}, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$2;-><init>(Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 178
    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1300001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
