.class public Lcn/nubia/improve/category/CategoryService;
.super Landroid/app/Service;
.source "CategoryService.java"


# static fields
.field public static final CATEGORY_TASK_BEGIN:I = 0x0

.field public static final CATEGORY_TASK_ERROR:I = 0x1

.field public static final CATEGORY_TASK_FINISHED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CategoryService"


# instance fields
.field private mCategoryProcessTask:Lcn/nubia/improve/category/CategoryProcessTask;

.field private mHandler:Landroid/os/Handler;

.field private mInterrupted:Z

.field private mTask:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/nubia/improve/category/CategoryService;->mInterrupted:Z

    .line 23
    new-instance v0, Lcn/nubia/improve/category/CategoryService$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/category/CategoryService$1;-><init>(Lcn/nubia/improve/category/CategoryService;)V

    iput-object v0, p0, Lcn/nubia/improve/category/CategoryService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/improve/category/CategoryService;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcn/nubia/improve/category/CategoryService;->mInterrupted:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "CategoryService"

    const-string v1, "txh onCreate"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcn/nubia/improve/category/CategoryService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setCategoryServiceIsRunning(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CategoryService"

    const-string v1, "txh onDestroy"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcn/nubia/improve/category/CategoryService;->stopTask()V

    .line 85
    invoke-virtual {p0}, Lcn/nubia/improve/category/CategoryService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setCategoryServiceIsRunning(Z)V

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "txh onStartCommand, mTask = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/improve/category/CategoryService;->mTask:Ljava/lang/Thread;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CategoryService"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 66
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryService;->mTask:Ljava/lang/Thread;

    if-nez p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcn/nubia/improve/category/CategoryService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    .line 68
    new-instance p2, Lcn/nubia/improve/category/CategoryProcessTask;

    iget-object p3, p0, Lcn/nubia/improve/category/CategoryService;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lcn/nubia/improve/category/CategoryProcessTask;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/os/Handler;)V

    iput-object p2, p0, Lcn/nubia/improve/category/CategoryService;->mCategoryProcessTask:Lcn/nubia/improve/category/CategoryProcessTask;

    .line 69
    invoke-virtual {p0}, Lcn/nubia/improve/category/CategoryService;->onStart()V

    .line 70
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcn/nubia/improve/category/CategoryService;->mCategoryProcessTask:Lcn/nubia/improve/category/CategoryProcessTask;

    const-string p3, "CategoryProcessTask"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryService;->mTask:Ljava/lang/Thread;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method public stopTask()V
    .locals 2

    const-string v0, "CategoryService"

    const-string v1, "txh stopTask"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryService;->mCategoryProcessTask:Lcn/nubia/improve/category/CategoryProcessTask;

    if-eqz v0, :cond_0

    .line 92
    iget-boolean v1, p0, Lcn/nubia/improve/category/CategoryService;->mInterrupted:Z

    invoke-virtual {v0, v1}, Lcn/nubia/improve/category/CategoryProcessTask;->terminate(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcn/nubia/improve/category/CategoryService;->mTask:Ljava/lang/Thread;

    .line 95
    iput-object v0, p0, Lcn/nubia/improve/category/CategoryService;->mCategoryProcessTask:Lcn/nubia/improve/category/CategoryProcessTask;

    return-void
.end method
