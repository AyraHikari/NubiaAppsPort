.class Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;
.super Ljava/lang/Object;
.source "DownLoadManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/download/DownLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IActivityManagerHandler"
.end annotation


# instance fields
.field private mBase:Ljava/lang/Object;

.field final synthetic this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/download/DownLoadManager;Ljava/lang/Object;)V
    .locals 0
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    iput-object p2, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;->mBase:Ljava/lang/Object;

    .line 1101
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1105
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, p3, v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->sIsFromSDK:Z

    if-eqz v1, :cond_0

    const-string v1, "SSP_SDK"

    const-string v2, "ASDK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    const/4 v1, 0x1

    const-string v2, "com.android.ddkkddk"

    aput-object v2, p3, v1

    .line 1109
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->sIsFromSDK:Z

    .line 1110
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;->mBase:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1117
    :goto_0
    return-object v1

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;->mBase:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
