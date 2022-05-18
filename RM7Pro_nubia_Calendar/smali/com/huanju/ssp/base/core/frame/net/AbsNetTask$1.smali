.class synthetic Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$1;
.super Ljava/lang/Object;
.source "AbsNetTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$huanju$ssp$base$core$frame$net$AbsNetTask$ReqType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 259
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->values()[Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$1;->$SwitchMap$com$huanju$ssp$base$core$frame$net$AbsNetTask$ReqType:[I

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$1;->$SwitchMap$com$huanju$ssp$base$core$frame$net$AbsNetTask$ReqType:[I

    sget-object v1, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$1;->$SwitchMap$com$huanju$ssp$base$core$frame$net$AbsNetTask$ReqType:[I

    sget-object v1, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Post:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
