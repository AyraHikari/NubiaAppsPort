.class public abstract Lcn/nubia/permission/RequestPermissionsActivityBase;
.super Landroid/app/Activity;
.source ""


# static fields
.field private static b:Lcn/nubia/permission/a;


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static c(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    const-string v0, "hasPermission"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lcn/nubia/permission/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

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

    throw p0
.end method

.method private d([Ljava/lang/String;[I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcn/nubia/permission/RequestPermissionsActivityBase;->e(Ljava/lang/String;)Z

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

.method private e(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcn/nubia/permission/RequestPermissionsActivityBase;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private f()V
    .locals 6

    const-string v0, "requestPermissions"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/permission/RequestPermissionsActivityBase;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lcn/nubia/permission/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/nubia/permission/b;->f(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

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

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method protected static g(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z
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

    invoke-static {p0, p1}, Lcn/nubia/permission/RequestPermissionsActivityBase;->c(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "previous_intent"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract a()[Ljava/lang/String;
.end method

.method protected abstract b()[Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "previous_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcn/nubia/permission/RequestPermissionsActivityBase;->a:Landroid/content/Intent;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/permission/RequestPermissionsActivityBase;->f()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/high16 p1, 0x10000

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcn/nubia/permission/RequestPermissionsActivityBase;->d([Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcn/nubia/permission/RequestPermissionsActivityBase;->b:Lcn/nubia/permission/a;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcn/nubia/permission/a;->a()V

    :cond_0
    iget-object p2, p0, Lcn/nubia/permission/RequestPermissionsActivityBase;->a:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcn/nubia/permission/RequestPermissionsActivityBase;->a:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcn/nubia/permission/PermissionSetingActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p3, p0, Lcn/nubia/permission/RequestPermissionsActivityBase;->a:Landroid/content/Intent;

    const-string v1, "previous_intent"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    instance-of p3, p0, Lcn/nubia/permission/CollageRequestPermissionsActivity;

    const-string v1, "is_collage_called"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
