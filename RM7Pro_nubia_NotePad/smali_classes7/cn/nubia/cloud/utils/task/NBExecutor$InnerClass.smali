.class Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;
.super Ljava/lang/Object;
.source "NBExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/utils/task/NBExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClass"
.end annotation


# static fields
.field static sDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

.field static sImageDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

.field static sLongPool:Lcn/nubia/cloud/utils/task/NBExecutor;

.field static sShortPool:Lcn/nubia/cloud/utils/task/NBExecutor;

.field static sSinglePool:Lcn/nubia/cloud/utils/task/NBExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    .line 105
    new-instance v1, Lcn/nubia/cloud/utils/task/NBExecutor;

    const/4 v2, 0x2

    invoke-direct/range {v1 .. v6}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/utils/task/NBExecutor$1;)V

    sput-object v1, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    .line 107
    new-instance v7, Lcn/nubia/cloud/utils/task/NBExecutor;

    const/4 v8, 0x6

    const/4 v9, 0x7

    move-wide v10, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/utils/task/NBExecutor$1;)V

    sput-object v7, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sLongPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    .line 109
    new-instance v7, Lcn/nubia/cloud/utils/task/NBExecutor;

    move v8, v3

    move v9, v13

    move-wide v10, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/utils/task/NBExecutor$1;)V

    sput-object v7, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sShortPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    .line 111
    new-instance v7, Lcn/nubia/cloud/utils/task/NBExecutor;

    move v8, v3

    move v9, v13

    move-wide v10, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/utils/task/NBExecutor$1;)V

    sput-object v7, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sImageDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    .line 113
    new-instance v1, Lcn/nubia/cloud/utils/task/NBExecutor;

    move v2, v0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJLcn/nubia/cloud/utils/task/NBExecutor$1;)V

    sput-object v1, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sSinglePool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
