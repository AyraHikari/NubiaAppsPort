.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->enableAlarm(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enabled:Z

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 316
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;->val$context:Landroid/content/Context;

    iput p3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;->val$id:I

    iput-boolean p4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;->val$context:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;->val$id:I

    iget-boolean v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;->val$enabled:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/model/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 320
    return-void
.end method
