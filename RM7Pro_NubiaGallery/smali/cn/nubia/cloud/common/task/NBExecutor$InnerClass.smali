.class Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;
.super Ljava/lang/Object;
.source "NBExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/task/NBExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClass"
.end annotation


# static fields
.field static sDownloadPool:Lcn/nubia/cloud/common/task/NBExecutor;

.field static sImageDownloadPool:Lcn/nubia/cloud/common/task/NBExecutor;

.field static sLongPool:Lcn/nubia/cloud/common/task/NBExecutor;

.field static sShortPool:Lcn/nubia/cloud/common/task/NBExecutor;

.field static sSinglePool:Lcn/nubia/cloud/common/task/NBExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 119
    new-instance v6, Lcn/nubia/cloud/common/task/NBExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-wide/16 v3, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/cloud/common/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/common/task/NBExecutor;)V

    sput-object v6, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sDownloadPool:Lcn/nubia/cloud/common/task/NBExecutor;

    .line 121
    new-instance v0, Lcn/nubia/cloud/common/task/NBExecutor;

    const/4 v8, 0x6

    const/4 v9, 0x7

    const-wide/16 v10, 0x5

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/common/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/common/task/NBExecutor;)V

    sput-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sLongPool:Lcn/nubia/cloud/common/task/NBExecutor;

    .line 123
    new-instance v0, Lcn/nubia/cloud/common/task/NBExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/cloud/common/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/common/task/NBExecutor;)V

    sput-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sShortPool:Lcn/nubia/cloud/common/task/NBExecutor;

    .line 125
    new-instance v0, Lcn/nubia/cloud/common/task/NBExecutor;

    const/4 v8, 0x3

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/common/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/common/task/NBExecutor;)V

    sput-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sImageDownloadPool:Lcn/nubia/cloud/common/task/NBExecutor;

    .line 127
    new-instance v0, Lcn/nubia/cloud/common/task/NBExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/cloud/common/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/common/task/NBExecutor;)V

    sput-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sSinglePool:Lcn/nubia/cloud/common/task/NBExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
