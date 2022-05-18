.class public Lcn/nubia/cloud/utils/ResolveInfoUtil;
.super Ljava/lang/Object;
.source "ResolveInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 9
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 12
    :goto_0
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing ComponentInfo!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
