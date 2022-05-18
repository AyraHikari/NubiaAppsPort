.class final Lcn/nubia/upgrade/util/ReportUtils$1;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/util/ReportUtils;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$secretKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/upgrade/util/ReportUtils$1;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcn/nubia/upgrade/util/ReportUtils$1;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/util/ReportUtils$1;->val$secretKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/upgrade/util/ReportUtils$1;->val$map:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getReportURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/util/ReportUtils$1;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/upgrade/util/ReportUtils$1;->val$secretKey:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/upgrade/http/HttpUtils;->postReport(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    return-void
.end method
