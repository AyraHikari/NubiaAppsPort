.class Lcn/nubia/cloud/utils/LogUtil$1;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/utils/LogUtil;->initLogSwitch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/cloud/utils/LogUtil$1;->val$context:Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcn/nubia/cloud/utils/LogUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 22
    sget-boolean v1, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    const-string v2, "nubia_cloud_log_open"

    .line 20
    invoke-static {v0, v2, v1}, Lcn/nubia/cloud/settings/common/CloudSettings$App;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    return-void
.end method
