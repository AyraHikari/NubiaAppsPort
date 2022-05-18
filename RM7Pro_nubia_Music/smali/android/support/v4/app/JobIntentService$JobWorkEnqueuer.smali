.class final Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;
.super Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Landroid/app/job/JobInfo;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 4

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    invoke-virtual {p0, p3}, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;->ensureJobId(I)V

    .line 307
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, p3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 308
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 311
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    new-instance v2, Landroid/app/job/JobWorkItem;

    invoke-direct {v2, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    .line 317
    return-void
.end method
