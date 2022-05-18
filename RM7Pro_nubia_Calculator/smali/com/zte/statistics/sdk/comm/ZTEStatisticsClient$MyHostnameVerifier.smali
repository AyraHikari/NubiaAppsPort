.class Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "ZTEStatisticsClient.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;


# direct methods
.method private constructor <init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;->this$0:Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;-><init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
