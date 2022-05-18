.class public Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/HttpRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultInfo"
.end annotation


# instance fields
.field public erorCode:I

.field final synthetic this$0:Lcn/nubia/upgrade/http/HttpRequestManager;

.field public versionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/http/HttpRequestManager;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->this$0:Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    return-void
.end method
