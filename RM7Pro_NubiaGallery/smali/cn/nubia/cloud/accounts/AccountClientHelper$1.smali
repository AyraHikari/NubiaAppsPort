.class synthetic Lcn/nubia/cloud/accounts/AccountClientHelper$1;
.super Ljava/lang/Object;
.source "AccountClientHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/AccountClientHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$cloud$common$dev$ServerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    invoke-static {}, Lcn/nubia/cloud/common/dev/ServerType;->values()[Lcn/nubia/cloud/common/dev/ServerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/cloud/accounts/AccountClientHelper$1;->$SwitchMap$cn$nubia$cloud$common$dev$ServerType:[I

    :try_start_0
    sget-object v1, Lcn/nubia/cloud/common/dev/ServerType;->TEST_SERVER_ADDRESS:Lcn/nubia/cloud/common/dev/ServerType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/dev/ServerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/nubia/cloud/accounts/AccountClientHelper$1;->$SwitchMap$cn$nubia$cloud$common$dev$ServerType:[I

    sget-object v1, Lcn/nubia/cloud/common/dev/ServerType;->DEV_SERVER_ADDRESS:Lcn/nubia/cloud/common/dev/ServerType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/dev/ServerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
