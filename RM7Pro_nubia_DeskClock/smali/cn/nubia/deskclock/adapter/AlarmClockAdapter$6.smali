.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->createChoseCloseDialog(Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$alarm:Lcn/nubia/deskclock/model/Alarm;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 251
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$500(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget v2, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$800(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;IZ)V

    .line 255
    return-void
.end method
