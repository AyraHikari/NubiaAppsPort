.class public Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUpdateInfoListener"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/activity/MoreActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 509
    return-void
.end method


# virtual methods
.method public showNoVersion()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/MoreActivity;

    .line 533
    invoke-static {v0}, Lcn/nubia/music/activity/MoreActivity;->access$1300(Lcn/nubia/music/activity/MoreActivity;)V

    goto :goto_0
.end method

.method public showUpdateInfo(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/MoreActivity;

    .line 520
    invoke-static {v0}, Lcn/nubia/music/activity/MoreActivity;->access$1100(Lcn/nubia/music/activity/MoreActivity;)V

    .line 521
    invoke-static {v0, p1}, Lcn/nubia/music/activity/MoreActivity;->access$1200(Lcn/nubia/music/activity/MoreActivity;Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0
.end method
