.class Lcn/nubia/gallery3d/app/ActivityState$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/ActivityState;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/ActivityState;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState$1;->this$0:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "plugged"

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 156
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState$1;->this$0:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/ActivityState;->access$000(Lcn/nubia/gallery3d/app/ActivityState;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 157
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState$1;->this$0:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/ActivityState;->access$002(Lcn/nubia/gallery3d/app/ActivityState;Z)Z

    .line 158
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState$1;->this$0:Lcn/nubia/gallery3d/app/ActivityState;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/ActivityState;->setScreenOnFlags()V

    :cond_1
    return-void
.end method
