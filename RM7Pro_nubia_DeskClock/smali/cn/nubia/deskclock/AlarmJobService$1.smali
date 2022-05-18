.class Lcn/nubia/deskclock/AlarmJobService$1;
.super Landroid/os/AsyncTask;
.source "AlarmJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmJobService;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmJobService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmJobService;

    .prologue
    .line 195
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmJobService$1;->this$0:Lcn/nubia/deskclock/AlarmJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/AlarmJobService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmJobService$1;->this$0:Lcn/nubia/deskclock/AlarmJobService;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmJobService;->access$000(Lcn/nubia/deskclock/AlarmJobService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method
