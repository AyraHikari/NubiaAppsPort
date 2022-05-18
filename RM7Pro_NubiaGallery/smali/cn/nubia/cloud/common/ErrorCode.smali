.class public final enum Lcn/nubia/cloud/common/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/common/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT_LOGIN_ERROR:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum ACCOUNT_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum CLOUD_SESSION_INVALID:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum CLOUD_TOKEN_INVALID:Lcn/nubia/cloud/common/ErrorCode;

.field private static final synthetic ENUM$VALUES:[Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum MODULE_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum NETWORK_ERROR:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum NETWORK_UNAVAILABLE:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum SERVER_ERROR:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum SYNC_ERROR:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum SYNC_TOO_FREQUENT:Lcn/nubia/cloud/common/ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcn/nubia/cloud/common/ErrorCode;


# instance fields
.field private final mErrorCode:I

.field private final mErrorMessage:Ljava/lang/String;

.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 7
    new-instance v6, Lcn/nubia/cloud/common/ErrorCode;

    const-string v1, "CLOUD_TOKEN_INVALID"

    const/4 v2, 0x0

    const/16 v3, 0x2713

    const/4 v4, 0x0

    const-string v5, "\u767b\u9646\u4fe1\u606f\u8fc7\u671f\uff0c\u8bf7\u91cd\u8bd5"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcn/nubia/cloud/common/ErrorCode;->CLOUD_TOKEN_INVALID:Lcn/nubia/cloud/common/ErrorCode;

    .line 8
    new-instance v0, Lcn/nubia/cloud/common/ErrorCode;

    const-string v8, "CLOUD_SESSION_INVALID"

    const/4 v9, 0x1

    const/16 v10, 0xbbb

    const/4 v11, 0x0

    const-string v12, "\u767b\u9646\u4fe1\u606f\u8fc7\u671f\u6216\u8d26\u6237\u53d1\u751f\u53d8\u5316\uff0c\u8bf7\u91cd\u8bd5"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcn/nubia/cloud/common/ErrorCode;->CLOUD_SESSION_INVALID:Lcn/nubia/cloud/common/ErrorCode;

    .line 9
    new-instance v1, Lcn/nubia/cloud/common/ErrorCode;

    const-string v14, "UNKNOWN_ERROR"

    const/4 v15, 0x2

    const/16 v16, -0x2710

    const/16 v17, 0x0

    const-string v18, "\u672a\u77e5\u9519\u8bef"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcn/nubia/cloud/common/ErrorCode;->UNKNOWN_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    .line 11
    new-instance v2, Lcn/nubia/cloud/common/ErrorCode;

    const-string v8, "MODULE_NOT_EXISTS"

    const/4 v9, 0x3

    const/16 v10, -0x2711

    const-string v12, "\u6a21\u5757\u4e0d\u5b58\u5728"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lcn/nubia/cloud/common/ErrorCode;->MODULE_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

    .line 12
    new-instance v3, Lcn/nubia/cloud/common/ErrorCode;

    const-string v14, "NETWORK_UNAVAILABLE"

    const/4 v15, 0x4

    const/16 v16, -0x2712

    const-string v18, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcn/nubia/cloud/common/ErrorCode;->NETWORK_UNAVAILABLE:Lcn/nubia/cloud/common/ErrorCode;

    .line 13
    new-instance v4, Lcn/nubia/cloud/common/ErrorCode;

    const-string v8, "NETWORK_ERROR"

    const/4 v9, 0x5

    const/16 v10, -0x2713

    const-string v12, "\u7f51\u7edc\u5f02\u5e38"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcn/nubia/cloud/common/ErrorCode;->NETWORK_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    .line 14
    new-instance v5, Lcn/nubia/cloud/common/ErrorCode;

    const-string v14, "ACCOUNT_NOT_EXISTS"

    const/4 v15, 0x6

    const/16 v16, -0x2714

    const-string v18, "\u8d26\u6237\u4e0d\u5b58\u5728"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v5, Lcn/nubia/cloud/common/ErrorCode;->ACCOUNT_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

    .line 15
    new-instance v13, Lcn/nubia/cloud/common/ErrorCode;

    const-string v8, "ACCOUNT_LOGIN_ERROR"

    const/4 v9, 0x7

    const/16 v10, -0x2715

    const-string v12, "\u767b\u9646\u4e91\u670d\u52a1\u5931\u8d25"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v13, Lcn/nubia/cloud/common/ErrorCode;->ACCOUNT_LOGIN_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    .line 16
    new-instance v7, Lcn/nubia/cloud/common/ErrorCode;

    const-string v15, "SERVER_ERROR"

    const/16 v16, 0x8

    const/16 v17, -0x2716

    const/16 v18, 0x0

    const-string v19, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcn/nubia/cloud/common/ErrorCode;->SERVER_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    .line 18
    new-instance v8, Lcn/nubia/cloud/common/ErrorCode;

    const-string v21, "SYNC_ERROR"

    const/16 v22, 0x9

    const/16 v23, -0x7d0

    const/16 v24, 0x0

    const-string v25, "\u540c\u6b65\u51fa\u73b0\u9519\u8bef"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v8, Lcn/nubia/cloud/common/ErrorCode;->SYNC_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    .line 19
    new-instance v9, Lcn/nubia/cloud/common/ErrorCode;

    const-string v15, "SYNC_TOO_FREQUENT"

    const/16 v16, 0xa

    const/16 v17, -0x7d1

    const-string v19, "\u540c\u6b65\u64cd\u4f5c\u592a\u9891\u7e41\u4e86\uff0c\u8bf730s\u540e\u91cd\u8bd5"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcn/nubia/cloud/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v9, Lcn/nubia/cloud/common/ErrorCode;->SYNC_TOO_FREQUENT:Lcn/nubia/cloud/common/ErrorCode;

    const/16 v10, 0xb

    new-array v10, v10, [Lcn/nubia/cloud/common/ErrorCode;

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v0, v10, v6

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v3, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v7, v10, v0

    const/16 v0, 0x9

    aput-object v8, v10, v0

    const/16 v0, 0xa

    aput-object v9, v10, v0

    .line 6
    sput-object v10, Lcn/nubia/cloud/common/ErrorCode;->ENUM$VALUES:[Lcn/nubia/cloud/common/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcn/nubia/cloud/common/ErrorCode;->mErrorCode:I

    .line 27
    iput p4, p0, Lcn/nubia/cloud/common/ErrorCode;->mResId:I

    .line 28
    iput-object p5, p0, Lcn/nubia/cloud/common/ErrorCode;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static codeOf(I)Lcn/nubia/cloud/common/ErrorCode;
    .locals 5

    .line 32
    invoke-static {}, Lcn/nubia/cloud/common/ErrorCode;->values()[Lcn/nubia/cloud/common/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 37
    sget-object p0, Lcn/nubia/cloud/common/ErrorCode;->UNKNOWN_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    return-object p0

    .line 32
    :cond_0
    aget-object v3, v0, v2

    .line 33
    iget v4, v3, Lcn/nubia/cloud/common/ErrorCode;->mErrorCode:I

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/common/ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/cloud/common/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/common/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/common/ErrorCode;
    .locals 4

    .line 1
    sget-object v0, Lcn/nubia/cloud/common/ErrorCode;->ENUM$VALUES:[Lcn/nubia/cloud/common/ErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcn/nubia/cloud/common/ErrorCode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 41
    iget v0, p0, Lcn/nubia/cloud/common/ErrorCode;->mErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/nubia/cloud/common/ErrorCode;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget v0, p0, Lcn/nubia/cloud/common/ErrorCode;->mResId:I

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcn/nubia/cloud/common/ErrorCode;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/common/ErrorCode;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method
