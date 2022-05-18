.class final Lcn/nubia/upgrade/util/ReportUtils$2;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/util/ReportUtils;->checkInstallEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->c:Ljava/lang/String;

    iput p4, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->d:I

    iput p5, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->e:I

    iput-object p6, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->g:Ljava/lang/String;

    iput-object p8, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->c:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->d:I

    iget v4, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->e:I

    iget-object v5, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->f:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->g:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcn/nubia/upgrade/util/ReportUtils;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
