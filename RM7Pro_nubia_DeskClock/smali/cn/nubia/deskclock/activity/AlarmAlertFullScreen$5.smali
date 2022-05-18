.class Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$5;
.super Ljava/lang/Object;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 420
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$5;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 423
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "user click snooze button "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$5;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$700(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    .line 425
    return-void
.end method
