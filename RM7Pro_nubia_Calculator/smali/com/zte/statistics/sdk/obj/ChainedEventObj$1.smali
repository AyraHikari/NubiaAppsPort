.class Lcom/zte/statistics/sdk/obj/ChainedEventObj$1;
.super Ljava/lang/Object;
.source "ChainedEventObj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/obj/ChainedEventObj;->emit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/obj/ChainedEventObj;


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/obj/ChainedEventObj;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj$1;->this$0:Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj$1;->this$0:Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    invoke-static {v0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->access$000(Lcom/zte/statistics/sdk/obj/ChainedEventObj;)V

    .line 112
    invoke-static {}, Lcom/zte/statistics/sdk/comm/CheckUtils;->waitInitFin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj$1;->this$0:Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->access$100(Lcom/zte/statistics/sdk/obj/ChainedEventObj;Z)V

    :cond_0
    return-void
.end method
