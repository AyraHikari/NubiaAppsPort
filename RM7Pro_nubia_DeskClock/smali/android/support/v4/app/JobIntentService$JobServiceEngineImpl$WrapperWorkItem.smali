.class final Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroid/support/v4/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Landroid/app/job/JobWorkItem;

.field final synthetic this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;
    .param p2, "jobWork"    # Landroid/app/job/JobWorkItem;

    .prologue
    .line 245
    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    .line 247
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    iget-object v0, v0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0, v1}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 257
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
