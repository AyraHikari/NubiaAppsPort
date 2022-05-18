.class public Lcn/nubia/gallery3d/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/OrientationSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "OrientationManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOrientationLocked:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 36
    iput-object p1, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public getCompensation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 4

    .line 50
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 52
    iget-object v1, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const-string v3, "OrientationManager"

    if-ne v1, v2, :cond_1

    const-string v0, "lock orientation to landscape"

    .line 54
    invoke-static {v3, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const-string v1, "lock orientation to portrait"

    .line 57
    invoke-static {v3, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public lockPortraitOrientation()V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const-string v0, "OrientationManager"

    const-string v1, "lock orientation to lockPortraitOrientation"

    .line 70
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOrientationLocked(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    return-void
.end method

.method public unlockOrientation()V
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 78
    iget-object v0, p0, Lcn/nubia/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const-string v0, "OrientationManager"

    const-string v1, "unlock orientation mOrientationCompensation"

    .line 79
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
