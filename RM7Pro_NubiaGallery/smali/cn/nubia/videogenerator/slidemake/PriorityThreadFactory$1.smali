.class Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory$1;->this$0:Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory$1;->this$0:Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;

    invoke-static {v0}, Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;->access$000(Lcn/nubia/videogenerator/slidemake/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 43
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
