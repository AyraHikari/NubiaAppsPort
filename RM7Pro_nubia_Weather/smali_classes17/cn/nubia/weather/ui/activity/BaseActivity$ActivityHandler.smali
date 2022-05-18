.class Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;->this$0:Lcn/nubia/weather/ui/activity/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/activity/BaseActivity;Lcn/nubia/weather/ui/activity/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/activity/BaseActivity;
    .param p2, "x1"    # Lcn/nubia/weather/ui/activity/BaseActivity$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;-><init>(Lcn/nubia/weather/ui/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;->this$0:Lcn/nubia/weather/ui/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcn/nubia/weather/ui/activity/BaseActivity;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/BaseActivity$ActivityHandler;->this$0:Lcn/nubia/weather/ui/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcn/nubia/weather/ui/activity/BaseActivity;->doHandlerMessage(Landroid/os/Message;)V

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    .line 81
    return-void
.end method
