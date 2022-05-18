.class Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/utils/SystemUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CPUInfo"
.end annotation


# static fields
.field static final CPU_FEATURE_NEON:I = 0x100

.field static final CPU_FEATURE_UNKNOWS:I = 0x0

.field static final CPU_FEATURE_VFP:I = 0x1

.field static final CPU_FEATURE_VFPV3:I = 0x10

.field static final CPU_TYPE_ARMV5TE:I = 0x1

.field static final CPU_TYPE_ARMV6:I = 0x10

.field static final CPU_TYPE_ARMV7:I = 0x100

.field static final CPU_TYPE_UNKNOWN:I


# instance fields
.field mCPUCount:I

.field mCPUFeature:I

.field mCPUType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    return-void
.end method
