.class public abstract Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;
.super Landroid/app/Activity;
.source "RequestPermissionsActivityBase.java"


# static fields
.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field public static final PREVIOUS_ACTIVITY_INTENT:Ljava/lang/String; = "previous_intent"

.field private static mListener:Lcn/nubia/gallery3d/permission/PermissionGrantedListener;


# instance fields
.field private mPreviousActivityIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    const-string v0, "hasPermission"

    .line 136
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 138
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 139
    invoke-static {p0, v3}, Lcn/nubia/gallery3d/permission/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 146
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 147
    throw p0
.end method

.method private isAllGranted([Ljava/lang/String;[I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 99
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 100
    aget v2, p2, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    .line 101
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isPermissionRequired(Ljava/lang/String;)Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private requestPermissions()V
    .locals 6

    const-string v0, "requestPermissions"

    .line 113
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 116
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->getDesiredPermissions()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 118
    invoke-static {p0, v4}, Lcn/nubia/gallery3d/permission/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 127
    invoke-static {p0, v0, v1}, Lcn/nubia/gallery3d/permission/PermissionUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 124
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request permission activity was called even though all permissions are satisfied."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 131
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 132
    throw v0
.end method

.method public static setListener(Lcn/nubia/gallery3d/permission/PermissionGrantedListener;)V
    .locals 0

    .line 151
    sput-object p0, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->mListener:Lcn/nubia/gallery3d/permission/PermissionGrantedListener;

    return-void
.end method

.method protected static startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "previous_intent"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract getDesiredPermissions()[Ljava/lang/String;
.end method

.method protected abstract getRequiredPermissions()[Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "previous_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    if-nez p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->requestPermissions()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string p1, "PermissionActivityBase"

    const-string v0, "sheyx onRequestPermissionsResult"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x10000

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 75
    array-length v1, p2

    if-lez v1, :cond_1

    .line 76
    invoke-direct {p0, p2, p3}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->isAllGranted([Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 77
    sget-object p2, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->mListener:Lcn/nubia/gallery3d/permission/PermissionGrantedListener;

    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2}, Lcn/nubia/gallery3d/permission/PermissionGrantedListener;->onPermissionGranted()V

    .line 80
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->finish()V

    .line 83
    invoke-virtual {p0, v0, v0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->overridePendingTransition(II)V

    goto :goto_0

    .line 86
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    iget-object p3, p0, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    const-string v1, "previous_intent"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->finish()V

    .line 91
    invoke-virtual {p0, v0, v0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method
