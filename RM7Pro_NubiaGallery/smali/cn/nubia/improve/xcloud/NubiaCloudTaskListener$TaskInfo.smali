.class Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;
.super Ljava/lang/Object;
.source "NubiaCloudTaskListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskInfo"
.end annotation


# instance fields
.field public mRate:I

.field public mUpdateTime:J

.field public mUploadSize:J

.field final synthetic this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;)V
    .locals 2

    .line 192
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUploadSize:J

    .line 194
    iput-wide v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mUpdateTime:J

    const/4 p1, 0x0

    .line 195
    iput p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;->mRate:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$TaskInfo;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;)V

    return-void
.end method
