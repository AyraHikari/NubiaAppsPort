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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->a:Ljava/util/Map;

    iput-object p2, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->d:Landroid/content/Context;

    iput p5, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->e:I

    iput-object p6, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 134
    const-string v0, "ReportUtils"

    const-string v1, "report install event."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->a:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getReportURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/upgrade/http/HttpUtils;->postReport(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->d:Landroid/content/Context;

    const-string v1, "version_code"

    iget v2, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->e:I

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->d:Landroid/content/Context;

    const-string v1, "from_version_name"

    iget-object v2, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method
