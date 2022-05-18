.class synthetic Lcom/zte/statistics/sdk/offline/InfoRouter$1;
.super Ljava/lang/Object;
.source "InfoRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/offline/InfoRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zte$statistics$sdk$offline$InfoRouter$STATUS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 106
    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->values()[Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$1;->$SwitchMap$com$zte$statistics$sdk$offline$InfoRouter$STATUS:[I

    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$1;->$SwitchMap$com$zte$statistics$sdk$offline$InfoRouter$STATUS:[I

    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->READY:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$1;->$SwitchMap$com$zte$statistics$sdk$offline$InfoRouter$STATUS:[I

    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->OK:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
