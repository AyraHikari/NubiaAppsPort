.class Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;
.super Ljava/lang/Object;
.source "ZTEStatistics.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/ZTEStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JniCallbackProxy"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mOreder:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/zte/statistics/sdk/ZTEStatistics;


# direct methods
.method public constructor <init>(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;->this$0:Lcom/zte/statistics/sdk/ZTEStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;->context:Landroid/content/Context;

    .line 273
    iput-object p3, p0, Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;->mOreder:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 277
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCallback"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 278
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/String;

    const-string p3, "initImeiSelf from  fota"

    .line 279
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3, p1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object p1, p0, Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setImei(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;->mOreder:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
