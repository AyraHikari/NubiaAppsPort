.class Lcn/nubia/deskclock/AlarmKlaxon$4$1;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmKlaxon$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/AlarmKlaxon$4;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon$4;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/AlarmKlaxon$4;

    .prologue
    .line 344
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4$1;->this$1:Lcn/nubia/deskclock/AlarmKlaxon$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4$1;->this$1:Lcn/nubia/deskclock/AlarmKlaxon$4;

    iget-object v1, v1, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$500(Lcn/nubia/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 348
    .local v0, "currentAlarmVolume":I
    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4$1;->this$1:Lcn/nubia/deskclock/AlarmKlaxon$4;

    iget-object v1, v1, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon$4$1;->this$1:Lcn/nubia/deskclock/AlarmKlaxon$4;

    iget-object v2, v2, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-virtual {v2}, Lcn/nubia/deskclock/AlarmKlaxon;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/AlarmKlaxon;->access$000(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setCurrentAlarmVolume(I)V

    .line 349
    return-void
.end method
