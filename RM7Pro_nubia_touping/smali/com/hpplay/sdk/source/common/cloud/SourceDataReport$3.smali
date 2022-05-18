.class synthetic Lcom/hpplay/sdk/source/common/cloud/SourceDataReport$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hpplay$common$utils$NetworkUtil$NetworkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 738
    invoke-static {}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->values()[Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport$3;->$SwitchMap$com$hpplay$common$utils$NetworkUtil$NetworkType:[I

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport$3;->$SwitchMap$com$hpplay$common$utils$NetworkUtil$NetworkType:[I

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_WIFI:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    invoke-virtual {v1}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport$3;->$SwitchMap$com$hpplay$common$utils$NetworkUtil$NetworkType:[I

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_2G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    invoke-virtual {v1}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport$3;->$SwitchMap$com$hpplay$common$utils$NetworkUtil$NetworkType:[I

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_3G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    invoke-virtual {v1}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport$3;->$SwitchMap$com$hpplay$common$utils$NetworkUtil$NetworkType:[I

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_4G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    invoke-virtual {v1}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
