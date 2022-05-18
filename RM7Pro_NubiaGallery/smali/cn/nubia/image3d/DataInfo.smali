.class public Lcn/nubia/image3d/DataInfo;
.super Ljava/lang/Object;
.source "DataInfo.java"


# instance fields
.field index:I

.field length:I

.field offset:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1, v2, v0}, Lcn/nubia/image3d/DataInfo;->init(IJI)V

    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/image3d/DataInfo;->init(IJI)V

    return-void
.end method

.method private init(IJI)V
    .locals 0

    .line 18
    iput p1, p0, Lcn/nubia/image3d/DataInfo;->index:I

    .line 19
    iput-wide p2, p0, Lcn/nubia/image3d/DataInfo;->offset:J

    .line 20
    iput p4, p0, Lcn/nubia/image3d/DataInfo;->length:I

    return-void
.end method
