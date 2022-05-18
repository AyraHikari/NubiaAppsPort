.class Lcn/nubia/calendar/EventInfoFragment$16;
.super Landroid/content/BroadcastReceiver;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 2165
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$16;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 2171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2175
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$16;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2178
    :cond_1
    return-void
.end method
