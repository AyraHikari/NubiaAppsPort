.class Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread$1;
.super Ljava/lang/Object;
.source "AlarmRingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->access$000(Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->access$000(Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->access$100(Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method
