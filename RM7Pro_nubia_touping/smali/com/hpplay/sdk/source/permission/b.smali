.class Lcom/hpplay/sdk/source/permission/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/permission/b$b;,
        Lcom/hpplay/sdk/source/permission/b$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/hpplay/sdk/source/permission/b$a;)Landroid/app/SharedElementCallback;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Lcom/hpplay/sdk/source/permission/b$b;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/permission/b$b;-><init>(Lcom/hpplay/sdk/source/permission/b$a;)V

    .line 77
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 36
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/hpplay/sdk/source/permission/b$a;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/hpplay/sdk/source/permission/b;->a(Lcom/hpplay/sdk/source/permission/b$a;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 41
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 50
    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/hpplay/sdk/source/permission/b$a;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Lcom/hpplay/sdk/source/permission/b;->a(Lcom/hpplay/sdk/source/permission/b$a;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 46
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 54
    return-void
.end method
