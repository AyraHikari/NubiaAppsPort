.class public Lcom/hpplay/sdk/source/permission/a;
.super Lcom/hpplay/sdk/source/permission/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/permission/a$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/hpplay/sdk/source/permission/d;-><init>()V

    .line 66
    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 138
    invoke-static {p0, p1, p2}, Lcom/hpplay/sdk/source/permission/c;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    instance-of v0, p0, Lcom/hpplay/sdk/source/permission/a$a;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    new-instance v1, Lcom/hpplay/sdk/source/permission/a$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/hpplay/sdk/source/permission/a$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
