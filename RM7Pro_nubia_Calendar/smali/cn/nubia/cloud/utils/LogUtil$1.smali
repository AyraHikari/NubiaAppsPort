.class final Lcn/nubia/cloud/utils/LogUtil$1;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/utils/LogUtil;->initLogSwitch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcn/nubia/cloud/utils/LogUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/cloud/utils/LogUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_cloud_log_open"

    sget-boolean v2, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/settings/common/CloudSettings$App;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    .line 23
    return-void
.end method
