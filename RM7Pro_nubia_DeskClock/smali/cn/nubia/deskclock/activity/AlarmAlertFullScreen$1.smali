.class Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;
.super Landroid/database/ContentObserver;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfchange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-virtual {v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_face_display"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$002(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;I)I

    .line 137
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 138
    .local v0, "smartfaceenabled":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$100(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-nez v0, :cond_4

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .line 139
    invoke-static {v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$100(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .line 141
    invoke-static {v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 142
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$200(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    .line 147
    :cond_4
    :goto_0
    return-void

    .line 143
    :cond_5
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 144
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$300(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    goto :goto_0
.end method
