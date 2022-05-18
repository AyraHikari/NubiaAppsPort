.class public final Lcn/nubia/accountsdk/service/ServiceErrorCode;
.super Ljava/lang/Object;
.source "ServiceErrorCode.java"


# static fields
.field public static final ERR_ACCOUNT_APK_NOT_INSTALL:I = -0x7

.field public static final ERR_ACCOUNT_NOT_EXIST:I = -0x6

.field public static final ERR_API_NOT_SURPORT:I = -0x9

.field public static final ERR_REMOTE_SERVICE_DIE:I = -0x8

.field private static final mErrorCodeArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, -0x6

    const-string v2, "account not exist"

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, -0x7

    const-string v2, "account apk not install"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, -0x8

    const-string v2, "remote service is die"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, -0x9

    const-string v2, "api is not surport"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrMsg(I)Ljava/lang/String;
    .locals 2

    .line 11
    sget-object v0, Lcn/nubia/accountsdk/service/ServiceErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const-string v1, "unknown error"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
