.class public final Lcn/nubia/trafficcontrol/service/ServiceErrorCode;
.super Ljava/lang/Object;
.source "ServiceErrorCode.java"


# static fields
.field public static final ERROR_API_INVOKE:I = -0x3

.field public static final ERROR_APPINFO_INSERT_TABLE:I = -0x9

.field public static final ERROR_NOT_SUPPORT_DATA_TYPE:I = -0x2

.field public static final ERROR_NO_EXIST_APP_DETAIL_INFO:I = -0x4

.field public static final ERROR_NO_EXIST_DATATRANSFER_LISTENER:I = -0x7

.field public static final ERROR_NO_SEND_STRATEGY:I = -0x6

.field public static final ERROR_NO_SERVER_TIME:I = -0x5

.field public static final ERROR_REMOTE_SERVICE_DIE:I = -0x1

.field public static final ERROR_TOO_LARGE_DATA:I = -0xa

.field public static final ERROR_TRANSFER_NULL_BUNDLE:I = -0x8

.field public static final SUCCESS:I

.field public static final mErrorCodeArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    .line 38
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x1

    const-string v2, "remote service die"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x2

    const-string v2, "data type not support"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x3

    const-string v2, "api invoke error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x4

    const-string v2, "app detail info not exist"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x5

    const-string v2, "server time not exist"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x6

    const-string v2, "send strategy not exist"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x7

    const-string v2, "data transfer listener not exist"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x8

    const-string v2, "data transfer is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/16 v1, -0x9

    const-string v2, "appinfo insert into table error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/16 v1, -0xa

    const-string v2, "commonInfo insert too large"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const-string v0, "unknow error message"

    .line 57
    sget-object v1, Lcn/nubia/trafficcontrol/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
