.class final Lcn/nubia/upgrade/util/ReportUtils$3;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/util/ReportUtils;->reportInstallEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$secretKey:Ljava/lang/String;

.field final synthetic val$versinName:Ljava/lang/String;

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$secretKey:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$context:Landroid/content/Context;

    iput p5, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versionCode:I

    iput-object p6, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versinName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 134
    const-string v1, "ReportUtils"

    const-string v2, "report install event."

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$map:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getReportURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$appKey:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$secretKey:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/upgrade/http/HttpUtils;->postReport(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 136
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$context:Landroid/content/Context;

    const-string v2, "version_code"

    iget v3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versionCode:I

    invoke-static {v1, v2, v3}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$context:Landroid/content/Context;

    const-string v2, "from_version_name"

    iget-object v3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versinName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method
